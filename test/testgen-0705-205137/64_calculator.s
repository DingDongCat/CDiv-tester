	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global isdigit
isdigit:
.BLOCK_0:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_2, [VR_0]
	CMP VR_2, #48
	BGE .BLOCK_5
	BLT .BLOCK_2
.BLOCK_2:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr
.BLOCK_3:
	MOV r0, #1
	ADD sp, sp, #4
	BX lr
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	LDR VR_3, [VR_0]
	CMP VR_3, #57
	BLE .BLOCK_3
	BGT .BLOCK_2
.BLOCK_6:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global power
power:
.BLOCK_7:
	SUB sp, sp, #12
	MOV VR_4, r1
	MOV VR_3, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	STR VR_3, [VR_2]
	STR VR_4, [VR_1]
	MOV VR_5, #1
	STR VR_5, [VR_0]
	B .BLOCK_8
.BLOCK_8:
	LDR VR_6, [VR_1]
	CMP VR_6, #0
	BNE .BLOCK_9
	BEQ .BLOCK_10
.BLOCK_9:
	LDR VR_7, [VR_0]
	LDR VR_8, [VR_2]
	MUL VR_9, VR_7, VR_8
	STR VR_9, [VR_0]
	LDR VR_10, [VR_1]
	SUB VR_11, VR_10, #1
	STR VR_11, [VR_1]
	B .BLOCK_8
.BLOCK_10:
	LDR VR_12, [VR_0]
	MOV r0, VR_12
	ADD sp, sp, #12
	BX lr
.BLOCK_11:
	MOV r0, #0
	ADD sp, sp, #12
	BX lr


	.global getstr
getstr:
.BLOCK_12:
	SUB sp, sp, #12
	MOV VR_3, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	STR VR_3, [VR_2]
	BL getch
	MOV VR_4, r0
	STR VR_4, [VR_1]
	MOV VR_5, #0
	STR VR_5, [VR_0]
	B .BLOCK_13
.BLOCK_13:
	LDR VR_6, [VR_1]
	CMP VR_6, #13
	BNE .BLOCK_16
	BEQ .BLOCK_15
.BLOCK_14:
	LDR VR_7, [VR_2]
	LDR VR_8, [VR_0]
	ADD VR_9, VR_7, VR_8, LSL #2
	LDR VR_10, [VR_1]
	STR VR_10, [VR_9]
	LDR VR_11, [VR_0]
	ADD VR_12, VR_11, #1
	STR VR_12, [VR_0]
	BL getch
	MOV VR_13, r0
	STR VR_13, [VR_1]
	B .BLOCK_13
.BLOCK_15:
	LDR VR_14, [VR_0]
	MOV r0, VR_14
	ADD sp, sp, #12
	POP {pc}
.BLOCK_16:
	LDR VR_15, [VR_1]
	CMP VR_15, #10
	BNE .BLOCK_14
	BEQ .BLOCK_15
.BLOCK_17:
	MOV r0, #0
	ADD sp, sp, #12
	POP {pc}


	.global intpush
intpush:
.BLOCK_18:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOVW VR_3, :lower16:intt
	MOVT VR_3, :upper16:intt
	LDR VR_2, [VR_3]
	ADD VR_4, VR_2, #1
	MOVW VR_5, :lower16:intt
	MOVT VR_5, :upper16:intt
	STR VR_4, [VR_5]
	MOVW VR_7, :lower16:intt
	MOVT VR_7, :upper16:intt
	LDR VR_6, [VR_7]
	MOVW VR_8, :lower16:ints
	MOVT VR_8, :upper16:ints
	ADD VR_9, VR_8, VR_6, LSL #2
	LDR VR_10, [VR_0]
	STR VR_10, [VR_9]
	ADD sp, sp, #4
	BX lr


	.global chapush
chapush:
.BLOCK_19:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOVW VR_3, :lower16:chat
	MOVT VR_3, :upper16:chat
	LDR VR_2, [VR_3]
	ADD VR_4, VR_2, #1
	MOVW VR_5, :lower16:chat
	MOVT VR_5, :upper16:chat
	STR VR_4, [VR_5]
	MOVW VR_7, :lower16:chat
	MOVT VR_7, :upper16:chat
	LDR VR_6, [VR_7]
	MOVW VR_8, :lower16:chas
	MOVT VR_8, :upper16:chas
	ADD VR_9, VR_8, VR_6, LSL #2
	LDR VR_10, [VR_0]
	STR VR_10, [VR_9]
	ADD sp, sp, #4
	BX lr


	.global intpop
intpop:
.BLOCK_20:
	SUB sp, sp, #0
	MOVW VR_1, :lower16:intt
	MOVT VR_1, :upper16:intt
	LDR VR_0, [VR_1]
	SUB VR_2, VR_0, #1
	MOVW VR_3, :lower16:intt
	MOVT VR_3, :upper16:intt
	STR VR_2, [VR_3]
	MOVW VR_5, :lower16:intt
	MOVT VR_5, :upper16:intt
	LDR VR_4, [VR_5]
	ADD VR_6, VR_4, #1
	MOVW VR_7, :lower16:ints
	MOVT VR_7, :upper16:ints
	ADD VR_8, VR_7, VR_6, LSL #2
	LDR VR_9, [VR_8]
	MOV r0, VR_9
	BX lr
.BLOCK_21:
	MOV r0, #0
	BX lr


	.global chapop
chapop:
.BLOCK_22:
	SUB sp, sp, #0
	MOVW VR_1, :lower16:chat
	MOVT VR_1, :upper16:chat
	LDR VR_0, [VR_1]
	SUB VR_2, VR_0, #1
	MOVW VR_3, :lower16:chat
	MOVT VR_3, :upper16:chat
	STR VR_2, [VR_3]
	MOVW VR_5, :lower16:chat
	MOVT VR_5, :upper16:chat
	LDR VR_4, [VR_5]
	ADD VR_6, VR_4, #1
	MOVW VR_7, :lower16:chas
	MOVT VR_7, :upper16:chas
	ADD VR_8, VR_7, VR_6, LSL #2
	LDR VR_9, [VR_8]
	MOV r0, VR_9
	BX lr
