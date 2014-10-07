#pragma once

extern "C"

declare function cpConstraintIsRotaryLimitJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpRotaryLimitJointAlloc() as cpRotaryLimitJoint ptr
declare function cpRotaryLimitJointInit(byval joint as cpRotaryLimitJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval min as cpFloat, byval max as cpFloat) as cpRotaryLimitJoint ptr
declare function cpRotaryLimitJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval min as cpFloat, byval max as cpFloat) as cpConstraint ptr
declare function cpRotaryLimitJointGetMin(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpRotaryLimitJointSetMin(byval constraint as cpConstraint ptr, byval min as cpFloat)
declare function cpRotaryLimitJointGetMax(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpRotaryLimitJointSetMax(byval constraint as cpConstraint ptr, byval max as cpFloat)

end extern
