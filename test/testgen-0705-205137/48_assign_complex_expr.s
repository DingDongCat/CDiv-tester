	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #20
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	MOV VR_5, #5
	STR VR_5, [VR_4]
	MOV VR_6, #5
	STR VR_6, [VR_3]
	MOV VR_7, #1
	STR VR_7, [VR_2]
	MOV VR_9, #0
	SUB VR_8, VR_9, #2
	STR VR_8, [VR_1]
	LDR VR_10, [VR_1]
	MOV VR_11, VR_10, LSL #0
	MOV VR_13, VR_11, ASR #0
	ADD VR_13, VR_11, VR_13, LSR #31
	MOV VR_12, VR_13, ASR #1
	LDR VR_14, [VR_4]
	LDR VR_15, [VR_3]
	SUB VR_16, VR_14, VR_15
	ADD VR_17, VR_12, VR_16
	LDR VR_18, [VR_2]
	ADD VR_19, VR_18, #3
	RSB VR_20, VR_19, #0
	MOV VR_22, VR_20, ASR #0
	ADD VR_22, VR_20, VR_22, LSR #31
	MOV VR_21, VR_22, ASR #1
	MOV VR_23, VR_21, LSL #1
	SUB VR_24, VR_20, VR_23
	SUB VR_25, VR_17, VR_24
	STR VR_25, [VR_0]
	LDR VR_26, [VR_0]
	MOV r0, VR_26
	BL putint
	LDR VR_27, [VR_1]
	MOV VR_29, VR_27, ASR #0
	ADD VR_29, VR_27, VR_29, LSR #31
	MOV VR_28, VR_29, ASR #1
	MOV VR_30, VR_28, LSL #1
	SUB VR_31, VR_27, VR_30
	ADD VR_32, VR_31, #67
	LDR VR_33, [VR_4]
	LDR VR_34, [VR_3]
	SUB VR_35, VR_33, VR_34
	RSB VR_36, VR_35, #0
	ADD VR_37, VR_32, VR_36
	LDR VR_38, [VR_2]
	ADD VR_39, VR_38, #2
	MOV VR_41, VR_39, ASR #0
	ADD VR_41, VR_39, VR_41, LSR #31
	MOV VR_40, VR_41, ASR #1
	MOV VR_42, VR_40, LSL #1
	SUB VR_43, VR_39, VR_42
	RSB VR_44, VR_43, #0
	SUB VR_45, VR_37, VR_44
	STR VR_45, [VR_0]
	LDR VR_46, [VR_0]
	ADD VR_47, VR_46, #3
	STR VR_47, [VR_0]
	LDR VR_48, [VR_0]
	MOV r0, VR_48
	BL putint
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.end