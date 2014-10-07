#pragma once

extern "C"

declare function cpConstraintIsDampedSpring(byval constraint as const cpConstraint ptr) as cpBool

type cpDampedSpringForceFunc as function(byval spring as cpConstraint ptr, byval dist as cpFloat) as cpFloat

declare function cpDampedSpringAlloc() as cpDampedSpring ptr
declare function cpDampedSpringInit(byval joint as cpDampedSpring ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect, byval restLength as cpFloat, byval stiffness as cpFloat, byval damping as cpFloat) as cpDampedSpring ptr
declare function cpDampedSpringNew(byval a as cpBody ptr, byval b as cpBody ptr, byval anchorA as cpVect, byval anchorB as cpVect, byval restLength as cpFloat, byval stiffness as cpFloat, byval damping as cpFloat) as cpConstraint ptr
declare function cpDampedSpringGetAnchorA(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpDampedSpringSetAnchorA(byval constraint as cpConstraint ptr, byval anchorA as cpVect)
declare function cpDampedSpringGetAnchorB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpDampedSpringSetAnchorB(byval constraint as cpConstraint ptr, byval anchorB as cpVect)
declare function cpDampedSpringGetRestLength(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedSpringSetRestLength(byval constraint as cpConstraint ptr, byval restLength as cpFloat)
declare function cpDampedSpringGetStiffness(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedSpringSetStiffness(byval constraint as cpConstraint ptr, byval stiffness as cpFloat)
declare function cpDampedSpringGetDamping(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpDampedSpringSetDamping(byval constraint as cpConstraint ptr, byval damping as cpFloat)
declare function cpDampedSpringGetSpringForceFunc(byval constraint as const cpConstraint ptr) as cpDampedSpringForceFunc
declare sub cpDampedSpringSetSpringForceFunc(byval constraint as cpConstraint ptr, byval springForceFunc as cpDampedSpringForceFunc)

end extern
