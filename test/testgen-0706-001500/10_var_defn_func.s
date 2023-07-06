	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global defn
defn:
.BLOCK_0:
	mov	r0, #4
	bx	lr


	.global main
main:
.BLOCK_1:
	sub	sp, sp, #4
	add	r3, sp, #0
	bl	defn
	mov	r4, r0
	str	r4,[r3]
	ldr	r5,[r3]
	mov	r0, r5
	add	sp, sp, #4
	pop{pc}


	.end
