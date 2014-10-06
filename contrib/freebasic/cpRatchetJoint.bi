#pragma once

extern "C"

declare function cpConstraintIsRatchetJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpRatchetJointAlloc() as cpRatchetJoint ptr
declare function cpRatchetJointInit(byval joint as cpRatchetJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval phase as cpFloat, byval ratchet as cpFloat) as cpRatchetJoint ptr
declare function cpRatchetJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval phase as cpFloat, byval ratchet as cpFloat) as cpConstraint ptr
declare function cpRatchetJointGetAngle(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpRatchetJointSetAngle(byval constraint as cpConstraint ptr, byval angle as cpFloat)
declare function cpRatchetJointGetPhase(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpRatchetJointSetPhase(byval constraint as cpConstraint ptr, byval phase as cpFloat)
declare function cpRatchetJointGetRatchet(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpRatchetJointSetRatchet(byval constraint as cpConstraint ptr, byval ratchet as cpFloat)

end extern
