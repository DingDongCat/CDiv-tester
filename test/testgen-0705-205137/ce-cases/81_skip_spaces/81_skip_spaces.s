	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #408
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	MOV VR_3, #0
	STR VR_3, [VR_1]
	MOV VR_4, #0
	STR VR_4, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	BL getint
	MOV VR_5, r0
	CMP VR_5, #0
	BNE .BLOCK_2
	BEQ .BLOCK_3
.BLOCK_2:
	LDR VR_6, [VR_1]
	ADD VR_7, VR_2, VR_6, LSL #2
	BL getint
	MOV VR_8, r0
	STR VR_8, [VR_7]
	LDR VR_9, [VR_1]
	ADD VR_10, VR_9, #1
	STR VR_10, [VR_1]
	B .BLOCK_1
.BLOCK_3:
	B .BLOCK_4
.BLOCK_4:
	LDR VR_11, [VR_1]
	CMP VR_11, #0
	BNE .BLOCK_5
	BEQ .BLOCK_6
.BLOCK_5:
	LDR VR_12, [VR_1]
	SUB VR_13, VR_12, #1
	STR VR_13, [VR_1]
	LDR VR_14, [VR_0]
	LDR VR_15, [VR_1]
	ADD VR_16, VR_2, VR_15, LSL #2
	LDR VR_17, [VR_16]
	ADD VR_18, VR_14, VR_17
	STR VR_18, [VR_0]
	B .BLOCK_4
.BLOCK_6:
	LDR VR_19, [VR_0]
	MOVW VR_23, #14933
	MOVT VR_23, #26546
	SMULL VR_20, VR_21, VR_23, VR_19
	MOV VR_22, VR_21, ASR #5
	SUB VR_20, VR_22, VR_19, ASR #31
	MOV VR_25, #79
	MUL VR_24, VR_20, VR_25
	SUB VR_26, VR_19, VR_24
	MOV r0, VR_26
	ADD sp, sp, #408
	POP {pc}
.BLOCK_7:
	MOV r0, #0
	ADD sp, sp, #408
	POP {pc}


	.end