.BLOCK_23:
	MOV r0, #0
	BX lr


	.global intadd
intadd:
.BLOCK_24:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOVW VR_3, :lower16:intt
	MOVT VR_3, :upper16:intt
	LDR VR_2, [VR_3]
	MOVW VR_4, :lower16:ints
	MOVT VR_4, :upper16:ints
	ADD VR_5, VR_4, VR_2, LSL #2
	MOVW VR_7, :lower16:intt
	MOVT VR_7, :upper16:intt
	LDR VR_6, [VR_7]
	MOVW VR_8, :lower16:ints
	MOVT VR_8, :upper16:ints
	ADD VR_9, VR_8, VR_6, LSL #2
	LDR VR_10, [VR_9]
	MOV VR_12, #10
	MUL VR_11, VR_10, VR_12
	STR VR_11, [VR_5]
	MOVW VR_14, :lower16:intt
	MOVT VR_14, :upper16:intt
	LDR VR_13, [VR_14]
	MOVW VR_15, :lower16:ints
	MOVT VR_15, :upper16:ints
	ADD VR_16, VR_15, VR_13, LSL #2
	MOVW VR_18, :lower16:intt
	MOVT VR_18, :upper16:intt
	LDR VR_17, [VR_18]
	MOVW VR_19, :lower16:ints
	MOVT VR_19, :upper16:ints
	ADD VR_20, VR_19, VR_17, LSL #2
	LDR VR_21, [VR_20]
	LDR VR_22, [VR_0]
	ADD VR_23, VR_21, VR_22
	STR VR_23, [VR_16]
	ADD sp, sp, #4
	BX lr


	.global find
find:
.BLOCK_25:
	SUB sp, sp, #0
	BL chapop
	MOV VR_0, r0
	MOVW VR_1, :lower16:c
	MOVT VR_1, :upper16:c
	STR VR_0, [VR_1]
	MOVW VR_3, :lower16:ii
	MOVT VR_3, :upper16:ii
	LDR VR_2, [VR_3]
	MOVW VR_4, :lower16:get2
	MOVT VR_4, :upper16:get2
	ADD VR_5, VR_4, VR_2, LSL #2
	MOV VR_6, #32
	STR VR_6, [VR_5]
	MOVW VR_8, :lower16:ii
	MOVT VR_8, :upper16:ii
	LDR VR_7, [VR_8]
	ADD VR_9, VR_7, #1
	MOVW VR_10, :lower16:get2
	MOVT VR_10, :upper16:get2
	ADD VR_11, VR_10, VR_9, LSL #2
	MOVW VR_13, :lower16:c
	MOVT VR_13, :upper16:c
	LDR VR_12, [VR_13]
	STR VR_12, [VR_11]
	MOVW VR_15, :lower16:ii
	MOVT VR_15, :upper16:ii
	LDR VR_14, [VR_15]
	ADD VR_16, VR_14, #2
	MOVW VR_17, :lower16:ii
	MOVT VR_17, :upper16:ii
	STR VR_16, [VR_17]
	B .BLOCK_26
.BLOCK_26:
	MOVW VR_19, :lower16:chat
	MOVT VR_19, :upper16:chat
	LDR VR_18, [VR_19]
	CMP VR_18, #0
	BEQ .BLOCK_28
	BNE .BLOCK_27
.BLOCK_27:
	MOV r0, #1
	POP {pc}
.BLOCK_28:
	MOV r0, #0
	POP {pc}
.BLOCK_29:
	B .BLOCK_27
.BLOCK_30:
	MOV r0, #0
	POP {pc}


	.global main
main:
.BLOCK_31:
	SUB sp, sp, #20
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	MOVW VR_5, :lower16:intt
	MOVT VR_5, :upper16:intt
	MOV VR_6, #0
	STR VR_6, [VR_5]
	MOVW VR_7, :lower16:chat
	MOVT VR_7, :upper16:chat
	MOV VR_8, #0
	STR VR_8, [VR_7]
	MOVW VR_9, :lower16:get
	MOVT VR_9, :upper16:get
	MOV VR_10, VR_9
	MOV r0, VR_10
	BL getstr
	MOV VR_11, r0
	STR VR_11, [VR_4]
	B .BLOCK_32
.BLOCK_32:
	MOVW VR_13, :lower16:i
	MOVT VR_13, :upper16:i
	LDR VR_12, [VR_13]
	LDR VR_14, [VR_4]
	CMP VR_12, VR_14
	BLT .BLOCK_33
	BGE .BLOCK_34
.BLOCK_33:
	B .BLOCK_35
.BLOCK_34:
	B .BLOCK_120
.BLOCK_35:
	MOVW VR_16, :lower16:i
	MOVT VR_16, :upper16:i
	LDR VR_15, [VR_16]
	MOVW VR_17, :lower16:get
	MOVT VR_17, :upper16:get
	ADD VR_18, VR_17, VR_15, LSL #2
	LDR VR_19, [VR_18]
	MOV r0, VR_19
	BL isdigit
	MOV VR_20, r0
	CMP VR_20, #1
	BEQ .BLOCK_37
	BNE .BLOCK_38
.BLOCK_36:
	MOVW VR_22, :lower16:i
	MOVT VR_22, :upper16:i
	LDR VR_21, [VR_22]
	ADD VR_23, VR_21, #1
	MOVW VR_24, :lower16:i
	MOVT VR_24, :upper16:i
	STR VR_23, [VR_24]
	B .BLOCK_32
