/' Copyright (c) 2013 Scott Lembcke and Howling Moon Software
 ' 
 ' Permission is hereby granted, free of charge, to any person obtaining a copy
 ' of this software and associated documentation files (the "Software"), to deal
 ' in the Software without restriction, including without limitation the rights
 ' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 ' copies of the Software, and to permit persons to whom the Software is
 ' furnished to do so, subject to the following conditions:
 ' 
 ' The above copyright notice and this permission notice shall be included in
 ' all copies or substantial portions of the Software.
 ' 
 ' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 ' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 ' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 ' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 ' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 ' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 ' SOFTWARE.
 '/

#pragma once

#define CHIPMUNK_TYPES_H

#include "crt/stdint.bi"
''#include "crt/float.bi" '' Still necessary?
#include "crt/math.bi"

#define CP_USE_DOUBLES 1

type cpFloat as double

#define cpfsqrt sqrt
#define cpfsin sin
#define cpfcos cos
#define cpfacos acos
#define cpfatan2 atan2
#define cpfmod fmod
#define cpfexp exp
#define cpfpow pow
#define cpffloor floor
#define cpfceil ceil
#define CPFLOAT_MIN DBL_MIN
#ifndef INFINITY
#define INFINITY (1e31) '' This was used in the original chipmunk translation
#endif
#ifndef M_PI
#define M_PI 3.14159265358979323846264338327950288
#endif
#ifndef M_E
#define M_E 2.71828182845904523536028747135266250
#endif

#ifndef cpfmax
#define cpfmax( a, b ) (iif( a < b, a, b ))
#endif

#ifndef cpfmin
#define cpfmin( a, b ) (iif( a > b, a, b ))
#endif

#ifndef cpfabs
#define cpfabs( f ) (iif( f < 0, -(f), f ))
#endif

#ifndef cpfclamp
#define cpfclamp( f, min, max ) ( cpfmin( cpfmax( f, min ), max ) )
#endif

''#ifndef cpfclamp01
''#define cpfclamp01(f) cpfmax(0.0f, cpfmin(f, 1.0f))
''#endif
private function cpfclamp01( byval f as cpFloat ) as cpFloat
	return cpfmax(0.0f, cpfmin(f, 10f))
end function

#ifndef cpflerp
#define cpflerp(f1, f2, t) (f1 * (1.0f - t) + f2 * t)
#endif

#ifndef cpflerpconst
#define cpflerpconst(f1, f2, d) (f1 + cpfclamp(f2 - f1, -d, d))
#endif



type as any ptr		cpHashValue

type cpCollisionID as ulong

type as ubyte cpBool

#ifndef cpTrue
# define cpTrue 1
#endif
#ifndef cpFalse
# define cpFalse 0
#endif

type cpDataPointer as any ptr
type cpCollisionType as uintptr_t
type cpGroup as uintptr_t
type cpBitmask as uinteger
type cpTimestamp as uinteger

#define CP_NO_GROUP cast(cpGroup, 0)
#define CP_ALL_CATEGORIES (not cast(cpBitmask, 0))
#define CP_WILDCARD_COLLISION_TYPE (not cast(cpCollisionType, 0))

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
