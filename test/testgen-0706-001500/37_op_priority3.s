	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #8
	add	r3, sp, #0
	add	r4, sp, #4
	mov	r5, #10
	str	r5,[r4]
	mov	r6, #30
	str	r6,[r3]
	ldr	r7,[r4]
	mvn	r0, #4
	sub	r1, r7, r0
	ldr	r2,[r3]
	add	r5, r1, r2
	mvn	r6, #4
	add	r5, r5, r6
	mov	r0, r5
	add	sp, sp, #8
	bx	lr


	.end
