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
	mul	r6, r5, #2
	add	r7, r6, #1
	mov	r0, r7
	add	sp, sp, #4
	bx	lr


	.end
