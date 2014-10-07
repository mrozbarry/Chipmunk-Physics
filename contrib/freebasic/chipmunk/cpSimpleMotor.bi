#pragma once

extern "C"

type cpSimpleMotor as cpSimpleMotor_

declare function cpConstraintIsSimpleMotor(byval constraint as const cpConstraint ptr) as cpBool
declare function cpSimpleMotorAlloc() as cpSimpleMotor ptr
declare function cpSimpleMotorInit(byval joint as cpSimpleMotor ptr, byval a as cpBody ptr, byval b as cpBody ptr, byval rate as cpFloat) as cpSimpleMotor ptr
declare function cpSimpleMotorNew(byval a as cpBody ptr, byval b as cpBody ptr, byval rate as cpFloat) as cpConstraint ptr
declare function cpSimpleMotorGetRate(byval constraint as const cpConstraint ptr) as cpFloat
declare sub cpSimpleMotorSetRate(byval constraint as cpConstraint ptr, byval rate as cpFloat)

end extern
