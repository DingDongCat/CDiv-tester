	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global next_char
next_char:
.BLOCK_0:
	SUB sp, sp, #0
	BL getch
	MOV VR_0, r0
	MOVW VR_1, :lower16:last_char
	MOVT VR_1, :upper16:last_char
	STR VR_0, [VR_1]
	MOVW VR_3, :lower16:last_char
	MOVT VR_3, :upper16:last_char
	LDR VR_2, [VR_3]
	MOV r0, VR_2
	POP {pc}
.BLOCK_1:
	MOV r0, #0
	POP {pc}


	.global is_space
is_space:
.BLOCK_2:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	B .BLOCK_3
.BLOCK_3:
	LDR VR_2, [VR_0]
	CMP VR_2, #32
	BEQ .BLOCK_5
	BNE .BLOCK_9
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_5:
	MOV r0, #1
	ADD sp, sp, #4
	BX lr
.BLOCK_6:
	B .BLOCK_4
.BLOCK_7:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_8:
	B .BLOCK_4
.BLOCK_9:
	LDR VR_3, [VR_0]
	CMP VR_3, #10
	BEQ .BLOCK_5
	BNE .BLOCK_7


	.global is_num
is_num:
.BLOCK_10:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	B .BLOCK_11
.BLOCK_11:
	LDR VR_2, [VR_0]
	CMP VR_2, #48
	BGE .BLOCK_17
	BLT .BLOCK_15
.BLOCK_12:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_13:
	MOV r0, #1
	ADD sp, sp, #4
	BX lr
.BLOCK_14:
	B .BLOCK_12
.BLOCK_15:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_16:
	B .BLOCK_12
.BLOCK_17:
	LDR VR_3, [VR_0]
	CMP VR_3, #57
	BLE .BLOCK_13
	BGT .BLOCK_15


	.global next_token
next_token:
.BLOCK_18:
	SUB sp, sp, #0
	B .BLOCK_19
.BLOCK_19:
	MOVW VR_1, :lower16:last_char
	MOVT VR_1, :upper16:last_char
	LDR VR_0, [VR_1]
	MOV r0, VR_0
	BL is_space
	MOV VR_2, r0
	CMP VR_2, #0
	BNE .BLOCK_20
	BEQ .BLOCK_21
.BLOCK_20:
	BL next_char
	MOV VR_3, r0
	B .BLOCK_19
.BLOCK_21:
	B .BLOCK_22
.BLOCK_22:
	MOVW VR_5, :lower16:last_char
	MOVT VR_5, :upper16:last_char
	LDR VR_4, [VR_5]
	MOV r0, VR_4
	BL is_num
	MOV VR_6, r0
	CMP VR_6, #0
	BNE .BLOCK_24
	BEQ .BLOCK_28
.BLOCK_23:
	MOVW VR_8, :lower16:cur_token
	MOVT VR_8, :upper16:cur_token
	LDR VR_7, [VR_8]
	MOV r0, VR_7
	POP {pc}
.BLOCK_24:
	MOVW VR_10, :lower16:last_char
	MOVT VR_10, :upper16:last_char
	LDR VR_9, [VR_10]
	SUB VR_11, VR_9, #48
	MOVW VR_12, :lower16:num
	MOVT VR_12, :upper16:num
	STR VR_11, [VR_12]
	B .BLOCK_25
.BLOCK_25:
	BL next_char
	MOV VR_13, r0
	MOV r0, VR_13
	BL is_num
	MOV VR_14, r0
	CMP VR_14, #0
	BNE .BLOCK_26
	BEQ .BLOCK_27
.BLOCK_26:
	MOVW VR_16, :lower16:num
	MOVT VR_16, :upper16:num
	LDR VR_15, [VR_16]
	MOV VR_18, #10
	MUL VR_17, VR_15, VR_18
	MOVW VR_20, :lower16:last_char
	MOVT VR_20, :upper16:last_char
	LDR VR_19, [VR_20]
	ADD VR_21, VR_17, VR_19
	SUB VR_22, VR_21, #48
	MOVW VR_23, :lower16:num
	MOVT VR_23, :upper16:num
	STR VR_22, [VR_23]
	B .BLOCK_25
