	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global f1
f1:
.BLOCK_0:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOVW VR_2, :lower16:a
	MOVT VR_2, :upper16:a
	ADD VR_3, VR_2, #20
	MOV VR_4, #4000
	STR VR_4, [VR_3]
	MOVW VR_5, :lower16:a
	MOVT VR_5, :upper16:a
	ADD VR_6, VR_5, #16000
	MOV VR_7, #3
	STR VR_7, [VR_6]
	MOVW VR_8, :lower16:a
	MOVT VR_8, :upper16:a
	MOVW VR_10, #4095
	ADD VR_9, VR_8, VR_10, LSL #2
	MOV VR_11, #7
	STR VR_11, [VR_9]
	LDR VR_12, [VR_0]
	MOVW VR_13, :lower16:a
	MOVT VR_13, :upper16:a
	MOVW VR_15, #4095
	ADD VR_14, VR_13, VR_15, LSL #2
	LDR VR_16, [VR_14]
	ADD VR_17, VR_12, VR_16, LSL #2
	MOVW VR_18, :lower16:a
	MOVT VR_18, :upper16:a
	MOVW VR_20, #2216
	ADD VR_19, VR_18, VR_20, LSL #2
	LDR VR_21, [VR_19]
	ADD VR_22, VR_21, #9
	STR VR_22, [VR_17]
	MOVW VR_23, :lower16:a
	MOVT VR_23, :upper16:a
	ADD VR_24, VR_23, #20
	LDR VR_25, [VR_24]
	MOVW VR_26, :lower16:a
	MOVT VR_26, :upper16:a
	ADD VR_27, VR_26, VR_25, LSL #2
	LDR VR_28, [VR_27]
	MOV r0, VR_28
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global main
main:
.BLOCK_2:
	SUB sp, sp, #32768
	ADD VR_0, sp, #0
	ADD VR_1, sp, #16384
	MOV VR_2, VR_1
	MOV VR_3, VR_2
	MOV r2, #16384
	MOV r1, #0
	MOV r0, VR_3
	BL memset
	ADD VR_4, VR_3, #4096
	MOV VR_5, #1
	STR VR_5, [VR_4]
	ADD VR_6, VR_3, #8192
	MOV VR_7, #2
	STR VR_7, [VR_6]
	MOVW VR_9, #2049
	ADD VR_8, VR_3, VR_9, LSL #2
	MOV VR_10, #3
	STR VR_10, [VR_8]
	ADD VR_11, VR_3, #12288
	MOV VR_12, #4
	STR VR_12, [VR_11]
	MOVW VR_14, #3073
	ADD VR_13, VR_3, VR_14, LSL #2
	MOV VR_15, #5
	STR VR_15, [VR_13]
	MOVW VR_17, #3074
	ADD VR_16, VR_3, VR_17, LSL #2
	MOV VR_18, #6
	STR VR_18, [VR_16]
	MOV VR_19, VR_0
	MOV VR_20, VR_19
	MOV r2, #16384
	MOV r1, #0
	MOV r0, VR_20
	BL memset
	MOV VR_21, #1
	STR VR_21, [VR_20]
	ADD VR_22, VR_20, #4
	MOV VR_23, #2
	STR VR_23, [VR_22]
	ADD VR_24, VR_20, #16
	MOV VR_25, #3
	STR VR_25, [VR_24]
	ADD VR_26, VR_20, #20
	MOV VR_27, #4
	STR VR_27, [VR_26]
	MOV VR_28, VR_0
	MOV VR_29, VR_28
	MOV r0, VR_29
	BL f1
	MOV VR_30, r0
	MOV r0, VR_30
	BL putint
	MOV r0, #10
	BL putch
	ADD VR_31, VR_0, #32
	MOV VR_32, VR_31
	LDR VR_33, [VR_32]
	MOV r0, VR_33
	ADD sp, sp, #32768
	POP {pc}
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #32768
	POP {pc}


	.data
	.align 4
	.comm	a, 16384, 4


	.end
