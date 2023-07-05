	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global func1
func1:
.BLOCK_0:
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
	B .BLOCK_1
.BLOCK_1:
	LDR VR_6, [VR_0]
	CMP VR_6, #0
	BEQ .BLOCK_3
	BNE .BLOCK_5
.BLOCK_2:
	MOV r0, #0
	ADD sp, sp, #12
	POP {pc}
.BLOCK_3:
	LDR VR_7, [VR_2]
	LDR VR_8, [VR_1]
	MUL VR_9, VR_7, VR_8
	MOV r0, VR_9
	ADD sp, sp, #12
	POP {pc}
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	LDR VR_10, [VR_2]
	LDR VR_11, [VR_1]
	LDR VR_12, [VR_0]
	SUB VR_13, VR_11, VR_12
	MOV r2, #0
	MOV r1, VR_13
	MOV r0, VR_10
	BL func1
	MOV VR_14, r0
	MOV r0, VR_14
	ADD sp, sp, #12
	POP {pc}
.BLOCK_6:
	B .BLOCK_2


	.global func2
func2:
.BLOCK_7:
	SUB sp, sp, #8
	MOV VR_3, r1
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	STR VR_3, [VR_0]
	B .BLOCK_8
.BLOCK_8:
	LDR VR_4, [VR_0]
	CMP VR_4, #0
	BNE .BLOCK_10
	BEQ .BLOCK_12
.BLOCK_9:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}
.BLOCK_10:
	LDR VR_5, [VR_1]
	LDR VR_6, [VR_0]
	SDIV VR_7, VR_5, VR_6
	MUL VR_8, VR_7, VR_6
	SUB VR_9, VR_5, VR_8
	MOV r1, #0
	MOV r0, VR_9
	BL func2
	MOV VR_10, r0
	MOV r0, VR_10
	ADD sp, sp, #8
	POP {pc}
.BLOCK_11:
	B .BLOCK_9
.BLOCK_12:
	LDR VR_11, [VR_1]
	MOV r0, VR_11
	ADD sp, sp, #8
	POP {pc}
.BLOCK_13:
	B .BLOCK_9


	.global func3
func3:
.BLOCK_14:
	SUB sp, sp, #8
	MOV VR_3, r1
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	STR VR_3, [VR_0]
	B .BLOCK_15
.BLOCK_15:
	LDR VR_4, [VR_0]
	CMP VR_4, #0
	BEQ .BLOCK_17
	BNE .BLOCK_19
.BLOCK_16:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}
.BLOCK_17:
	LDR VR_5, [VR_1]
	ADD VR_6, VR_5, #1
	MOV r0, VR_6
	ADD sp, sp, #8
	POP {pc}
.BLOCK_18:
	B .BLOCK_16
.BLOCK_19:
	LDR VR_7, [VR_1]
	LDR VR_8, [VR_0]
	ADD VR_9, VR_7, VR_8
	MOV r1, #0
	MOV r0, VR_9
	BL func3
	MOV VR_10, r0
	MOV r0, VR_10
	ADD sp, sp, #8
	POP {pc}
.BLOCK_20:
	B .BLOCK_16


	.global func4
func4:
.BLOCK_21:
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
	B .BLOCK_22
.BLOCK_22:
	LDR VR_6, [VR_2]
	CMP VR_6, #0
	BNE .BLOCK_24
	BEQ .BLOCK_26
.BLOCK_23:
	MOV r0, #0
	ADD sp, sp, #12
	BX lr
.BLOCK_24:
	LDR VR_7, [VR_1]
	MOV r0, VR_7
	ADD sp, sp, #12
	BX lr
.BLOCK_25:
	B .BLOCK_23
.BLOCK_26:
	LDR VR_8, [VR_0]
	MOV r0, VR_8
	ADD sp, sp, #12
	BX lr
.BLOCK_27:
	B .BLOCK_23


	.global func5
func5:
.BLOCK_28:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	RSB VR_3, VR_2, #0
	MOV r0, VR_3
	ADD sp, sp, #4
	BX lr
