#pragma once

extern "C"

type cpConstraint as cpConstraint_

declare function cpConstraintIsDampedRotarySpring(byval constraint as const cpConstraint ptr) as cpBool

type cpDampedRotarySpringTorqueFunc as function(byval spring as cpConstraint ptr, byval relativeAngle as cpFloat) as cpFloat

declare function cpDampedRotarySpringAlloc() as cpDampedRotarySpring ptr
declare function cpDampedRotarySpringInit(byval joint as cpDampedRotarySpring ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval restAngle as cpFloat, byval stiffness as cpFloat, byval damping as cpFloat) as cpDampedRotarySpring ptr
declare function cpDampedRotarySpringNew(byval a as cpBody ptr, byval b as cpBody ptr, byval restAngle as cpFloat, byval stiffness as cpFloat, byval damping as cpFloat) as cpConstraint ptr
declare function cpDampedRotarySpringGetRestAngle(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedRotarySpringSetRestAngle(byval constraint as cpConstraint ptr, byval restAngle as cpFloat)
declare function cpDampedRotarySpringGetStiffness(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedRotarySpringSetStiffness(byval constraint as cpConstraint ptr, byval stiffness as cpFloat)
declare function cpDampedRotarySpringGetDamping(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedRotarySpringSetDamping(byval constraint as cpConstraint ptr, byval damping as cpFloat)
declare function cpDampedRotarySpringGetSpringTorqueFunc(byval constraint as const cpConstraint ptr) as cpDampedRotarySpringTorqueFunc
declare sub cpDampedRotarySpringSetSpringTorqueFunc(byval constraint as cpConstraint ptr, byval springTorqueFunc as cpDampedRotarySpringTorqueFunc)

end extern
