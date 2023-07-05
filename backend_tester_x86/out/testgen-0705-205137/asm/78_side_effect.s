	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global inc_a
inc_a:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOVW VR_2, :lower16:a
	MOVT VR_2, :upper16:a
	LDR VR_1, [VR_2]
	STR VR_1, [VR_0]
	LDR VR_3, [VR_0]
	ADD VR_4, VR_3, #1
	STR VR_4, [VR_0]
	LDR VR_5, [VR_0]
	MOVW VR_6, :lower16:a
	MOVT VR_6, :upper16:a
	STR VR_5, [VR_6]
	MOVW VR_8, :lower16:a
	MOVT VR_8, :upper16:a
	LDR VR_7, [VR_8]
	MOV r0, VR_7
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global main
main:
.BLOCK_2:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #5
	STR VR_1, [VR_0]
	B .BLOCK_3
.BLOCK_3:
	LDR VR_2, [VR_0]
	CMP VR_2, #0
	BGE .BLOCK_4
	BLT .BLOCK_5
.BLOCK_4:
	B .BLOCK_6
.BLOCK_5:
	MOVW VR_4, :lower16:a
	MOVT VR_4, :upper16:a
	LDR VR_3, [VR_4]
	MOV r0, VR_3
	BL putint
	MOV r0, #32
	BL putch
	MOVW VR_6, :lower16:b
	MOVT VR_6, :upper16:b
	LDR VR_5, [VR_6]
	MOV r0, VR_5
	BL putint
	MOV r0, #10
	BL putch
	MOVW VR_8, :lower16:a
	MOVT VR_8, :upper16:a
	LDR VR_7, [VR_8]
	MOV r0, VR_7
	ADD sp, sp, #4
	POP {pc}
.BLOCK_6:
	BL inc_a
	MOV VR_9, r0
	CMP VR_9, #0
	BNE .BLOCK_9
	BEQ .BLOCK_7
.BLOCK_7:
	B .BLOCK_11
.BLOCK_8:
	MOVW VR_11, :lower16:a
	MOVT VR_11, :upper16:a
	LDR VR_10, [VR_11]
	MOV r0, VR_10
	BL putint
	MOV r0, #32
	BL putch
	MOVW VR_13, :lower16:b
	MOVT VR_13, :upper16:b
	LDR VR_12, [VR_13]
	MOV r0, VR_12
	BL putint
	MOV r0, #10
	BL putch
	B .BLOCK_7
.BLOCK_9:
	BL inc_a
	MOV VR_14, r0
	CMP VR_14, #0
	BNE .BLOCK_10
	BEQ .BLOCK_7
.BLOCK_10:
	BL inc_a
	MOV VR_15, r0
	CMP VR_15, #0
	BNE .BLOCK_8
	BEQ .BLOCK_7
.BLOCK_11:
	BL inc_a
	MOV VR_16, r0
	CMP VR_16, #14
	BLT .BLOCK_13
	BGE .BLOCK_15
.BLOCK_12:
	LDR VR_17, [VR_0]
	SUB VR_18, VR_17, #1
	STR VR_18, [VR_0]
	B .BLOCK_3
.BLOCK_13:
	MOVW VR_20, :lower16:a
	MOVT VR_20, :upper16:a
	LDR VR_19, [VR_20]
	MOV r0, VR_19
	BL putint
	MOV r0, #10
	BL putch
	MOVW VR_22, :lower16:b
	MOVT VR_22, :upper16:b
	LDR VR_21, [VR_22]
	MOV VR_23, VR_21, LSL #1
	MOVW VR_24, :lower16:b
	MOVT VR_24, :upper16:b
	STR VR_23, [VR_24]
	B .BLOCK_12
.BLOCK_14:
	BL inc_a
	MOV VR_25, r0
	B .BLOCK_12
.BLOCK_15:
	BL inc_a
	MOV VR_26, r0
	CMP VR_26, #0
	BNE .BLOCK_16
	BEQ .BLOCK_14
.BLOCK_16:
	BL inc_a
	MOV VR_27, r0
	BL inc_a
	MOV VR_28, r0
	SUB VR_29, VR_27, VR_28
	ADD VR_30, VR_29, #1
	CMP VR_30, #0
	BNE .BLOCK_13
	BEQ .BLOCK_14
.BLOCK_17:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global a
a:
	.word	-1
	.global b
b:
	.word	1


	.end