.BLOCK_37:
	MOVW VR_26, :lower16:ii
	MOVT VR_26, :upper16:ii
	LDR VR_25, [VR_26]
	MOVW VR_27, :lower16:get2
	MOVT VR_27, :upper16:get2
	ADD VR_28, VR_27, VR_25, LSL #2
	MOVW VR_30, :lower16:i
	MOVT VR_30, :upper16:i
	LDR VR_29, [VR_30]
	MOVW VR_31, :lower16:get
	MOVT VR_31, :upper16:get
	ADD VR_32, VR_31, VR_29, LSL #2
	LDR VR_33, [VR_32]
	STR VR_33, [VR_28]
	MOVW VR_35, :lower16:ii
	MOVT VR_35, :upper16:ii
	LDR VR_34, [VR_35]
	ADD VR_36, VR_34, #1
	MOVW VR_37, :lower16:ii
	MOVT VR_37, :upper16:ii
	STR VR_36, [VR_37]
	B .BLOCK_36
.BLOCK_38:
	B .BLOCK_39
.BLOCK_39:
	MOVW VR_39, :lower16:i
	MOVT VR_39, :upper16:i
	LDR VR_38, [VR_39]
	MOVW VR_40, :lower16:get
	MOVT VR_40, :upper16:get
	ADD VR_41, VR_40, VR_38, LSL #2
	LDR VR_42, [VR_41]
	CMP VR_42, #40
	BEQ .BLOCK_41
	BNE .BLOCK_40
.BLOCK_40:
	B .BLOCK_42
.BLOCK_41:
	MOV r0, #40
	BL chapush
	B .BLOCK_40
.BLOCK_42:
	MOVW VR_44, :lower16:i
	MOVT VR_44, :upper16:i
	LDR VR_43, [VR_44]
	MOVW VR_45, :lower16:get
	MOVT VR_45, :upper16:get
	ADD VR_46, VR_45, VR_43, LSL #2
	LDR VR_47, [VR_46]
	CMP VR_47, #94
	BEQ .BLOCK_44
	BNE .BLOCK_43
.BLOCK_43:
	B .BLOCK_45
.BLOCK_44:
	MOV r0, #94
	BL chapush
	B .BLOCK_43
.BLOCK_45:
	MOVW VR_49, :lower16:i
	MOVT VR_49, :upper16:i
	LDR VR_48, [VR_49]
	MOVW VR_50, :lower16:get
	MOVT VR_50, :upper16:get
	ADD VR_51, VR_50, VR_48, LSL #2
	LDR VR_52, [VR_51]
	CMP VR_52, #41
	BEQ .BLOCK_47
	BNE .BLOCK_46
.BLOCK_46:
	B .BLOCK_51
.BLOCK_47:
	BL chapop
	MOV VR_53, r0
	MOVW VR_54, :lower16:c
	MOVT VR_54, :upper16:c
	STR VR_53, [VR_54]
	B .BLOCK_48
.BLOCK_48:
	MOVW VR_56, :lower16:c
	MOVT VR_56, :upper16:c
	LDR VR_55, [VR_56]
	CMP VR_55, #40
	BNE .BLOCK_49
	BEQ .BLOCK_50
.BLOCK_49:
	MOVW VR_58, :lower16:ii
	MOVT VR_58, :upper16:ii
	LDR VR_57, [VR_58]
	MOVW VR_59, :lower16:get2
	MOVT VR_59, :upper16:get2
	ADD VR_60, VR_59, VR_57, LSL #2
	MOV VR_61, #32
	STR VR_61, [VR_60]
	MOVW VR_63, :lower16:ii
	MOVT VR_63, :upper16:ii
	LDR VR_62, [VR_63]
	ADD VR_64, VR_62, #1
	MOVW VR_65, :lower16:get2
	MOVT VR_65, :upper16:get2
	ADD VR_66, VR_65, VR_64, LSL #2
	MOVW VR_68, :lower16:c
	MOVT VR_68, :upper16:c
	LDR VR_67, [VR_68]
	STR VR_67, [VR_66]
	MOVW VR_70, :lower16:ii
	MOVT VR_70, :upper16:ii
	LDR VR_69, [VR_70]
	ADD VR_71, VR_69, #2
	MOVW VR_72, :lower16:ii
	MOVT VR_72, :upper16:ii
	STR VR_71, [VR_72]
	BL chapop
	MOV VR_73, r0
	MOVW VR_74, :lower16:c
	MOVT VR_74, :upper16:c
	STR VR_73, [VR_74]
	B .BLOCK_48
.BLOCK_50:
	B .BLOCK_46
.BLOCK_51:
	MOVW VR_76, :lower16:i
	MOVT VR_76, :upper16:i
	LDR VR_75, [VR_76]
	MOVW VR_77, :lower16:get
	MOVT VR_77, :upper16:get
	ADD VR_78, VR_77, VR_75, LSL #2
	LDR VR_79, [VR_78]
	CMP VR_79, #43
	BEQ .BLOCK_53
	BNE .BLOCK_52
.BLOCK_52:
	B .BLOCK_66
.BLOCK_53:
	B .BLOCK_54
.BLOCK_54:
	MOVW VR_81, :lower16:chat
	MOVT VR_81, :upper16:chat
	LDR VR_80, [VR_81]
	MOVW VR_82, :lower16:chas
	MOVT VR_82, :upper16:chas
	ADD VR_83, VR_82, VR_80, LSL #2
	LDR VR_84, [VR_83]
	CMP VR_84, #43
	BEQ .BLOCK_55
	BNE .BLOCK_57
.BLOCK_55:
	B .BLOCK_62
.BLOCK_56:
	MOV r0, #43
	BL chapush
	B .BLOCK_52
