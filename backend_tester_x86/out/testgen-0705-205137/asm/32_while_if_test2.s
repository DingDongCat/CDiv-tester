	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global ifWhile
ifWhile:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #0
	STR VR_2, [VR_1]
	MOV VR_3, #3
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	CMP VR_4, #5
	BEQ .BLOCK_3
	BNE .BLOCK_7
.BLOCK_2:
	LDR VR_5, [VR_0]
	MOV r0, VR_5
	ADD sp, sp, #8
	BX lr
.BLOCK_3:
	B .BLOCK_4
.BLOCK_4:
	LDR VR_6, [VR_0]
	CMP VR_6, #2
	BEQ .BLOCK_5
	BNE .BLOCK_6
.BLOCK_5:
	LDR VR_7, [VR_0]
	ADD VR_8, VR_7, #2
	STR VR_8, [VR_0]
	B .BLOCK_4
.BLOCK_6:
	LDR VR_9, [VR_0]
	ADD VR_10, VR_9, #25
	STR VR_10, [VR_0]
	B .BLOCK_2
.BLOCK_7:
	B .BLOCK_8
.BLOCK_8:
	LDR VR_11, [VR_1]
	CMP VR_11, #5
	BLT .BLOCK_9
	BGE .BLOCK_10
.BLOCK_9:
	LDR VR_12, [VR_0]
	MOV VR_13, VR_12, LSL #1
	STR VR_13, [VR_0]
	LDR VR_14, [VR_1]
	ADD VR_15, VR_14, #1
	STR VR_15, [VR_1]
	B .BLOCK_8
.BLOCK_10:
	B .BLOCK_2
.BLOCK_11:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global main
main:
.BLOCK_12:
	SUB sp, sp, #0
	BL ifWhile
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_13:
	MOV r0, #0
	POP {pc}


	.end
