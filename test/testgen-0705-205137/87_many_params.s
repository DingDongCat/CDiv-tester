	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global sort
sort:
.BLOCK_0:
	SUB sp, sp, #20
	MOV VR_6, r1
	MOV VR_5, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	STR VR_5, [VR_4]
	STR VR_6, [VR_3]
	MOV VR_7, #0
	STR VR_7, [VR_2]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_8, [VR_2]
	LDR VR_9, [VR_3]
	SUB VR_10, VR_9, #1
	CMP VR_8, VR_10
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_11, [VR_2]
	ADD VR_12, VR_11, #1
	STR VR_12, [VR_1]
	B .BLOCK_4
.BLOCK_3:
	ADD sp, sp, #20
	BX lr
.BLOCK_4:
	LDR VR_13, [VR_1]
	LDR VR_14, [VR_3]
	CMP VR_13, VR_14
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	B .BLOCK_7
.BLOCK_6:
	LDR VR_15, [VR_2]
	ADD VR_16, VR_15, #1
	STR VR_16, [VR_2]
	B .BLOCK_1
.BLOCK_7:
	LDR VR_17, [VR_4]
	LDR VR_18, [VR_2]
	ADD VR_19, VR_17, VR_18, LSL #2
	LDR VR_20, [VR_19]
	LDR VR_21, [VR_4]
	LDR VR_22, [VR_1]
	ADD VR_23, VR_21, VR_22, LSL #2
	LDR VR_24, [VR_23]
	CMP VR_20, VR_24
	BLT .BLOCK_9
	BGE .BLOCK_8
.BLOCK_8:
	LDR VR_25, [VR_1]
	ADD VR_26, VR_25, #1
	STR VR_26, [VR_1]
	B .BLOCK_4
.BLOCK_9:
	LDR VR_27, [VR_4]
	LDR VR_28, [VR_2]
	ADD VR_29, VR_27, VR_28, LSL #2
	LDR VR_30, [VR_29]
	STR VR_30, [VR_0]
	LDR VR_31, [VR_4]
	LDR VR_32, [VR_2]
	ADD VR_33, VR_31, VR_32, LSL #2
	LDR VR_34, [VR_4]
	LDR VR_35, [VR_1]
	ADD VR_36, VR_34, VR_35, LSL #2
	LDR VR_37, [VR_36]
	STR VR_37, [VR_33]
	LDR VR_38, [VR_4]
	LDR VR_39, [VR_1]
	ADD VR_40, VR_38, VR_39, LSL #2
	LDR VR_41, [VR_0]
	STR VR_41, [VR_40]
	B .BLOCK_8


	.global param32_rec
param32_rec:
.BLOCK_10:
	SUB sp, sp, #128
	MOV VR_91, #236
	LDR VR_90, [sp, VR_91]
	MOV VR_89, #232
	LDR VR_88, [sp, VR_89]
	MOV VR_87, #228
	LDR VR_86, [sp, VR_87]
	MOV VR_85, #224
	LDR VR_84, [sp, VR_85]
	MOV VR_83, #220
	LDR VR_82, [sp, VR_83]
	MOV VR_81, #216
	LDR VR_80, [sp, VR_81]
	MOV VR_79, #212
	LDR VR_78, [sp, VR_79]
	MOV VR_77, #208
	LDR VR_76, [sp, VR_77]
	MOV VR_75, #204
	LDR VR_74, [sp, VR_75]
	MOV VR_73, #200
	LDR VR_72, [sp, VR_73]
	MOV VR_71, #196
	LDR VR_70, [sp, VR_71]
	MOV VR_69, #192
	LDR VR_68, [sp, VR_69]
	MOV VR_67, #188
	LDR VR_66, [sp, VR_67]
	MOV VR_65, #184
	LDR VR_64, [sp, VR_65]
	MOV VR_63, #180
	LDR VR_62, [sp, VR_63]
	MOV VR_61, #176
	LDR VR_60, [sp, VR_61]
	MOV VR_59, #172
	LDR VR_58, [sp, VR_59]
	MOV VR_57, #168
	LDR VR_56, [sp, VR_57]
	MOV VR_55, #164
	LDR VR_54, [sp, VR_55]
	MOV VR_53, #160
	LDR VR_52, [sp, VR_53]
	MOV VR_51, #156
	LDR VR_50, [sp, VR_51]
	MOV VR_49, #152
	LDR VR_48, [sp, VR_49]
	MOV VR_47, #148
	LDR VR_46, [sp, VR_47]
	MOV VR_45, #144
	LDR VR_44, [sp, VR_45]
	MOV VR_43, #140
	LDR VR_42, [sp, VR_43]
	MOV VR_41, #136
	LDR VR_40, [sp, VR_41]
	MOV VR_39, #132
	LDR VR_38, [sp, VR_39]
	MOV VR_37, #128
	LDR VR_36, [sp, VR_37]
	MOV VR_35, r3
	MOV VR_34, r2
	MOV VR_33, r1
	MOV VR_32, r0
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
	STR VR_32, [VR_31]
	STR VR_33, [VR_30]
	STR VR_34, [VR_29]
	STR VR_35, [VR_28]
	STR VR_36, [VR_27]
	STR VR_38, [VR_26]
	STR VR_40, [VR_25]
	STR VR_42, [VR_24]
	STR VR_44, [VR_23]
	STR VR_46, [VR_22]
	STR VR_48, [VR_21]
	STR VR_50, [VR_20]
	STR VR_52, [VR_19]
	STR VR_54, [VR_18]
	STR VR_56, [VR_17]
	STR VR_58, [VR_16]
	STR VR_60, [VR_15]
	STR VR_62, [VR_14]
	STR VR_64, [VR_13]
	STR VR_66, [VR_12]
	STR VR_68, [VR_11]
	STR VR_70, [VR_10]
	STR VR_72, [VR_9]
	STR VR_74, [VR_8]
	STR VR_76, [VR_7]
	STR VR_78, [VR_6]
	STR VR_80, [VR_5]
	STR VR_82, [VR_4]
	STR VR_84, [VR_3]
	STR VR_86, [VR_2]
	STR VR_88, [VR_1]
	STR VR_90, [VR_0]
	B .BLOCK_11
