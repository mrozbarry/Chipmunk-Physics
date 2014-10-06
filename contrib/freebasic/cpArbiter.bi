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

extern "C"

#define CP_MAX_CONTACTS_PER_ARBITER 2
#define CP_MAX_CONTACTS_PER_ARBITER_MINUS_1 (CP_MAX_CONTACTS_PER_ARBITER-1)

declare function cpArbiterGetRestitution(byval arb as const cpArbiter ptr) as cpFloat
declare sub cpArbiterSetRestitution(byval arb as cpArbiter ptr, byval restitution as cpFloat)
declare function cpArbiterGetFriction(byval arb as const cpArbiter ptr) as cpFloat
declare sub cpArbiterSetFriction(byval arb as cpArbiter ptr, byval friction as cpFloat)
declare function cpArbiterGetSurfaceVelocity(byval arb as cpArbiter ptr) as cpVect
declare sub cpArbiterSetSurfaceVelocity(byval arb as cpArbiter ptr, byval vr as cpVect)
declare function cpArbiterGetUserData(byval arb as const cpArbiter ptr) as cpDataPointer
declare sub cpArbiterSetUserData(byval arb as cpArbiter ptr, byval userData as cpDataPointer)
declare function cpArbiterTotalImpulse(byval arb as const cpArbiter ptr) as cpVect
declare function cpArbiterTotalKE(byval arb as const cpArbiter ptr) as cpFloat
declare function cpArbiterIgnore(byval arb as cpArbiter ptr) as cpBool
declare sub cpArbiterGetShapes(byval arb as const cpArbiter ptr, byval a as cpShape ptr ptr, byval b as cpShape ptr ptr)

#define CP_ARBITER_GET_SHAPES( __arb__, __a__, __b__ ) \
  dim as cpShape ptr __a__, __b__ \
  cpArbiterGetShapes( __arb_, &__a__, &__b__ )

declare sub cpArbiterGetBodies(byval arb as const cpArbiter ptr, byval a as cpBody ptr ptr, byval b as cpBody ptr ptr)

#define CP_ARBITER_GET_BODIES( __arb__, __a__, __b__) \
  dim as cpBody ptr __a__, __b__ \
  cpArbiterGetBodies( __arb__, &__a__, &__b__ )

type __dummyid_0_cpArbiter
	pointA as cpVect
	pointB as cpVect
	distance as cpFloat
end type

type cpContactPointSet
	count as long
	normal as cpVect
	points(0 to CP_MAX_CONTACTS_PER_ARBITER_MINUS_1) as __dummyid_0_cpArbiter
end type

declare function cpArbiterGetContactPointSet(byval arb as const cpArbiter ptr) as cpContactPointSet
declare sub cpArbiterSetContactPointSet(byval arb as cpArbiter ptr, byval set as cpContactPointSet ptr)
declare function cpArbiterIsFirstContact(byval arb as const cpArbiter ptr) as cpBool
declare function cpArbiterIsRemoval(byval arb as const cpArbiter ptr) as cpBool
declare function cpArbiterGetCount(byval arb as const cpArbiter ptr) as long
declare function cpArbiterGetNormal(byval arb as const cpArbiter ptr) as cpVect
declare function cpArbiterGetPointA(byval arb as const cpArbiter ptr, byval i as long) as cpVect
declare function cpArbiterGetPointB(byval arb as const cpArbiter ptr, byval i as long) as cpVect
declare function cpArbiterGetDepth(byval arb as const cpArbiter ptr, byval i as long) as cpFloat
declare function cpArbiterCallWildcardBeginA(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr) as cpBool
declare function cpArbiterCallWildcardBeginB(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr) as cpBool
declare function cpArbiterCallWildcardPreSolveA(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr) as cpBool
declare function cpArbiterCallWildcardPreSolveB(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr) as cpBool
declare sub cpArbiterCallWildcardPostSolveA(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr)
declare sub cpArbiterCallWildcardPostSolveB(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr)
declare sub cpArbiterCallWildcardSeparateA(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr)
declare sub cpArbiterCallWildcardSeparateB(byval arb as cpArbiter ptr, byval space_ as cpSpace ptr)

end extern
