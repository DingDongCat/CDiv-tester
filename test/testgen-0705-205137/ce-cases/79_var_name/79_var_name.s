	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #88
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #84
	MOV VR_3, #2
	STR VR_3, [VR_2]
	MOV VR_4, VR_1
	MOV r2, #80
	MOV r1, #0
	MOV r0, VR_4
	BL memset
	MOV VR_5, #1
	STR VR_5, [VR_4]
	ADD VR_6, VR_4, #4
	MOV VR_7, #2
	STR VR_7, [VR_6]
	MOV VR_8, #0
	STR VR_8, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_9, [VR_2]
	CMP VR_9, #20
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_10, [VR_2]
	ADD VR_11, VR_1, VR_10, LSL #2
	LDR VR_12, [VR_2]
	ADD VR_13, VR_1, VR_12, LSL #2
	LDR VR_14, [VR_13]
	LDR VR_15, [VR_2]
	SUB VR_16, VR_15, #1
	ADD VR_17, VR_1, VR_16, LSL #2
	LDR VR_18, [VR_17]
	ADD VR_19, VR_14, VR_18
	LDR VR_20, [VR_2]
	SUB VR_21, VR_20, #2
	ADD VR_22, VR_1, VR_21, LSL #2
	LDR VR_23, [VR_22]
	ADD VR_24, VR_19, VR_23
	STR VR_24, [VR_11]
	LDR VR_25, [VR_0]
	LDR VR_26, [VR_2]
	ADD VR_27, VR_1, VR_26, LSL #2
	LDR VR_28, [VR_27]
	ADD VR_29, VR_25, VR_28
	STR VR_29, [VR_0]
	LDR VR_30, [VR_2]
	ADD VR_31, VR_1, VR_30, LSL #2
	LDR VR_32, [VR_31]
	MOV r0, VR_32
	BL putint
	MOV r0, #10
	BL putch
	LDR VR_33, [VR_2]
	ADD VR_34, VR_33, #1
	STR VR_34, [VR_2]
	B .BLOCK_1
.BLOCK_3:
	LDR VR_35, [VR_0]
	MOV r0, VR_35
	ADD sp, sp, #88
	POP {pc}
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #88
	POP {pc}


	.end