.BLOCK_27:
	MOVW VR_24, :lower16:cur_token
	MOVT VR_24, :upper16:cur_token
	MOV VR_25, #0
	STR VR_25, [VR_24]
	B .BLOCK_23
.BLOCK_28:
	MOVW VR_27, :lower16:last_char
	MOVT VR_27, :upper16:last_char
	LDR VR_26, [VR_27]
	MOVW VR_28, :lower16:other
	MOVT VR_28, :upper16:other
	STR VR_26, [VR_28]
	BL next_char
	MOV VR_29, r0
	MOVW VR_30, :lower16:cur_token
	MOVT VR_30, :upper16:cur_token
	MOV VR_31, #1
	STR VR_31, [VR_30]
	B .BLOCK_23
.BLOCK_29:
	MOV r0, #0
	POP {pc}


	.global panic
panic:
.BLOCK_30:
	SUB sp, sp, #0
	MOV r0, #112
	BL putch
	MOV r0, #97
	BL putch
	MOV r0, #110
	BL putch
	MOV r0, #105
	BL putch
	MOV r0, #99
	BL putch
	MOV r0, #33
	BL putch
	MOV r0, #10
	BL putch
	MOV VR_1, #0
	SUB VR_0, VR_1, #1
	MOV r0, VR_0
	POP {pc}
.BLOCK_31:
	MOV r0, #0
	POP {pc}


	.global get_op_prec
get_op_prec:
.BLOCK_32:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	B .BLOCK_33
.BLOCK_33:
	LDR VR_2, [VR_0]
	CMP VR_2, #43
	BEQ .BLOCK_35
	BNE .BLOCK_37
.BLOCK_34:
	B .BLOCK_38
.BLOCK_35:
	MOV r0, #10
	ADD sp, sp, #4
	BX lr
.BLOCK_36:
	B .BLOCK_34
.BLOCK_37:
	LDR VR_3, [VR_0]
	CMP VR_3, #45
	BEQ .BLOCK_35
	BNE .BLOCK_34
.BLOCK_38:
	LDR VR_4, [VR_0]
	CMP VR_4, #42
	BEQ .BLOCK_40
	BNE .BLOCK_42
.BLOCK_39:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_40:
	MOV r0, #20
	ADD sp, sp, #4
	BX lr
.BLOCK_41:
	B .BLOCK_39
.BLOCK_42:
	LDR VR_5, [VR_0]
	CMP VR_5, #47
	BEQ .BLOCK_40
	BNE .BLOCK_43
.BLOCK_43:
	LDR VR_6, [VR_0]
	CMP VR_6, #37
	BEQ .BLOCK_40
	BNE .BLOCK_39
.BLOCK_44:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global stack_push
stack_push:
.BLOCK_45:
	SUB sp, sp, #8
	MOV VR_3, r1
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	STR VR_3, [VR_0]
	LDR VR_4, [VR_1]
	MOV VR_5, VR_4
	LDR VR_6, [VR_1]
	MOV VR_7, VR_6
	LDR VR_8, [VR_7]
	ADD VR_9, VR_8, #1
	STR VR_9, [VR_5]
	LDR VR_10, [VR_1]
	LDR VR_11, [VR_1]
	MOV VR_12, VR_11
	LDR VR_13, [VR_12]
	ADD VR_14, VR_10, VR_13, LSL #2
	LDR VR_15, [VR_0]
	STR VR_15, [VR_14]
	ADD sp, sp, #8
	BX lr


	.global stack_pop
