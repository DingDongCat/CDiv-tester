	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global FourWhile
FourWhile:
.BLOCK_0:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	MOV VR_4, #5
	STR VR_4, [VR_3]
	MOV VR_5, #6
	STR VR_5, [VR_2]
	MOV VR_6, #7
	STR VR_6, [VR_1]
	MOV VR_7, #10
	STR VR_7, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_8, [VR_3]
	CMP VR_8, #20
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_9, [VR_3]
	ADD VR_10, VR_9, #3
	STR VR_10, [VR_3]
	B .BLOCK_4
.BLOCK_3:
	LDR VR_11, [VR_3]
	LDR VR_12, [VR_2]
	LDR VR_13, [VR_0]
	ADD VR_14, VR_12, VR_13
	ADD VR_15, VR_11, VR_14
	LDR VR_16, [VR_1]
	ADD VR_17, VR_15, VR_16
	MOV r0, VR_17
	ADD sp, sp, #16
	BX lr
.BLOCK_4:
	LDR VR_18, [VR_2]
	CMP VR_18, #10
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	LDR VR_19, [VR_2]
	ADD VR_20, VR_19, #1
	STR VR_20, [VR_2]
	B .BLOCK_7
.BLOCK_6:
	LDR VR_21, [VR_2]
	SUB VR_22, VR_21, #2
	STR VR_22, [VR_2]
	B .BLOCK_1
.BLOCK_7:
	LDR VR_23, [VR_1]
	CMP VR_23, #7
	BEQ .BLOCK_8
	BNE .BLOCK_9
.BLOCK_8:
	LDR VR_24, [VR_1]
	SUB VR_25, VR_24, #1
	STR VR_25, [VR_1]
	B .BLOCK_10
.BLOCK_9:
	LDR VR_26, [VR_1]
	ADD VR_27, VR_26, #1
	STR VR_27, [VR_1]
	B .BLOCK_4
.BLOCK_10:
	LDR VR_28, [VR_0]
	CMP VR_28, #20
	BLT .BLOCK_11
	BGE .BLOCK_12
.BLOCK_11:
	LDR VR_29, [VR_0]
	ADD VR_30, VR_29, #3
	STR VR_30, [VR_0]
	B .BLOCK_10
.BLOCK_12:
	LDR VR_31, [VR_0]
	SUB VR_32, VR_31, #1
	STR VR_32, [VR_0]
	B .BLOCK_7
.BLOCK_13:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr


	.global main
main:
.BLOCK_14:
	SUB sp, sp, #0
	BL FourWhile
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_15:
	MOV r0, #0
	POP {pc}


	.end
