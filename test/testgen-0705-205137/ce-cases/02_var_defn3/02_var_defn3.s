	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #12
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	MOV VR_3, #1
	STR VR_3, [VR_2]
	MOV VR_4, #2
	STR VR_4, [VR_1]
	MOV VR_5, #3
	STR VR_5, [VR_0]
	LDR VR_6, [VR_1]
	LDR VR_7, [VR_0]
	ADD VR_8, VR_6, VR_7
	MOV r0, VR_8
	ADD sp, sp, #12
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #12
	BX lr


	.end
