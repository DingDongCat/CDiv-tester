	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global long_array
long_array:
.BLOCK_0:
	MOVW VR_166, #54484
	MOVT VR_166, #1
	SUB sp, sp, VR_166
	MOV VR_11, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	MOVW VR_6, #40016
	ADD VR_5, sp, VR_6
	MOVW VR_8, #14480
	MOVT VR_8, #1
	ADD VR_7, sp, VR_8
	MOVW VR_10, #54480
	MOVT VR_10, #1
	ADD VR_9, sp, VR_10
	STR VR_11, [VR_9]
	MOV VR_12, #0
	STR VR_12, [VR_3]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_13, [VR_3]
	MOVW VR_14, #10000
	CMP VR_13, VR_14
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_15, [VR_3]
	ADD VR_16, VR_7, VR_15, LSL #2
	LDR VR_17, [VR_3]
	LDR VR_18, [VR_3]
	MUL VR_19, VR_17, VR_18
	MOVW VR_23, #26215
	MOVT VR_23, #26214
	SMULL VR_20, VR_21, VR_23, VR_19
	MOV VR_22, VR_21, ASR #2
	SUB VR_20, VR_22, VR_19, ASR #31
	MOV VR_25, #10
	MUL VR_24, VR_20, VR_25
	SUB VR_26, VR_19, VR_24
	STR VR_26, [VR_16]
	LDR VR_27, [VR_3]
	ADD VR_28, VR_27, #1
	STR VR_28, [VR_3]
	B .BLOCK_1
.BLOCK_3:
	MOV VR_29, #0
	STR VR_29, [VR_3]
	B .BLOCK_4
.BLOCK_4:
	LDR VR_30, [VR_3]
	MOVW VR_31, #10000
	CMP VR_30, VR_31
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	LDR VR_32, [VR_3]
	ADD VR_33, VR_5, VR_32, LSL #2
	LDR VR_34, [VR_3]
	ADD VR_35, VR_7, VR_34, LSL #2
	LDR VR_36, [VR_35]
	LDR VR_37, [VR_3]
	ADD VR_38, VR_7, VR_37, LSL #2
	LDR VR_39, [VR_38]
	MUL VR_40, VR_36, VR_39
	MOVW VR_44, #26215
	MOVT VR_44, #26214
	SMULL VR_41, VR_42, VR_44, VR_40
	MOV VR_43, VR_42, ASR #2
	SUB VR_41, VR_43, VR_40, ASR #31
	MOV VR_46, #10
	MUL VR_45, VR_41, VR_46
	SUB VR_47, VR_40, VR_45
	STR VR_47, [VR_33]
	LDR VR_48, [VR_3]
	ADD VR_49, VR_48, #1
	STR VR_49, [VR_3]
	B .BLOCK_4
.BLOCK_6:
	MOV VR_50, #0
	STR VR_50, [VR_3]
	B .BLOCK_7
.BLOCK_7:
	LDR VR_51, [VR_3]
	MOVW VR_52, #10000
	CMP VR_51, VR_52
	BLT .BLOCK_8
	BGE .BLOCK_9
.BLOCK_8:
	LDR VR_53, [VR_3]
	ADD VR_54, VR_4, VR_53, LSL #2
	LDR VR_55, [VR_3]
	ADD VR_56, VR_5, VR_55, LSL #2
	LDR VR_57, [VR_56]
	LDR VR_58, [VR_3]
	ADD VR_59, VR_5, VR_58, LSL #2
	LDR VR_60, [VR_59]
	MUL VR_61, VR_57, VR_60
	MOVW VR_65, #34079
	MOVT VR_65, #20971
	SMULL VR_62, VR_63, VR_65, VR_61
	MOV VR_64, VR_63, ASR #5
	SUB VR_62, VR_64, VR_61, ASR #31
	MOV VR_67, #100
	MUL VR_66, VR_62, VR_67
	SUB VR_68, VR_61, VR_66
	LDR VR_69, [VR_3]
	ADD VR_70, VR_7, VR_69, LSL #2
	LDR VR_71, [VR_70]
	ADD VR_72, VR_68, VR_71
	STR VR_72, [VR_54]
	LDR VR_73, [VR_3]
	ADD VR_74, VR_73, #1
	STR VR_74, [VR_3]
	B .BLOCK_7