stack_pop:
.BLOCK_46:
	SUB sp, sp, #8
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	LDR VR_3, [VR_1]
	LDR VR_4, [VR_1]
	MOV VR_5, VR_4
	LDR VR_6, [VR_5]
	ADD VR_7, VR_3, VR_6, LSL #2
	LDR VR_8, [VR_7]
	STR VR_8, [VR_0]
	LDR VR_9, [VR_1]
	MOV VR_10, VR_9
	LDR VR_11, [VR_1]
	MOV VR_12, VR_11
	LDR VR_13, [VR_12]
	SUB VR_14, VR_13, #1
	STR VR_14, [VR_10]
	LDR VR_15, [VR_0]
	MOV r0, VR_15
	ADD sp, sp, #8
	BX lr
.BLOCK_47:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr


	.global stack_peek
stack_peek:
.BLOCK_48:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	LDR VR_3, [VR_0]
	MOV VR_4, VR_3
	LDR VR_5, [VR_4]
	ADD VR_6, VR_2, VR_5, LSL #2
	LDR VR_7, [VR_6]
	MOV r0, VR_7
	ADD sp, sp, #4
	BX lr
.BLOCK_49:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global stack_size
stack_size:
.BLOCK_50:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	MOV VR_3, VR_2
	LDR VR_4, [VR_3]
	MOV r0, VR_4
	ADD sp, sp, #4
	BX lr
.BLOCK_51:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global eval_op
eval_op:
.BLOCK_52:
	SUB sp, sp, #12
	MOV VR_5, r2
	MOV VR_4, r1
	MOV VR_3, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	STR VR_3, [VR_2]
	STR VR_4, [VR_1]
	STR VR_5, [VR_0]
	B .BLOCK_53
.BLOCK_53:
	LDR VR_6, [VR_2]
	CMP VR_6, #43
	BEQ .BLOCK_55
	BNE .BLOCK_54
.BLOCK_54:
	B .BLOCK_57
.BLOCK_55:
	LDR VR_7, [VR_1]
	LDR VR_8, [VR_0]
	ADD VR_9, VR_7, VR_8
	MOV r0, VR_9
	ADD sp, sp, #12
	BX lr
.BLOCK_56:
	B .BLOCK_54
.BLOCK_57:
	LDR VR_10, [VR_2]
	CMP VR_10, #45
	BEQ .BLOCK_59
	BNE .BLOCK_58
.BLOCK_58:
	B .BLOCK_61
.BLOCK_59:
	LDR VR_11, [VR_1]
	LDR VR_12, [VR_0]
	SUB VR_13, VR_11, VR_12
	MOV r0, VR_13
	ADD sp, sp, #12
	BX lr
.BLOCK_60:
	B .BLOCK_58
.BLOCK_61:
	LDR VR_14, [VR_2]
	CMP VR_14, #42
	BEQ .BLOCK_63
	BNE .BLOCK_62
.BLOCK_62:
	B .BLOCK_65
.BLOCK_63:
	LDR VR_15, [VR_1]
	LDR VR_16, [VR_0]
	MUL VR_17, VR_15, VR_16
	MOV r0, VR_17
	ADD sp, sp, #12
	BX lr
.BLOCK_64:
	B .BLOCK_62
.BLOCK_65:
	LDR VR_18, [VR_2]
	CMP VR_18, #47
	BEQ .BLOCK_67
	BNE .BLOCK_66
.BLOCK_66:
	B .BLOCK_69
.BLOCK_67:
	LDR VR_19, [VR_1]
	LDR VR_20, [VR_0]
	SDIV VR_21, VR_19, VR_20
	MOV r0, VR_21
	ADD sp, sp, #12
	BX lr
.BLOCK_68:
	B .BLOCK_66
.BLOCK_69:
	LDR VR_22, [VR_2]
	CMP VR_22, #37
	BEQ .BLOCK_71
	BNE .BLOCK_70
.BLOCK_70:
	MOV r0, #0
	ADD sp, sp, #12
	BX lr
