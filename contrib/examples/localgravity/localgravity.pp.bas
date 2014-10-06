





#inclib "chipmunk"




 type clong as integer
 type culong as uinteger

type ptrdiff_t as integer

 type size_t as uinteger
 type ssize_t as integer

 type wchar_t as long

type wint_t as wchar_t




extern "c"
declare function mkstemp (byval template_ as zstring ptr) as long
end extern


type div_t
 quot as long
 rem_ as long
end type

type ldiv_t
 quot as clong
 rem_ as clong
end type

type lldiv_t
 quot as longint
 rem_ as longint
end type

extern "c"
declare sub exit_ alias "exit" (byval as long)
declare function system_ alias "system" (byval as zstring ptr) as long
declare function abs_ alias "abs" (byval as long) as long
declare function atof (byval as zstring ptr) as double
declare function atoi (byval as zstring ptr) as long
declare function atol (byval as zstring ptr) as clong
declare function strtod (byval as zstring ptr, byval as byte ptr ptr) as double
declare function strtof (byval as zstring ptr, byval as byte ptr ptr) as single
declare function strtold (byval as zstring ptr, byval as byte ptr ptr) as double
declare function strtol (byval as zstring ptr, byval as byte ptr ptr, byval as long) as clong
declare function strtoul (byval as zstring ptr, byval as byte ptr ptr, byval as long) as culong
declare function wcstod (byval as wchar_t ptr, byval as wchar_t ptr ptr) as double
declare function wcstof (byval as wchar_t ptr, byval as wchar_t ptr ptr) as single
declare function wcstold (byval as wchar_t ptr, byval as wchar_t ptr ptr) as double
declare function wcstol (byval as wchar_t ptr, byval as wchar_t ptr ptr, byval as long) as clong
declare function wcstoul (byval as wchar_t ptr, byval as wchar_t ptr ptr, byval as long) as culong
declare function wcstombs (byval as zstring ptr, byval as wchar_t ptr, byval as size_t) as size_t
declare function wctomb (byval as zstring ptr, byval as wchar_t) as long
declare function mblen (byval as zstring ptr, byval as size_t) as long
declare function mbstowcs (byval as wchar_t ptr, byval as zstring ptr, byval as size_t) as size_t
declare function mbtowc (byval as wchar_t ptr, byval as zstring ptr, byval as size_t) as long
declare function rand () as long
declare sub srand (byval as ulong)
declare function calloc (byval as size_t, byval as size_t) as any ptr
declare function malloc (byval as size_t) as any ptr
declare function realloc (byval as any ptr, byval as size_t) as any ptr
declare sub free (byval as any ptr)
declare sub abort ()
declare function atexit (byval as sub cdecl()) as long
declare function getenv (byval as zstring ptr) as zstring ptr
declare function bsearch (byval as any ptr, byval as any ptr, byval as size_t, byval as size_t, byval as function(byval as any ptr, byval as any ptr) as long) as any ptr
declare sub qsort (byval as any ptr, byval as size_t, byval as size_t, byval as function(byval as any ptr, byval as any ptr) as long)
declare function labs (byval as clong) as clong
declare function div (byval as long, byval as long) as div_t
declare function ldiv (byval as clong, byval as clong) as ldiv_t
declare function lldiv (byval as longint, byval as longint) as lldiv_t
declare function llabs (byval as longint) as longint
declare function strtoll (byval as zstring ptr, byval as byte ptr ptr, byval as long) as longint
declare function strtoull (byval as zstring ptr, byval as byte ptr ptr, byval as long) as ulongint
declare function atoll (byval as zstring ptr) as longint
declare function wtoll (byval as wchar_t ptr) as longint
declare function lltoa (byval as longint, byval as zstring ptr, byval as long) as zstring ptr
declare function ulltoa (byval as ulongint, byval as zstring ptr, byval as long) as zstring ptr
declare function lltow (byval as longint, byval as wchar_t ptr, byval as long) as wchar_t ptr
declare function ulltow (byval as ulongint, byval as wchar_t ptr, byval as long) as wchar_t ptr
end extern





extern "c"
declare function sin_ alias "sin" (byval as double) as double
declare function cos_ alias "cos" (byval as double) as double
declare function tan_ alias "tan" (byval as double) as double
declare function asin_ alias "asin" (byval as double) as double
declare function acos_ alias "acos" (byval as double) as double
declare function atan_ alias "atan" (byval as double) as double
declare function atan2_ alias "atan2" (byval as double, byval as double) as double
declare function exp_ alias "exp" (byval as double) as double
declare function log_ alias "log" (byval as double) as double
declare function sinh (byval as double) as double
declare function cosh (byval as double) as double
declare function tanh (byval as double) as double
declare function log10 (byval as double) as double
declare function pow (byval as double, byval as double) as double
declare function sqrt (byval as double) as double
declare function ceil (byval as double) as double
declare function floor (byval as double) as double
declare function fabs (byval as double) as double
declare function ldexp (byval as double, byval as long) as double
declare function frexp (byval as double, byval as long ptr) as double
declare function modf (byval as double, byval as double ptr) as double
declare function fmod (byval as double, byval as double) as double
declare function sinf (byval as single) as single
declare function sinl (byval as double) as double
declare function cosf (byval as single) as single
declare function cosl (byval as double) as double
declare function tanf (byval as single) as single
declare function tanl (byval as double) as double
declare function asinf (byval as single) as single
declare function asinl (byval as double) as double
declare function acosf (byval as single) as single
declare function acosl (byval as double) as double
declare function atanf (byval as single) as single
declare function atanl (byval as double) as double
declare function atan2f (byval as single, byval as single) as single
declare function atan2l (byval as double, byval as double) as double
declare function sinhf (byval x as single) as single
declare function sinhl (byval as double) as double
declare function coshf (byval x as single) as single
declare function coshl (byval as double) as double
declare function tanhf (byval x as single) as single
declare function tanhl (byval as double) as double
declare function expf (byval x as single) as single
declare function expl (byval as double) as double
declare function exp2 (byval as double) as double
declare function exp2f (byval as single) as single
declare function exp2l (byval as double) as double
declare function frexpf (byval as single, byval as long ptr) as single
declare function frexpl (byval as double, byval as long ptr) as double
declare function ilogb (byval as double) as long
declare function ilogbf (byval as single) as long
declare function ilogbl (byval as double) as long
declare function ldexpf (byval as single, byval as long) as single
declare function ldexpl (byval as double, byval as long) as double
declare function logf (byval as single) as single
declare function logl (byval as double) as double
declare function log10f (byval as single) as single
declare function log10l (byval as double) as double
declare function log1p (byval as double) as double
declare function log1pf (byval as single) as single
declare function log1pl (byval as double) as double
declare function log2 (byval as double) as double
declare function log2f (byval as single) as single
declare function log2l (byval as double) as double
declare function logb (byval x as double) as double
declare function logbf (byval x as single) as single
declare function logbl (byval x as double) as double
declare function modff (byval as single, byval as single ptr) as single
declare function modfl (byval as double, byval as double ptr) as double
declare function scalbn (byval as double, byval as long) as double
declare function scalbnf (byval as single, byval as long) as single
declare function scalbnl (byval as double, byval as long) as double
declare function scalbln (byval as double, byval as clong) as double
declare function scalblnf (byval as single, byval as clong) as single
declare function scalblnl (byval as double, byval as clong) as double
declare function cbrt (byval as double) as double
declare function cbrtf (byval as single) as single
declare function cbrtl (byval as double) as double
declare function fabsf (byval x as single) as single
declare function fabsl (byval x as double) as double
declare function hypot (byval as double, byval as double) as double
declare function hypotf (byval x as single, byval y as single) as single
declare function hypotl (byval as double, byval as double) as double
declare function powf (byval x as single, byval y as single) as single
declare function powl (byval as double, byval as double) as double
declare function sqrtf (byval as single) as single
declare function sqrtl (byval as double) as double
declare function erf (byval as double) as double
declare function erff (byval as single) as single
declare function erfc (byval as double) as double
declare function erfcf (byval as single) as single
declare function lgamma (byval as double) as double
declare function lgammaf (byval as single) as single
declare function lgammal (byval as double) as double
declare function tgamma (byval as double) as double
declare function tgammaf (byval as single) as single
declare function tgammal (byval as double) as double
declare function ceilf (byval as single) as single
declare function ceill (byval as double) as double
declare function floorf (byval as single) as single
declare function floorl (byval as double) as double
declare function nearbyint (byval as double) as double
declare function nearbyintf (byval as single) as single
declare function nearbyintl (byval as double) as double
declare function rint (byval x as double) as double
declare function rintf (byval x as single) as single
declare function rintl (byval x as double) as double
declare function lrint (byval x as double) as clong
declare function lrintf (byval x as single) as clong
declare function lrintl (byval x as double) as clong
declare function llrint (byval x as double) as longint
declare function llrintf (byval x as single) as longint
declare function llrintl (byval x as double) as longint
declare function round (byval as double) as double
declare function roundf (byval as single) as single
declare function roundl (byval as double) as double
declare function lround (byval as double) as clong
declare function lroundf (byval as single) as clong
declare function lroundl (byval as double) as clong
declare function llround (byval as double) as longint
declare function llroundf (byval as single) as longint
declare function llroundl (byval as double) as longint
declare function trunc (byval as double) as double
declare function truncf (byval as single) as single
declare function truncl (byval as double) as double
declare function fmodf (byval as single, byval as single) as single
declare function fmodl (byval as double, byval as double) as double
declare function remainder (byval as double, byval as double) as double
declare function remainderf (byval as single, byval as single) as single
declare function remainderl (byval as double, byval as double) as double
declare function remquo (byval as double, byval as double, byval as long ptr) as double
declare function remquof (byval as single, byval as single, byval as long ptr) as single
declare function remquol (byval as double, byval as double, byval as long ptr) as double
declare function copysign (byval as double, byval as double) as double
declare function copysignf (byval as single, byval as single) as single
declare function copysignl (byval as double, byval as double) as double
declare function nan (byval tagp as zstring ptr) as double
declare function nanf (byval tagp as zstring ptr) as single
declare function nanl (byval tagp as zstring ptr) as double
declare function nextafter (byval as double, byval as double) as double
declare function nextafterf (byval as single, byval as single) as single
declare function fdim (byval x as double, byval y as double) as double
declare function fdimf (byval x as single, byval y as single) as single
declare function fdiml (byval x as double, byval y as double) as double
declare function fmax (byval as double, byval as double) as double
declare function fmaxf (byval as single, byval as single) as single
declare function fmaxl (byval as double, byval as double) as double
declare function fmin (byval as double, byval as double) as double
declare function fminf (byval as single, byval as single) as single
declare function fminl (byval as double, byval as double) as double
declare function fma (byval as double, byval as double, byval as double) as double
declare function fmaf (byval as single, byval as single, byval as single) as single
declare function fmal (byval as double, byval as double, byval as double) as double
end extern