.BLOCK_57:
	MOVW VR_86, :lower16:chat
	MOVT VR_86, :upper16:chat
	LDR VR_85, [VR_86]
	MOVW VR_87, :lower16:chas
	MOVT VR_87, :upper16:chas
	ADD VR_88, VR_87, VR_85, LSL #2
	LDR VR_89, [VR_88]
	CMP VR_89, #45
	BEQ .BLOCK_55
	BNE .BLOCK_58
.BLOCK_58:
	MOVW VR_91, :lower16:chat
	MOVT VR_91, :upper16:chat
	LDR VR_90, [VR_91]
	MOVW VR_92, :lower16:chas
	MOVT VR_92, :upper16:chas
	ADD VR_93, VR_92, VR_90, LSL #2
	LDR VR_94, [VR_93]
	CMP VR_94, #42
	BEQ .BLOCK_55
	BNE .BLOCK_59
.BLOCK_59:
	MOVW VR_96, :lower16:chat
	MOVT VR_96, :upper16:chat
	LDR VR_95, [VR_96]
	MOVW VR_97, :lower16:chas
	MOVT VR_97, :upper16:chas
	ADD VR_98, VR_97, VR_95, LSL #2
	LDR VR_99, [VR_98]
	CMP VR_99, #47
	BEQ .BLOCK_55
	BNE .BLOCK_60
.BLOCK_60:
	MOVW VR_101, :lower16:chat
	MOVT VR_101, :upper16:chat
	LDR VR_100, [VR_101]
	MOVW VR_102, :lower16:chas
	MOVT VR_102, :upper16:chas
	ADD VR_103, VR_102, VR_100, LSL #2
	LDR VR_104, [VR_103]
	CMP VR_104, #37
	BEQ .BLOCK_55
	BNE .BLOCK_61
.BLOCK_61:
	MOVW VR_106, :lower16:chat
	MOVT VR_106, :upper16:chat
	LDR VR_105, [VR_106]
	MOVW VR_107, :lower16:chas
	MOVT VR_107, :upper16:chas
	ADD VR_108, VR_107, VR_105, LSL #2
	LDR VR_109, [VR_108]
	CMP VR_109, #94
	BEQ .BLOCK_55
	BNE .BLOCK_56
.BLOCK_62:
	BL find
	MOV VR_110, r0
	CMP VR_110, #0
	BEQ .BLOCK_64
	BNE .BLOCK_63
.BLOCK_63:
	B .BLOCK_54
.BLOCK_64:
	B .BLOCK_56
.BLOCK_65:
	B .BLOCK_63
.BLOCK_66:
	MOVW VR_112, :lower16:i
	MOVT VR_112, :upper16:i
	LDR VR_111, [VR_112]
	MOVW VR_113, :lower16:get
	MOVT VR_113, :upper16:get
	ADD VR_114, VR_113, VR_111, LSL #2
	LDR VR_115, [VR_114]
	CMP VR_115, #45
	BEQ .BLOCK_68
	BNE .BLOCK_67
.BLOCK_67:
	B .BLOCK_81
.BLOCK_68:
	B .BLOCK_69
.BLOCK_69:
	MOVW VR_117, :lower16:chat
	MOVT VR_117, :upper16:chat
	LDR VR_116, [VR_117]
	MOVW VR_118, :lower16:chas
	MOVT VR_118, :upper16:chas
	ADD VR_119, VR_118, VR_116, LSL #2
	LDR VR_120, [VR_119]
	CMP VR_120, #43
	BEQ .BLOCK_70
	BNE .BLOCK_72
.BLOCK_70:
	B .BLOCK_77
.BLOCK_71:
	MOV r0, #45
	BL chapush
	B .BLOCK_67
.BLOCK_72:
	MOVW VR_122, :lower16:chat
	MOVT VR_122, :upper16:chat
	LDR VR_121, [VR_122]
	MOVW VR_123, :lower16:chas
	MOVT VR_123, :upper16:chas
	ADD VR_124, VR_123, VR_121, LSL #2
	LDR VR_125, [VR_124]
	CMP VR_125, #45
	BEQ .BLOCK_70
	BNE .BLOCK_73
.BLOCK_73:
	MOVW VR_127, :lower16:chat
	MOVT VR_127, :upper16:chat
	LDR VR_126, [VR_127]
	MOVW VR_128, :lower16:chas
	MOVT VR_128, :upper16:chas
	ADD VR_129, VR_128, VR_126, LSL #2
	LDR VR_130, [VR_129]
	CMP VR_130, #42
	BEQ .BLOCK_70
	BNE .BLOCK_74
.BLOCK_74:
	MOVW VR_132, :lower16:chat
	MOVT VR_132, :upper16:chat
	LDR VR_131, [VR_132]
	MOVW VR_133, :lower16:chas
	MOVT VR_133, :upper16:chas
	ADD VR_134, VR_133, VR_131, LSL #2
	LDR VR_135, [VR_134]
	CMP VR_135, #47
	BEQ .BLOCK_70
	BNE .BLOCK_75
.BLOCK_75:
	MOVW VR_137, :lower16:chat
	MOVT VR_137, :upper16:chat
	LDR VR_136, [VR_137]
	MOVW VR_138, :lower16:chas
	MOVT VR_138, :upper16:chas
	ADD VR_139, VR_138, VR_136, LSL #2
	LDR VR_140, [VR_139]
	CMP VR_140, #37
	BEQ .BLOCK_70
	BNE .BLOCK_76
.BLOCK_76:
	MOVW VR_142, :lower16:chat
	MOVT VR_142, :upper16:chat
	LDR VR_141, [VR_142]
	MOVW VR_143, :lower16:chas
	MOVT VR_143, :upper16:chas
	ADD VR_144, VR_143, VR_141, LSL #2
	LDR VR_145, [VR_144]
	CMP VR_145, #94
	BEQ .BLOCK_70
	BNE .BLOCK_71
.BLOCK_77:
	BL find
	MOV VR_146, r0
	CMP VR_146, #0
	BEQ .BLOCK_79
	BNE .BLOCK_78
