	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #132
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	ADD VR_5, sp, #20
	ADD VR_6, sp, #24
	ADD VR_7, sp, #28
	ADD VR_8, sp, #32
	ADD VR_9, sp, #36
	ADD VR_10, sp, #40
	ADD VR_11, sp, #44
	ADD VR_12, sp, #48
	ADD VR_13, sp, #52
	ADD VR_14, sp, #56
	ADD VR_15, sp, #60
	ADD VR_16, sp, #64
	ADD VR_17, sp, #68
	ADD VR_18, sp, #72
	ADD VR_19, sp, #76
	ADD VR_20, sp, #80
	ADD VR_21, sp, #84
	ADD VR_22, sp, #88
	ADD VR_23, sp, #92
	ADD VR_24, sp, #96
	ADD VR_25, sp, #100
	ADD VR_26, sp, #104
	ADD VR_27, sp, #108
	ADD VR_28, sp, #112
	ADD VR_29, sp, #116
	ADD VR_30, sp, #120
	ADD VR_31, sp, #124
	ADD VR_32, sp, #128
	BL getint
	MOV VR_33, r0
	STR VR_33, [VR_2]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_34, [VR_2]
	CMP VR_34, #5
	BEQ .BLOCK_2
	BNE .BLOCK_3
.BLOCK_2:
	LDR VR_35, [VR_2]
	ADD VR_36, VR_35, #1
	STR VR_36, [VR_2]
	B .BLOCK_1
