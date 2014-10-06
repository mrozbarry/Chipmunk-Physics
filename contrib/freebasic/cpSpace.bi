#pragma once

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