.BLOCK_78:
	B .BLOCK_69
.BLOCK_79:
	B .BLOCK_71
.BLOCK_80:
	B .BLOCK_78
.BLOCK_81:
	MOVW VR_148, :lower16:i
	MOVT VR_148, :upper16:i
	LDR VR_147, [VR_148]
	MOVW VR_149, :lower16:get
	MOVT VR_149, :upper16:get
	ADD VR_150, VR_149, VR_147, LSL #2
	LDR VR_151, [VR_150]
	CMP VR_151, #42
	BEQ .BLOCK_83
	BNE .BLOCK_82
.BLOCK_82:
	B .BLOCK_94
.BLOCK_83:
	B .BLOCK_84
.BLOCK_84:
	MOVW VR_153, :lower16:chat
	MOVT VR_153, :upper16:chat
	LDR VR_152, [VR_153]
	MOVW VR_154, :lower16:chas
	MOVT VR_154, :upper16:chas
	ADD VR_155, VR_154, VR_152, LSL #2
	LDR VR_156, [VR_155]
	CMP VR_156, #42
	BEQ .BLOCK_85
	BNE .BLOCK_87
.BLOCK_85:
	B .BLOCK_90
.BLOCK_86:
	MOV r0, #42
	BL chapush
	B .BLOCK_82
.BLOCK_87:
	MOVW VR_158, :lower16:chat
	MOVT VR_158, :upper16:chat
	LDR VR_157, [VR_158]
	MOVW VR_159, :lower16:chas
	MOVT VR_159, :upper16:chas
	ADD VR_160, VR_159, VR_157, LSL #2
	LDR VR_161, [VR_160]
	CMP VR_161, #47
	BEQ .BLOCK_85
	BNE .BLOCK_88
.BLOCK_88:
	MOVW VR_163, :lower16:chat
	MOVT VR_163, :upper16:chat
	LDR VR_162, [VR_163]
	MOVW VR_164, :lower16:chas
	MOVT VR_164, :upper16:chas
	ADD VR_165, VR_164, VR_162, LSL #2
	LDR VR_166, [VR_165]
	CMP VR_166, #37
	BEQ .BLOCK_85
	BNE .BLOCK_89
.BLOCK_89:
	MOVW VR_168, :lower16:chat
	MOVT VR_168, :upper16:chat
	LDR VR_167, [VR_168]
	MOVW VR_169, :lower16:chas
	MOVT VR_169, :upper16:chas
	ADD VR_170, VR_169, VR_167, LSL #2
	LDR VR_171, [VR_170]
	CMP VR_171, #94
	BEQ .BLOCK_85
	BNE .BLOCK_86
.BLOCK_90:
	BL find
	MOV VR_172, r0
	CMP VR_172, #0
	BEQ .BLOCK_92
	BNE .BLOCK_91
.BLOCK_91:
	B .BLOCK_84
.BLOCK_92:
	B .BLOCK_86
.BLOCK_93:
	B .BLOCK_91
.BLOCK_94:
	MOVW VR_174, :lower16:i
	MOVT VR_174, :upper16:i
	LDR VR_173, [VR_174]
	MOVW VR_175, :lower16:get
	MOVT VR_175, :upper16:get
	ADD VR_176, VR_175, VR_173, LSL #2
	LDR VR_177, [VR_176]
	CMP VR_177, #47
	BEQ .BLOCK_96
	BNE .BLOCK_95
.BLOCK_95:
	B .BLOCK_107
.BLOCK_96:
	B .BLOCK_97
.BLOCK_97:
	MOVW VR_179, :lower16:chat
	MOVT VR_179, :upper16:chat
	LDR VR_178, [VR_179]
	MOVW VR_180, :lower16:chas
	MOVT VR_180, :upper16:chas
	ADD VR_181, VR_180, VR_178, LSL #2
	LDR VR_182, [VR_181]
	CMP VR_182, #42
	BEQ .BLOCK_98
	BNE .BLOCK_100
.BLOCK_98:
	B .BLOCK_103
.BLOCK_99:
	MOV r0, #47
	BL chapush
	B .BLOCK_95
.BLOCK_100:
	MOVW VR_184, :lower16:chat
	MOVT VR_184, :upper16:chat
	LDR VR_183, [VR_184]
	MOVW VR_185, :lower16:chas
	MOVT VR_185, :upper16:chas
	ADD VR_186, VR_185, VR_183, LSL #2
	LDR VR_187, [VR_186]
	CMP VR_187, #47
	BEQ .BLOCK_98
	BNE .BLOCK_101
.BLOCK_101:
	MOVW VR_189, :lower16:chat
	MOVT VR_189, :upper16:chat
	LDR VR_188, [VR_189]
	MOVW VR_190, :lower16:chas
	MOVT VR_190, :upper16:chas
	ADD VR_191, VR_190, VR_188, LSL #2
	LDR VR_192, [VR_191]
	CMP VR_192, #37
	BEQ .BLOCK_98
	BNE .BLOCK_102
.BLOCK_102:
	MOVW VR_194, :lower16:chat
	MOVT VR_194, :upper16:chat
	LDR VR_193, [VR_194]
	MOVW VR_195, :lower16:chas
	MOVT VR_195, :upper16:chas
	ADD VR_196, VR_195, VR_193, LSL #2
	LDR VR_197, [VR_196]
	CMP VR_197, #94
	BEQ .BLOCK_98
	BNE .BLOCK_99
.BLOCK_103:
	BL find
	MOV VR_198, r0
	CMP VR_198, #0
	BEQ .BLOCK_105
	BNE .BLOCK_104
.BLOCK_104:
	B .BLOCK_97
.BLOCK_105:
	B .BLOCK_99
.BLOCK_106:
	B .BLOCK_104
