	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #0
	MOVW VR_0, :lower16:a
	MOVT VR_0, :upper16:a
	ADD VR_1, VR_0, #16
	LDR VR_2, [VR_1]
	MOV r0, VR_2
	BX lr
.BLOCK_1:
	MOV r0, #0
	BX lr


	.data
	.align 4
	.global a
a:
	.zero	4
	.word	1
	.word	2
	.word	3
	.word	4


	.end
