	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global testParam8
testParam8:
.BLOCK_0:
	SUB sp, sp, #32
	MOV VR_19, #44
	LDR VR_18, [sp, VR_19]
	MOV VR_17, #40
	LDR VR_16, [sp, VR_17]
	MOV VR_15, #36
	LDR VR_14, [sp, VR_15]
	MOV VR_13, #32
	LDR VR_12, [sp, VR_13]
	MOV VR_11, r3
	MOV VR_10, r2
	MOV VR_9, r1
	MOV VR_8, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	ADD VR_5, sp, #20
	ADD VR_6, sp, #24
	ADD VR_7, sp, #28
	STR VR_8, [VR_7]
	STR VR_9, [VR_6]
	STR VR_10, [VR_5]
	STR VR_11, [VR_4]
	STR VR_12, [VR_3]
	STR VR_14, [VR_2]
	STR VR_16, [VR_1]
	STR VR_18, [VR_0]
	LDR VR_20, [VR_7]
	LDR VR_21, [VR_6]
	ADD VR_22, VR_20, VR_21
	LDR VR_23, [VR_5]
	ADD VR_24, VR_22, VR_23
	LDR VR_25, [VR_4]
	ADD VR_26, VR_24, VR_25
	LDR VR_27, [VR_3]
	ADD VR_28, VR_26, VR_27
	LDR VR_29, [VR_2]
	ADD VR_30, VR_28, VR_29
	LDR VR_31, [VR_1]
	ADD VR_32, VR_30, VR_31
	LDR VR_33, [VR_0]
	ADD VR_34, VR_32, VR_33
	MOV r0, VR_34
	ADD sp, sp, #32
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #32
	BX lr


	.global testParam16
testParam16:
.BLOCK_2:
	SUB sp, sp, #64
	MOV VR_43, #108
	LDR VR_42, [sp, VR_43]
	MOV VR_41, #104
	LDR VR_40, [sp, VR_41]
	MOV VR_39, #100
	LDR VR_38, [sp, VR_39]
	MOV VR_37, #96
	LDR VR_36, [sp, VR_37]
	MOV VR_35, #92
	LDR VR_34, [sp, VR_35]
	MOV VR_33, #88
	LDR VR_32, [sp, VR_33]
	MOV VR_31, #84
	LDR VR_30, [sp, VR_31]
	MOV VR_29, #80
	LDR VR_28, [sp, VR_29]
	MOV VR_27, #76
	LDR VR_26, [sp, VR_27]
	MOV VR_25, #72
	LDR VR_24, [sp, VR_25]
	MOV VR_23, #68
	LDR VR_22, [sp, VR_23]
	MOV VR_21, #64
	LDR VR_20, [sp, VR_21]
	MOV VR_19, r3
	MOV VR_18, r2
	MOV VR_17, r1
	MOV VR_16, r0
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
	STR VR_16, [VR_15]
	STR VR_17, [VR_14]
	STR VR_18, [VR_13]
	STR VR_19, [VR_12]
	STR VR_20, [VR_11]
	STR VR_22, [VR_10]
	STR VR_24, [VR_9]
	STR VR_26, [VR_8]
	STR VR_28, [VR_7]
	STR VR_30, [VR_6]
	STR VR_32, [VR_5]
	STR VR_34, [VR_4]
	STR VR_36, [VR_3]
	STR VR_38, [VR_2]
	STR VR_40, [VR_1]
	STR VR_42, [VR_0]
	LDR VR_44, [VR_15]
	LDR VR_45, [VR_14]
	ADD VR_46, VR_44, VR_45
	LDR VR_47, [VR_13]
	ADD VR_48, VR_46, VR_47
	LDR VR_49, [VR_12]
	SUB VR_50, VR_48, VR_49
	LDR VR_51, [VR_11]
	SUB VR_52, VR_50, VR_51
	LDR VR_53, [VR_10]
	SUB VR_54, VR_52, VR_53
	LDR VR_55, [VR_9]
	SUB VR_56, VR_54, VR_55
	LDR VR_57, [VR_8]
	SUB VR_58, VR_56, VR_57
	LDR VR_59, [VR_7]
	ADD VR_60, VR_58, VR_59
	LDR VR_61, [VR_6]
	ADD VR_62, VR_60, VR_61
	LDR VR_63, [VR_5]
	ADD VR_64, VR_62, VR_63
	LDR VR_65, [VR_4]
	ADD VR_66, VR_64, VR_65
	LDR VR_67, [VR_3]
	ADD VR_68, VR_66, VR_67
	LDR VR_69, [VR_2]
	ADD VR_70, VR_68, VR_69
	LDR VR_71, [VR_1]
	ADD VR_72, VR_70, VR_71
	LDR VR_73, [VR_0]
	ADD VR_74, VR_72, VR_73
	MOV r0, VR_74
	ADD sp, sp, #64
	BX lr
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #64
	BX lr


	.global testParam32