.BLOCK_107:
	MOVW VR_200, :lower16:i
	MOVT VR_200, :upper16:i
	LDR VR_199, [VR_200]
	MOVW VR_201, :lower16:get
	MOVT VR_201, :upper16:get
	ADD VR_202, VR_201, VR_199, LSL #2
	LDR VR_203, [VR_202]
	CMP VR_203, #37
	BEQ .BLOCK_109
	BNE .BLOCK_108
.BLOCK_108:
	MOVW VR_205, :lower16:ii
	MOVT VR_205, :upper16:ii
	LDR VR_204, [VR_205]
	MOVW VR_206, :lower16:get2
	MOVT VR_206, :upper16:get2
	ADD VR_207, VR_206, VR_204, LSL #2
	MOV VR_208, #32
	STR VR_208, [VR_207]
	MOVW VR_210, :lower16:ii
	MOVT VR_210, :upper16:ii
	LDR VR_209, [VR_210]
	ADD VR_211, VR_209, #1
	MOVW VR_212, :lower16:ii
	MOVT VR_212, :upper16:ii
	STR VR_211, [VR_212]
	B .BLOCK_36
.BLOCK_109:
	B .BLOCK_110
.BLOCK_110:
	MOVW VR_214, :lower16:chat
	MOVT VR_214, :upper16:chat
	LDR VR_213, [VR_214]
	MOVW VR_215, :lower16:chas
	MOVT VR_215, :upper16:chas
	ADD VR_216, VR_215, VR_213, LSL #2
	LDR VR_217, [VR_216]
	CMP VR_217, #42
	BEQ .BLOCK_111
	BNE .BLOCK_113
.BLOCK_111:
	B .BLOCK_116
.BLOCK_112:
	MOV r0, #37
	BL chapush
	B .BLOCK_108
.BLOCK_113:
	MOVW VR_219, :lower16:chat
	MOVT VR_219, :upper16:chat
	LDR VR_218, [VR_219]
	MOVW VR_220, :lower16:chas
	MOVT VR_220, :upper16:chas
	ADD VR_221, VR_220, VR_218, LSL #2
	LDR VR_222, [VR_221]
	CMP VR_222, #47
	BEQ .BLOCK_111
	BNE .BLOCK_114
.BLOCK_114:
	MOVW VR_224, :lower16:chat
	MOVT VR_224, :upper16:chat
	LDR VR_223, [VR_224]
	MOVW VR_225, :lower16:chas
	MOVT VR_225, :upper16:chas
	ADD VR_226, VR_225, VR_223, LSL #2
	LDR VR_227, [VR_226]
	CMP VR_227, #37
	BEQ .BLOCK_111
	BNE .BLOCK_115
.BLOCK_115:
	MOVW VR_229, :lower16:chat
	MOVT VR_229, :upper16:chat
	LDR VR_228, [VR_229]
	MOVW VR_230, :lower16:chas
	MOVT VR_230, :upper16:chas
	ADD VR_231, VR_230, VR_228, LSL #2
	LDR VR_232, [VR_231]
	CMP VR_232, #94
	BEQ .BLOCK_111
	BNE .BLOCK_112
.BLOCK_116:
	BL find
	MOV VR_233, r0
	CMP VR_233, #0
	BEQ .BLOCK_118
	BNE .BLOCK_117
.BLOCK_117:
	B .BLOCK_110
.BLOCK_118:
	B .BLOCK_112
.BLOCK_119:
	B .BLOCK_117
.BLOCK_120:
	MOVW VR_235, :lower16:chat
	MOVT VR_235, :upper16:chat
	LDR VR_234, [VR_235]
	CMP VR_234, #0
	BGT .BLOCK_121
	BLE .BLOCK_122
.BLOCK_121:
	BL chapop
	MOV VR_236, r0
	STR VR_236, [VR_3]
	MOVW VR_238, :lower16:ii
	MOVT VR_238, :upper16:ii
	LDR VR_237, [VR_238]
	MOVW VR_239, :lower16:get2
	MOVT VR_239, :upper16:get2
	ADD VR_240, VR_239, VR_237, LSL #2
	MOV VR_241, #32
	STR VR_241, [VR_240]
	MOVW VR_243, :lower16:ii
	MOVT VR_243, :upper16:ii
	LDR VR_242, [VR_243]
	ADD VR_244, VR_242, #1
	MOVW VR_245, :lower16:get2
	MOVT VR_245, :upper16:get2
	ADD VR_246, VR_245, VR_244, LSL #2
	LDR VR_247, [VR_3]
	STR VR_247, [VR_246]
	MOVW VR_249, :lower16:ii
	MOVT VR_249, :upper16:ii
	LDR VR_248, [VR_249]
	ADD VR_250, VR_248, #2
	MOVW VR_251, :lower16:ii
	MOVT VR_251, :upper16:ii
	STR VR_250, [VR_251]
	B .BLOCK_120
.BLOCK_122:
	MOVW VR_253, :lower16:ii
	MOVT VR_253, :upper16:ii
	LDR VR_252, [VR_253]
	MOVW VR_254, :lower16:get2
	MOVT VR_254, :upper16:get2
	ADD VR_255, VR_254, VR_252, LSL #2
	MOV VR_256, #64
	STR VR_256, [VR_255]
	MOVW VR_257, :lower16:i
	MOVT VR_257, :upper16:i
	MOV VR_258, #1
	STR VR_258, [VR_257]
	B .BLOCK_123
.BLOCK_123:
	MOVW VR_260, :lower16:i
	MOVT VR_260, :upper16:i
	LDR VR_259, [VR_260]
	MOVW VR_261, :lower16:get2
	MOVT VR_261, :upper16:get2
	ADD VR_262, VR_261, VR_259, LSL #2
	LDR VR_263, [VR_262]
	CMP VR_263, #64
	BNE .BLOCK_124
	BEQ .BLOCK_125
