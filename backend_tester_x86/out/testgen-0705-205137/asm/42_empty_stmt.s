	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #10
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	MOV VR_3, VR_2, LSL #1
	ADD VR_4, VR_3, #1
	MOV r0, VR_4
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.end
