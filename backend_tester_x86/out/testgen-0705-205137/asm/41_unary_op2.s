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
	MOV VR_2, #56
	STR VR_2, [VR_1]
	MOV VR_3, #4
	STR VR_3, [VR_0]
	LDR VR_4, [VR_1]
	MOV VR_6, #0
	SUB VR_5, VR_6, #4
	SUB VR_7, VR_4, VR_5
	LDR VR_8, [VR_0]
	ADD VR_9, VR_7, VR_8
	STR VR_9, [VR_1]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_10, [VR_1]
	CMP VR_10, #0
	MOVEQ VR_11, #1
	MOVNE VR_11, #0
	CMP VR_11, #0
	MOVEQ VR_12, #1
	MOVNE VR_12, #0
	CMP VR_12, #0
	MOVEQ VR_13, #1
	MOVNE VR_13, #0
	RSB VR_14, VR_13, #0
	CMP VR_14, #0
	BNE .BLOCK_3
	BEQ .BLOCK_4
.BLOCK_2:
	LDR VR_15, [VR_1]
	MOV r0, VR_15
	BL putint
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}
.BLOCK_3:
	MOV VR_17, #0
	SUB VR_16, VR_17, #1
	RSB VR_18, VR_16, #0
	RSB VR_19, VR_18, #0
	STR VR_19, [VR_1]
	B .BLOCK_2
.BLOCK_4:
	LDR VR_20, [VR_0]
	MOV VR_21, VR_20
	STR VR_21, [VR_1]
	B .BLOCK_2
.BLOCK_5:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}


	.end
