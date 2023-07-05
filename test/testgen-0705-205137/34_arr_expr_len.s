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
	CMP VR_4, #6
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_5, [VR_0]
	LDR VR_6, [VR_1]
	MOVW VR_7, :lower16:arr
	MOVT VR_7, :upper16:arr
	ADD VR_8, VR_7, VR_6, LSL #2
	LDR VR_9, [VR_8]
	ADD VR_10, VR_5, VR_9
	STR VR_10, [VR_0]
	LDR VR_11, [VR_1]
	ADD VR_12, VR_11, #1
	STR VR_12, [VR_1]
	B .BLOCK_1
.BLOCK_3:
	LDR VR_13, [VR_0]
	MOV r0, VR_13
	ADD sp, sp, #8
	BX lr
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.data
	.align 4
	.global arr
arr:
	.word	1
	.word	2
	.word	33
	.word	4
	.word	5
	.word	6


	.end
