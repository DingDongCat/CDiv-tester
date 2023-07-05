	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global my_memset
my_memset:
.BLOCK_0:
	SUB sp, sp, #16
	MOV VR_6, r2
	MOV VR_5, r1
	MOV VR_4, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	STR VR_4, [VR_3]
	STR VR_5, [VR_2]
	STR VR_6, [VR_1]
	MOV VR_7, #0
	STR VR_7, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_8, [VR_0]
	LDR VR_9, [VR_1]
	CMP VR_8, VR_9
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_10, [VR_3]
	LDR VR_11, [VR_0]
	ADD VR_12, VR_10, VR_11, LSL #2
	LDR VR_13, [VR_2]
	STR VR_13, [VR_12]
	LDR VR_14, [VR_0]
	ADD VR_15, VR_14, #1
	STR VR_15, [VR_0]
	B .BLOCK_1
.BLOCK_3:
	ADD sp, sp, #16
	BX lr


	.global add_node
add_node:
.BLOCK_4:
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
	LDR VR_6, [VR_2]
	MOVW VR_7, :lower16:to
	MOVT VR_7, :upper16:to
	MOV VR_9, #40
	MLA VR_8, VR_6, VR_9, VR_7
	LDR VR_10, [VR_2]
	MOVW VR_11, :lower16:size
	MOVT VR_11, :upper16:size
	ADD VR_12, VR_11, VR_10, LSL #2
	LDR VR_13, [VR_12]
	ADD VR_14, VR_8, VR_13, LSL #2
	LDR VR_15, [VR_1]
	STR VR_15, [VR_14]
	LDR VR_16, [VR_2]
	MOVW VR_17, :lower16:cap
	MOVT VR_17, :upper16:cap
	MOV VR_19, #40
	MLA VR_18, VR_16, VR_19, VR_17
	LDR VR_20, [VR_2]
	MOVW VR_21, :lower16:size
	MOVT VR_21, :upper16:size
	ADD VR_22, VR_21, VR_20, LSL #2
	LDR VR_23, [VR_22]
	ADD VR_24, VR_18, VR_23, LSL #2
	LDR VR_25, [VR_0]
	STR VR_25, [VR_24]
	LDR VR_26, [VR_2]
	MOVW VR_27, :lower16:rev
	MOVT VR_27, :upper16:rev
	MOV VR_29, #40
	MLA VR_28, VR_26, VR_29, VR_27
	LDR VR_30, [VR_2]
	MOVW VR_31, :lower16:size
	MOVT VR_31, :upper16:size
	ADD VR_32, VR_31, VR_30, LSL #2
	LDR VR_33, [VR_32]
	ADD VR_34, VR_28, VR_33, LSL #2
	LDR VR_35, [VR_1]
	MOVW VR_36, :lower16:size
	MOVT VR_36, :upper16:size
	ADD VR_37, VR_36, VR_35, LSL #2
	LDR VR_38, [VR_37]
	STR VR_38, [VR_34]
	LDR VR_39, [VR_1]
	MOVW VR_40, :lower16:to
	MOVT VR_40, :upper16:to
	MOV VR_42, #40
	MLA VR_41, VR_39, VR_42, VR_40
	LDR VR_43, [VR_1]
	MOVW VR_44, :lower16:size
	MOVT VR_44, :upper16:size
	ADD VR_45, VR_44, VR_43, LSL #2
	LDR VR_46, [VR_45]
	ADD VR_47, VR_41, VR_46, LSL #2
	LDR VR_48, [VR_2]
	STR VR_48, [VR_47]
	LDR VR_49, [VR_1]
	MOVW VR_50, :lower16:cap
	MOVT VR_50, :upper16:cap
	MOV VR_52, #40
	MLA VR_51, VR_49, VR_52, VR_50
	LDR VR_53, [VR_1]
	MOVW VR_54, :lower16:size
	MOVT VR_54, :upper16:size
	ADD VR_55, VR_54, VR_53, LSL #2
	LDR VR_56, [VR_55]
	ADD VR_57, VR_51, VR_56, LSL #2
	MOV VR_58, #0
	STR VR_58, [VR_57]
	LDR VR_59, [VR_1]
	MOVW VR_60, :lower16:rev
	MOVT VR_60, :upper16:rev
	MOV VR_62, #40
	MLA VR_61, VR_59, VR_62, VR_60
	LDR VR_63, [VR_1]
	MOVW VR_64, :lower16:size
	MOVT VR_64, :upper16:size
	ADD VR_65, VR_64, VR_63, LSL #2
	LDR VR_66, [VR_65]
	ADD VR_67, VR_61, VR_66, LSL #2
	LDR VR_68, [VR_2]
	MOVW VR_69, :lower16:size
	MOVT VR_69, :upper16:size
	ADD VR_70, VR_69, VR_68, LSL #2
	LDR VR_71, [VR_70]
	STR VR_71, [VR_67]
	LDR VR_72, [VR_2]
	MOVW VR_73, :lower16:size
	MOVT VR_73, :upper16:size
	ADD VR_74, VR_73, VR_72, LSL #2
	LDR VR_75, [VR_2]
	MOVW VR_76, :lower16:size
	MOVT VR_76, :upper16:size
	ADD VR_77, VR_76, VR_75, LSL #2
	LDR VR_78, [VR_77]
	ADD VR_79, VR_78, #1
	STR VR_79, [VR_74]
	LDR VR_80, [VR_1]
	MOVW VR_81, :lower16:size
	MOVT VR_81, :upper16:size
	ADD VR_82, VR_81, VR_80, LSL #2
	LDR VR_83, [VR_1]
	MOVW VR_84, :lower16:size
	MOVT VR_84, :upper16:size
	ADD VR_85, VR_84, VR_83, LSL #2
	LDR VR_86, [VR_85]
	ADD VR_87, VR_86, #1
	STR VR_87, [VR_82]
	ADD sp, sp, #12
	BX lr


	.global dfs
