	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global doubleWhile
doubleWhile:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #5
	STR VR_2, [VR_1]
	MOV VR_3, #7
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	CMP VR_4, #100
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_5, [VR_1]
	ADD VR_6, VR_5, #30
	STR VR_6, [VR_1]
	B .BLOCK_4
.BLOCK_3:
	LDR VR_7, [VR_0]
	MOV r0, VR_7
	ADD sp, sp, #8
	BX lr
.BLOCK_4:
	LDR VR_8, [VR_0]
	CMP VR_8, #100
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	LDR VR_9, [VR_0]
	ADD VR_10, VR_9, #6
	STR VR_10, [VR_0]
	B .BLOCK_4
.BLOCK_6:
	LDR VR_11, [VR_0]
	SUB VR_12, VR_11, #100
	STR VR_12, [VR_0]
	B .BLOCK_1
.BLOCK_7:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global main
main:
.BLOCK_8:
	SUB sp, sp, #0
	BL doubleWhile
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_9:
	MOV r0, #0
	POP {pc}


	.end
