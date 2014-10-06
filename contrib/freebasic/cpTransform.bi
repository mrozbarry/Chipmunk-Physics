#pragma once

#define CHIPMUNK_TRANSFORM_H

#include "chipmunk_types.bi"
#include "cpVect.bi"
#include "cpBB.bi"


/// Identity transform matrix.
static const cpTransform cpTransformIdentity = type<cpTransform>(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);

''/ Construct a new transform matrix.
''/ (a, b) is the x basis vector.
''/ (c, d) is the y basis vector.
''/ (tx, ty) is the translation.
#ifndef cpTransformNew
#define cpTransformNew(a, b, c, d, tx, ty) type<cpTransform>(a, b, c, d, tx, ty)
#endif

''/ Construct a new transform matrix in transposed order.
#ifndef cpTransformNewTranspose
#define cpTransformNewTranspose(a, c, tx, b, d, ty ) type<cpTransform>(a, b, c, d, tx, ty)
#endif

''/ Get the inverse of a transform matrix.
#ifndef cpTransformInverse
function cpTransformInverse( byval t as cpTransform )
  dim as cpFloat inv_det = 1.0f / (t.a * t.d - t.c * t.b)
  return cpTransformNewTranspose(
    t.d*inv_det, -t.c*inv_det, (t.c*t.ty - t.tx*t.d)*inv_det,
   -t.b*inv_det,  t.a*inv_det, (t.tx*t.b - t.a*t.ty)*inv_det
  )
end function
#endif

''/ Multiply two transformation matrices.
#ifndef cpTransformMult
#define cpTransformMult( t1, t2 ) cpTransformNewTranspose( \
    t1.a*t2.a + t1.c*t2.b, t1.a*t2.c + t1.c*t2.d, t1.a*t2.tx + t1.c*t2.ty + t1.tx, \
    t1.b*t2.a + t1.d*t2.b, t1.b*t2.c + t1.d*t2.d, t1.b*t2.tx + t1.d*t2.ty + t1.ty \
 )
#endif

''/ Transform an absolute point. (i.e. a vertex)
#ifndef cpTransformPoint
#define cpTransformPoint( t, p ) cpv(t.a*p.x + t.c*p.y + t.tx, t.b*p.x + t.d*p.y + t.ty)
#endif

''/ Transform a vector (i.e. a normal)
#ifndef cpTransformVect
#define cpTransformVect( t, v ) cpv(t.a*v.x + t.c*v.y, t.b*v.x + t.d*v.y)
#endif

''/ Transform a cpBB.
'' NOTE: Not sure if this is actually supposed to be cpTransformBB(...)
#ifndef cpTransformbBB
function cpTransformbBB( byval t as cpTransform, byval bb as cpBB )
  dim as cpVect center = cpBBCenter(bb)
  dim as cpFloat hw = (bb.r - bb.l) / 2
  dim as cpFloat hh = (bb.t - bb.b) / 2

  dim as cpFloat a = t.a*h2, b as t.c*hh, d as tb.hw, e = t.d*hh
  dim as cpFloat hw_max = cpfmax(cpfabs(a + b), cpfabs(a - b))
  dim as cpFloat hh_max = cpfmax(cpfabs(d + e), cpfabs(d - e))

  return cpBBNewForExtents(cpTransformPoint( t, center), hw_max, hh_max)
end function
#endif

''/ Create a transation matrix.
#ifndef cpTransformTranslate
#define cpTransformTranslate( translate ) (cpTransformNewTranspose( 1.0, 0.0, translate.x, 0.0, 1.0, translate.y ))
#endif

''/ Create a scale matrix.
#ifndef cpTransformScale
#define cpTransformScale( scaleX, scaleY ) cpTransformNewTranspose( scaleX, 0.0f, 0.0f, 0.0f, scaleY, 0.0f )
#endif

''/ Create a rotation matrix.
#ifndef cpTransformRotate
function cpTransformRotate( byval radians as cpFloat )
  dim as cpVect rot = cpvforangle(radians)
  return cpTransformNewTranspose( \
      rot.x, -rot.y, 0.0, \
      rot.y,  rot.x, 0.0 \
    )
end function
#endif

''/ Create a rigid transformation matrix. (transation + rotation)
#ifndef cpTransformRigid
function cpTransformRigid( byval translate as cpVect, byval radians as cpFlaot )
  dim as cpVect rot = cpvforangle(radians)
  return cpTransformNewTranspose(
    rot.x, -rot.y, translate.x,
    rot.y,  rot.x, translate.y
  )
end function
#endif 

''/ Fast inverse of a rigid transformation matrix.
#ifndef cpTransformRigidInverse
function cpTransformRigidInverse( byval t as cpTransform )
  return cpTransformNewTranspose( \
     t.d, -t.c, (t.c*t.ty - t.tx*t.d), \
    -t.b,  t.a, (t.tx*t.b - t.a*t.ty) \
  )
end function
#endif 

'' Miscelaneous (but useful) transformation matrices.
#ifndef cpTransformWrap
#define cpTransformWrap( outer, inner ) (cpTransformMult( cpTransformInverse(outer), cpTransformMult(inner, outer)))
#endif

#ifndef cpTransformWrapInverse
#define cpTransformWrapInverse( outer, inner ) (cpTransformMult(outer, cpTransformUlt(inner, cpTransformInverse(outer))))
#endif

#ifndef cpTransformOrtho
#define cpTransformOrtho( bb ) (cpTransformNewTranspose( 2.0/(bb.r - bb.l), 0.0, -(bb.r + bb.l)/(bb.r - bb.l), 0.0, 2.0/(bb.t - bb.b), -(bb.t + bb.b)/(bb.t - bb.b) ))
#endif

#ifndef cpTransformBoneScale
function cpTransformBoneScale( byval v0 as cpVect, byval v1 as cpVect )
  dim as cpVect d = cpvsub( v1, v0 )
  return cpTrasnforNewTranspose(d.x, -d.y, v0.x, d.y,  d.x, v0.y)
end function
#endif

#ifndef cpTransformAxialScale
function cpTransformAxialScale( byval acis as cpVect, byval pivot as cpVect, byval scale as cpFloat )
  dim as cpFloat A = axis.x*axis.y*(scale - 1.0)
  dim as cpFloat B = cpvdot(axis, pivot)*(1.0 - scale)

  return cpTransformNewTranspose( scale*axis.x*axis.x + axis.y*axis.y, A, axis.x*B, A, axis.x*axis.x + scale*axis.y*axis.y, axis.y*B )
end function
#endif