testParam32:
.BLOCK_4:
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
	LDR VR_92, [VR_31]
	LDR VR_93, [VR_30]
	ADD VR_94, VR_92, VR_93
	LDR VR_95, [VR_29]
	ADD VR_96, VR_94, VR_95
	LDR VR_97, [VR_28]
	ADD VR_98, VR_96, VR_97
	LDR VR_99, [VR_27]
	ADD VR_100, VR_98, VR_99
	LDR VR_101, [VR_26]
	ADD VR_102, VR_100, VR_101
	LDR VR_103, [VR_25]
	ADD VR_104, VR_102, VR_103
	LDR VR_105, [VR_24]
	ADD VR_106, VR_104, VR_105
	LDR VR_107, [VR_23]
	ADD VR_108, VR_106, VR_107
	LDR VR_109, [VR_22]
	ADD VR_110, VR_108, VR_109
	LDR VR_111, [VR_21]
	ADD VR_112, VR_110, VR_111
	LDR VR_113, [VR_20]
	ADD VR_114, VR_112, VR_113
	LDR VR_115, [VR_19]
	ADD VR_116, VR_114, VR_115
	LDR VR_117, [VR_18]
	ADD VR_118, VR_116, VR_117
	LDR VR_119, [VR_17]
	ADD VR_120, VR_118, VR_119
	LDR VR_121, [VR_16]
	ADD VR_122, VR_120, VR_121
	LDR VR_123, [VR_15]
	ADD VR_124, VR_122, VR_123
	LDR VR_125, [VR_14]
	ADD VR_126, VR_124, VR_125
	LDR VR_127, [VR_13]
	SUB VR_128, VR_126, VR_127
	LDR VR_129, [VR_12]
	SUB VR_130, VR_128, VR_129
	LDR VR_131, [VR_11]
	SUB VR_132, VR_130, VR_131
	LDR VR_133, [VR_10]
	SUB VR_134, VR_132, VR_133
	LDR VR_135, [VR_9]
	SUB VR_136, VR_134, VR_135
	LDR VR_137, [VR_8]
	ADD VR_138, VR_136, VR_137
	LDR VR_139, [VR_7]
	ADD VR_140, VR_138, VR_139
	LDR VR_141, [VR_6]
	ADD VR_142, VR_140, VR_141
	LDR VR_143, [VR_5]
	ADD VR_144, VR_142, VR_143
	LDR VR_145, [VR_4]
	ADD VR_146, VR_144, VR_145
	LDR VR_147, [VR_3]
	ADD VR_148, VR_146, VR_147
	LDR VR_149, [VR_2]
	ADD VR_150, VR_148, VR_149
	LDR VR_151, [VR_1]
	ADD VR_152, VR_150, VR_151
	LDR VR_153, [VR_0]
	ADD VR_154, VR_152, VR_153
	MOV r0, VR_154
	ADD sp, sp, #128
	BX lr
.BLOCK_5:
	MOV r0, #0
	ADD sp, sp, #128
	BX lr


	.global main