.BLOCK_3:
	MOV VR_37, #0
	STR VR_37, [VR_32]
	LDR VR_38, [VR_32]
	ADD VR_39, VR_38, #1
	STR VR_39, [VR_31]
	LDR VR_40, [VR_31]
	ADD VR_41, VR_40, #1
	STR VR_41, [VR_30]
	LDR VR_42, [VR_30]
	ADD VR_43, VR_42, #1
	STR VR_43, [VR_29]
	LDR VR_44, [VR_29]
	ADD VR_45, VR_44, #1
	STR VR_45, [VR_28]
	LDR VR_46, [VR_28]
	ADD VR_47, VR_46, #1
	STR VR_47, [VR_27]
	LDR VR_48, [VR_27]
	ADD VR_49, VR_48, #1
	STR VR_49, [VR_26]
	LDR VR_50, [VR_26]
	ADD VR_51, VR_50, #1
	STR VR_51, [VR_25]
	LDR VR_52, [VR_25]
	ADD VR_53, VR_52, #1
	STR VR_53, [VR_24]
	LDR VR_54, [VR_24]
	ADD VR_55, VR_54, #1
	STR VR_55, [VR_23]
	LDR VR_56, [VR_23]
	ADD VR_57, VR_56, #1
	STR VR_57, [VR_22]
	LDR VR_58, [VR_22]
	ADD VR_59, VR_58, #1
	STR VR_59, [VR_21]
	LDR VR_60, [VR_21]
	ADD VR_61, VR_60, #1
	STR VR_61, [VR_20]
	LDR VR_62, [VR_20]
	ADD VR_63, VR_62, #1
	STR VR_63, [VR_19]
	LDR VR_64, [VR_19]
	ADD VR_65, VR_64, #1
	STR VR_65, [VR_18]
	LDR VR_66, [VR_18]
	ADD VR_67, VR_66, #1
	STR VR_67, [VR_17]
	LDR VR_68, [VR_17]
	ADD VR_69, VR_68, #1
	STR VR_69, [VR_16]
	LDR VR_70, [VR_16]
	ADD VR_71, VR_70, #1
	STR VR_71, [VR_15]
	LDR VR_72, [VR_15]
	ADD VR_73, VR_72, #1
	STR VR_73, [VR_14]
	LDR VR_74, [VR_14]
	ADD VR_75, VR_74, #1
	STR VR_75, [VR_13]
	LDR VR_76, [VR_13]
	ADD VR_77, VR_76, #1
	STR VR_77, [VR_12]
	LDR VR_78, [VR_12]
	ADD VR_79, VR_78, #1
	STR VR_79, [VR_11]
	LDR VR_80, [VR_11]
	ADD VR_81, VR_80, #1
	STR VR_81, [VR_10]
	LDR VR_82, [VR_10]
	ADD VR_83, VR_82, #1
	STR VR_83, [VR_9]
	LDR VR_84, [VR_9]
	ADD VR_85, VR_84, #1
	STR VR_85, [VR_8]
	LDR VR_86, [VR_8]
	ADD VR_87, VR_86, #1
	STR VR_87, [VR_7]
	LDR VR_88, [VR_7]
	ADD VR_89, VR_88, #1
	STR VR_89, [VR_6]
	LDR VR_90, [VR_6]
	ADD VR_91, VR_90, #1
	STR VR_91, [VR_5]
	LDR VR_92, [VR_5]
	ADD VR_93, VR_92, #1
	STR VR_93, [VR_4]
	LDR VR_94, [VR_4]
	ADD VR_95, VR_94, #1
	STR VR_95, [VR_3]
	LDR VR_96, [VR_32]
	MOV r0, VR_96
	BL putint
	LDR VR_97, [VR_31]
	MOV r0, VR_97
	BL putint
	LDR VR_98, [VR_30]
	MOV r0, VR_98
	BL putint
	LDR VR_99, [VR_29]
	MOV r0, VR_99
	BL putint
	LDR VR_100, [VR_28]
	MOV r0, VR_100
	BL putint
	LDR VR_101, [VR_27]
	MOV r0, VR_101
	BL putint
	LDR VR_102, [VR_26]
	MOV r0, VR_102
	BL putint
	LDR VR_103, [VR_25]
	MOV r0, VR_103
	BL putint
	LDR VR_104, [VR_24]
	MOV r0, VR_104
	BL putint
	LDR VR_105, [VR_23]
	MOV r0, VR_105
	BL putint
	LDR VR_106, [VR_22]
	MOV r0, VR_106
	BL putint
	LDR VR_107, [VR_21]
	MOV r0, VR_107
	BL putint
	LDR VR_108, [VR_20]
	MOV r0, VR_108
	BL putint
	LDR VR_109, [VR_19]
	MOV r0, VR_109
	BL putint
	LDR VR_110, [VR_18]
	MOV r0, VR_110
	BL putint
	LDR VR_111, [VR_17]
	MOV r0, VR_111
	BL putint
	LDR VR_112, [VR_16]
	MOV r0, VR_112
	BL putint
	LDR VR_113, [VR_15]
	MOV r0, VR_113
	BL putint
	LDR VR_114, [VR_14]
	MOV r0, VR_114
	BL putint
	LDR VR_115, [VR_13]
	MOV r0, VR_115
	BL putint
	LDR VR_116, [VR_12]
	MOV r0, VR_116
	BL putint
	LDR VR_117, [VR_11]
	MOV r0, VR_117
	BL putint
	LDR VR_118, [VR_10]
	MOV r0, VR_118
	BL putint
	LDR VR_119, [VR_9]
	MOV r0, VR_119
	BL putint
	LDR VR_120, [VR_8]
	MOV r0, VR_120
	BL putint
	LDR VR_121, [VR_7]
	MOV r0, VR_121
	BL putint
	LDR VR_122, [VR_6]
	MOV r0, VR_122
	BL putint
	LDR VR_123, [VR_5]
	MOV r0, VR_123
	BL putint
	LDR VR_124, [VR_4]
	MOV r0, VR_124
	BL putint
	LDR VR_125, [VR_3]
	MOV r0, VR_125
	BL putint
	MOV VR_126, #10
	STR VR_126, [VR_0]
	LDR VR_127, [VR_0]
	MOV r0, VR_127
	BL putch
	LDR VR_128, [VR_2]
	MOV r0, VR_128
	BL putint
	LDR VR_129, [VR_0]
	MOV r0, VR_129
	BL putch
	LDR VR_130, [VR_7]
	MOV r0, VR_130
	ADD sp, sp, #132
	POP {pc}
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #132
	POP {pc}


	.data
	.align 4
	.global n
n:
	.zero	4


	.end
