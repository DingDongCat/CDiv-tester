	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #4
	add	r3, sp, #0
	mov	r4, #5
	str	r4,[r3]
	ldr	r5,[r3]
	mov	r7, b
	ldr	r6,[r7]
	add	r0, r5, r6
	mov	r0, r0
	add	sp, sp, #4
	bx	lr


	.data
	.align 4
	.global b
b:
	.zero	0
	.word	5
	.end