.BLOCK_124:
	B .BLOCK_126
.BLOCK_125:
	MOVW VR_264, :lower16:ints
	MOVT VR_264, :upper16:ints
	ADD VR_265, VR_264, #4
	LDR VR_266, [VR_265]
	MOV r0, VR_266
	BL putint
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_126:
	MOVW VR_268, :lower16:i
	MOVT VR_268, :upper16:i
	LDR VR_267, [VR_268]
	MOVW VR_269, :lower16:get2
	MOVT VR_269, :upper16:get2
	ADD VR_270, VR_269, VR_267, LSL #2
	LDR VR_271, [VR_270]
	CMP VR_271, #43
	BEQ .BLOCK_128
	BNE .BLOCK_154
.BLOCK_127:
	MOVW VR_273, :lower16:i
	MOVT VR_273, :upper16:i
	LDR VR_272, [VR_273]
	ADD VR_274, VR_272, #1
	MOVW VR_275, :lower16:i
	MOVT VR_275, :upper16:i
	STR VR_274, [VR_275]
	B .BLOCK_123
.BLOCK_128:
	BL intpop
	MOV VR_276, r0
	STR VR_276, [VR_2]
	BL intpop
	MOV VR_277, r0
	STR VR_277, [VR_1]
	B .BLOCK_129
.BLOCK_129:
	MOVW VR_279, :lower16:i
	MOVT VR_279, :upper16:i
	LDR VR_278, [VR_279]
	MOVW VR_280, :lower16:get2
	MOVT VR_280, :upper16:get2
	ADD VR_281, VR_280, VR_278, LSL #2
	LDR VR_282, [VR_281]
	CMP VR_282, #43
	BEQ .BLOCK_131
	BNE .BLOCK_130
.BLOCK_130:
	B .BLOCK_132
.BLOCK_131:
	LDR VR_283, [VR_2]
	LDR VR_284, [VR_1]
	ADD VR_285, VR_283, VR_284
	STR VR_285, [VR_0]
	B .BLOCK_130
.BLOCK_132:
	MOVW VR_287, :lower16:i
	MOVT VR_287, :upper16:i
	LDR VR_286, [VR_287]
	MOVW VR_288, :lower16:get2
	MOVT VR_288, :upper16:get2
	ADD VR_289, VR_288, VR_286, LSL #2
	LDR VR_290, [VR_289]
	CMP VR_290, #45
	BEQ .BLOCK_134
	BNE .BLOCK_133
.BLOCK_133:
	B .BLOCK_135
.BLOCK_134:
	LDR VR_291, [VR_1]
	LDR VR_292, [VR_2]
	SUB VR_293, VR_291, VR_292
	STR VR_293, [VR_0]
	B .BLOCK_133
.BLOCK_135:
	MOVW VR_295, :lower16:i
	MOVT VR_295, :upper16:i
	LDR VR_294, [VR_295]
	MOVW VR_296, :lower16:get2
	MOVT VR_296, :upper16:get2
	ADD VR_297, VR_296, VR_294, LSL #2
	LDR VR_298, [VR_297]
	CMP VR_298, #42
	BEQ .BLOCK_137
	BNE .BLOCK_136
.BLOCK_136:
	B .BLOCK_138
.BLOCK_137:
	LDR VR_299, [VR_2]
	LDR VR_300, [VR_1]
	MUL VR_301, VR_299, VR_300
	STR VR_301, [VR_0]
	B .BLOCK_136
.BLOCK_138:
	MOVW VR_303, :lower16:i
	MOVT VR_303, :upper16:i
	LDR VR_302, [VR_303]
	MOVW VR_304, :lower16:get2
	MOVT VR_304, :upper16:get2
	ADD VR_305, VR_304, VR_302, LSL #2
	LDR VR_306, [VR_305]
	CMP VR_306, #47
	BEQ .BLOCK_140
	BNE .BLOCK_139
.BLOCK_139:
	B .BLOCK_141
.BLOCK_140:
	LDR VR_307, [VR_1]
	LDR VR_308, [VR_2]
	SDIV VR_309, VR_307, VR_308
	STR VR_309, [VR_0]
	B .BLOCK_139
.BLOCK_141:
	MOVW VR_311, :lower16:i
	MOVT VR_311, :upper16:i
	LDR VR_310, [VR_311]
	MOVW VR_312, :lower16:get2
	MOVT VR_312, :upper16:get2
	ADD VR_313, VR_312, VR_310, LSL #2
	LDR VR_314, [VR_313]
	CMP VR_314, #37
	BEQ .BLOCK_143
	BNE .BLOCK_142
.BLOCK_142:
	B .BLOCK_144
.BLOCK_143:
	LDR VR_315, [VR_1]
	LDR VR_316, [VR_2]
	SDIV VR_317, VR_315, VR_316
	MUL VR_318, VR_317, VR_316
	SUB VR_319, VR_315, VR_318
	STR VR_319, [VR_0]
	B .BLOCK_142
.BLOCK_144:
	MOVW VR_321, :lower16:i
	MOVT VR_321, :upper16:i
	LDR VR_320, [VR_321]
	MOVW VR_322, :lower16:get2
	MOVT VR_322, :upper16:get2
	ADD VR_323, VR_322, VR_320, LSL #2
	LDR VR_324, [VR_323]
	CMP VR_324, #94
	BEQ .BLOCK_146
	BNE .BLOCK_145
.BLOCK_145:
	LDR VR_325, [VR_0]
	MOV r0, VR_325
	BL intpush
	B .BLOCK_127
.BLOCK_146:
	LDR VR_326, [VR_1]
	LDR VR_327, [VR_2]
	MOV r1, VR_327
	MOV r0, VR_326
	BL power
	MOV VR_328, r0
	STR VR_328, [VR_0]
	B .BLOCK_145