.BLOCK_29:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global func6
func6:
.BLOCK_30:
	SUB sp, sp, #8
	MOV VR_3, r1
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	STR VR_3, [VR_0]
	B .BLOCK_31
.BLOCK_31:
	LDR VR_4, [VR_1]
	CMP VR_4, #0
	BNE .BLOCK_37
	BEQ .BLOCK_35
.BLOCK_32:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr
.BLOCK_33:
	MOV r0, #1
	ADD sp, sp, #8
	BX lr
.BLOCK_34:
	B .BLOCK_32
.BLOCK_35:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr
.BLOCK_36:
	B .BLOCK_32
.BLOCK_37:
	LDR VR_5, [VR_0]
	CMP VR_5, #0
	BNE .BLOCK_33
	BEQ .BLOCK_35


	.global func7
func7:
.BLOCK_38:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	B .BLOCK_39
.BLOCK_39:
	LDR VR_2, [VR_0]
	CMP VR_2, #0
	BEQ .BLOCK_41
	BNE .BLOCK_43
.BLOCK_40:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_41:
	MOV r0, #1
	ADD sp, sp, #4
	BX lr
.BLOCK_42:
	B .BLOCK_40
.BLOCK_43:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_44:
	B .BLOCK_40


	.global main
main:
.BLOCK_45:
	SUB sp, sp, #64
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #48
	ADD VR_4, sp, #52
	ADD VR_5, sp, #56
	ADD VR_6, sp, #60
	BL getint
	MOV VR_7, r0
	STR VR_7, [VR_6]
	BL getint
	MOV VR_8, r0
	STR VR_8, [VR_5]
	BL getint
	MOV VR_9, r0
	STR VR_9, [VR_4]
	BL getint
	MOV VR_10, r0
	STR VR_10, [VR_3]
	MOV VR_11, #0
	STR VR_11, [VR_1]
	B .BLOCK_46
.BLOCK_46:
	LDR VR_12, [VR_1]
	CMP VR_12, #10
	BLT .BLOCK_47
	BGE .BLOCK_48
.BLOCK_47:
	LDR VR_13, [VR_1]
	ADD VR_14, VR_2, VR_13, LSL #2
	BL getint
	MOV VR_15, r0
	STR VR_15, [VR_14]
	LDR VR_16, [VR_1]
	ADD VR_17, VR_16, #1
	STR VR_17, [VR_1]
	B .BLOCK_46
