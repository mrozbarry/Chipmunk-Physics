#pragma once

extern "C"

declare function cpConstraintIsGearJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpGearJointAlloc() as cpGearJoint ptr
declare function cpGearJointInit(byval joint as cpGearJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval phase as cpFloat, byval ratio as cpFloat) as cpGearJoint ptr
declare function cpGearJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval phase as cpFloat, byval ratio as cpFloat) as cpConstraint ptr
declare function cpGearJointGetPhase(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpGearJointSetPhase(byval constraint as cpConstraint ptr, byval phase as cpFloat)
declare function cpGearJointGetRatio(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpGearJointSetRatio(byval constraint as cpConstraint ptr, byval ratio as cpFloat)

end extern
