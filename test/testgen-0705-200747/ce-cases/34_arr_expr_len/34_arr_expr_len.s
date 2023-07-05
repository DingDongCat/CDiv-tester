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
	mov	r5, #0
	str	r5,[r4]
	mov	r6, #0
	str	r6,[r3]
	b	.BLOCK_1
.BLOCK_1:
	ldr	r7,[r4]
	cmp	IVR_4, #6
	bLT	.BLOCK_2
	bGE	.BLOCK_3
.BLOCK_2:
	ldr	r7,[r3]
	ldr	r0,[r4]
	mov	r1, arr
	add	r2, r1, r0, LSL #4
	ldr	r5,[r2]
	add	r6, r7, r5
	str	r6,[r3]
	ldr	r6,[r4]
	add	r1, r6, #1
	str	r1,[r4]
	b	.BLOCK_1
.BLOCK_3:
	ldr	r1,[r3]
	mov	r0, r1
	add	sp, sp, #8
	bx	lr


	.data
	.align 4
	.global arr
arr:
	.zero	0
	.word	1
	.zero	0
	.word	2
	.zero	0
	.word	33
	.zero	0
	.word	4
	.zero	0
	.word	5
	.zero	0
	.word	6
	.end
