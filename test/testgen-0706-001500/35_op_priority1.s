	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #16
	add	r3, sp, #0
	add	r4, sp, #4
	add	r5, sp, #8
	add	r6, sp, #12
	mov	r7, #10
	str	r7,[r6]
	mov	r0, #4
	str	r0,[r5]
	mov	r1, #2
	str	r1,[r4]
	mov	r2, #2
	str	r2,[r3]
	ldr	r7,[r4]
	ldr	r0,[r6]
	ldr	r1,[r5]
	mul	r2, r0, r1
	add	r2, r7, r2
	ldr	r3,[r3]
	sub	r2, r2, r3
	mov	r0, r2
	add	sp, sp, #16
	bx	lr


	.end
