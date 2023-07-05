	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #0
	MOV VR_1, #10
	MOVW VR_4, #26215
	MOVT VR_4, #26214
	SMULL VR_0, VR_2, VR_4, VR_1
	MOV VR_3, VR_2, ASR #1
	SUB VR_0, VR_3, VR_1, ASR #31
	MOV r0, VR_0
	BX lr
.BLOCK_1:
	MOV r0, #0
	BX lr


	.end
