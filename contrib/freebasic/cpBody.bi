#pragma once

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