.BLOCK_71:
	LDR VR_23, [VR_1]
	LDR VR_24, [VR_0]
	SDIV VR_25, VR_23, VR_24
	MUL VR_26, VR_25, VR_24
	SUB VR_27, VR_23, VR_26
	MOV r0, VR_27
	ADD sp, sp, #12
	BX lr
.BLOCK_72:
	B .BLOCK_70
.BLOCK_73:
	MOV r0, #0
	ADD sp, sp, #12
	BX lr


	.global eval
eval:
.BLOCK_74:
	MOVW VR_69, #2076
	SUB sp, sp, VR_69
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	ADD VR_5, sp, #20
	ADD VR_6, sp, #24
	ADD VR_7, sp, #28
	MOVW VR_9, #1052
	ADD VR_8, sp, VR_9
	MOV VR_10, VR_8
	MOV r2, #1024
	MOV r1, #0
	MOV r0, VR_10
	BL memset
	MOV VR_11, VR_7
	MOV r2, #1024
	MOV r1, #0
	MOV r0, VR_11
	BL memset
	B .BLOCK_75
.BLOCK_75:
	MOVW VR_13, :lower16:cur_token
	MOVT VR_13, :upper16:cur_token
	LDR VR_12, [VR_13]
	CMP VR_12, #0
	BNE .BLOCK_77
	BEQ .BLOCK_76
.BLOCK_76:
	MOV VR_14, VR_8
	MOVW VR_16, :lower16:num
	MOVT VR_16, :upper16:num
	LDR VR_15, [VR_16]
	MOV r1, VR_15
	MOV r0, VR_14
	BL stack_push
	BL next_token
	MOV VR_17, r0
	B .BLOCK_79
.BLOCK_77:
	BL panic
	MOV VR_18, r0
	MOV r0, VR_18
	MOVW r5, #2076
	ADD sp, sp, r5
	POP {pc}
.BLOCK_78:
	B .BLOCK_76
.BLOCK_79:
	MOVW VR_20, :lower16:cur_token
	MOVT VR_20, :upper16:cur_token
	LDR VR_19, [VR_20]
	CMP VR_19, #1
	BEQ .BLOCK_80
	BNE .BLOCK_81
.BLOCK_80:
	MOVW VR_22, :lower16:other
	MOVT VR_22, :upper16:other
	LDR VR_21, [VR_22]
	STR VR_21, [VR_6]
	B .BLOCK_82
.BLOCK_81:
	BL next_token
	MOV VR_23, r0
	B .BLOCK_94
.BLOCK_82:
	LDR VR_24, [VR_6]
	MOV r0, VR_24
	BL get_op_prec
	MOV VR_25, r0
	CMP VR_25, #0
	BEQ .BLOCK_84
	BNE .BLOCK_83
.BLOCK_83:
	BL next_token
	MOV VR_26, r0
	B .BLOCK_86
.BLOCK_84:
	B .BLOCK_81
.BLOCK_85:
	B .BLOCK_83
.BLOCK_86:
	MOV VR_27, VR_7
	MOV r0, VR_27
	BL stack_size
	MOV VR_28, r0
	CMP VR_28, #0
	BNE .BLOCK_89
	BEQ .BLOCK_88
.BLOCK_87:
	MOV VR_29, VR_7
	MOV r0, VR_29
	BL stack_pop
	MOV VR_30, r0
	STR VR_30, [VR_5]
	MOV VR_31, VR_8
	MOV r0, VR_31
	BL stack_pop
	MOV VR_32, r0
	STR VR_32, [VR_4]
	MOV VR_33, VR_8
	MOV r0, VR_33
	BL stack_pop
	MOV VR_34, r0
	STR VR_34, [VR_3]
	MOV VR_35, VR_8
	LDR VR_36, [VR_5]
	LDR VR_37, [VR_3]
	LDR VR_38, [VR_4]
	MOV r2, VR_38
	MOV r1, VR_37
	MOV r0, VR_36
	BL eval_op
	MOV VR_39, r0
	MOV r1, VR_39
	MOV r0, VR_35
	BL stack_push
	B .BLOCK_86
