#pragma once

#define CHIPMUNK_VECT_H

extern "c"
 
''/ @defgroup cpVect cpVect
''/ Chipmunk's 2D vector type along with a handy 2D vector math lib.
''/ @{

''/ Constant for the zero vector.
''static const cpVect cpvzero = {0.0f,0.0f};
#ifndef cpvzero
#define cpvzero     type<cpVect>( 0.0, 0.0 )
#endif

''/ Convenience constructor for cpVect structs.
#ifndef cpv
#define cpv(x, y)   type<cpVect>( (x), (y) )
#endif

''/ Check if two vectors are equal. (Be careful when comparing floating point numbers!)
#ifndef cpveql
#define cpveql( v1, v2 )  iif(( (v1).x = (v2).x ) and ( (v1).y = (v2).y ), cpTrue, cpFalse)
#endif


''/ Add two vectors
#ifndef cpvadd
#define cpvadd( v1, v2 )  type<cpVect>( (v1).x + (v2).x, (v1).y + (v2).y )
#endif

''/ Subtract two vectors.
#ifndef cpvsub
#define cpvsub( v1, v2 )  type<cpVect>( (v1).x - (v2).x, (v1).y - (v2).y )
#endif


''/ Negate a vector.
#ifndef cpvneg
#define cpvneg( v )     type<cpVect>( -(v).x, -(v).y )
#endif

''/ Scalar multiplication.
#ifndef cpvmult
#define cpvmult( v, s )   type<cpVect>( (v).x * (s), (v).y * (s) )
#endif

''/ Vector dot product.
#ifndef cpvdot
#define cpvdot( v1, v2 )  cast( cpFloat, ( (v1).x * (v2).x ) + ( (v1).y * (v2).y ) )
#endif

''/ 2D vector cross product analog.
''/ The cross product of 2D vectors results in a 3D vector with only a z component.
''/ This function returns the magnitude of the z value.
#ifndef cpvcross
#define cpvcross( v1, v2 )  cast( cpFloat, ( (v1).x * (v2).y ) - ( (v1).y * (v2).x ) )
#endif

''/ Returns a perpendicular vector. (90 degree rotation)
#ifndef cpvperp
#define cpvperp( v )  type<cpVect>( -(v).y, (v).x )
#endif

''/ Returns a perpendicular vector. (-90 degree rotation)
#ifndef cpvrperp
#define cpvrperp( v ) type<cpVect>( (v).y, -(v).x )
#endif

''/ Returns the vector projection of v1 onto v2.
#ifndef cpvproject
#define cpvproject( v1, v2 )  cpvmult( (v2), cpvdot( (v1), (v2) ) / cpvdot( (v2), (v2) ) )
#endif


''/ Returns the unit length vector for the given angle (in radians).
#ifndef cpvforangle
#define cpvforangle( a )  cpv( cpfcos( (a) ), cpfsin( (a) ) )
#endif

''/ Returns the angular direction v is pointing in (in radians).
#ifndef cpvtoangle
#define cpvtoangle( v )   cpfatan2( (v).x, (v).y )
#endif

''/ Uses complex number multiplication to rotate v1 by v2. Scaling will occur if v1 is not a unit vector.
#ifndef cpvrotate
#define cpvrotate( v1, v2 )   type<cpVect>( (v1).x * (v2).x - (v1).y * (v2).y, (v1).x * (v2).y + (v1).x * (v2).x )
#endif

''/ Inverse of cpvrotate().
#ifndef cpvunrotate
#define cpvunrotate( v1, v2 ) type<cpVect>( (v1).x * (v2).x + (v1).y * (v2).y, (v1).x * (v2).x - (v1).x * (v2).y )
#endif

''/ Returns the squared length of v. Faster than cpvlength() when you only need to compare lengths.
#ifndef cpvlengthsq
#define cpvlengthsq( v )  cpvdot( (v), (v) )
#endif

''/ Returns the length of v.
#ifndef cpvlength
#define cpvlength( v )  cpvsqrt( cpvdot( (v), (v) ) )
#endif

''/ Linearly interpolate between v1 and v2.
#ifndef cpvlerp
#define cpvlerp( v1, v2, t )  cpvadd( cpvmult( (v1), 1.0 - (t) ), cpvmult( (v2), (t) ) )
#endif

''/ Returns a normalized copy of v.
#ifndef cpvnormalize
#define cpvnormalize( v ) cpvmult( (v), 1.0 / cpvlength( (v) ) )
#endif

''/ Returns a normalized copy of v or cpvzero if v was already cpvzero. Protects against divide by zero errors.
'#ifndef cpvnormalize_safe
'#define cpvnormalize_safe( v )  iif( (v).x = 0 and (v).y = 0, cpvzero, cpvnormlize( (v) ) )
'#endif

''/ Clamp v to length len.
#ifndef cpvclamp
#define cpvclamp( v, length ) iif( cpvdot( (v), (v) ) > (length*length), cpvmult( cpvnormalize( (v) ), length ), (v) )
#endif

''/ Linearly interpolate between v1 towards v2 by distance d.
#ifndef cpvlerpconst
#define cpvlerpconst( v1, v2, d ) cpvadd( (v1), cpvclamp( cpvsub( (v2), (v1) ), (d) ) )
#endif

''/ Returns the distance between v1 and v2.
#ifndef cpvdist
#define cpvdist( v1, v2 )     cpvlength( cpvsub( (v1), (v2) ) )
#endif


''/ Returns the squared distance between v1 and v2. Faster than cpvdist() when you only need to compare distances.
#ifndef cpvdistsq
#define cpvdistsq( v1, v2 )     cpvlengthsq( cpvsub( (v1), (v2) ) )
#endif


''/ Returns true if the distance between v1 and v2 is less than dist.
#ifndef cpvnear
#define cpvnear( v1, v2, dist )   iif( cpvdistsq( (v1), (v2) ) < ((dist)*(dist)), cpTrue, cpFalse )
#endif

#ifndef cpMat2x2New
#define cpMat2x2New( a, b, c, d ) type<cpMat2x2>( a, b, c, d )
#endif

#ifndef cpMat2x2Transform
#define cpMat2x2Transform( m, v ) type<cpVect>( (v).x*(m).a + (v).y*(m).b, (v).x*(m).c + (v).y*(m).d )
#endif

end extern