extern "c"




declare sub cpMessage(byval condition as const zstring ptr, byval file as const zstring ptr, byval line as integer, byval isError as integer, byval isHardError as integer, byval message as const byte ptr, ... )












type int8_t as byte
type int16_t as short
type int32_t as long
type int64_t as longint

type uint8_t as ubyte
type uint16_t as ushort
type uint32_t as ulong
type uint64_t as ulongint

type int_least8_t as int8_t
type int_least16_t as int16_t
type int_least32_t as int32_t
type int_least64_t as int64_t

type uint_least8_t as uint8_t
type uint_least16_t as uint16_t
type uint_least32_t as uint32_t
type uint_least64_t as uint64_t

type int_fast8_t as int8_t
type int_fast16_t as int16_t
type int_fast32_t as int32_t
type int_fast64_t as int64_t

type uint_fast8_t as uint8_t
type uint_fast16_t as uint16_t
type uint_fast32_t as uint32_t
type uint_fast64_t as uint64_t

type intptr_t as integer
type uintptr_t as uinteger

type intmax_t as int64_t
type uintmax_t as uint64_t






















type cpFloat as double













type as any ptr cpHashValue

type cpCollisionID as ulong

type as ubyte cpBool


type cpDataPointer as any ptr
type cpCollisionType as uintptr_t
type cpGroup as uintptr_t
type cpBitmask as uinteger
type cpTimestamp as uinteger


type cpVect
 x as cpFloat
 y as cpFloat
end type

type cpTransform
 a as cpFloat
 b as cpFloat
 c as cpFloat
 d as cpFloat
 tx as cpFloat
 ty as cpFloat
end type

type cpMat2x2
 a as cpFloat
 b as cpFloat
 c as cpFloat
 d as cpFloat
end type








type as cpArray cpArray_
type as cpHashSet cpHashSet_

type as cpBody cpBody_
type as cpBody cpBody

type as cpShape cpShape_
type as cpShape cpShape
type as cpCircleShape cpCircleShape_
type as cpSegmentShape cpSegmentShape_
type as cpPolyShape cpPolyShape_

type as cpConstraint cpConstraint_
type as cpConstraint cpConstraint
type as cpPinJoint cpPinJoint_
type as cpSlideJoint cpSlideJoint_
type as cpPivotJoint cpPivotJoint_
type as cpGrooveJoint cpGrooveJoint_
type as cpDampedSpring cpDampedSpring_
type as cpDampedRotarySpring cpDampedRotarySpring_
type as cpRotaryLimitJoint cpRotaryLimitJoint_
type as cpRatchetJoint cpRatchetJoint_
type as cpGearJoint cpGearJoint_
type as cpSimpleMotorJoint cpSimpleMotorJoint

type as cpCollisionHandler cpCollisionHandler_
type as cpArbiter cpArbiter_

type as cpSpace cpSpace_
type as cpSpace cpSpace



extern "c"



































end extern



extern "c"

type cpBB

 as cpFloat l, b, r ,t

end type




















function cpBBSegmentQuery( byval bb as cpBB, byval a as cpVect, byval b as cpVect ) as cpFloat
 dim as cpFloat idx = 1.0 / ( b.x - a.x )
 dim as cpFloat tx1 = iif( bb.l = a.x, - (1.0/.0), (bb.l - a.x) * idx )
 dim as cpFloat tx2 = iif( bb.r = a.x, (1.0/.0), (bb.r - a.x) * idx )
 dim as cpFloat txmin = (iif( tx1 >tx2, tx1, tx2 ))
 dim as cpFloat txmax = (iif( tx1 <tx2, tx1, tx2 ))

 dim as cpFloat idy = 1.0 / ( b.y - a.y )
 dim as cpFloat ty1 = iif( bb.b = a.y, - (1.0/.0), (bb.b - a.y) * idy )
 dim as cpFloat ty2 = iif( bb.t = a.y, (1.0/.0), (bb.t - a.y) * idy )
 dim as cpFloat tymin = (iif( ty1 >ty2, ty1, ty2 ))
 dim as cpFloat tymax = (iif( ty1 <ty2, ty1, ty2 ))

 if ( tymin <= txmax and txmin <= tymax ) then
 dim as cpFloat min = (iif( txmin <tymin, txmin, tymin ))
 dim as cpFloat max = (iif( txmax >tymax, txmax, tymax ))

 if (.0 <= max and min <= 1.0 ) then return (iif( min >.0, min, .0 ))
 end if

 return (1.0/.0)
end function







declare function cpBBWrapVect( byval bb as const cpBB, byval v as const cpVect ) as cpVect


end extern







function cpTransformInverse( byval t as cpTransform ) as cpTransform
 dim as cpFloat inv_det = 1.0 / (t.a * t.d - t.c * t.b)
 return type<cpTransform>(t.d*inv_det, -t.b*inv_det, -t.c*inv_det, t.a*inv_det, (t.c*t.ty -t.tx*t.d)*inv_det, (t.tx*t.b -t.a*t.ty)*inv_det)
end function




private function cpTransformbBB( byval t as cpTransform, byval bb as cpBB ) as cpBB
 dim as cpVect center = ( ( type<cpVect>( (type<cpVect>( ((type<cpVect>( (bb.l), (bb.b) ))).x * (1.0 -(.5)), ((type<cpVect>( (bb.l), (bb.b) ))).y * (1.0 -(.5)) )).x + (type<cpVect>( ((type<cpVect>( (bb.r), (bb.t) ))).x * ((.5)), ((type<cpVect>( (bb.r), (bb.t) ))).y * ((.5)) )).x, (type<cpVect>( ((type<cpVect>( (bb.l), (bb.b) ))).x * (1.0 -(.5)), ((type<cpVect>( (bb.l), (bb.b) ))).y * (1.0 -(.5)) )).y + (type<cpVect>( ((type<cpVect>( (bb.r), (bb.t) ))).x * ((.5)), ((type<cpVect>( (bb.r), (bb.t) ))).y * ((.5)) )).y ) ))
 dim as cpFloat hw = (bb.r - bb.l) / 2
 dim as cpFloat hh = (bb.t - bb.b) / 2

 dim as cpFloat a = t.a*hw, b = t.c*hh, d = t.b*hw, e = t.d*hh
 dim as cpFloat hw_max = (iif( (iif( a + b <0, -(a + b), a + b )) <(iif( a -b <0, -(a -b), a -b )), (iif( a + b <0, -(a + b), a + b )), (iif( a -b <0, -(a -b), a -b )) ))
 dim as cpFloat hh_max = (iif( (iif( d + e <0, -(d + e), d + e )) <(iif( d -e <0, -(d -e), d -e )), (iif( d + e <0, -(d + e), d + e )), (iif( d -e <0, -(d -e), d -e )) ))

 return type<cpBB>( type<cpVect>( (t.a*center.x + t.c*center.y + t.tx), (t.b*center.x + t.d*center.y + t.ty) ).x -hw_max, type<cpVect>( (t.a*center.x + t.c*center.y + t.tx), (t.b*center.x + t.d*center.y + t.ty) ).y -hh_max, type<cpVect>( (t.a*center.x + t.c*center.y + t.tx), (t.b*center.x + t.d*center.y + t.ty) ).x + hw_max, type<cpVect>( (t.a*center.x + t.c*center.y + t.tx), (t.b*center.x + t.d*center.y + t.ty) ).y + hh_max)
end function



private function cpTransformRotate( byval radians as cpFloat ) as cpTransform
 dim as cpVect rot = type<cpVect>( (cos( (radians) )), (sin( (radians) )) )
 return type<cpTransform>(rot.x, rot.y, -rot.y, rot.x, .0, .0)
end function

private function cpTransformRigid( byval translate as cpVect, byval radians as cpFloat ) as cpTransform
 dim as cpVect rot = type<cpVect>( (cos( (radians) )), (sin( (radians) )) )
 return type<cpTransform>(rot.x, rot.y, -rot.y, rot.x, translate.x, translate.y)
end function

private function cpTransformRigidInverse( byval t as cpTransform ) as cpTransform
 return type<cpTransform>(t.d, -t.b, -t.c, t.a, (t.c*t.ty -t.tx*t.d), (t.tx*t.b -t.a*t.ty))
end function




private function cpTransformBoneScale( byval v0 as cpVect, byval v1 as cpVect ) as cpTransform
 dim as cpVect d = ( type<cpVect>( (v1).x -(v0).x, (v1).y -(v0).y ) )
 return type<cpTransform>(d.x, d.y, -d.y, d.x, v0.x, v0.y)
end function

private function cpTransformAxialScale( byval axis as cpVect, byval pivot as cpVect, byval scale as cpFloat ) as cpTransform
 dim as cpFloat A = axis.x*axis.y*(scale - 1.0)
 dim as cpFloat B = 1.0 *(1.0 - scale)

 return type<cpTransform>(scale*axis.x*axis.x + axis.y*axis.y, A, A, axis.x*axis.x + scale*axis.y*axis.y, axis.x*B, axis.y*B)
end function


extern "C"

type cpSweep1D as cpSweep1D_
type cpBBTree as cpBBTree_
type cpSpatialIndexClass as cpSpatialIndexClass_
type cpSpaceHash as cpSpaceHash_
type cpSpatialIndexBBFunc as function(byval obj as any ptr) as cpBB
type cpSpatialIndexIteratorFunc as sub(byval obj as any ptr, byval data_ as any ptr)
type cpSpatialIndexQueryFunc as function(byval obj1 as any ptr, byval obj2 as any ptr, byval id as cpCollisionID, byval data_ as any ptr) as cpCollisionID
type cpSpatialIndexSegmentQueryFunc as function(byval obj1 as any ptr, byval obj2 as any ptr, byval data_ as any ptr) as cpFloat

