	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global whileIf
whileIf:
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
	CMP VR_6, #5
	BEQ .BLOCK_6
	BNE .BLOCK_7
.BLOCK_5:
	LDR VR_7, [VR_1]
	ADD VR_8, VR_7, #1
	STR VR_8, [VR_1]
	B .BLOCK_1
.BLOCK_6:
	MOV VR_9, #25
	STR VR_9, [VR_0]
	B .BLOCK_5
.BLOCK_7:
	B .BLOCK_8
.BLOCK_8:
	LDR VR_10, [VR_1]
	CMP VR_10, #10
	BEQ .BLOCK_10
	BNE .BLOCK_11
.BLOCK_9:
	B .BLOCK_5
.BLOCK_10:
	MOV VR_11, #42
	STR VR_11, [VR_0]
	B .BLOCK_9
.BLOCK_11:
	LDR VR_12, [VR_1]
	MOV VR_13, VR_12, LSL #1
	STR VR_13, [VR_0]
	B .BLOCK_9
.BLOCK_12:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global main
main:
.BLOCK_13:
	SUB sp, sp, #0
	BL whileIf
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_14:
	MOV r0, #0
	POP {pc}


	.end
