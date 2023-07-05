	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #10
	STR VR_1, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_2, [VR_0]
	CMP VR_2, #0
	MOVEQ VR_3, #1
	MOVNE VR_3, #0
	CMP VR_3, #0
	MOVEQ VR_4, #1
	MOVNE VR_4, #0
	CMP VR_4, #0
	MOVEQ VR_5, #1
	MOVNE VR_5, #0
	RSB VR_6, VR_5, #0
	CMP VR_6, #0
	BNE .BLOCK_3
	BEQ .BLOCK_4
.BLOCK_2:
	LDR VR_7, [VR_0]
	MOV r0, VR_7
	ADD sp, sp, #4
	BX lr
.BLOCK_3:
	MOV VR_9, #0
	SUB VR_8, VR_9, #1
	RSB VR_10, VR_8, #0
	RSB VR_11, VR_10, #0
	STR VR_11, [VR_0]
	B .BLOCK_2
.BLOCK_4:
	MOV VR_12, #0
	STR VR_12, [VR_0]
	B .BLOCK_2
.BLOCK_5:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.end
