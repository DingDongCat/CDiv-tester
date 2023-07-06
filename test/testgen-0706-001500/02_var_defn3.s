	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #12
	add	r3, sp, #0
	add	r4, sp, #4
	add	r5, sp, #8
	mov	r6, #1
	str	r6,[r5]
	mov	r7, #2
	str	r7,[r4]
	mov	r0, #3
	str	r0,[r3]
	ldr	r1,[r4]
	ldr	r2,[r3]
	add	r6, r1, r2
	mov	r0, r6
	add	sp, sp, #12
	bx	lr


	.end