.BLOCK_147:
	B .BLOCK_148
.BLOCK_148:
	MOVW VR_330, :lower16:i
	MOVT VR_330, :upper16:i
	LDR VR_329, [VR_330]
	MOVW VR_331, :lower16:get2
	MOVT VR_331, :upper16:get2
	ADD VR_332, VR_331, VR_329, LSL #2
	LDR VR_333, [VR_332]
	CMP VR_333, #32
	BNE .BLOCK_150
	BEQ .BLOCK_149
.BLOCK_149:
	B .BLOCK_127
.BLOCK_150:
	MOVW VR_335, :lower16:i
	MOVT VR_335, :upper16:i
	LDR VR_334, [VR_335]
	MOVW VR_336, :lower16:get2
	MOVT VR_336, :upper16:get2
	ADD VR_337, VR_336, VR_334, LSL #2
	LDR VR_338, [VR_337]
	SUB VR_339, VR_338, #48
	MOV r0, VR_339
	BL intpush
	MOVW VR_340, :lower16:ii
	MOVT VR_340, :upper16:ii
	MOV VR_341, #1
	STR VR_341, [VR_340]
	B .BLOCK_151
.BLOCK_151:
	MOVW VR_343, :lower16:i
	MOVT VR_343, :upper16:i
	LDR VR_342, [VR_343]
	MOVW VR_345, :lower16:ii
	MOVT VR_345, :upper16:ii
	LDR VR_344, [VR_345]
	ADD VR_346, VR_342, VR_344
	MOVW VR_347, :lower16:get2
	MOVT VR_347, :upper16:get2
	ADD VR_348, VR_347, VR_346, LSL #2
	LDR VR_349, [VR_348]
	CMP VR_349, #32
	BNE .BLOCK_152
	BEQ .BLOCK_153
.BLOCK_152:
	MOVW VR_351, :lower16:i
	MOVT VR_351, :upper16:i
	LDR VR_350, [VR_351]
	MOVW VR_353, :lower16:ii
	MOVT VR_353, :upper16:ii
	LDR VR_352, [VR_353]
	ADD VR_354, VR_350, VR_352
	MOVW VR_355, :lower16:get2
	MOVT VR_355, :upper16:get2
	ADD VR_356, VR_355, VR_354, LSL #2
	LDR VR_357, [VR_356]
	SUB VR_358, VR_357, #48
	MOV r0, VR_358
	BL intadd
	MOVW VR_360, :lower16:ii
	MOVT VR_360, :upper16:ii
	LDR VR_359, [VR_360]
	ADD VR_361, VR_359, #1
	MOVW VR_362, :lower16:ii
	MOVT VR_362, :upper16:ii
	STR VR_361, [VR_362]
	B .BLOCK_151
.BLOCK_153:
	MOVW VR_364, :lower16:i
	MOVT VR_364, :upper16:i
	LDR VR_363, [VR_364]
	MOVW VR_366, :lower16:ii
	MOVT VR_366, :upper16:ii
	LDR VR_365, [VR_366]
	ADD VR_367, VR_363, VR_365
	SUB VR_368, VR_367, #1
	MOVW VR_369, :lower16:i
	MOVT VR_369, :upper16:i
	STR VR_368, [VR_369]
	B .BLOCK_149
.BLOCK_154:
	MOVW VR_371, :lower16:i
	MOVT VR_371, :upper16:i
	LDR VR_370, [VR_371]
	MOVW VR_372, :lower16:get2
	MOVT VR_372, :upper16:get2
	ADD VR_373, VR_372, VR_370, LSL #2
	LDR VR_374, [VR_373]
	CMP VR_374, #45
	BEQ .BLOCK_128
	BNE .BLOCK_155
.BLOCK_155:
	MOVW VR_376, :lower16:i
	MOVT VR_376, :upper16:i
	LDR VR_375, [VR_376]
	MOVW VR_377, :lower16:get2
	MOVT VR_377, :upper16:get2
	ADD VR_378, VR_377, VR_375, LSL #2
	LDR VR_379, [VR_378]
	CMP VR_379, #42
	BEQ .BLOCK_128
	BNE .BLOCK_156
.BLOCK_156:
	MOVW VR_381, :lower16:i
	MOVT VR_381, :upper16:i
	LDR VR_380, [VR_381]
	MOVW VR_382, :lower16:get2
	MOVT VR_382, :upper16:get2
	ADD VR_383, VR_382, VR_380, LSL #2
	LDR VR_384, [VR_383]
	CMP VR_384, #47
	BEQ .BLOCK_128
	BNE .BLOCK_157
.BLOCK_157:
	MOVW VR_386, :lower16:i
	MOVT VR_386, :upper16:i
	LDR VR_385, [VR_386]
	MOVW VR_387, :lower16:get2
	MOVT VR_387, :upper16:get2
	ADD VR_388, VR_387, VR_385, LSL #2
	LDR VR_389, [VR_388]
	CMP VR_389, #37
	BEQ .BLOCK_128
	BNE .BLOCK_158
.BLOCK_158:
	MOVW VR_391, :lower16:i
	MOVT VR_391, :upper16:i
	LDR VR_390, [VR_391]
	MOVW VR_392, :lower16:get2
	MOVT VR_392, :upper16:get2
	ADD VR_393, VR_392, VR_390, LSL #2
	LDR VR_394, [VR_393]
	CMP VR_394, #94
	BEQ .BLOCK_128
	BNE .BLOCK_147
.BLOCK_159:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.data
	.align 4
	.comm	ints, 40000, 4
	.global intt
intt:
	.zero	4
	.comm	chas, 40000, 4
	.global chat
chat:
	.zero	4
	.global i
i:
	.zero	4
	.global ii
ii:
	.word	1
	.global c
c:
	.zero	4
	.comm	get, 40000, 4
	.comm	get2, 40000, 4


	.end
