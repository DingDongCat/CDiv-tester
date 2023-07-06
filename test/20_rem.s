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
	mov	r6, #3
	sdiv	r7, r5, r6
	mov	r0, #3
	mul	r1, r7, r0
	sub	r2, r5, r1
	mov	r0, r2
	add	sp, sp, #4
	bx	lr


	.end
