	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global reverse
reverse:
.BLOCK_0:
	sub	sp, sp, #8
	mov	r5, r0
	add	r3, sp, #0
	add	r4, sp, #4
	str	r5,[r4]
	ldr	r6,[r4]
	cmp	IVR_3, #1
	bLE	.BLOCK_1
	bGT	.BLOCK_2
.BLOCK_1:
	bl	getint
	mov	r6, r0
	str	r6,[r3]
	ldr	r7,[r3]
	mov	r0, null
	bl	putint
	b	.BLOCK_3
.BLOCK_2:
	bl	getint
	mov	r0, r0
	str	r0,[r3]
	ldr	r1,[r4]
	sub	r2, r1, #1
	mov	r0, r5
	bl	reverse
	ldr	r6,[r3]
	mov	r0, null
	bl	putint
	b	.BLOCK_3
.BLOCK_3:
	add	sp, sp, #8
	pop{pc}


	.global main
main:
.BLOCK_4:
	sub	sp, sp, #4
	add	r3, sp, #0
	mov	r4, #200
	str	r4,[r3]
	ldr	r5,[r3]
	mov	r0, IVR_2
	bl	reverse
	mov	r0, #0
	add	sp, sp, #4
	pop{pc}


	.end
