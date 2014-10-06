#pragma once

extern "C"

type cpPointQueryInfo
	shape as const cpShape ptr
	point as cpVect
	distance as cpFloat
	gradient as cpVect
end type

type cpSegmentQueryInfo
	shape as const cpShape ptr
	point as cpVect
	normal as cpVect
	alpha as cpFloat
end type

type cpShapeFilter
	group as cpGroup
	categories as cpBitmask
	mask as cpBitmask
end type

const as cpShapeFilter CP_SHAPE_FILTER_ALL = type<cpShapeFilter>( CP_NO_GROUP, CP_ALL_CATEGORIES, CP_ALL_CATEGORIES )
const as cpShapeFilter CP_SHAPE_FILTER_NONE = type<cpShapeFilter( CP_NO_GROUP, not CP_ALL_CATEGORIES, not CP_ALL_CATEGORIES )

#ifndef cpShapeFilterNew
#define cpShapeFilterNew( group, categories, mask ) type<cpShapeFilter>(group, categories, mask)
#endif

declare sub cpShapeFree(byval shape as cpShape ptr)
declare function cpShapeCacheBB(byval shape as cpShape ptr) as cpBB
declare function cpShapeUpdate(byval shape as cpShape ptr, byval transform as cpTransform) as cpBB
declare function cpShapePointQuery(byval shape as const cpShape ptr, byval p as cpVect, byval out_ as cpPointQueryInfo ptr) as cpFloat
declare function cpShapeSegmentQuery(byval shape as const cpShape ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat, byval info as cpSegmentQueryInfo ptr) as cpBool
declare function cpShapesCollide(byval a as const cpShape ptr, byval b as const cpShape ptr) as cpContactPointSet
declare function cpShapeGetSpace(byval shape as const cpShape ptr) as cpSpace ptr
declare function cpShapeGetBody(byval shape as const cpShape ptr) as cpBody ptr
declare sub cpShapeSetBody(byval shape as cpShape ptr, byval body as cpBody ptr)
declare function cpShapeGetMass(byval shape as cpShape ptr) as cpFloat
declare sub cpShapeSetMass(byval shape as cpShape ptr, byval mass as cpFloat)
declare function cpShapeGetDensity(byval shape as cpShape ptr) as cpFloat
declare sub cpShapeSetDensity(byval shape as cpShape ptr, byval density as cpFloat)
declare function cpShapeGetMoment(byval shape as cpShape ptr) as cpFloat
declare function cpShapeGetArea(byval shape as cpShape ptr) as cpFloat
declare function cpShapeGetCenterOfGravity(byval shape as cpShape ptr) as cpVect
declare function cpShapeGetBB(byval shape as const cpShape ptr) as cpBB
declare function cpShapeGetSensor(byval shape as const cpShape ptr) as cpBool
declare sub cpShapeSetSensor(byval shape as cpShape ptr, byval sensor as cpBool)
declare function cpShapeGetElasticity(byval shape as const cpShape ptr) as cpFloat
declare sub cpShapeSetElasticity(byval shape as cpShape ptr, byval elasticity as cpFloat)
declare function cpShapeGetFriction(byval shape as const cpShape ptr) as cpFloat
declare sub cpShapeSetFriction(byval shape as cpShape ptr, byval friction as cpFloat)
declare function cpShapeGetSurfaceVelocity(byval shape as const cpShape ptr) as cpVect
declare sub cpShapeSetSurfaceVelocity(byval shape as cpShape ptr, byval surfaceVelocity as cpVect)
declare function cpShapeGetUserData(byval shape as const cpShape ptr) as cpDataPointer
declare sub cpShapeSetUserData(byval shape as cpShape ptr, byval userData as cpDataPointer)
declare function cpShapeGetCollisionType(byval shape as const cpShape ptr) as cpCollisionType
declare sub cpShapeSetCollisionType(byval shape as cpShape ptr, byval collisionType as cpCollisionType)
declare function cpShapeGetFilter(byval shape as const cpShape ptr) as cpShapeFilter
declare sub cpShapeSetFilter(byval shape as cpShape ptr, byval filter as cpShapeFilter)
declare function cpCircleShapeAlloc() as cpCircleShape ptr
declare function cpCircleShapeInit(byval circle_ as cpCircleShape ptr, byval body as cpBody ptr, byval radius as cpFloat, byval offset as cpVect) as cpCircleShape ptr
declare function cpCircleShapeNew(byval body as cpBody ptr, byval radius as cpFloat, byval offset as cpVect) as cpShape ptr
declare function cpCircleShapeGetOffset(byval shape as const cpShape ptr) as cpVect
declare function cpCircleShapeGetRadius(byval shape as const cpShape ptr) as cpFloat
declare function cpSegmentShapeAlloc() as cpSegmentShape ptr
declare function cpSegmentShapeInit(byval seg as cpSegmentShape ptr, byval body as cpBody ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat) as cpSegmentShape ptr
declare function cpSegmentShapeNew(byval body as cpBody ptr, byval a as cpVect, byval b as cpVect, byval radius as cpFloat) as cpShape ptr
declare sub cpSegmentShapeSetNeighbors(byval shape as cpShape ptr, byval prev as cpVect, byval next_ as cpVect)
declare function cpSegmentShapeGetA(byval shape as const cpShape ptr) as cpVect
declare function cpSegmentShapeGetB(byval shape as const cpShape ptr) as cpVect
declare function cpSegmentShapeGetNormal(byval shape as const cpShape ptr) as cpVect
declare function cpSegmentShapeGetRadius(byval shape as const cpShape ptr) as cpFloat

end extern
