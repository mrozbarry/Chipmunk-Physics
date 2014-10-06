#pragma once

extern "C"

type cpConstraintPreSolveFunc as sub(byval constraint as cpConstraint ptr, byval space_ as cpSpace ptr)
type cpConstraintPostSolveFunc as sub(byval constraint as cpConstraint ptr, byval space_ as cpSpace ptr)

declare sub cpConstraintDestroy(byval constraint as cpConstraint ptr)
declare sub cpConstraintFree(byval constraint as cpConstraint ptr)
declare function cpConstraintGetSpace(byval constraint as const cpConstraint ptr) as cpSpace ptr
declare function cpConstraintGetBodyA(byval constraint as const cpConstraint ptr) as cpBody ptr
declare function cpConstraintGetBodyB(byval constraint as const cpConstraint ptr) as cpBody ptr
declare function cpConstraintGetMaxForce(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpConstraintSetMaxForce(byval constraint as cpConstraint ptr, byval maxForce as cpFloat)
declare function cpConstraintGetErrorBias(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpConstraintSetErrorBias(byval constraint as cpConstraint ptr, byval errorBias as cpFloat)
declare function cpConstraintGetMaxBias(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpConstraintSetMaxBias(byval constraint as cpConstraint ptr, byval maxBias as cpFloat)
declare function cpConstraintGetCollideBodies(byval constraint as const cpConstraint ptr) as cpBool
declare sub cpConstraintSetCollideBodies(byval constraint as cpConstraint ptr, byval collideBodies as cpBool)
declare function cpConstraintGetPreSolveFunc(byval constraint as const cpConstraint ptr) as cpConstraintPreSolveFunc
declare sub cpConstraintSetPreSolveFunc(byval constraint as cpConstraint ptr, byval preSolveFunc as cpConstraintPreSolveFunc)
declare function cpConstraintGetPostSolveFunc(byval constraint as const cpConstraint ptr) as cpConstraintPostSolveFunc
declare sub cpConstraintSetPostSolveFunc(byval constraint as cpConstraint ptr, byval postSolveFunc as cpConstraintPostSolveFunc)
declare function cpConstraintGetUserData(byval constraint as const cpConstraint ptr) as cpDataPointer
declare sub cpConstraintSetUserData(byval constraint as cpConstraint ptr, byval userData as cpDataPointer)
declare function cpConstraintGetImpulse(byval constraint as cpConstraint ptr) as cpFloat

end extern
