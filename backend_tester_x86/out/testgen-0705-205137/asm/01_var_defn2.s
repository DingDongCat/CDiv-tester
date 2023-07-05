	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #5
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	MOVW VR_4, :lower16:b
	MOVT VR_4, :upper16:b
	LDR VR_3, [VR_4]
	ADD VR_5, VR_2, VR_3
	MOV r0, VR_5
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.data
	.align 4
	.global a
a:
	.word	3
	.global b
b:
	.word	5


	.end
