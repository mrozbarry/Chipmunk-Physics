#pragma once

extern "C"

declare function cpConstraintIsPinJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpPinJointAlloc() as cpPinJoint ptr
declare function cpPinJointInit(byval joint as cpPinJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect) as cpPinJoint ptr
declare function cpPinJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect) as cpConstraint ptr
declare function cpPinJointGetAnchorA(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpPinJointSetAnchorA(byval constraint as cpConstraint ptr, byval anchorA as cpVect)
declare function cpPinJointGetAnchorB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpPinJointSetAnchorB(byval constraint as cpConstraint ptr, byval anchorB as cpVect)
declare function cpPinJointGetDist(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpPinJointSetDist(byval constraint as cpConstraint ptr, byval dist as cpFloat)

end extern
