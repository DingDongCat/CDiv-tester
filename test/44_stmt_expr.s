	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	sub	sp, sp, #4
	add	r3, sp, #0
	mov	r4, #0
	str	r4,[r3]
	mov	r5, #1
	mov	r6, k
	str	r5,[r6]
	b	.BLOCK_1
.BLOCK_1:
	ldr	r7,[r3]
	mov	r7, #-1
	cmp	IVR_4, r7
	bLE	.BLOCK_2
	bGT	.BLOCK_3
.BLOCK_2:
	ldr	r0,[r3]
	add	r1, r0, #1
	str	r1,[r3]
	mov	r4, k
	ldr	r2,[r4]
	add	r4, r2, #1
	mov	r6, k
	ldr	r4,[r6]
	mov	r6, k
	ldr	r5,[r6]
	add	r6, r4, r5
	mov	r7, k
	str	r6,[r7]
	b	.BLOCK_1
.BLOCK_3:
	mov	r7, k
	ldr	r6,[r7]
	mov	r0, null
	bl	putint
	mov	r1, k
	ldr	r7,[r1]
	mov	r0, r7
	add	sp, sp, #4
	pop{pc}


	.data
	.align 4
	.global k
k:
	.zero	4
	.end
