	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #4
	add	r3, sp, #0
	mov	r4, #10
	str	r4,[r3]
	ldr	r5,[r3]
	sdiv	r6, r5, #3
	mul	r7, r6, #3
	sub	r0, r5, r7
	mov	r0, r0
	add	sp, sp, #4
	bx	lr


	.end
