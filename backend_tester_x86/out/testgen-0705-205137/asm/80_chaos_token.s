	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global putstr
putstr:
.BLOCK_0:
	SUB sp, sp, #8
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	MOV VR_3, #0
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	LDR VR_5, [VR_0]
	ADD VR_6, VR_4, VR_5, LSL #2
	LDR VR_7, [VR_6]
	CMP VR_7, #0
	BNE .BLOCK_2
	BEQ .BLOCK_3
.BLOCK_2:
	LDR VR_8, [VR_1]
	LDR VR_9, [VR_0]
	ADD VR_10, VR_8, VR_9, LSL #2
	LDR VR_11, [VR_10]
	MOV r0, VR_11
	BL putch
	LDR VR_12, [VR_0]
	ADD VR_13, VR_12, #1
	STR VR_13, [VR_0]
	B .BLOCK_1
.BLOCK_3:
	LDR VR_14, [VR_0]
	MOV r0, VR_14
	ADD sp, sp, #8
	POP {pc}
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}


	.global main
main:
.BLOCK_5:
	SUB sp, sp, #12
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	MOVW VR_3, :lower16:__HELLO
	MOVT VR_3, :upper16:__HELLO
	MOV VR_4, VR_3
	MOV r0, VR_4
	BL putstr
	MOV VR_5, r0
	MOV VR_6, #0
	STR VR_6, [VR_2]
	B .BLOCK_6
.BLOCK_6:
	MOV VR_7, #1
	CMP VR_7, #0
	BNE .BLOCK_7
	BEQ .BLOCK_8
.BLOCK_7:
	LDR VR_8, [VR_2]
	MOVW VR_12, #43691
	MOVT VR_12, #10922
	SMULL VR_9, VR_10, VR_12, VR_8
	MOV VR_11, VR_10, ASR #0
	SUB VR_9, VR_11, VR_8, ASR #31
	STR VR_9, [VR_1]
	LDR VR_13, [VR_2]
	MOVW VR_17, #43691
	MOVT VR_17, #10922
	SMULL VR_14, VR_15, VR_17, VR_13
	MOV VR_16, VR_15, ASR #0
	SUB VR_14, VR_16, VR_13, ASR #31
	MOV VR_19, #6
	MUL VR_18, VR_14, VR_19
	SUB VR_20, VR_13, VR_18
	STR VR_20, [VR_0]
	B .BLOCK_9
.BLOCK_8:
	MOV r0, #0
	ADD sp, sp, #12
	POP {pc}
.BLOCK_9:
	LDR VR_21, [VR_1]
	LDR VR_22, [VR_0]
	CMP VR_21, VR_22
	BNE .BLOCK_11
	BEQ .BLOCK_10
.BLOCK_10:
	LDR VR_23, [VR_2]
	ADD VR_24, VR_23, VR_23, LSL #4
	ADD VR_25, VR_24, #23
	MOV VR_27, VR_25, ASR #4
	ADD VR_27, VR_25, VR_27, LSR #27
	MOV VR_26, VR_27, ASR #5
	MOV VR_28, VR_26, LSL #5
	SUB VR_29, VR_25, VR_28
	STR VR_29, [VR_2]
	B .BLOCK_12
.BLOCK_11:
	LDR VR_30, [VR_1]
	MOVW VR_31, :lower16:N4__mE___
	MOVT VR_31, :upper16:N4__mE___
	MOV VR_33, #200
	MLA VR_32, VR_30, VR_33, VR_31
	MOV VR_34, VR_32
	MOV r0, VR_34
	BL putstr
	MOV VR_35, r0
	MOVW VR_36, :lower16:saY_HeI10_To
	MOVT VR_36, :upper16:saY_HeI10_To
	MOV VR_37, VR_36
	MOV r0, VR_37
	BL putstr
	MOV VR_38, r0
	LDR VR_39, [VR_0]
	MOVW VR_40, :lower16:N4__mE___
	MOVT VR_40, :upper16:N4__mE___
	MOV VR_42, #200
	MLA VR_41, VR_39, VR_42, VR_40
	MOV VR_43, VR_41
	MOV r0, VR_43
	BL putstr
	MOV VR_44, r0
	MOVW VR_45, :lower16:RET
	MOVT VR_45, :upper16:RET
	MOV VR_46, VR_45
	MOV r0, VR_46
	BL putstr
	MOV VR_47, r0
	B .BLOCK_10
.BLOCK_12:
	LDR VR_48, [VR_2]
	CMP VR_48, #0
	BEQ .BLOCK_14
	BNE .BLOCK_13
.BLOCK_13:
	B .BLOCK_6
.BLOCK_14:
	B .BLOCK_8
.BLOCK_15:
	B .BLOCK_13
.BLOCK_16:
	MOV r0, #0
	ADD sp, sp, #12
	POP {pc}


	.data
	.align 4
	.global __HELLO
__HELLO:
	.word	87
	.word	101
	.word	108
	.word	99
	.word	111
	.word	109
	.word	101
	.word	32
	.word	116
	.word	111
	.word	32
	.word	116
	.word	104
	.word	101
	.word	32
	.word	74
	.word	97
	.word	112
	.word	97
	.word	114
	.word	105
	.word	32
	.word	80
	.word	97
	.word	114
	.word	107
	.word	33
	.word	10
	.zero	288
	.global N4__mE___
N4__mE___:
	.word	83
	.word	97
	.word	97
	.word	98
	.word	97
	.word	114
	.word	117
	.zero	172
	.word	75
	.word	97
	.word	98
	.word	97
	.word	110
	.zero	180
	.word	72
	.word	97
	.word	115
	.word	104
	.word	105
	.word	98
	.word	105
	.word	114
	.word	111
	.word	107
	.word	111
	.word	117
	.zero	152
	.word	65
	.word	114
	.word	97
	.word	105
	.word	103
	.word	117
	.word	109
	.word	97
	.zero	168
	.word	72
	.word	117
	.word	110
	.word	98
	.word	111
	.word	114
	.word	117
	.word	116
	.word	111
	.word	32
	.word	80
	.word	101
	.word	110
	.word	103
	.word	105
	.word	110
	.zero	136
	.word	84
	.word	97
	.word	105
	.word	114
	.word	105
	.word	107
	.word	117
	.word	32
	.word	79
	.word	111
	.word	107
	.word	97
	.word	109
	.word	105
	.zero	144
	.global saY_HeI10_To
saY_HeI10_To:
	.word	32
	.word	115
	.word	97
	.word	121
	.word	115
	.word	32
	.word	104
	.word	101
	.word	108
	.word	108
	.word	111
	.word	32
	.word	116
	.word	111
	.word	32
	.zero	100
	.global RET
RET:
	.word	10
	.zero	16


	.end
