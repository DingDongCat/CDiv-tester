	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global ifElseIf
ifElseIf:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #5
	STR VR_2, [VR_1]
	MOV VR_3, #10
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	CMP VR_4, #6
	BEQ .BLOCK_3
	BNE .BLOCK_16
.BLOCK_2:
	LDR VR_5, [VR_1]
	MOV r0, VR_5
	ADD sp, sp, #8
	BX lr
.BLOCK_3:
	LDR VR_6, [VR_1]
	MOV r0, VR_6
	ADD sp, sp, #8
	BX lr
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	B .BLOCK_6
.BLOCK_6:
	LDR VR_7, [VR_0]
	CMP VR_7, #10
	BEQ .BLOCK_15
	BNE .BLOCK_9
.BLOCK_7:
	B .BLOCK_2
.BLOCK_8:
	MOV VR_8, #25
	STR VR_8, [VR_1]
	B .BLOCK_7
.BLOCK_9:
	B .BLOCK_10
.BLOCK_10:
	LDR VR_9, [VR_0]
	CMP VR_9, #10
	BEQ .BLOCK_14
	BNE .BLOCK_13
.BLOCK_11:
	B .BLOCK_7
.BLOCK_12:
	LDR VR_10, [VR_1]
	ADD VR_11, VR_10, #15
	STR VR_11, [VR_1]
	B .BLOCK_11
.BLOCK_13:
	LDR VR_12, [VR_1]
	RSB VR_13, VR_12, #0
	STR VR_13, [VR_1]
	B .BLOCK_11
.BLOCK_14:
	LDR VR_14, [VR_1]
	MOV VR_16, #0
	SUB VR_15, VR_16, #5
	CMP VR_14, VR_15
	BEQ .BLOCK_12
	BNE .BLOCK_13
.BLOCK_15:
	LDR VR_17, [VR_1]
	CMP VR_17, #1
	BEQ .BLOCK_8
	BNE .BLOCK_9
.BLOCK_16:
	LDR VR_18, [VR_0]
	CMP VR_18, #11
	BEQ .BLOCK_3
	BNE .BLOCK_5
.BLOCK_17:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global main
main:
.BLOCK_18:
	SUB sp, sp, #0
	BL ifElseIf
	MOV VR_0, r0
	MOV r0, VR_0
	BL putint
	MOV r0, #0
	POP {pc}
.BLOCK_19:
	MOV r0, #0
	POP {pc}


	.end
