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
	MOV VR_2, #10
	STR VR_2, [VR_1]
	MOV VR_3, #30
	STR VR_3, [VR_0]
	LDR VR_4, [VR_1]
	MOV VR_6, #0
	SUB VR_5, VR_6, #5
	SUB VR_7, VR_4, VR_5
	LDR VR_8, [VR_0]
	ADD VR_9, VR_7, VR_8
	MOV VR_11, #0
	SUB VR_10, VR_11, #5
	ADD VR_12, VR_9, VR_10
	MOV r0, VR_12
	ADD sp, sp, #8
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.end
