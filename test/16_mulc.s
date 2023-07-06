	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	mov	r3, #5
	mov	r4, #5
	mul	r5, r3, r4
	mov	r0, r5
	bx	lr


	.end
