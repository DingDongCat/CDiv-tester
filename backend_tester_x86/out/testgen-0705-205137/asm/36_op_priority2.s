	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	MOV VR_4, #10
	STR VR_4, [VR_3]
	MOV VR_5, #4
	STR VR_5, [VR_2]
	MOV VR_6, #2
	STR VR_6, [VR_1]
	MOV VR_7, #2
	STR VR_7, [VR_0]
	LDR VR_8, [VR_1]
	LDR VR_9, [VR_3]
	ADD VR_10, VR_8, VR_9
	LDR VR_11, [VR_2]
	LDR VR_12, [VR_0]
	SUB VR_13, VR_11, VR_12
	MUL VR_14, VR_10, VR_13
	MOV r0, VR_14
	ADD sp, sp, #16
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr


	.end
