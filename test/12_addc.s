	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	mov	r3, #5
	add	r4, r3, #10
	mov	r0, r4
	bx	lr


	.end
