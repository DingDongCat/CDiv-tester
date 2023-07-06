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
	mov	r6, #5
	str	r6,[r3]
	ldr	r7,[r4]
	ldr	r0,[r3]
	sdiv	r1, r7, r0
	mov	r0, r1
	add	sp, sp, #8
	bx	lr


	.end
