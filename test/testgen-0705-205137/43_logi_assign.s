	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	MOVW VR_2, :lower16:a
	MOVT VR_2, :upper16:a
	STR VR_1, [VR_2]
	BL getint
	MOV VR_3, r0
	MOVW VR_4, :lower16:b
	MOVT VR_4, :upper16:b
	STR VR_3, [VR_4]
	B .BLOCK_1
.BLOCK_1:
	MOVW VR_6, :lower16:a
	MOVT VR_6, :upper16:a
	LDR VR_5, [VR_6]
	MOVW VR_8, :lower16:b
	MOVT VR_8, :upper16:b
	LDR VR_7, [VR_8]
	CMP VR_5, VR_7
	BEQ .BLOCK_5
	BNE .BLOCK_4
.BLOCK_2:
	LDR VR_9, [VR_0]
	MOV r0, VR_9
	ADD sp, sp, #4
	POP {pc}
.BLOCK_3:
	MOV VR_10, #1
	STR VR_10, [VR_0]
	B .BLOCK_2
.BLOCK_4:
	MOV VR_11, #0
	STR VR_11, [VR_0]
	B .BLOCK_2
.BLOCK_5:
	MOVW VR_13, :lower16:a
	MOVT VR_13, :upper16:a
	LDR VR_12, [VR_13]
	CMP VR_12, #3
	BNE .BLOCK_3
	BEQ .BLOCK_4
.BLOCK_6:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global a
a:
	.zero	4
	.global b
b:
	.zero	4


	.end
