	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #15
	STR VR_2, [VR_1]
	MOV VR_3, #12
	STR VR_3, [VR_0]
	LDR VR_4, [VR_1]
	LDR VR_5, [VR_0]
	ADD VR_6, VR_4, VR_5
	ADD VR_7, VR_6, #61
	MOV r0, VR_7
	ADD sp, sp, #8
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.end
