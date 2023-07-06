	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global func
func:
.BLOCK_0:
	sub	sp, sp, #4
	mov	r4, r0
	add	r3, sp, #0
	str	r4,[r3]
	ldr	r5,[r3]
	sub	r6, r5, #1
	str	r6,[r3]
	ldr	r7,[r3]
	mov	r0, r7
	add	sp, sp, #4
	bx	lr


	.global main
main:
.BLOCK_1:
	sub	sp, sp, #4
	add	r3, sp, #0
	mov	r4, #10
	mov	r5, a
	str	r4,[r5]
	mov	r7, a
	ldr	r6,[r7]
	mov	r0, IVR_1
	bl	func
	mov	r0, r0
	str	r0,[r3]
	ldr	r1,[r3]
	mov	r0, r1
	add	sp, sp, #4
	pop{pc}


	.data
	.align 4
	.global a
a:
	.zero	4
	.end