.BLOCK_11:
	LDR VR_92, [VR_31]
	CMP VR_92, #0
	BEQ .BLOCK_13
	BNE .BLOCK_15
.BLOCK_12:
	MOV r0, #0
	ADD sp, sp, #128
	POP {pc}
.BLOCK_13:
	LDR VR_93, [VR_30]
	MOV r0, VR_93
	ADD sp, sp, #128
	POP {pc}
.BLOCK_14:
	B .BLOCK_12
.BLOCK_15:
	LDR VR_94, [VR_31]
	SUB VR_95, VR_94, #1
	LDR VR_96, [VR_30]
	LDR VR_97, [VR_29]
	ADD VR_98, VR_96, VR_97
	MOVW VR_102, #51217
	MOVT VR_102, #4405
	SMULL VR_99, VR_100, VR_102, VR_98
	MOV VR_101, VR_100, ASR #26
	SUB VR_99, VR_101, VR_98, ASR #31
	MOVW VR_104, #1
	MOVT VR_104, #15232
	MUL VR_103, VR_99, VR_104
	SUB VR_105, VR_98, VR_103
	LDR VR_106, [VR_28]
	LDR VR_107, [VR_27]
	LDR VR_108, [VR_26]
	LDR VR_109, [VR_25]
	LDR VR_110, [VR_24]
	LDR VR_111, [VR_23]
	LDR VR_112, [VR_22]
	LDR VR_113, [VR_21]
	LDR VR_114, [VR_20]
	LDR VR_115, [VR_19]
	LDR VR_116, [VR_18]
	LDR VR_117, [VR_17]
	LDR VR_118, [VR_16]
	LDR VR_119, [VR_15]
	LDR VR_120, [VR_14]
	LDR VR_121, [VR_13]
	LDR VR_122, [VR_12]
	LDR VR_123, [VR_11]
	LDR VR_124, [VR_10]
	LDR VR_125, [VR_9]
	LDR VR_126, [VR_8]
	LDR VR_127, [VR_7]
	LDR VR_128, [VR_6]
	LDR VR_129, [VR_5]
	LDR VR_130, [VR_4]
	LDR VR_131, [VR_3]
	LDR VR_132, [VR_2]
	LDR VR_133, [VR_1]
	LDR VR_134, [VR_0]
	MOV VR_135, #0
	STR VR_135, [sp, #-4]
	STR VR_134, [sp, #-8]
	STR VR_133, [sp, #-12]
	STR VR_132, [sp, #-16]
	STR VR_131, [sp, #-20]
	STR VR_130, [sp, #-24]
	STR VR_129, [sp, #-28]
	STR VR_128, [sp, #-32]
	STR VR_127, [sp, #-36]
	STR VR_126, [sp, #-40]
	STR VR_125, [sp, #-44]
	STR VR_124, [sp, #-48]
	STR VR_123, [sp, #-52]
	STR VR_122, [sp, #-56]
	STR VR_121, [sp, #-60]
	STR VR_120, [sp, #-64]
	STR VR_119, [sp, #-68]
	STR VR_118, [sp, #-72]
	STR VR_117, [sp, #-76]
	STR VR_116, [sp, #-80]
	STR VR_115, [sp, #-84]
	STR VR_114, [sp, #-88]
	STR VR_113, [sp, #-92]
	STR VR_112, [sp, #-96]
	STR VR_111, [sp, #-100]
	STR VR_110, [sp, #-104]
	STR VR_109, [sp, #-108]
	STR VR_108, [sp, #-112]
	MOV r3, VR_107
	MOV r2, VR_106
	MOV r1, VR_105
	MOV r0, VR_95
	SUB sp, sp, #112
	BL param32_rec
	ADD sp, sp, #112
	MOV VR_136, r0
	MOV r0, VR_136
	ADD sp, sp, #128
	POP {pc}
.BLOCK_16:
	B .BLOCK_12


	.global param32_arr
param32_arr:
.BLOCK_17:
	SUB sp, sp, #132
	MOV VR_92, #240
	LDR VR_91, [sp, VR_92]
	MOV VR_90, #236
	LDR VR_89, [sp, VR_90]
	MOV VR_88, #232
	LDR VR_87, [sp, VR_88]
	MOV VR_86, #228
	LDR VR_85, [sp, VR_86]
	MOV VR_84, #224
	LDR VR_83, [sp, VR_84]
	MOV VR_82, #220
	LDR VR_81, [sp, VR_82]
	MOV VR_80, #216
	LDR VR_79, [sp, VR_80]
	MOV VR_78, #212
	LDR VR_77, [sp, VR_78]
	MOV VR_76, #208
	LDR VR_75, [sp, VR_76]
	MOV VR_74, #204
	LDR VR_73, [sp, VR_74]
	MOV VR_72, #200
	LDR VR_71, [sp, VR_72]
	MOV VR_70, #196
	LDR VR_69, [sp, VR_70]
	MOV VR_68, #192
	LDR VR_67, [sp, VR_68]
	MOV VR_66, #188
	LDR VR_65, [sp, VR_66]
	MOV VR_64, #184
	LDR VR_63, [sp, VR_64]
	MOV VR_62, #180
	LDR VR_61, [sp, VR_62]
	MOV VR_60, #176
	LDR VR_59, [sp, VR_60]
	MOV VR_58, #172
	LDR VR_57, [sp, VR_58]
	MOV VR_56, #168
	LDR VR_55, [sp, VR_56]
	MOV VR_54, #164
	LDR VR_53, [sp, VR_54]
	MOV VR_52, #160
	LDR VR_51, [sp, VR_52]
	MOV VR_50, #156
	LDR VR_49, [sp, VR_50]
	MOV VR_48, #152
	LDR VR_47, [sp, VR_48]
	MOV VR_46, #148
	LDR VR_45, [sp, VR_46]
	MOV VR_44, #144
	LDR VR_43, [sp, VR_44]
	MOV VR_42, #140
	LDR VR_41, [sp, VR_42]
	MOV VR_40, #136
	LDR VR_39, [sp, VR_40]
	MOV VR_38, #132
	LDR VR_37, [sp, VR_38]
	MOV VR_36, r3
	MOV VR_35, r2
	MOV VR_34, r1
	MOV VR_33, r0
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
	STR VR_33, [VR_32]
	STR VR_34, [VR_31]
	STR VR_35, [VR_30]
	STR VR_36, [VR_29]
	STR VR_37, [VR_28]
	STR VR_39, [VR_27]
	STR VR_41, [VR_26]
	STR VR_43, [VR_25]
	STR VR_45, [VR_24]
	STR VR_47, [VR_23]
	STR VR_49, [VR_22]
	STR VR_51, [VR_21]
	STR VR_53, [VR_20]
	STR VR_55, [VR_19]
	STR VR_57, [VR_18]
	STR VR_59, [VR_17]
	STR VR_61, [VR_16]
	STR VR_63, [VR_15]
	STR VR_65, [VR_14]
	STR VR_67, [VR_13]
	STR VR_69, [VR_12]
	STR VR_71, [VR_11]
	STR VR_73, [VR_10]
	STR VR_75, [VR_9]
	STR VR_77, [VR_8]
	STR VR_79, [VR_7]
	STR VR_81, [VR_6]
	STR VR_83, [VR_5]
	STR VR_85, [VR_4]
	STR VR_87, [VR_3]
	STR VR_89, [VR_2]
	STR VR_91, [VR_1]
	LDR VR_93, [VR_32]
	MOV VR_94, VR_93
	LDR VR_95, [VR_94]
	LDR VR_96, [VR_32]
	ADD VR_97, VR_96, #4
	LDR VR_98, [VR_97]
	ADD VR_99, VR_95, VR_98
	STR VR_99, [VR_0]
	LDR VR_100, [VR_0]
	LDR VR_101, [VR_31]
	MOV VR_102, VR_101
	LDR VR_103, [VR_102]
	ADD VR_104, VR_100, VR_103
	LDR VR_105, [VR_31]
	ADD VR_106, VR_105, #4
	LDR VR_107, [VR_106]
	ADD VR_108, VR_104, VR_107
	STR VR_108, [VR_0]
	LDR VR_109, [VR_0]
	LDR VR_110, [VR_30]
	MOV VR_111, VR_110
	LDR VR_112, [VR_111]
	ADD VR_113, VR_109, VR_112
	LDR VR_114, [VR_30]
	ADD VR_115, VR_114, #4
	LDR VR_116, [VR_115]
	ADD VR_117, VR_113, VR_116
	STR VR_117, [VR_0]
	LDR VR_118, [VR_0]
	LDR VR_119, [VR_29]
	MOV VR_120, VR_119
	LDR VR_121, [VR_120]
	ADD VR_122, VR_118, VR_121
	LDR VR_123, [VR_29]
	ADD VR_124, VR_123, #4
	LDR VR_125, [VR_124]
	ADD VR_126, VR_122, VR_125
	STR VR_126, [VR_0]
	LDR VR_127, [VR_0]
	LDR VR_128, [VR_28]
	MOV VR_129, VR_128
	LDR VR_130, [VR_129]
	ADD VR_131, VR_127, VR_130
	LDR VR_132, [VR_28]
	ADD VR_133, VR_132, #4
	LDR VR_134, [VR_133]
	ADD VR_135, VR_131, VR_134
	STR VR_135, [VR_0]
	LDR VR_136, [VR_0]
	LDR VR_137, [VR_27]
	MOV VR_138, VR_137
	LDR VR_139, [VR_138]
	ADD VR_140, VR_136, VR_139
	LDR VR_141, [VR_27]
	ADD VR_142, VR_141, #4
	LDR VR_143, [VR_142]
	ADD VR_144, VR_140, VR_143
	STR VR_144, [VR_0]
	LDR VR_145, [VR_0]
	LDR VR_146, [VR_26]
	MOV VR_147, VR_146
	LDR VR_148, [VR_147]
	ADD VR_149, VR_145, VR_148
	LDR VR_150, [VR_26]
	ADD VR_151, VR_150, #4
	LDR VR_152, [VR_151]
	ADD VR_153, VR_149, VR_152
	STR VR_153, [VR_0]
	LDR VR_154, [VR_0]
	LDR VR_155, [VR_25]
	MOV VR_156, VR_155
	LDR VR_157, [VR_156]
	ADD VR_158, VR_154, VR_157
	LDR VR_159, [VR_25]
	ADD VR_160, VR_159, #4
	LDR VR_161, [VR_160]
	ADD VR_162, VR_158, VR_161
	STR VR_162, [VR_0]
	LDR VR_163, [VR_0]
	LDR VR_164, [VR_24]
	MOV VR_165, VR_164
	LDR VR_166, [VR_165]
	ADD VR_167, VR_163, VR_166
	LDR VR_168, [VR_24]
	ADD VR_169, VR_168, #4
	LDR VR_170, [VR_169]
	ADD VR_171, VR_167, VR_170
	STR VR_171, [VR_0]
	LDR VR_172, [VR_0]
	LDR VR_173, [VR_23]
	MOV VR_174, VR_173
	LDR VR_175, [VR_174]
	ADD VR_176, VR_172, VR_175
	LDR VR_177, [VR_23]
	ADD VR_178, VR_177, #4
	LDR VR_179, [VR_178]
	ADD VR_180, VR_176, VR_179
	STR VR_180, [VR_0]
	LDR VR_181, [VR_0]
	LDR VR_182, [VR_22]
	MOV VR_183, VR_182
	LDR VR_184, [VR_183]
	ADD VR_185, VR_181, VR_184
	LDR VR_186, [VR_22]
	ADD VR_187, VR_186, #4
	LDR VR_188, [VR_187]
	ADD VR_189, VR_185, VR_188
	STR VR_189, [VR_0]
	LDR VR_190, [VR_0]
	LDR VR_191, [VR_21]
	MOV VR_192, VR_191
	LDR VR_193, [VR_192]
	ADD VR_194, VR_190, VR_193
	LDR VR_195, [VR_21]
	ADD VR_196, VR_195, #4
	LDR VR_197, [VR_196]
	ADD VR_198, VR_194, VR_197
	STR VR_198, [VR_0]
	LDR VR_199, [VR_0]
	LDR VR_200, [VR_20]
	MOV VR_201, VR_200
	LDR VR_202, [VR_201]
	ADD VR_203, VR_199, VR_202
	LDR VR_204, [VR_20]
	ADD VR_205, VR_204, #4
	LDR VR_206, [VR_205]
	ADD VR_207, VR_203, VR_206
	STR VR_207, [VR_0]
	LDR VR_208, [VR_0]
	LDR VR_209, [VR_19]
	MOV VR_210, VR_209
	LDR VR_211, [VR_210]
	ADD VR_212, VR_208, VR_211
	LDR VR_213, [VR_19]
	ADD VR_214, VR_213, #4
	LDR VR_215, [VR_214]
	ADD VR_216, VR_212, VR_215
	STR VR_216, [VR_0]
	LDR VR_217, [VR_0]
	LDR VR_218, [VR_18]
	MOV VR_219, VR_218
	LDR VR_220, [VR_219]
	ADD VR_221, VR_217, VR_220
	LDR VR_222, [VR_18]
	ADD VR_223, VR_222, #4
	LDR VR_224, [VR_223]
	ADD VR_225, VR_221, VR_224
	STR VR_225, [VR_0]
	LDR VR_226, [VR_0]
	LDR VR_227, [VR_17]
	MOV VR_228, VR_227
	LDR VR_229, [VR_228]
	ADD VR_230, VR_226, VR_229
	LDR VR_231, [VR_17]
	ADD VR_232, VR_231, #4
	LDR VR_233, [VR_232]
	ADD VR_234, VR_230, VR_233
	STR VR_234, [VR_0]
	LDR VR_235, [VR_0]
	LDR VR_236, [VR_16]
	MOV VR_237, VR_236
	LDR VR_238, [VR_237]
	ADD VR_239, VR_235, VR_238
	LDR VR_240, [VR_16]
	ADD VR_241, VR_240, #4
	LDR VR_242, [VR_241]
	ADD VR_243, VR_239, VR_242
	STR VR_243, [VR_0]
	LDR VR_244, [VR_0]
	LDR VR_245, [VR_15]
	MOV VR_246, VR_245
	LDR VR_247, [VR_246]
	ADD VR_248, VR_244, VR_247
	LDR VR_249, [VR_15]
	ADD VR_250, VR_249, #4
	LDR VR_251, [VR_250]
	ADD VR_252, VR_248, VR_251
	STR VR_252, [VR_0]
	LDR VR_253, [VR_0]
	LDR VR_254, [VR_14]
	MOV VR_255, VR_254
	LDR VR_256, [VR_255]
	ADD VR_257, VR_253, VR_256
	LDR VR_258, [VR_14]
	ADD VR_259, VR_258, #4
	LDR VR_260, [VR_259]
	ADD VR_261, VR_257, VR_260
	STR VR_261, [VR_0]
	LDR VR_262, [VR_0]
	LDR VR_263, [VR_13]
	MOV VR_264, VR_263
	LDR VR_265, [VR_264]
	ADD VR_266, VR_262, VR_265
	LDR VR_267, [VR_13]
	ADD VR_268, VR_267, #4
	LDR VR_269, [VR_268]
	ADD VR_270, VR_266, VR_269
	STR VR_270, [VR_0]
	LDR VR_271, [VR_0]
	LDR VR_272, [VR_12]
	MOV VR_273, VR_272
	LDR VR_274, [VR_273]
	ADD VR_275, VR_271, VR_274
	LDR VR_276, [VR_12]
	ADD VR_277, VR_276, #4
	LDR VR_278, [VR_277]
	ADD VR_279, VR_275, VR_278
	STR VR_279, [VR_0]
	LDR VR_280, [VR_0]
	LDR VR_281, [VR_11]
	MOV VR_282, VR_281
	LDR VR_283, [VR_282]
	ADD VR_284, VR_280, VR_283
	LDR VR_285, [VR_11]
	ADD VR_286, VR_285, #4
	LDR VR_287, [VR_286]
	ADD VR_288, VR_284, VR_287
	STR VR_288, [VR_0]
	LDR VR_289, [VR_0]
	LDR VR_290, [VR_10]
	MOV VR_291, VR_290
	LDR VR_292, [VR_291]
	ADD VR_293, VR_289, VR_292
	LDR VR_294, [VR_10]
	ADD VR_295, VR_294, #4
	LDR VR_296, [VR_295]
	ADD VR_297, VR_293, VR_296
	STR VR_297, [VR_0]
	LDR VR_298, [VR_0]
	LDR VR_299, [VR_9]
	MOV VR_300, VR_299
	LDR VR_301, [VR_300]
	ADD VR_302, VR_298, VR_301
	LDR VR_303, [VR_9]
	ADD VR_304, VR_303, #4
	LDR VR_305, [VR_304]
	ADD VR_306, VR_302, VR_305
	STR VR_306, [VR_0]
	LDR VR_307, [VR_0]
	LDR VR_308, [VR_8]
	MOV VR_309, VR_308
	LDR VR_310, [VR_309]
	ADD VR_311, VR_307, VR_310
	LDR VR_312, [VR_8]
	ADD VR_313, VR_312, #4
	LDR VR_314, [VR_313]
	ADD VR_315, VR_311, VR_314
	STR VR_315, [VR_0]
	LDR VR_316, [VR_0]
	LDR VR_317, [VR_7]
	MOV VR_318, VR_317
	LDR VR_319, [VR_318]
	ADD VR_320, VR_316, VR_319
	LDR VR_321, [VR_7]
	ADD VR_322, VR_321, #4
	LDR VR_323, [VR_322]
	ADD VR_324, VR_320, VR_323
	STR VR_324, [VR_0]
	LDR VR_325, [VR_0]
	LDR VR_326, [VR_6]
	MOV VR_327, VR_326
	LDR VR_328, [VR_327]
	ADD VR_329, VR_325, VR_328
	LDR VR_330, [VR_6]
	ADD VR_331, VR_330, #4
	LDR VR_332, [VR_331]
	ADD VR_333, VR_329, VR_332
	STR VR_333, [VR_0]
	LDR VR_334, [VR_0]
	LDR VR_335, [VR_5]
	MOV VR_336, VR_335
	LDR VR_337, [VR_336]
	ADD VR_338, VR_334, VR_337
	LDR VR_339, [VR_5]
	ADD VR_340, VR_339, #4
	LDR VR_341, [VR_340]
	ADD VR_342, VR_338, VR_341
	STR VR_342, [VR_0]
	LDR VR_343, [VR_0]
	LDR VR_344, [VR_4]
	MOV VR_345, VR_344
	LDR VR_346, [VR_345]
	ADD VR_347, VR_343, VR_346
	LDR VR_348, [VR_4]
	ADD VR_349, VR_348, #4
	LDR VR_350, [VR_349]
	ADD VR_351, VR_347, VR_350
	STR VR_351, [VR_0]
	LDR VR_352, [VR_0]
	LDR VR_353, [VR_3]
	MOV VR_354, VR_353
	LDR VR_355, [VR_354]
	ADD VR_356, VR_352, VR_355
	LDR VR_357, [VR_3]
	ADD VR_358, VR_357, #4
	LDR VR_359, [VR_358]
	ADD VR_360, VR_356, VR_359
	STR VR_360, [VR_0]
	LDR VR_361, [VR_0]
	LDR VR_362, [VR_2]
	MOV VR_363, VR_362
	LDR VR_364, [VR_363]
	ADD VR_365, VR_361, VR_364
	LDR VR_366, [VR_2]
	ADD VR_367, VR_366, #4
	LDR VR_368, [VR_367]
	ADD VR_369, VR_365, VR_368
	STR VR_369, [VR_0]
	LDR VR_370, [VR_0]
	LDR VR_371, [VR_1]
	MOV VR_372, VR_371
	LDR VR_373, [VR_372]
	ADD VR_374, VR_370, VR_373
	LDR VR_375, [VR_1]
	ADD VR_376, VR_375, #4
	LDR VR_377, [VR_376]
	ADD VR_378, VR_374, VR_377
	STR VR_378, [VR_0]
	LDR VR_379, [VR_0]
	MOV r0, VR_379
	ADD sp, sp, #132
	BX lr
.BLOCK_18:
	MOV r0, #0
	ADD sp, sp, #132
	BX lr


	.global param16
param16:
.BLOCK_19:
	SUB sp, sp, #128
	MOV VR_44, #172
	LDR VR_43, [sp, VR_44]
	MOV VR_42, #168
	LDR VR_41, [sp, VR_42]
	MOV VR_40, #164
	LDR VR_39, [sp, VR_40]
	MOV VR_38, #160
	LDR VR_37, [sp, VR_38]
	MOV VR_36, #156
	LDR VR_35, [sp, VR_36]
	MOV VR_34, #152
	LDR VR_33, [sp, VR_34]
	MOV VR_32, #148
	LDR VR_31, [sp, VR_32]
	MOV VR_30, #144
	LDR VR_29, [sp, VR_30]
	MOV VR_28, #140
	LDR VR_27, [sp, VR_28]
	MOV VR_26, #136
	LDR VR_25, [sp, VR_26]
	MOV VR_24, #132
	LDR VR_23, [sp, VR_24]
	MOV VR_22, #128
	LDR VR_21, [sp, VR_22]
	MOV VR_20, r3
	MOV VR_19, r2
	MOV VR_18, r1
	MOV VR_17, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #64
	ADD VR_2, sp, #68
	ADD VR_3, sp, #72
	ADD VR_4, sp, #76
	ADD VR_5, sp, #80
	ADD VR_6, sp, #84
	ADD VR_7, sp, #88
	ADD VR_8, sp, #92
	ADD VR_9, sp, #96
	ADD VR_10, sp, #100
	ADD VR_11, sp, #104
	ADD VR_12, sp, #108
	ADD VR_13, sp, #112
	ADD VR_14, sp, #116
	ADD VR_15, sp, #120
	ADD VR_16, sp, #124
	STR VR_17, [VR_16]
	STR VR_18, [VR_15]
	STR VR_19, [VR_14]
	STR VR_20, [VR_13]
	STR VR_21, [VR_12]
	STR VR_23, [VR_11]
	STR VR_25, [VR_10]
	STR VR_27, [VR_9]
	STR VR_29, [VR_8]
	STR VR_31, [VR_7]
	STR VR_33, [VR_6]
	STR VR_35, [VR_5]
	STR VR_37, [VR_4]
	STR VR_39, [VR_3]
	STR VR_41, [VR_2]
	STR VR_43, [VR_1]
	LDR VR_45, [VR_16]
	LDR VR_46, [VR_15]
	LDR VR_47, [VR_14]
	LDR VR_48, [VR_13]
	LDR VR_49, [VR_12]
	LDR VR_50, [VR_11]
	LDR VR_51, [VR_10]
	LDR VR_52, [VR_9]
	LDR VR_53, [VR_8]
	LDR VR_54, [VR_7]
	LDR VR_55, [VR_6]
	LDR VR_56, [VR_5]
	LDR VR_57, [VR_4]
	LDR VR_58, [VR_3]
	LDR VR_59, [VR_2]
	LDR VR_60, [VR_1]
	MOV VR_61, VR_0
	MOV r2, #64
	MOV r1, #0
	MOV r0, VR_61
	BL memset
	STR VR_45, [VR_61]
	ADD VR_62, VR_61, #4
	STR VR_46, [VR_62]
	ADD VR_63, VR_61, #8
	STR VR_47, [VR_63]
	ADD VR_64, VR_61, #12
	STR VR_48, [VR_64]
	ADD VR_65, VR_61, #16
	STR VR_49, [VR_65]
	ADD VR_66, VR_61, #20
	STR VR_50, [VR_66]
	ADD VR_67, VR_61, #24
	STR VR_51, [VR_67]
	ADD VR_68, VR_61, #28
	STR VR_52, [VR_68]
	ADD VR_69, VR_61, #32
	STR VR_53, [VR_69]
	ADD VR_70, VR_61, #36
	STR VR_54, [VR_70]
	ADD VR_71, VR_61, #40
	STR VR_55, [VR_71]
	ADD VR_72, VR_61, #44
	STR VR_56, [VR_72]
	ADD VR_73, VR_61, #48
	STR VR_57, [VR_73]
	ADD VR_74, VR_61, #52
	STR VR_58, [VR_74]
	ADD VR_75, VR_61, #56
	STR VR_59, [VR_75]
	ADD VR_76, VR_61, #60
	STR VR_60, [VR_76]
	MOV VR_77, VR_0
	MOV r1, #16
	MOV r0, VR_77
	BL sort
	MOV VR_78, VR_0
	LDR VR_79, [VR_78]
	ADD VR_80, VR_0, #4
	LDR VR_81, [VR_80]
	ADD VR_82, VR_0, #8
	LDR VR_83, [VR_82]
	ADD VR_84, VR_0, #12
	LDR VR_85, [VR_84]
	ADD VR_86, VR_0, #16
	LDR VR_87, [VR_86]
	ADD VR_88, VR_0, #20
	LDR VR_89, [VR_88]
	ADD VR_90, VR_0, #24
	LDR VR_91, [VR_90]
	ADD VR_92, VR_0, #28
	LDR VR_93, [VR_92]
	ADD VR_94, VR_0, #32
	LDR VR_95, [VR_94]
	ADD VR_96, VR_0, #36
	LDR VR_97, [VR_96]
	ADD VR_98, VR_0, #40
	LDR VR_99, [VR_98]
	ADD VR_100, VR_0, #44
	LDR VR_101, [VR_100]
	ADD VR_102, VR_0, #48
	LDR VR_103, [VR_102]
	ADD VR_104, VR_0, #52
	LDR VR_105, [VR_104]
	ADD VR_106, VR_0, #56
	LDR VR_107, [VR_106]
	ADD VR_108, VR_0, #60
	LDR VR_109, [VR_108]
	LDR VR_110, [VR_16]
	LDR VR_111, [VR_15]
	LDR VR_112, [VR_14]
	LDR VR_113, [VR_13]
	LDR VR_114, [VR_12]
	LDR VR_115, [VR_11]
	LDR VR_116, [VR_10]
	LDR VR_117, [VR_9]
	LDR VR_118, [VR_8]
	LDR VR_119, [VR_7]
	LDR VR_120, [VR_6]
	LDR VR_121, [VR_5]
	LDR VR_122, [VR_4]
	LDR VR_123, [VR_3]
	LDR VR_124, [VR_2]
	LDR VR_125, [VR_1]
	STR VR_125, [sp, #-4]
	STR VR_124, [sp, #-8]
	STR VR_123, [sp, #-12]
	STR VR_122, [sp, #-16]
	STR VR_121, [sp, #-20]
	STR VR_120, [sp, #-24]
	STR VR_119, [sp, #-28]
	STR VR_118, [sp, #-32]
	STR VR_117, [sp, #-36]
	STR VR_116, [sp, #-40]
	STR VR_115, [sp, #-44]
	STR VR_114, [sp, #-48]
	STR VR_113, [sp, #-52]
	STR VR_112, [sp, #-56]
	STR VR_111, [sp, #-60]
	STR VR_110, [sp, #-64]
	STR VR_109, [sp, #-68]
	STR VR_107, [sp, #-72]
	STR VR_105, [sp, #-76]
	STR VR_103, [sp, #-80]
	STR VR_101, [sp, #-84]
	STR VR_99, [sp, #-88]
	STR VR_97, [sp, #-92]
	STR VR_95, [sp, #-96]
	STR VR_93, [sp, #-100]
	STR VR_91, [sp, #-104]
	STR VR_89, [sp, #-108]
	STR VR_87, [sp, #-112]
	MOV r3, VR_85
	MOV r2, VR_83
	MOV r1, VR_81
	MOV r0, VR_79
	SUB sp, sp, #112
	BL param32_rec
	ADD sp, sp, #112
	MOV VR_126, r0
	MOV r0, VR_126
	ADD sp, sp, #128
	POP {pc}
.BLOCK_20:
	MOV r0, #0
	ADD sp, sp, #128
	POP {pc}


	.global main
main:
.BLOCK_21:
	SUB sp, sp, #260
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	BL getint
	MOV VR_2, r0
	BL getint
	MOV VR_3, r0
	BL getint
	MOV VR_4, r0
	BL getint
	MOV VR_5, r0
	BL getint
	MOV VR_6, r0
	BL getint
	MOV VR_7, r0
	BL getint
	MOV VR_8, r0
	BL getint
	MOV VR_9, r0
	BL getint
	MOV VR_10, r0
	BL getint
	MOV VR_11, r0
	BL getint
	MOV VR_12, r0
	BL getint
	MOV VR_13, r0
	BL getint
	MOV VR_14, r0
	BL getint
	MOV VR_15, r0
	BL getint
	MOV VR_16, r0
	BL getint
	MOV VR_17, r0
	STR VR_17, [sp, #-4]
	STR VR_16, [sp, #-8]
	STR VR_15, [sp, #-12]
	STR VR_14, [sp, #-16]
	STR VR_13, [sp, #-20]
	STR VR_12, [sp, #-24]
	STR VR_11, [sp, #-28]
	STR VR_10, [sp, #-32]
	STR VR_9, [sp, #-36]
	STR VR_8, [sp, #-40]
	STR VR_7, [sp, #-44]
	STR VR_6, [sp, #-48]
	MOV r3, VR_5
	MOV r2, VR_4
	MOV r1, VR_3
	MOV r0, VR_2
	SUB sp, sp, #48
	BL param16
	ADD sp, sp, #48
	MOV VR_18, r0
	MOV VR_19, VR_1
	MOV VR_20, VR_19
	MOV r2, #256
	MOV r1, #0
	MOV r0, VR_20
	BL memset
	STR VR_18, [VR_20]
	ADD VR_21, VR_20, #4
	MOVW VR_22, #8848
	STR VR_22, [VR_21]
	MOV VR_23, #1
	STR VR_23, [VR_0]
	B .BLOCK_22
.BLOCK_22:
	LDR VR_24, [VR_0]
	CMP VR_24, #32
	BLT .BLOCK_23
	BGE .BLOCK_24
.BLOCK_23:
	LDR VR_25, [VR_0]
	ADD VR_26, VR_1, VR_25, LSL #3
	MOV VR_27, VR_26
	LDR VR_28, [VR_0]
	SUB VR_29, VR_28, #1
	ADD VR_30, VR_1, VR_29, LSL #3
	ADD VR_31, VR_30, #4
	LDR VR_32, [VR_31]
	SUB VR_33, VR_32, #1
	STR VR_33, [VR_27]
	LDR VR_34, [VR_0]
	ADD VR_35, VR_1, VR_34, LSL #3
	ADD VR_36, VR_35, #4
	LDR VR_37, [VR_0]
	SUB VR_38, VR_37, #1
	ADD VR_39, VR_1, VR_38, LSL #3
	MOV VR_40, VR_39
	LDR VR_41, [VR_40]
	SUB VR_42, VR_41, #2
	STR VR_42, [VR_36]
	LDR VR_43, [VR_0]
	ADD VR_44, VR_43, #1
	STR VR_44, [VR_0]
	B .BLOCK_22
.BLOCK_24:
	MOV VR_45, VR_1
	MOV VR_46, VR_45
	ADD VR_47, VR_1, #8
	MOV VR_48, VR_47
	ADD VR_49, VR_1, #16
	MOV VR_50, VR_49
	ADD VR_51, VR_1, #24
	MOV VR_52, VR_51
	ADD VR_53, VR_1, #32
	MOV VR_54, VR_53
	ADD VR_55, VR_1, #40
	MOV VR_56, VR_55
	ADD VR_57, VR_1, #48
	MOV VR_58, VR_57
	ADD VR_59, VR_1, #56
	MOV VR_60, VR_59
	ADD VR_61, VR_1, #64
	MOV VR_62, VR_61
	ADD VR_63, VR_1, #72
	MOV VR_64, VR_63
	ADD VR_65, VR_1, #80
	MOV VR_66, VR_65
	ADD VR_67, VR_1, #88
	MOV VR_68, VR_67
	ADD VR_69, VR_1, #96
	MOV VR_70, VR_69
	ADD VR_71, VR_1, #104
	MOV VR_72, VR_71
	ADD VR_73, VR_1, #112
	MOV VR_74, VR_73
	ADD VR_75, VR_1, #120
	MOV VR_76, VR_75
	ADD VR_77, VR_1, #128
	MOV VR_78, VR_77
	ADD VR_79, VR_1, #136
	MOV VR_80, VR_79
	ADD VR_81, VR_1, #144
	MOV VR_82, VR_81
	ADD VR_83, VR_1, #152
	MOV VR_84, VR_83
	ADD VR_85, VR_1, #160
	MOV VR_86, VR_85
	ADD VR_87, VR_1, #168
	MOV VR_88, VR_87
	ADD VR_89, VR_1, #176
	MOV VR_90, VR_89
	ADD VR_91, VR_1, #184
	MOV VR_92, VR_91
	ADD VR_93, VR_1, #192
	MOV VR_94, VR_93
	ADD VR_95, VR_1, #200
	MOV VR_96, VR_95
	ADD VR_97, VR_1, #208
	MOV VR_98, VR_97
	ADD VR_99, VR_1, #216
	MOV VR_100, VR_99
	ADD VR_101, VR_1, #224
	MOV VR_102, VR_101
	ADD VR_103, VR_1, #232
	MOV VR_104, VR_103
	ADD VR_105, VR_1, #240
	MOV VR_106, VR_105
	ADD VR_107, VR_1, #248
	MOV VR_108, VR_107
	STR VR_108, [sp, #-4]
	STR VR_106, [sp, #-8]
	STR VR_104, [sp, #-12]
	STR VR_102, [sp, #-16]
	STR VR_100, [sp, #-20]
	STR VR_98, [sp, #-24]
	STR VR_96, [sp, #-28]
	STR VR_94, [sp, #-32]
	STR VR_92, [sp, #-36]
	STR VR_90, [sp, #-40]
	STR VR_88, [sp, #-44]
	STR VR_86, [sp, #-48]
	STR VR_84, [sp, #-52]
	STR VR_82, [sp, #-56]
	STR VR_80, [sp, #-60]
	STR VR_78, [sp, #-64]
	STR VR_76, [sp, #-68]
	STR VR_74, [sp, #-72]
	STR VR_72, [sp, #-76]
	STR VR_70, [sp, #-80]
	STR VR_68, [sp, #-84]
	STR VR_66, [sp, #-88]
	STR VR_64, [sp, #-92]
	STR VR_62, [sp, #-96]
	STR VR_60, [sp, #-100]
	STR VR_58, [sp, #-104]
	STR VR_56, [sp, #-108]
	STR VR_54, [sp, #-112]
	MOV r3, VR_52
	MOV r2, VR_50
	MOV r1, VR_48
	MOV r0, VR_46
	SUB sp, sp, #112
	BL param32_arr
	ADD sp, sp, #112
	MOV VR_109, r0
	MOV r0, VR_109
	BL putint
	MOV r0, #10
	BL putch
	MOV r0, #0
	ADD sp, sp, #260
	POP {pc}
.BLOCK_25:
	MOV r0, #0
	ADD sp, sp, #260
	POP {pc}


	.end