dfs:
.BLOCK_5:
	SUB sp, sp, #24
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
	B .BLOCK_6
.BLOCK_6:
	LDR VR_9, [VR_5]
	LDR VR_10, [VR_4]
	CMP VR_9, VR_10
	BEQ .BLOCK_8
	BNE .BLOCK_7
.BLOCK_7:
	LDR VR_11, [VR_5]
	MOVW VR_12, :lower16:used
	MOVT VR_12, :upper16:used
	ADD VR_13, VR_12, VR_11, LSL #2
	MOV VR_14, #1
	STR VR_14, [VR_13]
	MOV VR_15, #0
	STR VR_15, [VR_2]
	B .BLOCK_10
.BLOCK_8:
	LDR VR_16, [VR_3]
	MOV r0, VR_16
	ADD sp, sp, #24
	POP {pc}
.BLOCK_9:
	B .BLOCK_7
.BLOCK_10:
	LDR VR_17, [VR_2]
	LDR VR_18, [VR_5]
	MOVW VR_19, :lower16:size
	MOVT VR_19, :upper16:size
	ADD VR_20, VR_19, VR_18, LSL #2
	LDR VR_21, [VR_20]
	CMP VR_17, VR_21
	BLT .BLOCK_11
	BGE .BLOCK_12
.BLOCK_11:
	B .BLOCK_13
.BLOCK_12:
	MOV r0, #0
	ADD sp, sp, #24
	POP {pc}
.BLOCK_13:
	LDR VR_22, [VR_5]
	MOVW VR_23, :lower16:to
	MOVT VR_23, :upper16:to
	MOV VR_25, #40
	MLA VR_24, VR_22, VR_25, VR_23
	LDR VR_26, [VR_2]
	ADD VR_27, VR_24, VR_26, LSL #2
	LDR VR_28, [VR_27]
	MOVW VR_29, :lower16:used
	MOVT VR_29, :upper16:used
	ADD VR_30, VR_29, VR_28, LSL #2
	LDR VR_31, [VR_30]
	CMP VR_31, #0
	BNE .BLOCK_15
	BEQ .BLOCK_14
.BLOCK_14:
	B .BLOCK_17
.BLOCK_15:
	LDR VR_32, [VR_2]
	ADD VR_33, VR_32, #1
	STR VR_33, [VR_2]
	B .BLOCK_10
.BLOCK_16:
	B .BLOCK_14
.BLOCK_17:
	LDR VR_34, [VR_5]
	MOVW VR_35, :lower16:cap
	MOVT VR_35, :upper16:cap
	MOV VR_37, #40
	MLA VR_36, VR_34, VR_37, VR_35
	LDR VR_38, [VR_2]
	ADD VR_39, VR_36, VR_38, LSL #2
	LDR VR_40, [VR_39]
	CMP VR_40, #0
	BLE .BLOCK_19
	BGT .BLOCK_18
.BLOCK_18:
	B .BLOCK_21
