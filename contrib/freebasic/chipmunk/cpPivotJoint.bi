#pragma once

extern "C"

declare function cpConstraintIsPivotJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpPivotJointAlloc() as cpPivotJoint ptr
declare function cpPivotJointInit(byval joint as cpPivotJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect) as cpPivotJoint ptr
declare function cpPivotJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval pivot as cpVect) as cpConstraint ptr
declare function cpPivotJointNew2(byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect) as cpConstraint ptr
declare function cpPivotJointGetAnchorA(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpPivotJointSetAnchorA(byval constraint as cpConstraint ptr, byval anchorA as cpVect)
declare function cpPivotJointGetAnchorB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpPivotJointSetAnchorB(byval constraint as cpConstraint ptr, byval anchorB as cpVect)

end extern
