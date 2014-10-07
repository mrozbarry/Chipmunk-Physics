#pragma once

extern "C"

type cpConstraintPreSolveFunc as sub(byval constraint as cpConstraint_ ptr, byval space_ as cpSpace_ ptr)
type cpConstraintPostSolveFunc as sub(byval constraint as cpConstraint_ ptr, byval space_ as cpSpace_ ptr)

declare sub cpConstraintDestroy(byval constraint as cpConstraint_ ptr)
declare sub cpConstraintFree(byval constraint as cpConstraint_ ptr)
declare function cpConstraintGetSpace(byval constraint as const cpConstraint_ ptr) as cpSpace_ ptr
declare function cpConstraintGetBodyA(byval constraint as const cpConstraint_ ptr) as cpBody_ ptr
declare function cpConstraintGetBodyB(byval constraint as const cpConstraint_ ptr) as cpBody_ ptr
declare function cpConstraintGetMaxForce(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetMaxForce(byval constraint as cpConstraint_ ptr, byval maxForce as cpFloat)
declare function cpConstraintGetErrorBias(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetErrorBias(byval constraint as cpConstraint_ ptr, byval errorBias as cpFloat)
declare function cpConstraintGetMaxBias(byval constraint as const cpConstraint_ ptr) as cpFloat
declare sub cpConstraintSetMaxBias(byval constraint as cpConstraint_ ptr, byval maxBias as cpFloat)
declare function cpConstraintGetCollideBodies(byval constraint as const cpConstraint_ ptr) as cpBool
declare sub cpConstraintSetCollideBodies(byval constraint as cpConstraint_ ptr, byval collideBodies as cpBool)
declare function cpConstraintGetPreSolveFunc(byval constraint as const cpConstraint_ ptr) as cpConstraintPreSolveFunc
declare sub cpConstraintSetPreSolveFunc(byval constraint as cpConstraint_ ptr, byval preSolveFunc as cpConstraintPreSolveFunc)
declare function cpConstraintGetPostSolveFunc(byval constraint as const cpConstraint_ ptr) as cpConstraintPostSolveFunc
declare sub cpConstraintSetPostSolveFunc(byval constraint as cpConstraint_ ptr, byval postSolveFunc as cpConstraintPostSolveFunc)
declare function cpConstraintGetUserData(byval constraint as const cpConstraint_ ptr) as cpDataPointer
declare sub cpConstraintSetUserData(byval constraint as cpConstraint_ ptr, byval userData as cpDataPointer)
declare function cpConstraintGetImpulse(byval constraint as cpConstraint_ ptr) as cpFloat

end extern