.BLOCK_48:
	LDR VR_18, [VR_6]
	MOV r0, VR_18
	BL func7
	MOV VR_19, r0
	LDR VR_20, [VR_5]
	MOV r0, VR_20
	BL func5
	MOV VR_21, r0
	MOV r1, VR_21
	MOV r0, VR_19
	BL func6
	MOV VR_22, r0
	LDR VR_23, [VR_4]
	MOV r1, VR_23
	MOV r0, VR_22
	BL func2
	MOV VR_24, r0
	LDR VR_25, [VR_3]
	MOV r1, VR_25
	MOV r0, VR_24
	BL func3
	MOV VR_26, r0
	MOV r0, VR_26
	BL func5
	MOV VR_27, r0
	MOV VR_28, VR_2
	LDR VR_29, [VR_28]
	ADD VR_30, VR_2, #4
	LDR VR_31, [VR_30]
	MOV r0, VR_31
	BL func5
	MOV VR_32, r0
	ADD VR_33, VR_2, #8
	LDR VR_34, [VR_33]
	ADD VR_35, VR_2, #12
	LDR VR_36, [VR_35]
	MOV r0, VR_36
	BL func7
	MOV VR_37, r0
	MOV r1, VR_37
	MOV r0, VR_34
	BL func6
	MOV VR_38, r0
	ADD VR_39, VR_2, #16
	LDR VR_40, [VR_39]
	ADD VR_41, VR_2, #20
	LDR VR_42, [VR_41]
	MOV r0, VR_42
	BL func7
	MOV VR_43, r0
	MOV r1, VR_43
	MOV r0, VR_40
	BL func2
	MOV VR_44, r0
	MOV r2, VR_44
	MOV r1, VR_38
	MOV r0, VR_32
	BL func4
	MOV VR_45, r0
	ADD VR_46, VR_2, #24
	LDR VR_47, [VR_46]
	MOV r1, VR_47
	MOV r0, VR_45
	BL func3
	MOV VR_48, r0
	ADD VR_49, VR_2, #28
	LDR VR_50, [VR_49]
	MOV r1, VR_50
	MOV r0, VR_48
	BL func2
	MOV VR_51, r0
	ADD VR_52, VR_2, #32
	LDR VR_53, [VR_52]
	ADD VR_54, VR_2, #36
	LDR VR_55, [VR_54]
	MOV r0, VR_55
	BL func7
	MOV VR_56, r0
	MOV r1, VR_56
	MOV r0, VR_53
	BL func3
	MOV VR_57, r0
	LDR VR_58, [VR_6]
	MOV r2, VR_58
	MOV r1, VR_57
	MOV r0, VR_51
	BL func1
	MOV VR_59, r0
	MOV r2, VR_59
	MOV r1, VR_29
	MOV r0, VR_27
	BL func4
	MOV VR_60, r0
	LDR VR_61, [VR_5]
	LDR VR_62, [VR_4]
	MOV r0, VR_62
	BL func7
	MOV VR_63, r0
	LDR VR_64, [VR_3]
	MOV r1, VR_64
	MOV r0, VR_63
	BL func3
	MOV VR_65, r0
	MOV r1, VR_65
	MOV r0, VR_61
	BL func2
	MOV VR_66, r0
	MOV r1, VR_66
	MOV r0, VR_60
	BL func3
	MOV VR_67, r0
	MOV VR_68, VR_2
	LDR VR_69, [VR_68]
	ADD VR_70, VR_2, #4
	LDR VR_71, [VR_70]
	MOV r2, VR_71
	MOV r1, VR_69
	MOV r0, VR_67
	BL func1
	MOV VR_72, r0
	ADD VR_73, VR_2, #8
	LDR VR_74, [VR_73]
	MOV r1, VR_74
	MOV r0, VR_72
	BL func2
	MOV VR_75, r0
	ADD VR_76, VR_2, #12
	LDR VR_77, [VR_76]
	ADD VR_78, VR_2, #16
	LDR VR_79, [VR_78]
	ADD VR_80, VR_2, #20
	LDR VR_81, [VR_80]
	MOV r0, VR_81
	BL func5
	MOV VR_82, r0
	MOV r1, VR_82
	MOV r0, VR_79
	BL func3
	MOV VR_83, r0
	ADD VR_84, VR_2, #24
	LDR VR_85, [VR_84]
	MOV r0, VR_85
	BL func5
	MOV VR_86, r0
	MOV r1, VR_86
	MOV r0, VR_83
	BL func2
	MOV VR_87, r0
	ADD VR_88, VR_2, #28
	LDR VR_89, [VR_88]
	ADD VR_90, VR_2, #32
	LDR VR_91, [VR_90]
	MOV r0, VR_91
	BL func7
	MOV VR_92, r0
	MOV r2, VR_92
	MOV r1, VR_89
	MOV r0, VR_87
	BL func1
	MOV VR_93, r0
	ADD VR_94, VR_2, #36
	LDR VR_95, [VR_94]
	MOV r0, VR_95
	BL func5
	MOV VR_96, r0
	MOV r1, VR_96
	MOV r0, VR_93
	BL func2
	MOV VR_97, r0
	LDR VR_98, [VR_6]
	MOV r1, VR_98
	MOV r0, VR_97
	BL func3
	MOV VR_99, r0
	MOV r2, VR_99
	MOV r1, VR_77
	MOV r0, VR_75
	BL func1
	MOV VR_100, r0
	STR VR_100, [VR_0]
	LDR VR_101, [VR_0]
	MOV r0, VR_101
	ADD sp, sp, #64
	POP {pc}
.BLOCK_49:
	MOV r0, #0
	ADD sp, sp, #64
	POP {pc}


	.end