.BLOCK_88:
	MOV VR_40, VR_7
	LDR VR_41, [VR_6]
	MOV r1, VR_41
	MOV r0, VR_40
	BL stack_push
	B .BLOCK_90
.BLOCK_89:
	MOV VR_42, VR_7
	MOV r0, VR_42
	BL stack_peek
	MOV VR_43, r0
	MOV r0, VR_43
	BL get_op_prec
	MOV VR_44, r0
	LDR VR_45, [VR_6]
	MOV r0, VR_45
	BL get_op_prec
	MOV VR_46, r0
	CMP VR_44, VR_46
	BGE .BLOCK_87
	BLT .BLOCK_88
.BLOCK_90:
	MOVW VR_48, :lower16:cur_token
	MOVT VR_48, :upper16:cur_token
	LDR VR_47, [VR_48]
	CMP VR_47, #0
	BNE .BLOCK_92
	BEQ .BLOCK_91
.BLOCK_91:
	MOV VR_49, VR_8
	MOVW VR_51, :lower16:num
	MOVT VR_51, :upper16:num
	LDR VR_50, [VR_51]
	MOV r1, VR_50
	MOV r0, VR_49
	BL stack_push
	BL next_token
	MOV VR_52, r0
	B .BLOCK_79
.BLOCK_92:
	BL panic
	MOV VR_53, r0
	MOV r0, VR_53
	MOVW r5, #2076
	ADD sp, sp, r5
	POP {pc}
.BLOCK_93:
	B .BLOCK_91
.BLOCK_94:
	MOV VR_54, VR_7
	MOV r0, VR_54
	BL stack_size
	MOV VR_55, r0
	CMP VR_55, #0
	BNE .BLOCK_95
	BEQ .BLOCK_96
.BLOCK_95:
	MOV VR_56, VR_7
	MOV r0, VR_56
	BL stack_pop
	MOV VR_57, r0
	STR VR_57, [VR_2]
	MOV VR_58, VR_8
	MOV r0, VR_58
	BL stack_pop
	MOV VR_59, r0
	STR VR_59, [VR_1]
	MOV VR_60, VR_8
	MOV r0, VR_60
	BL stack_pop
	MOV VR_61, r0
	STR VR_61, [VR_0]
	MOV VR_62, VR_8
	LDR VR_63, [VR_2]
	LDR VR_64, [VR_0]
	LDR VR_65, [VR_1]
	MOV r2, VR_65
	MOV r1, VR_64
	MOV r0, VR_63
	BL eval_op
	MOV VR_66, r0
	MOV r1, VR_66
	MOV r0, VR_62
	BL stack_push
	B .BLOCK_94
.BLOCK_96:
	MOV VR_67, VR_8
	MOV r0, VR_67
	BL stack_peek
	MOV VR_68, r0
	MOV r0, VR_68
	MOVW r5, #2076
	ADD sp, sp, r5
	POP {pc}
.BLOCK_97:
	MOV r0, #0
	MOVW r5, #2076
	ADD sp, sp, r5
	POP {pc}


	.global main
main:
.BLOCK_98:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	STR VR_1, [VR_0]
	BL getch
	MOV VR_2, r0
	BL next_token
	MOV VR_3, r0
	B .BLOCK_99
.BLOCK_99:
	LDR VR_4, [VR_0]
	CMP VR_4, #0
	BNE .BLOCK_100
	BEQ .BLOCK_101
.BLOCK_100:
	BL eval
	MOV VR_5, r0
	MOV r0, VR_5
	BL putint
	MOV r0, #10
	BL putch
	LDR VR_6, [VR_0]
	SUB VR_7, VR_6, #1
	STR VR_7, [VR_0]
	B .BLOCK_99
.BLOCK_101:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_102:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global last_char
last_char:
	.word	32
	.global num
num:
	.zero	4
	.global other
other:
	.zero	4
	.global cur_token
cur_token:
	.zero	4


	.end