.BLOCK_9:
	MOV VR_75, #0
	STR VR_75, [VR_2]
	MOV VR_76, #0
	STR VR_76, [VR_3]
	B .BLOCK_10
.BLOCK_10:
	LDR VR_77, [VR_3]
	MOVW VR_78, #10000
	CMP VR_77, VR_78
	BLT .BLOCK_11
	BGE .BLOCK_12
.BLOCK_11:
	B .BLOCK_13
.BLOCK_12:
	LDR VR_79, [VR_2]
	MOV r0, VR_79
	MOVW r5, #54484
	MOVT r5, #1
	ADD sp, sp, r5
	POP {pc}
.BLOCK_13:
	LDR VR_80, [VR_3]
	CMP VR_80, #10
	BLT .BLOCK_15
	BGE .BLOCK_16
.BLOCK_14:
	LDR VR_81, [VR_3]
	ADD VR_82, VR_81, #1
	STR VR_82, [VR_3]
	B .BLOCK_10
.BLOCK_15:
	LDR VR_83, [VR_2]
	LDR VR_84, [VR_3]
	ADD VR_85, VR_4, VR_84, LSL #2
	LDR VR_86, [VR_85]
	ADD VR_87, VR_83, VR_86
	MOVW VR_91, #3835
	MOVT VR_91, #12586
	SMULL VR_88, VR_89, VR_91, VR_87
	MOV VR_90, VR_89, ASR #8
	SUB VR_88, VR_90, VR_87, ASR #31
	MOVW VR_93, #1333
	MUL VR_92, VR_88, VR_93
	SUB VR_94, VR_87, VR_92
	STR VR_94, [VR_2]
	LDR VR_95, [VR_2]
	MOV r0, VR_95
	BL putint
	B .BLOCK_14
.BLOCK_16:
	B .BLOCK_17
.BLOCK_17:
	LDR VR_96, [VR_3]
	CMP VR_96, #20
	BLT .BLOCK_19
	BGE .BLOCK_23
.BLOCK_18:
	B .BLOCK_14
.BLOCK_19:
	MOVW VR_98, #10000
	MOV VR_99, VR_98, ASR #0
	ADD VR_99, VR_98, VR_99, LSR #31
	MOV VR_97, VR_99, ASR #1
	STR VR_97, [VR_1]
	B .BLOCK_20
.BLOCK_20:
	LDR VR_100, [VR_1]
	MOVW VR_101, #10000
	CMP VR_100, VR_101
	BLT .BLOCK_21
	BGE .BLOCK_22
.BLOCK_21:
	LDR VR_102, [VR_2]
	LDR VR_103, [VR_3]
	ADD VR_104, VR_4, VR_103, LSL #2
	LDR VR_105, [VR_104]
	ADD VR_106, VR_102, VR_105
	LDR VR_107, [VR_1]
	ADD VR_108, VR_7, VR_107, LSL #2
	LDR VR_109, [VR_108]
	SUB VR_110, VR_106, VR_109
	STR VR_110, [VR_2]
	LDR VR_111, [VR_1]
	ADD VR_112, VR_111, #1
	STR VR_112, [VR_1]
	B .BLOCK_20
.BLOCK_22:
	LDR VR_113, [VR_2]
	MOV r0, VR_113
	BL putint
	B .BLOCK_18
.BLOCK_23:
	B .BLOCK_24
.BLOCK_24:
	LDR VR_114, [VR_3]
	CMP VR_114, #30
	BLT .BLOCK_26
	BGE .BLOCK_34
