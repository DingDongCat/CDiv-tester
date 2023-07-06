	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global f1
f1:
.BLOCK_0:
	sub	sp, sp, #4
	mov	r4, r0
	add	r3, sp, #0
	str	r4,[r3]
	mov	r5, a
	add	r6, r5, #20
	mov	r7, #4000
	str	r7,[r6]
	mov	r0, a
	add	r1, r0, #16000
	mov	r2, #3
	str	r2,[r1]
	mov	r5, a
	movw	r7, #4095
	add	r4, r5, r7, LSL #4
	mov	r4, #7
	str	r4,[r4]
	mov	r4, a
	movw	r4, #4095
	add	r5, r4, r4, LSL #4
	ldr	r4,[r5]
	ldr	r5,[r3]
	add	r6, r5, r4, LSL #4
	mov	r7, a
	movw	r7, #2216
	add	r0, r7, r7, LSL #4
	ldr	r7,[r0]
	add	r0, r7, #9
	str	r0,[r6]
	mov	r6, a
	add	r6, r6, #20
	ldr	r6,[r6]
	mov	r0, a
	add	r0, r0, r6, LSL #4
	ldr	r0,[r0]
	mov	r0, r0
	add	sp, sp, #4
	bx	lr


	.global main
main:
.BLOCK_1:
	sub	sp, sp, #32768
	add	r3, sp, #0
	add	r4, sp, #16384
	mov	r5, r4
	mov	r6, r5
	mov	r0, null
	mov	r1, null
	mov	r2, null
	bl	memset
	add	r7, r6, #4096
	mov	r0, #1
	str	r0,[r7]
	add	r1, r6, #8192
	mov	r2, #2
	str	r2,[r1]
	movw	r0, #2049
	add	r5, r6, r0, LSL #4
	mov	r5, #3
	str	r5,[r5]
	add	r5, r6, #12288
	mov	r7, #4
	str	r7,[r5]
	movw	r7, #3073
	add	r5, r6, r7, LSL #4
	mov	r5, #5
	str	r5,[r5]
	movw	r7, #3074
	add	r5, r6, r7, LSL #4
	mov	r5, #6
	str	r5,[r5]
	mov	r5, r3
	mov	r5, r5
	mov	r0, null
	mov	r1, null
	mov	r2, null
	bl	memset
	mov	r7, #1
	str	r7,[r5]
	add	r7, r5, #4
	mov	r0, #2
	str	r0,[r7]
	add	r7, r5, #16
	mov	r0, #3
	str	r0,[r7]
	add	r7, r5, #20
	mov	r0, #4
	str	r0,[r7]
	mov	r7, r3
	mov	r7, r7
	mov	r0, IVR_1
	bl	f1
	mov	r7, r0
	mov	r0, null
	bl	putint
	mov	r0, null
	bl	putch
	add	r7, r3, #32
	mov	r7, r7
	ldr	r5,[r7]
	mov	r0, r5
	add	sp, sp, #32768
	pop{pc}


	.data
	.align 4
	.comm	a, 16384, 4
	.end