.BLOCK_19:
	LDR VR_41, [VR_2]
	ADD VR_42, VR_41, #1
	STR VR_42, [VR_2]
	B .BLOCK_10
.BLOCK_20:
	B .BLOCK_18
.BLOCK_21:
	LDR VR_43, [VR_3]
	LDR VR_44, [VR_5]
	MOVW VR_45, :lower16:cap
	MOVT VR_45, :upper16:cap
	MOV VR_47, #40
	MLA VR_46, VR_44, VR_47, VR_45
	LDR VR_48, [VR_2]
	ADD VR_49, VR_46, VR_48, LSL #2
	LDR VR_50, [VR_49]
	CMP VR_43, VR_50
	BLT .BLOCK_23
	BGE .BLOCK_24
.BLOCK_22:
	LDR VR_51, [VR_5]
	MOVW VR_52, :lower16:to
	MOVT VR_52, :upper16:to
	MOV VR_54, #40
	MLA VR_53, VR_51, VR_54, VR_52
	LDR VR_55, [VR_2]
	ADD VR_56, VR_53, VR_55, LSL #2
	LDR VR_57, [VR_56]
	LDR VR_58, [VR_4]
	LDR VR_59, [VR_1]
	MOV r2, VR_59
	MOV r1, VR_58
	MOV r0, VR_57
	BL dfs
	MOV VR_60, r0
	STR VR_60, [VR_0]
	B .BLOCK_25
.BLOCK_23:
	LDR VR_61, [VR_3]
	STR VR_61, [VR_1]
	B .BLOCK_22
.BLOCK_24:
	LDR VR_62, [VR_5]
	MOVW VR_63, :lower16:cap
	MOVT VR_63, :upper16:cap
	MOV VR_65, #40
	MLA VR_64, VR_62, VR_65, VR_63
	LDR VR_66, [VR_2]
	ADD VR_67, VR_64, VR_66, LSL #2
	LDR VR_68, [VR_67]
	STR VR_68, [VR_1]
	B .BLOCK_22
.BLOCK_25:
	LDR VR_69, [VR_0]
	CMP VR_69, #0
	BGT .BLOCK_27
	BLE .BLOCK_26
.BLOCK_26:
	LDR VR_70, [VR_2]
	ADD VR_71, VR_70, #1
	STR VR_71, [VR_2]
	B .BLOCK_10
.BLOCK_27:
	LDR VR_72, [VR_5]
	MOVW VR_73, :lower16:cap
	MOVT VR_73, :upper16:cap
	MOV VR_75, #40
	MLA VR_74, VR_72, VR_75, VR_73
	LDR VR_76, [VR_2]
	ADD VR_77, VR_74, VR_76, LSL #2
	LDR VR_78, [VR_5]
	MOVW VR_79, :lower16:cap
	MOVT VR_79, :upper16:cap
	MOV VR_81, #40
	MLA VR_80, VR_78, VR_81, VR_79
	LDR VR_82, [VR_2]
	ADD VR_83, VR_80, VR_82, LSL #2
	LDR VR_84, [VR_83]
	LDR VR_85, [VR_0]
	SUB VR_86, VR_84, VR_85
	STR VR_86, [VR_77]
	LDR VR_87, [VR_5]
	MOVW VR_88, :lower16:to
	MOVT VR_88, :upper16:to
	MOV VR_90, #40
	MLA VR_89, VR_87, VR_90, VR_88
	LDR VR_91, [VR_2]
	ADD VR_92, VR_89, VR_91, LSL #2
	LDR VR_93, [VR_92]
	MOVW VR_94, :lower16:cap
	MOVT VR_94, :upper16:cap
	MOV VR_96, #40
	MLA VR_95, VR_93, VR_96, VR_94
	LDR VR_97, [VR_5]
	MOVW VR_98, :lower16:rev
	MOVT VR_98, :upper16:rev
	MOV VR_100, #40
	MLA VR_99, VR_97, VR_100, VR_98
	LDR VR_101, [VR_2]
	ADD VR_102, VR_99, VR_101, LSL #2
	LDR VR_103, [VR_102]
	ADD VR_104, VR_95, VR_103, LSL #2
	LDR VR_105, [VR_5]
	MOVW VR_106, :lower16:to
	MOVT VR_106, :upper16:to
	MOV VR_108, #40
	MLA VR_107, VR_105, VR_108, VR_106
	LDR VR_109, [VR_2]
	ADD VR_110, VR_107, VR_109, LSL #2
	LDR VR_111, [VR_110]
	MOVW VR_112, :lower16:cap
	MOVT VR_112, :upper16:cap
	MOV VR_114, #40
	MLA VR_113, VR_111, VR_114, VR_112
	LDR VR_115, [VR_5]
	MOVW VR_116, :lower16:rev
	MOVT VR_116, :upper16:rev
	MOV VR_118, #40
	MLA VR_117, VR_115, VR_118, VR_116
	LDR VR_119, [VR_2]
	ADD VR_120, VR_117, VR_119, LSL #2
	LDR VR_121, [VR_120]
	ADD VR_122, VR_113, VR_121, LSL #2
	LDR VR_123, [VR_122]
	LDR VR_124, [VR_0]
	ADD VR_125, VR_123, VR_124
	STR VR_125, [VR_104]
	LDR VR_126, [VR_0]
	MOV r0, VR_126
	ADD sp, sp, #24
	POP {pc}