.BLOCK_25:
	B .BLOCK_18
.BLOCK_26:
	MOVW VR_116, #10000
	MOV VR_117, VR_116, ASR #0
	ADD VR_117, VR_116, VR_117, LSR #31
	MOV VR_115, VR_117, ASR #1
	STR VR_115, [VR_0]
	B .BLOCK_27
.BLOCK_27:
	LDR VR_118, [VR_0]
	MOVW VR_119, #10000
	CMP VR_118, VR_119
	BLT .BLOCK_28
	BGE .BLOCK_29
.BLOCK_28:
	B .BLOCK_30
.BLOCK_29:
	LDR VR_120, [VR_2]
	MOV r0, VR_120
	BL putint
	B .BLOCK_25
.BLOCK_30:
	LDR VR_121, [VR_0]
	MOVW VR_122, #2233
	CMP VR_121, VR_122
	BGT .BLOCK_32
	BLE .BLOCK_33
.BLOCK_31:
	B .BLOCK_27
.BLOCK_32:
	LDR VR_123, [VR_2]
	LDR VR_124, [VR_3]
	ADD VR_125, VR_5, VR_124, LSL #2
	LDR VR_126, [VR_125]
	ADD VR_127, VR_123, VR_126
	LDR VR_128, [VR_0]
	ADD VR_129, VR_7, VR_128, LSL #2
	LDR VR_130, [VR_129]
	SUB VR_131, VR_127, VR_130
	STR VR_131, [VR_2]
	LDR VR_132, [VR_0]
	ADD VR_133, VR_132, #1
	STR VR_133, [VR_0]
	B .BLOCK_31
.BLOCK_33:
	LDR VR_134, [VR_2]
	LDR VR_135, [VR_3]
	ADD VR_136, VR_7, VR_135, LSL #2
	LDR VR_137, [VR_136]
	ADD VR_138, VR_134, VR_137
	LDR VR_139, [VR_0]
	ADD VR_140, VR_4, VR_139, LSL #2
	LDR VR_141, [VR_140]
	ADD VR_142, VR_138, VR_141
	MOVW VR_146, #19047
	MOVT VR_146, #5033
	SMULL VR_143, VR_144, VR_146, VR_142
	MOV VR_145, VR_144, ASR #10
	SUB VR_143, VR_145, VR_142, ASR #31
	MOVW VR_148, #13333
	MUL VR_147, VR_143, VR_148
	SUB VR_149, VR_142, VR_147
	STR VR_149, [VR_2]
	LDR VR_150, [VR_0]
	ADD VR_151, VR_150, #2
	STR VR_151, [VR_0]
	B .BLOCK_31
.BLOCK_34:
	LDR VR_152, [VR_2]
	LDR VR_153, [VR_3]
	ADD VR_154, VR_4, VR_153, LSL #2
	LDR VR_155, [VR_154]
	LDR VR_156, [VR_9]
	MUL VR_157, VR_155, VR_156
	ADD VR_158, VR_152, VR_157
	MOVW VR_162, #27117
	MOVT VR_162, #21477
	SMULL VR_159, VR_160, VR_162, VR_158
	MOV VR_161, VR_160, ASR #15
	SUB VR_159, VR_161, VR_158, ASR #31
	MOVW VR_164, #34452
	MOVT VR_164, #1
	MUL VR_163, VR_159, VR_164
	SUB VR_165, VR_158, VR_163
	STR VR_165, [VR_2]
	B .BLOCK_25
.BLOCK_35:
	MOV r0, #0
	MOVW r5, #54484
	MOVT r5, #1
	ADD sp, sp, r5
	POP {pc}


	.global main
main:
.BLOCK_36:
	SUB sp, sp, #0
	MOV r0, #9
	BL long_array
	MOV VR_0, r0
	MOV r0, VR_0
	POP {pc}
.BLOCK_37:
	MOV r0, #0
	POP {pc}


	.end
