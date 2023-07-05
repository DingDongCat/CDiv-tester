	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global exgcd
exgcd:
.BLOCK_0:
	SUB sp, sp, #24
	MOV VR_9, r3
	MOV VR_8, r2
	MOV VR_7, r1
	MOV VR_6, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	ADD VR_5, sp, #20
	STR VR_6, [VR_5]
	STR VR_7, [VR_4]
	STR VR_8, [VR_3]
	STR VR_9, [VR_2]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_10, [VR_4]
	CMP VR_10, #0
	BEQ .BLOCK_3
	BNE .BLOCK_5
.BLOCK_2:
	MOV r0, #0
	ADD sp, sp, #24
	POP {pc}
.BLOCK_3:
	LDR VR_11, [VR_3]
	MOV VR_12, VR_11
	MOV VR_13, #1
	STR VR_13, [VR_12]
	LDR VR_14, [VR_2]
	MOV VR_15, VR_14
	MOV VR_16, #0
	STR VR_16, [VR_15]
	LDR VR_17, [VR_5]
	MOV r0, VR_17
	ADD sp, sp, #24
	POP {pc}
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	LDR VR_18, [VR_4]
	LDR VR_19, [VR_5]
	LDR VR_20, [VR_4]
	SDIV VR_21, VR_19, VR_20
	MUL VR_22, VR_21, VR_20
	SUB VR_23, VR_19, VR_22
	LDR VR_24, [VR_3]
	LDR VR_25, [VR_2]
	MOV r3, VR_25
	MOV r2, VR_24
	MOV r1, VR_23
	MOV r0, VR_18
	BL exgcd
	MOV VR_26, r0
	STR VR_26, [VR_1]
	LDR VR_27, [VR_3]
	MOV VR_28, VR_27
	LDR VR_29, [VR_28]
	STR VR_29, [VR_0]
	LDR VR_30, [VR_3]
	MOV VR_31, VR_30
	LDR VR_32, [VR_2]
	MOV VR_33, VR_32
	LDR VR_34, [VR_33]
	STR VR_34, [VR_31]
	LDR VR_35, [VR_2]
	MOV VR_36, VR_35
	LDR VR_37, [VR_0]
	LDR VR_38, [VR_5]
	LDR VR_39, [VR_4]
	SDIV VR_40, VR_38, VR_39
	LDR VR_41, [VR_2]
	MOV VR_42, VR_41
	LDR VR_43, [VR_42]
	MUL VR_44, VR_40, VR_43
	SUB VR_45, VR_37, VR_44
	STR VR_45, [VR_36]
	LDR VR_46, [VR_1]
	MOV r0, VR_46
	ADD sp, sp, #24
	POP {pc}
.BLOCK_6:
	B .BLOCK_2


	.global main
main:
.BLOCK_7:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	MOV VR_4, #7
	STR VR_4, [VR_3]
	MOV VR_5, #15
	STR VR_5, [VR_2]
	MOV VR_6, VR_1
	MOV r2, #4
	MOV r1, #0
	MOV r0, VR_6
	BL memset
	MOV VR_7, #1
	STR VR_7, [VR_6]
	MOV VR_8, VR_0
	MOV r2, #4
	MOV r1, #0
	MOV r0, VR_8
	BL memset
	MOV VR_9, #1
	STR VR_9, [VR_8]
	LDR VR_10, [VR_3]
	LDR VR_11, [VR_2]
	MOV VR_12, VR_1
	MOV VR_13, VR_0
	MOV r3, VR_13
	MOV r2, VR_12
	MOV r1, VR_11
	MOV r0, VR_10
	BL exgcd
	MOV VR_14, r0
	MOV VR_15, VR_1
	MOV VR_16, VR_1
	LDR VR_17, [VR_16]
	LDR VR_18, [VR_2]
	SDIV VR_19, VR_17, VR_18
	MUL VR_20, VR_19, VR_18
	SUB VR_21, VR_17, VR_20
	LDR VR_22, [VR_2]
	ADD VR_23, VR_21, VR_22
	LDR VR_24, [VR_2]
	SDIV VR_25, VR_23, VR_24
	MUL VR_26, VR_25, VR_24
	SUB VR_27, VR_23, VR_26
	STR VR_27, [VR_15]
	MOV VR_28, VR_1
	LDR VR_29, [VR_28]
	MOV r0, VR_29
	BL putint
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}
.BLOCK_8:
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}


	.end
