	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #0
	STR VR_2, [VR_1]
	MOV VR_3, #0
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	CMP VR_4, #100
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	B .BLOCK_4
.BLOCK_3:
	LDR VR_5, [VR_0]
	MOV r0, VR_5
	ADD sp, sp, #8
	BX lr
.BLOCK_4:
	LDR VR_6, [VR_1]
	CMP VR_6, #50
	BEQ .BLOCK_6
	BNE .BLOCK_5
.BLOCK_5:
	LDR VR_7, [VR_0]
	LDR VR_8, [VR_1]
	ADD VR_9, VR_7, VR_8
	STR VR_9, [VR_0]
	LDR VR_10, [VR_1]
	ADD VR_11, VR_10, #1
	STR VR_11, [VR_1]
	B .BLOCK_1
.BLOCK_6:
	LDR VR_12, [VR_1]
	ADD VR_13, VR_12, #1
	STR VR_13, [VR_1]
	B .BLOCK_1
.BLOCK_7:
	B .BLOCK_5
.BLOCK_8:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.end