.BLOCK_28:
	B .BLOCK_26
.BLOCK_29:
	MOV r0, #0
	ADD sp, sp, #24
	POP {pc}


	.global max_flow
max_flow:
.BLOCK_30:
	SUB sp, sp, #16
	MOV VR_5, r1
	MOV VR_4, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	STR VR_4, [VR_3]
	STR VR_5, [VR_2]
	MOV VR_6, #0
	STR VR_6, [VR_1]
	B .BLOCK_31
.BLOCK_31:
	MOV VR_7, #1
	CMP VR_7, #0
	BNE .BLOCK_32
	BEQ .BLOCK_33
.BLOCK_32:
	MOVW VR_8, :lower16:used
	MOVT VR_8, :upper16:used
	MOV VR_9, VR_8
	MOV r2, #10
	MOV r1, #0
	MOV r0, VR_9
	BL my_memset
	LDR VR_10, [VR_3]
	LDR VR_11, [VR_2]
	MOV r2, #1879048192
	MOV r1, VR_11
	MOV r0, VR_10
	BL dfs
	MOV VR_12, r0
	STR VR_12, [VR_0]
	B .BLOCK_34
.BLOCK_33:
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}
.BLOCK_34:
	LDR VR_13, [VR_0]
	CMP VR_13, #0
	BEQ .BLOCK_36
	BNE .BLOCK_35
.BLOCK_35:
	LDR VR_14, [VR_1]
	LDR VR_15, [VR_0]
	ADD VR_16, VR_14, VR_15
	STR VR_16, [VR_1]
	B .BLOCK_31
.BLOCK_36:
	LDR VR_17, [VR_1]
	MOV r0, VR_17
	ADD sp, sp, #16
	POP {pc}
.BLOCK_37:
	B .BLOCK_35


	.global main
main:
.BLOCK_38:
	SUB sp, sp, #20
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	BL getint
	MOV VR_5, r0
	STR VR_5, [VR_4]
	BL getint
	MOV VR_6, r0
	STR VR_6, [VR_3]
	MOVW VR_7, :lower16:size
	MOVT VR_7, :upper16:size
	MOV VR_8, VR_7
	MOV r2, #10
	MOV r1, #0
	MOV r0, VR_8
	BL my_memset
	B .BLOCK_39
.BLOCK_39:
	LDR VR_9, [VR_3]
	CMP VR_9, #0
	BGT .BLOCK_40
	BLE .BLOCK_41
.BLOCK_40:
	BL getint
	MOV VR_10, r0
	STR VR_10, [VR_2]
	BL getint
	MOV VR_11, r0
	STR VR_11, [VR_1]
	BL getint
	MOV VR_12, r0
	STR VR_12, [VR_0]
	LDR VR_13, [VR_2]
	LDR VR_14, [VR_1]
	LDR VR_15, [VR_0]
	MOV r2, VR_15
	MOV r1, VR_14
	MOV r0, VR_13
	BL add_node
	LDR VR_16, [VR_3]
	SUB VR_17, VR_16, #1
	STR VR_17, [VR_3]
	B .BLOCK_39
.BLOCK_41:
	LDR VR_18, [VR_4]
	MOV r1, VR_18
	MOV r0, #1
	BL max_flow
	MOV VR_19, r0
	MOV r0, VR_19
	BL putint
	MOV r0, #10
	BL putch
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_42:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.data
	.align 4
	.comm	size, 40, 4
	.comm	to, 400, 4
	.comm	cap, 400, 4
	.comm	rev, 400, 4
	.comm	used, 40, 4


	.end
