	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	mov	r3, a
	add	r4, r3, #16
	ldr	r5,[r4]
	mov	r0, r5
	bx	lr


	.data
	.align 4
	.global a
a:
	.zero	4
	.word	1
	.zero	0
	.word	2
	.zero	0
	.word	3
	.zero	0
	.word	4
	.end
