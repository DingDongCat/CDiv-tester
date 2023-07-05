	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #0
	MOV r0, #3
	BX lr
.BLOCK_1:
	MOV r0, #0
	BX lr


	.end
