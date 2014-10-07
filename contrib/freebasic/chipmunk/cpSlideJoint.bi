#pragma once

extern "C"

declare function cpConstraintIsSlideJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpSlideJointAlloc() as cpSlideJoint ptr
declare function cpSlideJointInit(byval joint as cpSlideJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect, byval min as cpFloat, byval max as cpFloat) as cpSlideJoint ptr
declare function cpSlideJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect, byval min as cpFloat, byval max as cpFloat) as cpConstraint ptr
declare function cpSlideJointGetAnchorA(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpSlideJointSetAnchorA(byval constraint as cpConstraint ptr, byval anchorA as cpVect)
declare function cpSlideJointGetAnchorB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpSlideJointSetAnchorB(byval constraint as cpConstraint ptr, byval anchorB as cpVect)
declare function cpSlideJointGetMin(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpSlideJointSetMin(byval constraint as cpConstraint ptr, byval min as cpFloat)
declare function cpSlideJointGetMax(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpSlideJointSetMax(byval constraint as cpConstraint ptr, byval max as cpFloat)

end extern