main:
.BLOCK_6:
	SUB sp, sp, #0
	MOVW VR_0, :lower16:a0
	MOVT VR_0, :upper16:a0
	MOV VR_1, #0
	STR VR_1, [VR_0]
	MOVW VR_2, :lower16:a1
	MOVT VR_2, :upper16:a1
	MOV VR_3, #1
	STR VR_3, [VR_2]
	MOVW VR_4, :lower16:a2
	MOVT VR_4, :upper16:a2
	MOV VR_5, #2
	STR VR_5, [VR_4]
	MOVW VR_6, :lower16:a3
	MOVT VR_6, :upper16:a3
	MOV VR_7, #3
	STR VR_7, [VR_6]
	MOVW VR_8, :lower16:a4
	MOVT VR_8, :upper16:a4
	MOV VR_9, #4
	STR VR_9, [VR_8]
	MOVW VR_10, :lower16:a5
	MOVT VR_10, :upper16:a5
	MOV VR_11, #5
	STR VR_11, [VR_10]
	MOVW VR_12, :lower16:a6
	MOVT VR_12, :upper16:a6
	MOV VR_13, #6
	STR VR_13, [VR_12]
	MOVW VR_14, :lower16:a7
	MOVT VR_14, :upper16:a7
	MOV VR_15, #7
	STR VR_15, [VR_14]
	MOVW VR_16, :lower16:a8
	MOVT VR_16, :upper16:a8
	MOV VR_17, #8
	STR VR_17, [VR_16]
	MOVW VR_18, :lower16:a9
	MOVT VR_18, :upper16:a9
	MOV VR_19, #9
	STR VR_19, [VR_18]
	MOVW VR_20, :lower16:a10
	MOVT VR_20, :upper16:a10
	MOV VR_21, #0
	STR VR_21, [VR_20]
	MOVW VR_22, :lower16:a11
	MOVT VR_22, :upper16:a11
	MOV VR_23, #1
	STR VR_23, [VR_22]
	MOVW VR_24, :lower16:a12
	MOVT VR_24, :upper16:a12
	MOV VR_25, #2
	STR VR_25, [VR_24]
	MOVW VR_26, :lower16:a13
	MOVT VR_26, :upper16:a13
	MOV VR_27, #3
	STR VR_27, [VR_26]
	MOVW VR_28, :lower16:a14
	MOVT VR_28, :upper16:a14
	MOV VR_29, #4
	STR VR_29, [VR_28]
	MOVW VR_30, :lower16:a15
	MOVT VR_30, :upper16:a15
	MOV VR_31, #5
	STR VR_31, [VR_30]
	MOVW VR_32, :lower16:a16
	MOVT VR_32, :upper16:a16
	MOV VR_33, #6
	STR VR_33, [VR_32]
	MOVW VR_34, :lower16:a17
	MOVT VR_34, :upper16:a17
	MOV VR_35, #7
	STR VR_35, [VR_34]
	MOVW VR_36, :lower16:a18
	MOVT VR_36, :upper16:a18
	MOV VR_37, #8
	STR VR_37, [VR_36]
	MOVW VR_38, :lower16:a19
	MOVT VR_38, :upper16:a19
	MOV VR_39, #9
	STR VR_39, [VR_38]
	MOVW VR_40, :lower16:a20
	MOVT VR_40, :upper16:a20
	MOV VR_41, #0
	STR VR_41, [VR_40]
	MOVW VR_42, :lower16:a21
	MOVT VR_42, :upper16:a21
	MOV VR_43, #1
	STR VR_43, [VR_42]
	MOVW VR_44, :lower16:a22
	MOVT VR_44, :upper16:a22
	MOV VR_45, #2
	STR VR_45, [VR_44]
	MOVW VR_46, :lower16:a23
	MOVT VR_46, :upper16:a23
	MOV VR_47, #3
	STR VR_47, [VR_46]
	MOVW VR_48, :lower16:a24
	MOVT VR_48, :upper16:a24
	MOV VR_49, #4
	STR VR_49, [VR_48]
	MOVW VR_50, :lower16:a25
	MOVT VR_50, :upper16:a25
	MOV VR_51, #5
	STR VR_51, [VR_50]
	MOVW VR_52, :lower16:a26
	MOVT VR_52, :upper16:a26
	MOV VR_53, #6
	STR VR_53, [VR_52]
	MOVW VR_54, :lower16:a27
	MOVT VR_54, :upper16:a27
	MOV VR_55, #7
	STR VR_55, [VR_54]
	MOVW VR_56, :lower16:a28
	MOVT VR_56, :upper16:a28
	MOV VR_57, #8
	STR VR_57, [VR_56]
	MOVW VR_58, :lower16:a29
	MOVT VR_58, :upper16:a29
	MOV VR_59, #9
	STR VR_59, [VR_58]
	MOVW VR_60, :lower16:a30
	MOVT VR_60, :upper16:a30
	MOV VR_61, #0
	STR VR_61, [VR_60]
	MOVW VR_62, :lower16:a31
	MOVT VR_62, :upper16:a31
	MOV VR_63, #1
	STR VR_63, [VR_62]
	MOVW VR_64, :lower16:a32
	MOVT VR_64, :upper16:a32
	MOV VR_65, #4
	STR VR_65, [VR_64]
	MOVW VR_66, :lower16:a33
	MOVT VR_66, :upper16:a33
	MOV VR_67, #5
	STR VR_67, [VR_66]
	MOVW VR_68, :lower16:a34
	MOVT VR_68, :upper16:a34
	MOV VR_69, #6
	STR VR_69, [VR_68]
	MOVW VR_70, :lower16:a35
	MOVT VR_70, :upper16:a35
	MOV VR_71, #7
	STR VR_71, [VR_70]
	MOVW VR_72, :lower16:a36
	MOVT VR_72, :upper16:a36
	MOV VR_73, #8
	STR VR_73, [VR_72]
	MOVW VR_74, :lower16:a37
	MOVT VR_74, :upper16:a37
	MOV VR_75, #9
	STR VR_75, [VR_74]
	MOVW VR_76, :lower16:a38
	MOVT VR_76, :upper16:a38
	MOV VR_77, #0
	STR VR_77, [VR_76]
	MOVW VR_78, :lower16:a39
	MOVT VR_78, :upper16:a39
	MOV VR_79, #1
	STR VR_79, [VR_78]
	MOVW VR_81, :lower16:a0
	MOVT VR_81, :upper16:a0
	LDR VR_80, [VR_81]
	MOVW VR_83, :lower16:a1
	MOVT VR_83, :upper16:a1
	LDR VR_82, [VR_83]
	MOVW VR_85, :lower16:a2
	MOVT VR_85, :upper16:a2
	LDR VR_84, [VR_85]
	MOVW VR_87, :lower16:a3
	MOVT VR_87, :upper16:a3
	LDR VR_86, [VR_87]
	MOVW VR_89, :lower16:a4
	MOVT VR_89, :upper16:a4
	LDR VR_88, [VR_89]
	MOVW VR_91, :lower16:a5
	MOVT VR_91, :upper16:a5
	LDR VR_90, [VR_91]
	MOVW VR_93, :lower16:a6
	MOVT VR_93, :upper16:a6
	LDR VR_92, [VR_93]
	MOVW VR_95, :lower16:a7
	MOVT VR_95, :upper16:a7
	LDR VR_94, [VR_95]
	STR VR_94, [sp, #-4]
	STR VR_92, [sp, #-8]
	STR VR_90, [sp, #-12]
	STR VR_88, [sp, #-16]
	MOV r3, VR_86
	MOV r2, VR_84
	MOV r1, VR_82
	MOV r0, VR_80
	SUB sp, sp, #16
	BL testParam8
	ADD sp, sp, #16
	MOV VR_96, r0
	MOVW VR_97, :lower16:a0
	MOVT VR_97, :upper16:a0
	STR VR_96, [VR_97]
	MOVW VR_99, :lower16:a0
	MOVT VR_99, :upper16:a0
	LDR VR_98, [VR_99]
	MOV r0, VR_98
	BL putint
	MOVW VR_101, :lower16:a32
	MOVT VR_101, :upper16:a32
	LDR VR_100, [VR_101]
	MOVW VR_103, :lower16:a33
	MOVT VR_103, :upper16:a33
	LDR VR_102, [VR_103]
	MOVW VR_105, :lower16:a34
	MOVT VR_105, :upper16:a34
	LDR VR_104, [VR_105]
	MOVW VR_107, :lower16:a35
	MOVT VR_107, :upper16:a35
	LDR VR_106, [VR_107]
	MOVW VR_109, :lower16:a36
	MOVT VR_109, :upper16:a36
	LDR VR_108, [VR_109]
	MOVW VR_111, :lower16:a37
	MOVT VR_111, :upper16:a37
	LDR VR_110, [VR_111]
	MOVW VR_113, :lower16:a38
	MOVT VR_113, :upper16:a38
	LDR VR_112, [VR_113]
	MOVW VR_115, :lower16:a39
	MOVT VR_115, :upper16:a39
	LDR VR_114, [VR_115]
	MOVW VR_117, :lower16:a8
	MOVT VR_117, :upper16:a8
	LDR VR_116, [VR_117]
	MOVW VR_119, :lower16:a9
	MOVT VR_119, :upper16:a9
	LDR VR_118, [VR_119]
	MOVW VR_121, :lower16:a10
	MOVT VR_121, :upper16:a10
	LDR VR_120, [VR_121]
	MOVW VR_123, :lower16:a11
	MOVT VR_123, :upper16:a11
	LDR VR_122, [VR_123]
	MOVW VR_125, :lower16:a12
	MOVT VR_125, :upper16:a12
	LDR VR_124, [VR_125]
	MOVW VR_127, :lower16:a13
	MOVT VR_127, :upper16:a13
	LDR VR_126, [VR_127]
	MOVW VR_129, :lower16:a14
	MOVT VR_129, :upper16:a14
	LDR VR_128, [VR_129]
	MOVW VR_131, :lower16:a15
	MOVT VR_131, :upper16:a15
	LDR VR_130, [VR_131]
	STR VR_130, [sp, #-4]
	STR VR_128, [sp, #-8]
	STR VR_126, [sp, #-12]
	STR VR_124, [sp, #-16]
	STR VR_122, [sp, #-20]
	STR VR_120, [sp, #-24]
	STR VR_118, [sp, #-28]
	STR VR_116, [sp, #-32]
	STR VR_114, [sp, #-36]
	STR VR_112, [sp, #-40]
	STR VR_110, [sp, #-44]
	STR VR_108, [sp, #-48]
	MOV r3, VR_106
	MOV r2, VR_104
	MOV r1, VR_102
	MOV r0, VR_100
	SUB sp, sp, #48
	BL testParam16
	ADD sp, sp, #48
	MOV VR_132, r0
	MOVW VR_133, :lower16:a0
	MOVT VR_133, :upper16:a0
	STR VR_132, [VR_133]
	MOVW VR_135, :lower16:a0
	MOVT VR_135, :upper16:a0
	LDR VR_134, [VR_135]
	MOV r0, VR_134
	BL putint
	MOVW VR_137, :lower16:a0
	MOVT VR_137, :upper16:a0
	LDR VR_136, [VR_137]
	MOVW VR_139, :lower16:a1
	MOVT VR_139, :upper16:a1
	LDR VR_138, [VR_139]
	MOVW VR_141, :lower16:a2
	MOVT VR_141, :upper16:a2
	LDR VR_140, [VR_141]
	MOVW VR_143, :lower16:a3
	MOVT VR_143, :upper16:a3
	LDR VR_142, [VR_143]
	MOVW VR_145, :lower16:a4
	MOVT VR_145, :upper16:a4
	LDR VR_144, [VR_145]
	MOVW VR_147, :lower16:a5
	MOVT VR_147, :upper16:a5
	LDR VR_146, [VR_147]
	MOVW VR_149, :lower16:a6
	MOVT VR_149, :upper16:a6
	LDR VR_148, [VR_149]
	MOVW VR_151, :lower16:a7
	MOVT VR_151, :upper16:a7
	LDR VR_150, [VR_151]
	MOVW VR_153, :lower16:a8
	MOVT VR_153, :upper16:a8
	LDR VR_152, [VR_153]
	MOVW VR_155, :lower16:a9
	MOVT VR_155, :upper16:a9
	LDR VR_154, [VR_155]
	MOVW VR_157, :lower16:a10
	MOVT VR_157, :upper16:a10
	LDR VR_156, [VR_157]
	MOVW VR_159, :lower16:a11
	MOVT VR_159, :upper16:a11
	LDR VR_158, [VR_159]
	MOVW VR_161, :lower16:a12
	MOVT VR_161, :upper16:a12
	LDR VR_160, [VR_161]
	MOVW VR_163, :lower16:a13
	MOVT VR_163, :upper16:a13
	LDR VR_162, [VR_163]
	MOVW VR_165, :lower16:a14
	MOVT VR_165, :upper16:a14
	LDR VR_164, [VR_165]
	MOVW VR_167, :lower16:a15
	MOVT VR_167, :upper16:a15
	LDR VR_166, [VR_167]
	MOVW VR_169, :lower16:a16
	MOVT VR_169, :upper16:a16
	LDR VR_168, [VR_169]
	MOVW VR_171, :lower16:a17
	MOVT VR_171, :upper16:a17
	LDR VR_170, [VR_171]
	MOVW VR_173, :lower16:a18
	MOVT VR_173, :upper16:a18
	LDR VR_172, [VR_173]
	MOVW VR_175, :lower16:a19
	MOVT VR_175, :upper16:a19
	LDR VR_174, [VR_175]
	MOVW VR_177, :lower16:a20
	MOVT VR_177, :upper16:a20
	LDR VR_176, [VR_177]
	MOVW VR_179, :lower16:a21
	MOVT VR_179, :upper16:a21
	LDR VR_178, [VR_179]
	MOVW VR_181, :lower16:a22
	MOVT VR_181, :upper16:a22
	LDR VR_180, [VR_181]
	MOVW VR_183, :lower16:a23
	MOVT VR_183, :upper16:a23
	LDR VR_182, [VR_183]
	MOVW VR_185, :lower16:a24
	MOVT VR_185, :upper16:a24
	LDR VR_184, [VR_185]
	MOVW VR_187, :lower16:a25
	MOVT VR_187, :upper16:a25
	LDR VR_186, [VR_187]
	MOVW VR_189, :lower16:a26
	MOVT VR_189, :upper16:a26
	LDR VR_188, [VR_189]
	MOVW VR_191, :lower16:a27
	MOVT VR_191, :upper16:a27
	LDR VR_190, [VR_191]
	MOVW VR_193, :lower16:a28
	MOVT VR_193, :upper16:a28
	LDR VR_192, [VR_193]
	MOVW VR_195, :lower16:a29
	MOVT VR_195, :upper16:a29
	LDR VR_194, [VR_195]
	MOVW VR_197, :lower16:a30
	MOVT VR_197, :upper16:a30
	LDR VR_196, [VR_197]
	MOVW VR_199, :lower16:a31
	MOVT VR_199, :upper16:a31
	LDR VR_198, [VR_199]
	STR VR_198, [sp, #-4]
	STR VR_196, [sp, #-8]
	STR VR_194, [sp, #-12]
	STR VR_192, [sp, #-16]
	STR VR_190, [sp, #-20]
	STR VR_188, [sp, #-24]
	STR VR_186, [sp, #-28]
	STR VR_184, [sp, #-32]
	STR VR_182, [sp, #-36]
	STR VR_180, [sp, #-40]
	STR VR_178, [sp, #-44]
	STR VR_176, [sp, #-48]
	STR VR_174, [sp, #-52]
	STR VR_172, [sp, #-56]
	STR VR_170, [sp, #-60]
	STR VR_168, [sp, #-64]
	STR VR_166, [sp, #-68]
	STR VR_164, [sp, #-72]
	STR VR_162, [sp, #-76]
	STR VR_160, [sp, #-80]
	STR VR_158, [sp, #-84]
	STR VR_156, [sp, #-88]
	STR VR_154, [sp, #-92]
	STR VR_152, [sp, #-96]
	STR VR_150, [sp, #-100]
	STR VR_148, [sp, #-104]
	STR VR_146, [sp, #-108]
	STR VR_144, [sp, #-112]
	MOV r3, VR_142
	MOV r2, VR_140
	MOV r1, VR_138
	MOV r0, VR_136
	SUB sp, sp, #112
	BL testParam32
	ADD sp, sp, #112
	MOV VR_200, r0
	MOVW VR_201, :lower16:a0
	MOVT VR_201, :upper16:a0
	STR VR_200, [VR_201]
	MOVW VR_203, :lower16:a0
	MOVT VR_203, :upper16:a0
	LDR VR_202, [VR_203]
	MOV r0, VR_202
	BL putint
	MOV r0, #0
	POP {pc}
.BLOCK_7:
	MOV r0, #0
	POP {pc}


	.data
	.align 4
	.global a0
a0:
	.zero	4
	.global a1
a1:
	.zero	4
	.global a2
a2:
	.zero	4
	.global a3
a3:
	.zero	4
	.global a4
a4:
	.zero	4
	.global a5
a5:
	.zero	4
	.global a6
a6:
	.zero	4
	.global a7
a7:
	.zero	4
	.global a8
a8:
	.zero	4
	.global a9
a9:
	.zero	4
	.global a10
a10:
	.zero	4
	.global a11
a11:
	.zero	4
	.global a12
a12:
	.zero	4
	.global a13
a13:
	.zero	4
	.global a14
a14:
	.zero	4
	.global a15
a15:
	.zero	4
	.global a16
a16:
	.zero	4
	.global a17
a17:
	.zero	4
	.global a18
a18:
	.zero	4
	.global a19
a19:
	.zero	4
	.global a20
a20:
	.zero	4
	.global a21
a21:
	.zero	4
	.global a22
a22:
	.zero	4
	.global a23
a23:
	.zero	4
	.global a24
a24:
	.zero	4
	.global a25
a25:
	.zero	4
	.global a26
a26:
	.zero	4
	.global a27
a27:
	.zero	4
	.global a28
a28:
	.zero	4
	.global a29
a29:
	.zero	4
	.global a30
a30:
	.zero	4
	.global a31
a31:
	.zero	4
	.global a32
a32:
	.zero	4
	.global a33
a33:
	.zero	4
	.global a34
a34:
	.zero	4
	.global a35
a35:
	.zero	4
	.global a36
a36:
	.zero	4
	.global a37
a37:
	.zero	4
	.global a38
a38:
	.zero	4
	.global a39
a39:
	.zero	4


	.end