type cpSpatialIndex
 klass as cpSpatialIndexClass ptr
 bbfunc as cpSpatialIndexBBFunc
 staticIndex as cpSpatialIndex ptr
 dynamicIndex as cpSpatialIndex ptr
end type

declare function cpSpaceHashAlloc() as cpSpaceHash ptr
declare function cpSpaceHashInit(byval hash as cpSpaceHash ptr, byval celldim as cpFloat, byval numcells as long, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpSpaceHashNew(byval celldim as cpFloat, byval cells as long, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare sub cpSpaceHashResize(byval hash as cpSpaceHash ptr, byval celldim as cpFloat, byval numcells as long)
declare function cpBBTreeAlloc() as cpBBTree ptr
declare function cpBBTreeInit(byval tree as cpBBTree ptr, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpBBTreeNew(byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare sub cpBBTreeOptimize(byval index as cpSpatialIndex ptr)

type cpBBTreeVelocityFunc as function(byval obj as any ptr) as cpVect

declare sub cpBBTreeSetVelocityFunc(byval index as cpSpatialIndex ptr, byval func as cpBBTreeVelocityFunc)
declare function cpSweep1DAlloc() as cpSweep1D ptr
declare function cpSweep1DInit(byval sweep as cpSweep1D ptr, byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr
declare function cpSweep1DNew(byval bbfunc as cpSpatialIndexBBFunc, byval staticIndex as cpSpatialIndex ptr) as cpSpatialIndex ptr

type cpSpatialIndexDestroyImpl as sub(byval index as cpSpatialIndex ptr)
type cpSpatialIndexCountImpl as function(byval index as cpSpatialIndex ptr) as long
type cpSpatialIndexEachImpl as sub(byval index as cpSpatialIndex ptr, byval func as cpSpatialIndexIteratorFunc, byval data_ as any ptr)
type cpSpatialIndexContainsImpl as function(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue) as cpBool
type cpSpatialIndexInsertImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexRemoveImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexReindexImpl as sub(byval index as cpSpatialIndex ptr)
type cpSpatialIndexReindexObjectImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval hashid as cpHashValue)
type cpSpatialIndexReindexQueryImpl as sub(byval index as cpSpatialIndex ptr, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)
type cpSpatialIndexQueryImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval bb as cpBB, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)
type cpSpatialIndexSegmentQueryImpl as sub(byval index as cpSpatialIndex ptr, byval obj as any ptr, byval a as cpVect, byval b as cpVect, byval t_exit as cpFloat, byval func as cpSpatialIndexSegmentQueryFunc, byval data_ as any ptr)

type cpSpatialIndexClass_
 destroy as cpSpatialIndexDestroyImpl
 count as cpSpatialIndexCountImpl
 each as cpSpatialIndexEachImpl
 contains as cpSpatialIndexContainsImpl
 insert as cpSpatialIndexInsertImpl
 remove as cpSpatialIndexRemoveImpl
 reindex as cpSpatialIndexReindexImpl
 reindexObject as cpSpatialIndexReindexObjectImpl
 reindexQuery as cpSpatialIndexReindexQueryImpl
 query as cpSpatialIndexQueryImpl
 segmentQuery as cpSpatialIndexSegmentQueryImpl
end type

declare sub cpSpatialIndexFree(byval index as cpSpatialIndex ptr)
declare sub cpSpatialIndexCollideStatic(byval dynamicIndex as cpSpatialIndex ptr, byval staticIndex as cpSpatialIndex ptr, byval func as cpSpatialIndexQueryFunc, byval data_ as any ptr)























end extern



extern "C"


declare function cpArbiterGetRestitution(byval arb as const cpArbiter_ ptr) as cpFloat
declare sub cpArbiterSetRestitution(byval arb as cpArbiter_ ptr, byval restitution as cpFloat)
declare function cpArbiterGetFriction(byval arb as const cpArbiter_ ptr) as cpFloat
declare sub cpArbiterSetFriction(byval arb as cpArbiter_ ptr, byval friction as cpFloat)
declare function cpArbiterGetSurfaceVelocity(byval arb as cpArbiter_ ptr) as cpVect
declare sub cpArbiterSetSurfaceVelocity(byval arb as cpArbiter_ ptr, byval vr as cpVect)
declare function cpArbiterGetUserData(byval arb as const cpArbiter_ ptr) as cpDataPointer
declare sub cpArbiterSetUserData(byval arb as cpArbiter_ ptr, byval userData as cpDataPointer)
declare function cpArbiterTotalImpulse(byval arb as const cpArbiter_ ptr) as cpVect
declare function cpArbiterTotalKE(byval arb as const cpArbiter_ ptr) as cpFloat
declare function cpArbiterIgnore(byval arb as cpArbiter_ ptr) as cpBool
declare sub cpArbiterGetShapes(byval arb as const cpArbiter_ ptr, byval a as cpShape_ ptr ptr, byval b as cpShape_ ptr ptr)


declare sub cpArbiterGetBodies(byval arb as const cpArbiter_ ptr, byval a as cpBody_ ptr ptr, byval b as cpBody_ ptr ptr)


type __dummyid_0_cpArbiter
 pointA as cpVect
 pointB as cpVect
 distance as cpFloat
end type

type cpContactPointSet
 count as long
 normal as cpVect
 points(0 to ( 2-1)) as __dummyid_0_cpArbiter
end type

declare function cpArbiterGetContactPointSet(byval arb as const cpArbiter_ ptr) as cpContactPointSet
declare sub cpArbiterSetContactPointSet(byval arb as cpArbiter_ ptr, byval set as cpContactPointSet ptr)
declare function cpArbiterIsFirstContact(byval arb as const cpArbiter_ ptr) as cpBool
declare function cpArbiterIsRemoval(byval arb as const cpArbiter_ ptr) as cpBool
declare function cpArbiterGetCount(byval arb as const cpArbiter_ ptr) as long
declare function cpArbiterGetNormal(byval arb as const cpArbiter_ ptr) as cpVect
declare function cpArbiterGetPointA(byval arb as const cpArbiter_ ptr, byval i as long) as cpVect
declare function cpArbiterGetPointB(byval arb as const cpArbiter_ ptr, byval i as long) as cpVect
declare function cpArbiterGetDepth(byval arb as const cpArbiter_ ptr, byval i as long) as cpFloat
declare function cpArbiterCallWildcardBeginA(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr) as cpBool
declare function cpArbiterCallWildcardBeginB(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr) as cpBool
declare function cpArbiterCallWildcardPreSolveA(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr) as cpBool
declare function cpArbiterCallWildcardPreSolveB(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr) as cpBool
declare sub cpArbiterCallWildcardPostSolveA(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr)
declare sub cpArbiterCallWildcardPostSolveB(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr)
declare sub cpArbiterCallWildcardSeparateA(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr)
declare sub cpArbiterCallWildcardSeparateB(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr)

end extern


extern "C"

type cpBodyType as long
enum
 CP_BODY_TYPE_DYNAMIC
 CP_BODY_TYPE_KINEMATIC
 CP_BODY_TYPE_STATIC
end enum

type cpBodyVelocityFunc as sub(byval body as cpBody_ ptr, byval gravity as cpVect, byval damping as cpFloat, byval dt as cpFloat)
type cpBodyPositionFunc as sub(byval body as cpBody_ ptr, byval dt as cpFloat)

declare function cpBodyAlloc() as cpBody_ ptr
declare function cpBodyInit(byval body as cpBody_ ptr, byval mass as cpFloat, byval moment as cpFloat) as cpBody_ ptr
declare function cpBodyNew(byval mass as cpFloat, byval moment as cpFloat) as cpBody_ ptr
declare function cpBodyNewKinematic() as cpBody_ ptr
declare function cpBodyNewStatic() as cpBody_ ptr
declare sub cpBodyDestroy(byval body as cpBody_ ptr)
declare sub cpBodyFree(byval body as cpBody_ ptr)
declare sub cpBodyActivate(byval body as cpBody_ ptr)
declare sub cpBodyActivateStatic(byval body as cpBody_ ptr, byval filter as cpShape_ ptr)
declare sub cpBodySleep(byval body as cpBody_ ptr)
declare sub cpBodySleepWithGroup(byval body as cpBody_ ptr, byval group as cpBody_ ptr)
declare function cpBodyIsSleeping(byval body as const cpBody_ ptr) as cpBool
declare function cpBodyGetType(byval body as cpBody_ ptr) as cpBodyType
declare sub cpBodySetType(byval body as cpBody_ ptr, byval type_ as cpBodyType)
declare function cpBodyGetSpace(byval body as const cpBody_ ptr) as cpSpace_ ptr
declare function cpBodyGetMass(byval body as const cpBody_ ptr) as cpFloat
declare sub cpBodySetMass(byval body as cpBody_ ptr, byval m as cpFloat)
declare function cpBodyGetMoment(byval body as const cpBody_ ptr) as cpFloat
declare sub cpBodySetMoment(byval body as cpBody_ ptr, byval i as cpFloat)
declare function cpBodyGetPosition(byval body as const cpBody_ ptr) as cpVect
declare sub cpBodySetPosition(byval body as cpBody_ ptr, byval pos_ as cpVect)
declare function cpBodyGetCenterOfGravity(byval body as const cpBody_ ptr) as cpVect
declare sub cpBodySetCenterOfGravity(byval body as cpBody_ ptr, byval cog as cpVect)
declare function cpBodyGetVelocity(byval body as const cpBody_ ptr) as cpVect
declare sub cpBodySetVelocity(byval body as cpBody_ ptr, byval velocity as cpVect)
declare function cpBodyGetForce(byval body as const cpBody_ ptr) as cpVect
declare sub cpBodySetForce(byval body as cpBody_ ptr, byval force as cpVect)
declare function cpBodyGetAngle(byval body as const cpBody_ ptr) as cpFloat
declare sub cpBodySetAngle(byval body as cpBody_ ptr, byval a as cpFloat)
declare function cpBodyGetAngularVelocity(byval body as const cpBody_ ptr) as cpFloat
declare sub cpBodySetAngularVelocity(byval body as cpBody_ ptr, byval angularVelocity as cpFloat)
declare function cpBodyGetTorque(byval body as const cpBody_ ptr) as cpFloat
declare sub cpBodySetTorque(byval body as cpBody_ ptr, byval torque as cpFloat)
declare function cpBodyGetRotation(byval body as const cpBody_ ptr) as cpVect
declare function cpBodyGetUserData(byval body as const cpBody_ ptr) as cpDataPointer
declare sub cpBodySetUserData(byval body as cpBody_ ptr, byval userData as cpDataPointer)
declare sub cpBodySetVelocityUpdateFunc(byval body as cpBody_ ptr, byval velocityFunc as cpBodyVelocityFunc)
declare sub cpBodySetPositionUpdateFunc(byval body as cpBody_ ptr, byval positionFunc as cpBodyPositionFunc)
declare sub cpBodyUpdateVelocity(byval body as cpBody_ ptr, byval gravity as cpVect, byval damping as cpFloat, byval dt as cpFloat)
declare sub cpBodyUpdatePosition(byval body as cpBody_ ptr, byval dt as cpFloat)
declare function cpBodyLocalToWorld(byval body as const cpBody_ ptr, byval point_ as const cpVect) as cpVect
declare function cpBodyWorldToLocal(byval body as const cpBody_ ptr, byval point_ as const cpVect) as cpVect
declare sub cpBodyApplyForceAtWorldPoint(byval body as cpBody_ ptr, byval force as cpVect, byval point_ as cpVect)
declare sub cpBodyApplyForceAtLocalPoint(byval body as cpBody_ ptr, byval force as cpVect, byval point_ as cpVect)
declare sub cpBodyApplyImpulseAtWorldPoint(byval body as cpBody_ ptr, byval impulse as cpVect, byval point_ as cpVect)
declare sub cpBodyApplyImpulseAtLocalPoint(byval body as cpBody_ ptr, byval impulse as cpVect, byval point_ as cpVect)
declare function cpBodyGetVelocityAtWorldPoint(byval body as const cpBody_ ptr, byval point_ as cpVect) as cpVect
declare function cpBodyGetVelocityAtLocalPoint(byval body as const cpBody_ ptr, byval point_ as cpVect) as cpVect
declare function cpBodyKineticEnergy(byval body as const cpBody_ ptr) as cpFloat

type cpBodyShapeIteratorFunc as sub(byval body as cpBody_ ptr, byval shape as cpShape_ ptr, byval data_ as any ptr)

declare sub cpBodyEachShape(byval body as cpBody_ ptr, byval func as cpBodyShapeIteratorFunc, byval data_ as any ptr)

type cpBodyConstraintIteratorFunc as sub(byval body as cpBody_ ptr, byval constraint as cpConstraint_ ptr, byval data_ as any ptr)

declare sub cpBodyEachConstraint(byval body as cpBody_ ptr, byval func as cpBodyConstraintIteratorFunc, byval data_ as any ptr)

type cpBodyArbiterIteratorFunc as sub(byval body as cpBody_ ptr, byval arbiter as cpArbiter_ ptr, byval data_ as any ptr)

declare sub cpBodyEachArbiter(byval body as cpBody_ ptr, byval func as cpBodyArbiterIteratorFunc, byval data_ as any ptr)

end extern

extern "C"

type cpPointQueryInfo
 shape as const cpShape_ ptr
 point as cpVect
 distance as cpFloat
 gradient as cpVect
end type

type cpSegmentQueryInfo
 shape as const cpShape_ ptr
 point as cpVect
 normal as cpVect
 alpha as cpFloat
end type

type cpShapeFilter
 group as cpGroup
 categories as cpBitmask
 mask as cpBitmask
end type



declare sub cpShapeFree(byval shape as cpShape_ ptr)
declare function cpShapeCacheBB(byval shape as cpShape_ ptr) as cpBB
declare function cpShapeUpdate(byval shape as cpShape_ ptr, byval transform as cpTransform) as cpBB
declare function cpShapePointQuery(byval shape as const cpShape_ ptr, byval p as cpVect, byval out_ as cpPointQueryInfo ptr) as cpFloat
declare function cpShapeSegmentQuery(byval shape as const cpShape_ ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat, byval info as cpSegmentQueryInfo ptr) as cpBool
declare function cpShapesCollide(byval a as const cpShape_ ptr, byval b as const cpShape_ ptr) as cpContactPointSet
declare function cpShapeGetSpace(byval shape as const cpShape_ ptr) as cpSpace_ ptr
declare function cpShapeGetBody(byval shape as const cpShape_ ptr) as cpBody_ ptr
declare sub cpShapeSetBody(byval shape as cpShape_ ptr, byval body as cpBody_ ptr)
declare function cpShapeGetMass(byval shape as cpShape_ ptr) as cpFloat
declare sub cpShapeSetMass(byval shape as cpShape_ ptr, byval mass as cpFloat)
declare function cpShapeGetDensity(byval shape as cpShape_ ptr) as cpFloat
declare sub cpShapeSetDensity(byval shape as cpShape_ ptr, byval density as cpFloat)
declare function cpShapeGetMoment(byval shape as cpShape_ ptr) as cpFloat
declare function cpShapeGetArea(byval shape as cpShape_ ptr) as cpFloat
declare function cpShapeGetCenterOfGravity(byval shape as cpShape_ ptr) as cpVect
declare function cpShapeGetBB(byval shape as const cpShape_ ptr) as cpBB
declare function cpShapeGetSensor(byval shape as const cpShape_ ptr) as cpBool
declare sub cpShapeSetSensor(byval shape as cpShape_ ptr, byval sensor as cpBool)
declare function cpShapeGetElasticity(byval shape as const cpShape_ ptr) as cpFloat
declare sub cpShapeSetElasticity(byval shape as cpShape_ ptr, byval elasticity as cpFloat)
declare function cpShapeGetFriction(byval shape as const cpShape_ ptr) as cpFloat
declare sub cpShapeSetFriction(byval shape as cpShape_ ptr, byval friction as cpFloat)
declare function cpShapeGetSurfaceVelocity(byval shape as const cpShape_ ptr) as cpVect
declare sub cpShapeSetSurfaceVelocity(byval shape as cpShape_ ptr, byval surfaceVelocity as cpVect)
declare function cpShapeGetUserData(byval shape as const cpShape_ ptr) as cpDataPointer
declare sub cpShapeSetUserData(byval shape as cpShape_ ptr, byval userData as cpDataPointer)
declare function cpShapeGetCollisionType(byval shape as const cpShape_ ptr) as cpCollisionType
declare sub cpShapeSetCollisionType(byval shape as cpShape_ ptr, byval collisionType as cpCollisionType)
declare function cpShapeGetFilter(byval shape as const cpShape_ ptr) as cpShapeFilter
declare sub cpShapeSetFilter(byval shape as cpShape_ ptr, byval filter as cpShapeFilter)
declare function cpCircleShapeAlloc() as cpCircleShape_ ptr
declare function cpCircleShapeInit(byval circle_ as cpCircleShape_ ptr, byval body as cpBody_ ptr, byval radius as cpFloat, byval offset as cpVect) as cpCircleShape_ ptr
declare function cpCircleShapeNew(byval body as cpBody_ ptr, byval radius as cpFloat, byval offset as cpVect) as cpShape_ ptr
declare function cpCircleShapeGetOffset(byval shape as const cpShape_ ptr) as cpVect
declare function cpCircleShapeGetRadius(byval shape as const cpShape_ ptr) as cpFloat
declare function cpSegmentShapeAlloc() as cpSegmentShape_ ptr
declare function cpSegmentShapeInit(byval seg as cpSegmentShape_ ptr, byval body as cpBody_ ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat) as cpSegmentShape_ ptr
declare function cpSegmentShapeNew(byval body as cpBody_ ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat) as cpShape_ ptr
declare sub cpSegmentShapeSetNeighbors(byval shape as cpShape_ ptr, byval prev as cpVect, byval next_ as cpVect)
declare function cpSegmentShapeGetA(byval shape as const cpShape_ ptr) as cpVect
declare function cpSegmentShapeGetB(byval shape as const cpShape_ ptr) as cpVect
declare function cpSegmentShapeGetNormal(byval shape as const cpShape_ ptr) as cpVect
declare function cpSegmentShapeGetRadius(byval shape as const cpShape_ ptr) as cpFloat

end extern

extern "C"

declare function cpPolyShapeAlloc() as cpPolyShape_ ptr
declare function cpPolyShapeInit(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpPolyShapeInitRaw(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpPolyShapeNew(byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval transform as cpTransform, byval radius as cpFloat) as cpShape_ ptr
declare function cpPolyShapeNewRaw(byval body as cpBody_ ptr, byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat) as cpShape_ ptr
declare function cpBoxShapeInit(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpBoxShapeInit2(byval poly as cpPolyShape_ ptr, byval body as cpBody_ ptr, byval box as cpBB, byval radius as cpFloat) as cpPolyShape_ ptr
declare function cpBoxShapeNew(byval body as cpBody_ ptr, byval width_ as cpFloat, byval height as cpFloat, byval radius as cpFloat) as cpShape_ ptr
declare function cpBoxShapeNew2(byval body as cpBody_ ptr, byval box as cpBB, byval radius as cpFloat) as cpShape_ ptr
declare function cpPolyShapeGetCount(byval shape as const cpShape_ ptr) as long
declare function cpPolyShapeGetVert(byval shape as const cpShape_ ptr, byval index as long) as cpVect
declare function cpPolyShapeGetRadius(byval shape as const cpShape_ ptr) as cpFloat

end extern


extern "C"

type cpConstraintPreSolveFunc as sub(byval constraint as cpConstraint_ ptr, byval space_ as cpSpace_ ptr)
type cpConstraintPostSolveFunc as sub(byval constraint as cpConstraint_ ptr, byval space_ as cpSpace_ ptr)

declare sub cpConstraintDestroy(byval constraint as cpConstraint_ ptr)
declare sub cpConstraintFree(byval constraint as cpConstraint_ ptr)
declare function cpConstraintGetSpace(byval constraint as const cpConstraint_ ptr) as cpSpace_ ptr
declare function cpConstraintGetBodyA(byval constraint as const cpConstraint_ ptr) as cpBody_ ptr
declare function cpConstraintGetBodyB(byval constraint as const cpConstraint_ ptr) as cpBody_ ptr
declare function cpConstraintGetMaxForce(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetMaxForce(byval constraint as cpConstraint_ ptr, byval maxForce as cpFloat)
declare function cpConstraintGetErrorBias(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetErrorBias(byval constraint as cpConstraint_ ptr, byval errorBias as cpFloat)
declare function cpConstraintGetMaxBias(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetMaxBias(byval constraint as cpConstraint_ ptr, byval maxBias as cpFloat)
declare function cpConstraintGetCollideBodies(byval constraint as const cpConstraint_ ptr) as cpBool
declare sub cpConstraintSetCollideBodies(byval constraint as cpConstraint_ ptr, byval collideBodies as cpBool)
declare function cpConstraintGetPreSolveFunc(byval constraint as const cpConstraint_ ptr) as cpConstraintPreSolveFunc
declare sub cpConstraintSetPreSolveFunc(byval constraint as cpConstraint_ ptr, byval preSolveFunc as cpConstraintPreSolveFunc)
declare function cpConstraintGetPostSolveFunc(byval constraint as const cpConstraint_ ptr) as cpConstraintPostSolveFunc
declare sub cpConstraintSetPostSolveFunc(byval constraint as cpConstraint_ ptr, byval postSolveFunc as cpConstraintPostSolveFunc)
declare function cpConstraintGetUserData(byval constraint as const cpConstraint_ ptr) as cpDataPointer
declare sub cpConstraintSetUserData(byval constraint as cpConstraint_ ptr, byval userData as cpDataPointer)
declare function cpConstraintGetImpulse(byval constraint as cpConstraint_ ptr) as cpFloat

end extern


extern "C"

type cpSpaceArbiterApplyImpulseFunc as sub(byval arb as cpArbiter_ ptr)
type cpCollisionBeginFunc as function(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr, byval userData as cpDataPointer) as cpBool
type cpCollisionPreSolveFunc as function(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr, byval userData as cpDataPointer) as cpBool
type cpCollisionPostSolveFunc as sub(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr, byval userData as cpDataPointer)
type cpCollisionSeparateFunc as sub(byval arb as cpArbiter_ ptr, byval space_ as cpSpace_ ptr, byval userData as cpDataPointer)

type cpCollisionHandler
 typeA as cpCollisionType
 typeB as cpCollisionType
 beginFunc as cpCollisionBeginFunc
 preSolveFunc as cpCollisionPreSolveFunc
 postSolveFunc as cpCollisionPostSolveFunc
 separateFunc as cpCollisionSeparateFunc
 userData as cpDataPointer
end type

declare function cpSpaceAlloc() as cpSpace_ ptr
declare function cpSpaceInit(byval space_ as cpSpace_ ptr) as cpSpace_ ptr
declare function cpSpaceNew() as cpSpace_ ptr
declare sub cpSpaceDestroy(byval space_ as cpSpace_ ptr)
declare sub cpSpaceFree(byval space_ as cpSpace_ ptr)
declare function cpSpaceGetIterations(byval space_ as const cpSpace_ ptr) as long
declare sub cpSpaceSetIterations(byval space_ as cpSpace_ ptr, byval iterations as long)
declare function cpSpaceGetGravity(byval space_ as const cpSpace_ ptr) as cpVect
declare sub cpSpaceSetGravity(byval space_ as cpSpace_ ptr, byval gravity as cpVect)
declare function cpSpaceGetDamping(byval space_ as const cpSpace_ ptr) as cpFloat
declare sub cpSpaceSetDamping(byval space_ as cpSpace_ ptr, byval damping as cpFloat)
declare function cpSpaceGetIdleSpeedThreshold(byval space_ as const cpSpace_ ptr) as cpFloat
declare sub cpSpaceSetIdleSpeedThreshold(byval space_ as cpSpace_ ptr, byval idleSpeedThreshold as cpFloat)
declare function cpSpaceGetSleepTimeThreshold(byval space_ as const cpSpace_ ptr) as cpFloat
declare sub cpSpaceSetSleepTimeThreshold(byval space_ as cpSpace_ ptr, byval sleepTimeThreshold as cpFloat)
declare function cpSpaceGetCollisionSlop(byval space_ as const cpSpace_ ptr) as cpFloat
declare sub cpSpaceSetCollisionSlop(byval space_ as cpSpace_ ptr, byval collisionSlop as cpFloat)
declare function cpSpaceGetCollisionBias(byval space_ as const cpSpace_ ptr) as cpFloat
declare sub cpSpaceSetCollisionBias(byval space_ as cpSpace_ ptr, byval collisionBias as cpFloat)
declare function cpSpaceGetCollisionPersistence(byval space_ as const cpSpace_ ptr) as cpTimestamp
declare sub cpSpaceSetCollisionPersistence(byval space_ as cpSpace_ ptr, byval collisionPersistence as cpTimestamp)
declare function cpSpaceGetUserData(byval space_ as const cpSpace_ ptr) as cpDataPointer
declare sub cpSpaceSetUserData(byval space_ as cpSpace_ ptr, byval userData as cpDataPointer)
declare function cpSpaceGetStaticBody(byval space_ as const cpSpace_ ptr) as cpBody_ ptr
declare function cpSpaceGetCurrentTimeStep(byval space_ as const cpSpace_ ptr) as cpFloat
declare function cpSpaceIsLocked(byval space_ as cpSpace_ ptr) as cpBool
declare function cpSpaceAddDefaultCollisionHandler(byval space_ as cpSpace_ ptr) as cpCollisionHandler ptr
declare function cpSpaceAddCollisionHandler(byval space_ as cpSpace_ ptr, byval a as cpCollisionType, byval b as cpCollisionType) as cpCollisionHandler ptr
declare function cpSpaceAddWildcardHandler(byval space_ as cpSpace_ ptr, byval type_ as cpCollisionType) as cpCollisionHandler ptr
declare function cpSpaceAddShape(byval space_ as cpSpace_ ptr, byval shape as cpShape_ ptr) as cpShape_ ptr
declare function cpSpaceAddBody(byval space_ as cpSpace_ ptr, byval body as cpBody_ ptr) as cpBody_ ptr
declare function cpSpaceAddConstraint(byval space_ as cpSpace_ ptr, byval constraint as cpConstraint_ ptr) as cpConstraint_ ptr
declare sub cpSpaceRemoveShape(byval space_ as cpSpace_ ptr, byval shape as cpShape_ ptr)
declare sub cpSpaceRemoveBody(byval space_ as cpSpace_ ptr, byval body as cpBody_ ptr)
declare sub cpSpaceRemoveConstraint(byval space_ as cpSpace_ ptr, byval constraint as cpConstraint_ ptr)
declare function cpSpaceContainsShape(byval space_ as cpSpace_ ptr, byval shape as cpShape_ ptr) as cpBool
declare function cpSpaceContainsBody(byval space_ as cpSpace_ ptr, byval body as cpBody_ ptr) as cpBool
declare function cpSpaceContainsConstraint(byval space_ as cpSpace_ ptr, byval constraint as cpConstraint_ ptr) as cpBool

type cpPostStepFunc as sub(byval space_ as cpSpace_ ptr, byval key as any ptr, byval data_ as any ptr)

declare function cpSpaceAddPostStepCallback(byval space_ as cpSpace_ ptr, byval func as cpPostStepFunc, byval key as any ptr, byval data_ as any ptr) as cpBool

type cpSpacePointQueryFunc as sub(byval shape as cpShape_ ptr, byval point_ as cpVect, byval distance as cpFloat, byval gradient as cpVect, byval data_ as any ptr)

declare sub cpSpacePointQuery(byval space_ as cpSpace_ ptr, byval point_ as cpVect, byval maxDistance as cpFloat, byval filter as cpShapeFilter, byval func as cpSpacePointQueryFunc, byval data_ as any ptr)
declare function cpSpacePointQueryNearest(byval space_ as cpSpace_ ptr, byval point_ as cpVect, byval maxDistance as cpFloat, byval filter as cpShapeFilter, byval out_ as cpPointQueryInfo ptr) as cpShape_ ptr

type cpSpaceSegmentQueryFunc as sub(byval shape as cpShape_ ptr, byval point_ as cpVect, byval normal as cpVect, byval alpha as cpFloat, byval data_ as any ptr)

declare sub cpSpaceSegmentQuery(byval space_ as cpSpace_ ptr, byval start as cpVect, byval end_ as cpVect, byval radius as cpFloat, byval filter as cpShapeFilter, byval func as cpSpaceSegmentQueryFunc, byval data_ as any ptr)
declare function cpSpaceSegmentQueryFirst(byval space_ as cpSpace_ ptr, byval start as cpVect, byval end_ as cpVect, byval radius as cpFloat, byval filter as cpShapeFilter, byval out_ as cpSegmentQueryInfo ptr) as cpShape_ ptr

type cpSpaceBBQueryFunc as sub(byval shape as cpShape_ ptr, byval data_ as any ptr)

declare sub cpSpaceBBQuery(byval space_ as cpSpace_ ptr, byval bb as cpBB, byval filter as cpShapeFilter, byval func as cpSpaceBBQueryFunc, byval data_ as any ptr)

type cpSpaceShapeQueryFunc as sub(byval shape as cpShape_ ptr, byval points as cpContactPointSet ptr, byval data_ as any ptr)

declare function cpSpaceShapeQuery(byval space_ as cpSpace_ ptr, byval shape as cpShape_ ptr, byval func as cpSpaceShapeQueryFunc, byval data_ as any ptr) as cpBool

type cpSpaceBodyIteratorFunc as sub(byval body as cpBody_ ptr, byval data_ as any ptr)

declare sub cpSpaceEachBody(byval space_ as cpSpace_ ptr, byval func as cpSpaceBodyIteratorFunc, byval data_ as any ptr)

type cpSpaceShapeIteratorFunc as sub(byval shape as cpShape_ ptr, byval data_ as any ptr)

declare sub cpSpaceEachShape(byval space_ as cpSpace_ ptr, byval func as cpSpaceShapeIteratorFunc, byval data_ as any ptr)

type cpSpaceConstraintIteratorFunc as sub(byval constraint as cpConstraint_ ptr, byval data_ as any ptr)

declare sub cpSpaceEachConstraint(byval space_ as cpSpace_ ptr, byval func as cpSpaceConstraintIteratorFunc, byval data_ as any ptr)
declare sub cpSpaceReindexStatic(byval space_ as cpSpace_ ptr)
declare sub cpSpaceReindexShape(byval space_ as cpSpace_ ptr, byval shape as cpShape_ ptr)
declare sub cpSpaceReindexShapesForBody(byval space_ as cpSpace_ ptr, byval body as cpBody_ ptr)
declare sub cpSpaceUseSpatialHash(byval space_ as cpSpace_ ptr, byval dim_ as cpFloat, byval count as long)
declare sub cpSpaceStep(byval space_ as cpSpace_ ptr, byval dt as cpFloat)

type cpSpaceDebugColor
 r as single
 g as single
 b as single
 a as single
end type

type cpSpaceDebugDrawCircleImpl as sub(byval pos_ as cpVect, byval angle as cpFloat, byval radius as cpFloat, byval outlineColor as cpSpaceDebugColor, byval fillColor as cpSpaceDebugColor, byval data_ as cpDataPointer ptr)
type cpSpaceDebugDrawSegmentImpl as sub(byval a as cpVect, byval b as cpVect, byval color_ as cpSpaceDebugColor, byval data_ as cpDataPointer ptr)
type cpSpaceDebugDrawFatSegmentImpl as sub(byval a as cpVect, byval b as cpVect, byval radius as cpFloat, byval outlineColor as cpSpaceDebugColor, byval fillColor as cpSpaceDebugColor, byval data_ as cpDataPointer ptr)
type cpSpaceDebugDrawPolygonImpl as sub(byval count as long, byval verts as const cpVect ptr, byval radius as cpFloat, byval outlineColor as cpSpaceDebugColor, byval fillColor as cpSpaceDebugColor, byval data_ as cpDataPointer ptr)
type cpSpaceDebugDrawDotImpl as sub(byval size as cpFloat, byval pos_ as cpVect, byval color_ as cpSpaceDebugColor, byval data_ as cpDataPointer ptr)
type cpSpaceDebugDrawColorForShapeImpl as function(byval shape as cpShape_ ptr, byval data_ as cpDataPointer ptr) as cpSpaceDebugColor

type cpSpaceDebugDrawFlags as long
enum
 CP_SPACE_DEBUG_DRAW_SHAPES = 1 shl 0
 CP_SPACE_DEBUG_DRAW_CONSTRAINTS = 1 shl 1
 CP_SPACE_DEBUG_DRAW_COLLISION_POINTS = 1 shl 2
end enum

type cpSpaceDebugDrawOptions
 drawCircle as cpSpaceDebugDrawCircleImpl
 drawSegment as cpSpaceDebugDrawSegmentImpl
 drawFatSegment as cpSpaceDebugDrawFatSegmentImpl
 drawPolygon as cpSpaceDebugDrawPolygonImpl
 drawDot as cpSpaceDebugDrawDotImpl
 flags as cpSpaceDebugDrawFlags
 shapeOutlineColor as cpSpaceDebugColor
 colorForShape as cpSpaceDebugDrawColorForShapeImpl
 constraintColor as cpSpaceDebugColor
 collisionPointColor as cpSpaceDebugColor
 data as cpDataPointer
end type

declare sub cpSpaceDebugDraw(byval space_ as cpSpace_ ptr, byval options as cpSpaceDebugDrawOptions ptr)

end extern



extern as const zstring ptr cpVersionString

declare sub cpEnableSegmentToSegmentCollisions()

declare function cpMomentForCircle(byval m as cpFloat, byval r1 as cpFloat, byval r2 as cpFloat, byval offset as cpVect) as cpFloat

declare function cpAreaForCircle(byval r1 as cpFloat, byval r2 as cpFloat) as cpFloat

declare function cpMomentForSegment(byval m as cpFloat, byval a as cpVect, byval b as cpVect) as cpFloat

declare function cpAreaForSegment(byval a as cpVect, byval b as cpVect, byval r as cpFloat) as cpFloat

declare function cpMomentForPoly(byval m as cpFloat, byval numVerts as integer, byval verts as const cpVect ptr, byval offset as cpVect) as cpFloat

declare function cpAreaForPoly(byval numVerts as const integer, byval verts as const cpVect ptr) as cpFloat

declare function cpCentroidForPoly(byval numVerts as const integer, byval verts as const cpVect ptr) as cpVect

declare sub cpRecenterPoly(byval numVerts as const integer, byval verts as cpVect ptr)

declare function cpMomentForBox(byval m as cpFloat, byval width as cpFloat, byval height as cpFloat) as cpFloat

declare function cpMomentForBox2(byval m as cpFloat, byval box as cpBB) as cpFloat

declare function cpConvexHull(byval count as integer, byval verts as cpVect ptr, byval result as cpVect ptr, byval first as integer ptr, byval tol as cpFloat) as integer



private function cpClosetPointOnSegment(byval p as const cpVect, byval a as const cpVect, byval b as const cpVect) as cpVect
 dim as cpVect delta = ( type<cpVect>( (a).x -(b).x, (a).y -(b).y ) )
 dim as cpFloat t = ( ( (iif( (iif( 1.0 / 1.0 <.01.0 / 1.0, 1.0 / 1.0, .01.0 / 1.0 )) >1.01.0 / 1.0, (iif( 1.0 / 1.0 <.01.0 / 1.0, 1.0 / 1.0, .01.0 / 1.0 )), 1.01.0 / 1.0 )) ) )
 return ( type<cpVect>( (b).x + (type<cpVect>( (delta).x * (t), (delta).y * (t) )).x, (b).y + (type<cpVect>( (delta).x * (t), (delta).y * (t) )).y ) )
end function

operator +(byval v1 as const cpVect, byval v2 as const cpVect) as cpVect
 return ( type<cpVect>( (v1).x + (v2).x, (v1).y + (v2).y ) )
end operator

operator -(byval v1 as const cpVect, byval v2 as const cpVect) as cpVect
 return ( type<cpVect>( (v1).x -(v2).x, (v1).y -(v2).y ) )
end operator

operator =(byval v1 as const cpVect, byval v2 as const cpVect) as cpBool
 return iif(( (v1).x =(v2).x ) and ( (v1).y =(v2).y ), 1, 0)
end operator

operator -(byval v as const cpVect) as cpVect
 return type<cpVect>( -(v).x, -(v).y )
end operator

end extern






type easyChipmunk_ as easyChipmunk

type physicsObject
public:
 declare constructor(byref id as string)
 declare destructor()

 declare property id() as string

 declare property getPointer() as any ptr

 declare property setBody(byval b as cpBody ptr)
 declare property setShape(byval s as cpShape ptr)
 declare property setConstraint(byval c as cpConstraint ptr)

 declare property getBody() as cpBody ptr
 declare property getShape() as cpShape ptr
 declare property getConstraint() as cpConstraint ptr

 declare function isObjectType (byval typeToCheck as integer) as ubyte

 declare function userDataAlloc ( byval size as integer ) as ubyte

 union
 _body as cpBody ptr
 _shape as cpShape ptr
 _constraint as cpConstraint ptr
 end union
 userData as any ptr
 _next as physicsObject ptr
private:
 declare sub _destruct()
 _id as string
 _type as integer
 _allocatedUD as ubyte
end type

type physicsObjectList
public:
 declare constructor( byref listIdentifier as string, byval instance as easyChipmunk_ ptr )
 declare destructor( )

 declare property listName() as string

 declare property getObjectById (byref index as string) as physicsObject ptr

 declare property getObjectByPtr (byval index as any ptr) as physicsObject ptr

 declare function addBody (byval objectPointer as cpBody ptr, byref id as string="") as physicsObject ptr

 declare function addShape (byval objectPointer as cpShape ptr, byref id as string="") as physicsObject ptr

 declare function addConstraint (byval objectPointer as cpConstraint ptr, byref id as string="") as physicsObject ptr

 declare sub removeObjectById( byref id as string )

 declare sub removeObjectByPtr( byval physObj as physicsObject ptr )

 declare function hasObject( byval objectPointer as any ptr ) as ubyte

 declare function eachObject (byval objectType as integer, byval fn as function (byval as physicsObjectList ptr, byval as physicsObject ptr, byval as any ptr) as ubyte, byval udata as any ptr = 0 ) as integer

 _next as physicsObjectList ptr
private:
 listId as string
 objects as physicsObject ptr
 ec as easyChipmunk_ ptr
end type

type ecUpdateFunc as sub( byval self as any ptr )
type easyChipmunk
public:
 declare constructor()
 declare destructor()

 declare function isUsingThread() as ubyte

 declare sub simulate()
 declare sub _DOSIMULATIONSTEP()

 declare property physicsTick() as double
 declare property physicsTick(byval newValue as double)
 declare property deltaTime() as double

 declare sub lock()
 declare sub unlock()

 declare property list ( byref id as string ) as physicsObjectList ptr

 declare function newList ( byref id as string ) as physicsObjectList ptr

 declare sub removeList( byref id as string )

 declare function objectInList ( byval objectPointer as any ptr ) as physicsObjectList ptr

 declare function eachObject (byval objectType as integer, byval fn as function (byval as physicsObjectList ptr, byval as physicsObject ptr, byval as any ptr) as ubyte, byval udata as any ptr = 0 ) as integer

 declare function saveScene( byref path as string ) as ubyte
 declare function loadScene( byref path as string ) as ubyte

 declare static sub physicsThread( byval self as any ptr )
 thread as any ptr
 mutex as any ptr
 killme as ubyte

 space as cpSpace ptr
 onUpdate as ecUpdateFunc

 lists as physicsObjectList ptr

 currentTime as double
 accumulator as double

 userData as any ptr

 pause as ubyte
private:
 _deltaTime as cpFloat
 _physicsTick as double
end type


constructor physicsObject( byref i as string )
 this._id = i
 this._type = 0
 this.userData = 0
 this._allocatedUD = 0
 this._next = 0
end constructor

destructor physicsObject()
 this._id=""
 this._destruct()
 if this._allocatedUD then
 if this.userData then deallocate this.userData
 this.userData = 0
 end if
 if this._next then delete this._next
end destructor

property physicsObject.id() as string
 return this._id
end property

property physicsObject.getPointer() as any ptr
 select case this._type
 case 1
 return cptr( any ptr, this._body )
 case 2
 return cptr( any ptr, this._shape )
 case 4
 return cptr( any ptr, this._constraint )
 end select
 return 0
end property

property physicsObject.setBody( byval b as cpBody ptr )
 this._destruct()
 this._type = 1
 this._body = b
end property

property physicsObject.setShape( byval s as cpShape ptr )
 this._destruct()
 this._type = 2
 this._shape = s
end property

property physicsObject.setConstraint( byval c as cpConstraint ptr )
 this._destruct()
 this._type = 4
 this._constraint = c
end property

property physicsObject.getBody( ) as cpBody ptr
 if this._type <> 1 then return 0
 return this._body
end property

property physicsObject.getShape( ) as cpShape ptr
 if this._type <> 2 then return 0
 return this._shape
end property

property physicsObject.getConstraint( ) as cpConstraint ptr
 if this._type <> 4 then return 0
 return this._constraint
end property

function physicsObject.isObjectType( byval typeToCheck as integer ) as ubyte
 return (this._type = typeToCheck)
end function

function physicsObject.userDataAlloc( byval size as integer ) as ubyte
 if size = 0 then
 if this.userData then deallocate this.userData
 this.userData = 0
 this._allocatedUD = 0
 else
 dim as any ptr temp = reallocate( this.userData, size )
 if temp = 0 then return 0
 this.userData = temp
 this._allocatedUD = 1
 end if
 return 1
end function

sub physicsObject._destruct()
 if this._type = 0 then return
 select case this._type
 case 1
 cpBodyFree( this._body )
 this._body = 0
 case 2
 cpShapeFree( this._shape )
 this._shape = 0
 case 4
 cpConstraintFree( this._constraint )
 this._constraint = 0
 end select
end sub


constructor physicsObjectList( byref listIdentifier as string, byval instance as easyChipmunk_ ptr )
 this.objects = 0
 this.listId = listIdentifier
 this.ec = instance
 this._next = 0
end constructor

destructor physicsObjectList( )
 if this.objects then delete this.objects
 if this._next then delete this._next
 this.listId = ""
end destructor

property physicsObjectList.listName() as string
 return this.listId
end property

property physicsObjectList.getObjectById(byref index as string) as physicsObject ptr
 dim as physicsObject ptr current = this.objects
 if current = 0 then return 0
 do
 if ( current->id = index ) then return current
 current = current->_next
 loop until current = 0
 return 0
end property

property physicsObjectList.getObjectByPtr(byval index as any ptr) as physicsObject ptr
 dim as physicsObject ptr current = this.objects
 if current = 0 then return 0
 do
 if ( current->getPointer = index ) then return current
 current = current->_next
 loop until current = 0
 return 0
end property

function physicsObjectList.addBody(byval objectPointer as cpBody ptr, byref id as string="") as physicsObject ptr
 dim as physicsObject ptr node = 0, current = this.objects
 dim as string stringId = id

 if id = "" then stringId = "body_<0x" & hex( cint( objectPointer ) ) & ">"

 if objectPointer = 0 then return 0

 node = new physicsObject( stringId )
 node->setBody = objectPointer
 node->_next = 0
 cpSpaceAddBody( this.ec->space, node->getBody )

 if ( current = 0 ) then
 this.objects = node
 return node
 else
 do
 if ( current->_next = 0 ) then
 current->_next = node
 return node
 end if
 current = current->_next
 loop until current = 0
 end if
 return 0
end function

function physicsObjectList.addShape(byval objectPointer as cpShape ptr, byref id as string="") as physicsObject ptr
 dim as physicsObject ptr node = 0, current = this.objects
 dim as string stringId = id

 if id = "" then stringId = "shape_<0x" & hex( cint( objectPointer ) ) & ">"

 if objectPointer = 0 then return 0

 node = new physicsObject( stringId )
 node->setShape = objectPointer
 node->_next = 0
 cpSpaceAddShape( this.ec->space, node->getShape )

 if ( current = 0 ) then
 this.objects = node
 return node
 else
 do
 if ( current->_next = 0 ) then
 current->_next = node
 return node
 end if
 current = current->_next
 loop until current = 0
 end if
 return 0
end function

function physicsObjectList.addConstraint(byval objectPointer as cpConstraint ptr, byref id as string="") as physicsObject ptr
 dim as physicsObject ptr node = 0, current = this.objects
 dim as string stringId = id

 if id = "" then stringId = "object_<0x" & hex( cint( objectPointer ) ) & ">"

 if objectPointer = 0 then return 0

 node = new physicsObject( stringId )
 node->setConstraint = objectPointer
 node->_next = 0
 open cons for output as #1
 print #1, "Adding a constraint to this objects list (" & this.listId & ")"
 print #1, "Space: 0x" & hex( cint( this.ec->space ) ), "Constraint: 0x" & hex( cint( objectPointer ) )
 print #1, "Constraint bodies: body<0x" & hex( cint( cpConstraintGetBodyA(objectPointer) ) ) & ">-=-body<0x" & hex( cint( cpConstraintGetBodyB(objectPointer) ) ) & ">"
 cpSpaceAddConstraint( this.ec->space, node->getConstraint )
 print #1, "++++"
 close #1

 if ( current = 0 ) then
 this.objects = node
 return node
 else
 do
 if ( current->_next = 0 ) then
 current->_next = node
 return node
 end if
 current = current->_next
 loop until current = 0
 end if
 return 0
end function

sub physicsObjectList.removeObjectById( byref id as string )
 if this.objects = 0 then return
 dim as physicsObject ptr current = this.objects, prev = 0
 do
 if ( current->id = id ) then
 if prev = 0 then this.objects = current->_next else prev->_next = current->_next
 current->_next = 0
 if current->isObjectType( 1 ) then
 cpSpaceRemoveBody( this.ec->space, current->getBody )
 elseif current->isObjectType( 2 ) then
 cpSpaceRemoveShape( this.ec->space, current->getShape )
 elseif current->isObjectType( 4 ) then
 cpSpaceRemoveConstraint( this.ec->space, current->getConstraint )
 end if
 delete current
 end if
 prev = current
 current = current->_next
 loop until current = 0
 return
end sub

sub physicsObjectList.removeObjectByPtr( byval physObj as physicsObject ptr )
 if this.objects = 0 then return
 dim as physicsObject ptr current = this.objects, prev = 0
 do
 if ( current->getPointer = physObj ) then
 if prev = 0 then this.objects = current->_next else prev->_next = current->_next
 current->_next = 0
 if current->isObjectType( 1 ) then
 cpSpaceRemoveBody( this.ec->space, current->getBody )
 elseif current->isObjectType( 2 ) then
 cpSpaceRemoveShape( this.ec->space, current->getShape )
 elseif current->isObjectType( 4 ) then
 cpSpaceRemoveConstraint( this.ec->space, current->getConstraint )
 end if
 delete current
 end if
 prev = current
 current = current->_next
 loop until current = 0
 return
end sub

function physicsObjectList.hasObject( byval objectPointer as any ptr ) as ubyte
 dim as physicsObject ptr current = this.objects
 if current = 0 then return 0
 do
 if current->getPointer = objectPointer then return 1
 current = current->_next
 loop until current = 0
 return 0
end function

function physicsObjectList.eachObject(byval objectType as integer, byval fn as function( byval as physicsObjectList ptr, byval as physicsObject ptr, byval as any ptr) as ubyte, byval udata as any ptr = 0 ) as integer
 dim as physicsObject ptr current = this.objects
 if current = 0 then return 0
 dim count as integer = 0
 do
 if current->isObjectType( objectType ) then
 var r = fn( @this, current, udata )
 count += 1
 if r = 0 then exit do
 end if
 current = current->_next
 loop until current = 0
 return count
end function


constructor easyChipmunk()
 this.onUpdate = 0
 this.userData = 0
 this.space = cpSpaceNew()
 this.currentTime = Timer
 this.accumulator = .0
 this.physicsTick = 60.0
 this.pause = 1
 this.killme = 0
 this.mutex = mutexcreate()
 this.thread = threadcreate( @physicsThread, @this )
 this.lists = 0
end constructor

destructor easyChipmunk()
 this.lock()
 this.killme = 1
 this.unlock()
 threadwait( this.thread )
 mutexdestroy( this.mutex )
 if this.lists then delete this.lists
 cpSpaceFree( this.space )
end destructor

function easyChipmunk.isUsingThread() as ubyte
 return 1
end function

sub easyChipmunk.simulate()
end sub

sub easyChipmunk._DOSIMULATIONSTEP()
 dim as double newTime = Timer()
 dim as double ftime = newTime - this.currentTime
 this.accumulator += ftime
 if not this.pause then
 while this.accumulator >= this.deltaTime
 cpSpaceStep( this.space, this.deltaTime )
 if this.onUpdate then this.onUpdate( @this )
 this.accumulator -= this.deltaTime
 wend
 end if
 this.currentTime = newTime
end sub

property easyChipmunk.physicsTick() as double
 return this._physicsTick
end property

property easyChipmunk.physicsTick( byval newValue as double )
 this._physicsTick = newValue
 this._deltaTime = 1.0 / newValue
 this.unlock()
end property

property easyChipmunk.deltaTime() as double
 return this._deltaTime
end property

sub easyChipmunk.lock()
 mutexlock( this.mutex )
end sub

sub easyChipmunk.unlock()
 mutexunlock( this.mutex )
end sub

property easyChipmunk.list( byref id as string ) as physicsObjectList ptr
 if this.lists = 0 then
 return this.newList( id )
 end if
 dim as physicsObjectList ptr node = this.lists
 do
 if node->listName = id then return node
 node = node->_next
 loop until node = 0
 return this.newList( id )
end property

function easyChipmunk.newList ( byref id as string ) as physicsObjectList ptr
 if id = "" then return 0
 dim as physicsObjectList ptr node = this.lists
 if node = 0 then
 this.lists = new physicsObjectList( id, @this )
 return this.lists
 end if
 do
 if node->_next = 0 then
 node->_next = new physicsObjectList( id, @this )
 return node->_next
 end if
 if node->listName = id then return node
 node = node->_next
 loop until node = 0
 return 0
end function

sub easyChipmunk.removeList( byref id as string )
 if this.lists = 0 then return
 dim as physicsObjectList ptr current = this.lists, prev = 0
 do
 if current->listName = id then
 if prev = 0 then this.lists = current->_next else prev->_next = current->_next
 current->_next = 0
 delete current
 return
 end if
 prev = current
 current = current->_next
 loop until current = 0
end sub

function easyChipmunk.objectInList ( byval objectPointer as any ptr ) as physicsObjectList ptr
 if this.lists = 0 then return 0
 dim as physicsObjectList ptr node = this.lists
 dim as integer count = 0
 do
 if node->hasObject( objectPointer ) then return node
 node = node->_next
 loop until node = 0
 return 0
end function

function easyChipmunk.eachObject(byval objectType as integer, byval fn as function(byval as physicsObjectList ptr, byval as physicsObject ptr, byval as any ptr) as ubyte, byval udata as any ptr ) as integer
 if this.lists = 0 then return 0
 dim as physicsObjectList ptr node = this.lists
 dim as integer count = 0
 do
 count += node->eachObject( objectType, fn, udata )
 node = node->_next
 loop until node = 0
 return count
end function

function easyChipmunk.saveScene( byref path as string ) as ubyte
 return 0
end function

function easyChipmunk.loadScene( byref path as string ) as ubyte
 return 0
end function

sub easyChipmunk.physicsThread( byval self as any ptr )
 dim physics as easyChipmunk ptr
 physics = cptr( easyChipmunk ptr, self )
 dim quitThread as ubyte = 0
 while quitThread = 0
 physics->lock()
 physics->_DOSIMULATIONSTEP()
 if physics->killme = 1 then quitThread = 1
 physics->unlock()
 sleep 1, 1
 wend
end sub


#inclib "fbgfx"
#libpath "/usr/X11R6/lib"
#inclib "X11"
#inclib "Xext"
#inclib "Xpm"
#inclib "Xrandr"
#inclib "Xrender"
#inclib "pthread"


namespace FB

 const as integer GFX_NULL = -1 , GFX_WINDOWED = &h000 , GFX_FULLSCREEN = &h01 , GFX_OPENGL = &h02 , GFX_NO_SWITCH = &h04 , GFX_NO_FRAME = &h08 , GFX_SHAPED_WINDOW = &h10 , GFX_ALWAYS_ON_TOP = &h20 , GFX_ALPHA_PRIMITIVES = &h40 , GFX_HIGH_PRIORITY = &h80
 const as integer GFX_STENCIL_BUFFER = &h10000 , GFX_ACCUMULATION_BUFFER = &h20000 , GFX_MULTISAMPLE = &h40000


 const as integer GET_WINDOW_POS = 0 , GET_WINDOW_TITLE = 1 , GET_WINDOW_HANDLE = 2 , GET_DESKTOP_SIZE = 3 , GET_SCREEN_SIZE = 4 , GET_SCREEN_DEPTH = 5 , GET_SCREEN_BPP = 6 , GET_SCREEN_PITCH = 7 , GET_SCREEN_REFRESH = 8 , GET_DRIVER_NAME = 9 , GET_TRANSPARENT_COLOR = 10 , GET_VIEWPORT = 11 , GET_PEN_POS = 12 , GET_COLOR = 13 , GET_ALPHA_PRIMITIVES = 14 , GET_GL_EXTENSIONS = 15 , GET_HIGH_PRIORITY = 16
 const as integer SET_WINDOW_POS = 100 , SET_WINDOW_TITLE = 101 , SET_PEN_POS = 102 , SET_DRIVER_NAME = 103 , SET_ALPHA_PRIMITIVES = 104 , SET_GL_COLOR_BITS = 105 , SET_GL_COLOR_RED_BITS = 106 , SET_GL_COLOR_GREEN_BITS = 107 , SET_GL_COLOR_BLUE_BITS = 108 , SET_GL_COLOR_ALPHA_BITS = 109 , SET_GL_DEPTH_BITS = 110 , SET_GL_STENCIL_BITS = 111 , SET_GL_ACCUM_BITS = 112 , SET_GL_ACCUM_RED_BITS = 113 , SET_GL_ACCUM_GREEN_BITS = 114 , SET_GL_ACCUM_BLUE_BITS = 115 , SET_GL_ACCUM_ALPHA_BITS = 116 , SET_GL_NUM_SAMPLES = 117
 const as integer POLL_EVENTS = 200


 const as integer MASK_COLOR_INDEX = 0, MASK_COLOR = &hFF00FF


 const as integer EVENT_KEY_PRESS = 1 , EVENT_KEY_RELEASE = 2 , EVENT_KEY_REPEAT = 3 , EVENT_MOUSE_MOVE = 4 , EVENT_MOUSE_BUTTON_PRESS = 5 , EVENT_MOUSE_BUTTON_RELEASE = 6 , EVENT_MOUSE_DOUBLE_CLICK = 7 , EVENT_MOUSE_WHEEL = 8 , EVENT_MOUSE_ENTER = 9 , EVENT_MOUSE_EXIT = 10 , EVENT_WINDOW_GOT_FOCUS = 11 , EVENT_WINDOW_LOST_FOCUS = 12 , EVENT_WINDOW_CLOSE = 13 , EVENT_MOUSE_HWHEEL = 14


 type EVENT field = 1
 type as long
 union
 type
 scancode as long
 ascii as long
 end type
 type
 x as long
 y as long
 dx as long
 dy as long
 end type
 button as long
 z as long
 w as long
 end union
 end type


 type _OLD_HEADER field = 1
 bpp : 3 as ushort
 width : 13 as ushort
 height as ushort
 end type


 type IMAGE field = 1
 union
 old as _OLD_HEADER
 type as ulong
 end union
 bpp as long
 width as ulong
 height as ulong
 pitch as ulong
 _reserved(1 to 12) as ubyte

 end type


 type PUT_HEADER as IMAGE


 const as integer PUT_HEADER_NEW = &h7


 const as integer BUTTON_LEFT = &h1 , BUTTON_RIGHT = &h2 , BUTTON_MIDDLE = &h4 , BUTTON_X1 = &h8 , BUTTON_X2 = &h10


 enum
 SC_ESCAPE = &h01
 SC_1
 SC_2
 SC_3
 SC_4
 SC_5
 SC_6
 SC_7
 SC_8
 SC_9
 SC_0
 SC_MINUS
 SC_EQUALS
 SC_BACKSPACE
 SC_TAB
 SC_Q
 SC_W
 SC_E
 SC_R
 SC_T
 SC_Y
 SC_U
 SC_I
 SC_O
 SC_P
 SC_LEFTBRACKET
 SC_RIGHTBRACKET
 SC_ENTER
 SC_CONTROL
 SC_A
 SC_S
 SC_D
 SC_F
 SC_G
 SC_H
 SC_J
 SC_K
 SC_L
 SC_SEMICOLON
 SC_QUOTE
 SC_TILDE
 SC_LSHIFT
 SC_BACKSLASH
 SC_Z
 SC_X
 SC_C
 SC_V
 SC_B
 SC_N
 SC_M
 SC_COMMA
 SC_PERIOD
 SC_SLASH
 SC_RSHIFT
 SC_MULTIPLY
 SC_ALT
 SC_SPACE
 SC_CAPSLOCK
 SC_F1
 SC_F2
 SC_F3
 SC_F4
 SC_F5
 SC_F6
 SC_F7
 SC_F8
 SC_F9
 SC_F10
 SC_NUMLOCK
 SC_SCROLLLOCK
 SC_HOME
 SC_UP
 SC_PAGEUP
 SC_LEFT = &h4B
 SC_CLEAR
 SC_RIGHT
 SC_PLUS
 SC_END
 SC_DOWN
 SC_PAGEDOWN
 SC_INSERT
 SC_DELETE
 SC_F11 = &h57
 SC_F12
 SC_LWIN = &h5B
 SC_RWIN
 SC_MENU
 SC_ALTGR = &h64
 end enum

end namespace

using fb




type myPlanet
 body as cpBody ptr
 shape as cpShape ptr
 gravityStrength as cpFloat
end type

function drawEachShape( byval parent as physicsObjectList ptr, byval s as physicsObject ptr, byval u as any ptr ) as ubyte
 dim shape as cpShape ptr = s->getShape
 dim colour as uinteger
 if s->userData then
 colour = *cptr( integer ptr, s->userData )
 else
 colour = ((cuint(50) shl 16) or (cuint(50) shl 8) or cuint(50) or &hFF000000)
 end if
 select case shape->klass->type
 case CP_CIRCLE_SHAPE
 if s->id = "planet" then
 circle( shape->body->p.x, shape->body->p.y ), cpCircleShapeGetRadius( shape ), ((cuint(200) shl 16) or (cuint(100) shl 8) or cuint(100) or &hFF000000),,,,F
 circle( shape->body->p.x, shape->body->p.y ), cpCircleShapeGetRadius( shape ), ((cuint(255) shl 16) or (cuint(255) shl 8) or cuint(255) or &hFF000000)
 var radAng = ((shape->body->a * 180 / 3.14159) mod 360) * (3.14159/180)
 var rotX = cos( radAng ) * cpCircleShapeGetRadius( shape )
 var rotY = sin( radAng ) * cpCircleShapeGetRadius( shape )
 line ( shape->body->p.x, shape->body->p.y )-step( rotX, rotY ), ((cuint(255) shl 16) or (cuint(255) shl 8) or cuint(255) or &hFF000000)
 else
 circle( shape->body->p.x, shape->body->p.y ), cpCircleShapeGetRadius( shape ), colour
 var radAng = ((shape->body->a * 180 / 3.14159) mod 360) * (3.14159/180)
 var rotX = cos( radAng ) * cpCircleShapeGetRadius( shape )
 var rotY = sin( radAng ) * cpCircleShapeGetRadius( shape )
