#pragma once

extern "C"

declare function cpConstraintIsGrooveJoint(byval constraint as const cpConstraint ptr) as cpBool
declare function cpGrooveJointAlloc() as cpGrooveJoint ptr
declare function cpGrooveJointInit(byval joint as cpGrooveJoint ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval groove_a as cpVect, byval groove_b as cpVect, byval anchorB as cpVect) as cpGrooveJoint ptr
declare function cpGrooveJointNew(byval a as cpBody ptr, byval b as cpBody ptr, byval groove_a as cpVect, byval groove_b as cpVect, byval anchorB as cpVect) as cpConstraint ptr
declare function cpGrooveJointGetGrooveA(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpGrooveJointSetGrooveA(byval constraint as cpConstraint ptr, byval grooveA as cpVect)
declare function cpGrooveJointGetGrooveB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpGrooveJointSetGrooveB(byval constraint as cpConstraint ptr, byval grooveB as cpVect)
declare function cpGrooveJointGetAnchorB(byval constraint as const cpConstraint ptr) as cpVect
declare sub cpGrooveJointSetAnchorB(byval constraint as cpConstraint ptr, byval anchorB as cpVect)

end extern
