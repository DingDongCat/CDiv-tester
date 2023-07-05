	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global ififElse
ififElse:
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
	CMP VR_4, #5
	BEQ .BLOCK_3
	BNE .BLOCK_2
.BLOCK_2:
	LDR VR_5, [VR_1]
	MOV r0, VR_5
	ADD sp, sp, #8
	BX lr
.BLOCK_3:
	B .BLOCK_4
.BLOCK_4:
	LDR VR_6, [VR_0]
	CMP VR_6, #10
	BEQ .BLOCK_6
	BNE .BLOCK_7
.BLOCK_5:
	B .BLOCK_2
.BLOCK_6:
	MOV VR_7, #25
	STR VR_7, [VR_1]
	B .BLOCK_5
.BLOCK_7:
	LDR VR_8, [VR_1]
	ADD VR_9, VR_8, #15
	STR VR_9, [VR_1]
	B .BLOCK_5
.BLOCK_8:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global main
main:
.BLOCK_9:
	SUB sp, sp, #0
	BL ififElse
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_10:
	MOV r0, #0
	POP {pc}


	.end
