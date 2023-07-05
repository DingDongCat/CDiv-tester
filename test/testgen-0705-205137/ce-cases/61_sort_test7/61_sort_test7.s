	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global merge_sort
merge_sort:
.BLOCK_0:
	SUB sp, sp, #24
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
	B .BLOCK_1
.BLOCK_1:
	LDR VR_8, [VR_5]
	ADD VR_9, VR_8, #1
	LDR VR_10, [VR_4]
	CMP VR_9, VR_10
	BGE .BLOCK_3
	BLT .BLOCK_2
.BLOCK_2:
	LDR VR_11, [VR_5]
	LDR VR_12, [VR_4]
	ADD VR_13, VR_11, VR_12
	MOV VR_15, VR_13, ASR #0
	ADD VR_15, VR_13, VR_15, LSR #31
	MOV VR_14, VR_15, ASR #1
	STR VR_14, [VR_3]
	LDR VR_16, [VR_5]
	LDR VR_17, [VR_3]
	MOV r1, VR_17
	MOV r0, VR_16
	BL merge_sort
	LDR VR_18, [VR_3]
	LDR VR_19, [VR_4]
	MOV r1, VR_19
	MOV r0, VR_18
	BL merge_sort
	LDR VR_20, [VR_5]
	STR VR_20, [VR_2]
	LDR VR_21, [VR_3]
	STR VR_21, [VR_1]
	LDR VR_22, [VR_5]
	STR VR_22, [VR_0]
	B .BLOCK_5
.BLOCK_3:
	ADD sp, sp, #24
	POP {pc}
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	LDR VR_23, [VR_2]
	LDR VR_24, [VR_3]
	CMP VR_23, VR_24
	BLT .BLOCK_8
	BGE .BLOCK_7
.BLOCK_6:
	B .BLOCK_9
.BLOCK_7:
	B .BLOCK_13
.BLOCK_8:
	LDR VR_25, [VR_1]
	LDR VR_26, [VR_4]
	CMP VR_25, VR_26
	BLT .BLOCK_6
	BGE .BLOCK_7
.BLOCK_9:
	MOVW VR_27, :lower16:buf
	MOVT VR_27, :upper16:buf
	MOV VR_28, VR_27
	LDR VR_29, [VR_2]
	ADD VR_30, VR_28, VR_29, LSL #2
	LDR VR_31, [VR_30]
	MOVW VR_32, :lower16:buf
	MOVT VR_32, :upper16:buf
	MOV VR_33, VR_32
	LDR VR_34, [VR_1]
	ADD VR_35, VR_33, VR_34, LSL #2
	LDR VR_36, [VR_35]
	CMP VR_31, VR_36
	BLT .BLOCK_11
	BGE .BLOCK_12
.BLOCK_10:
	LDR VR_37, [VR_0]
	ADD VR_38, VR_37, #1
	STR VR_38, [VR_0]
	B .BLOCK_5
.BLOCK_11:
	MOVW VR_39, :lower16:buf
	MOVT VR_39, :upper16:buf
	ADD VR_40, VR_39, #400
	LDR VR_41, [VR_0]
	ADD VR_42, VR_40, VR_41, LSL #2
	MOVW VR_43, :lower16:buf
	MOVT VR_43, :upper16:buf
	MOV VR_44, VR_43
	LDR VR_45, [VR_2]
	ADD VR_46, VR_44, VR_45, LSL #2
	LDR VR_47, [VR_46]
	STR VR_47, [VR_42]
	LDR VR_48, [VR_2]
	ADD VR_49, VR_48, #1
	STR VR_49, [VR_2]
	B .BLOCK_10
.BLOCK_12:
	MOVW VR_50, :lower16:buf
	MOVT VR_50, :upper16:buf
	ADD VR_51, VR_50, #400
	LDR VR_52, [VR_0]
	ADD VR_53, VR_51, VR_52, LSL #2
	MOVW VR_54, :lower16:buf
	MOVT VR_54, :upper16:buf
	MOV VR_55, VR_54
	LDR VR_56, [VR_1]
	ADD VR_57, VR_55, VR_56, LSL #2
	LDR VR_58, [VR_57]
	STR VR_58, [VR_53]
	LDR VR_59, [VR_1]
	ADD VR_60, VR_59, #1
	STR VR_60, [VR_1]
	B .BLOCK_10
.BLOCK_13:
	LDR VR_61, [VR_2]
	LDR VR_62, [VR_3]
	CMP VR_61, VR_62
	BLT .BLOCK_14
	BGE .BLOCK_15
.BLOCK_14:
	MOVW VR_63, :lower16:buf
	MOVT VR_63, :upper16:buf
	ADD VR_64, VR_63, #400
	LDR VR_65, [VR_0]
	ADD VR_66, VR_64, VR_65, LSL #2
	MOVW VR_67, :lower16:buf
	MOVT VR_67, :upper16:buf
	MOV VR_68, VR_67
	LDR VR_69, [VR_2]
	ADD VR_70, VR_68, VR_69, LSL #2
	LDR VR_71, [VR_70]
	STR VR_71, [VR_66]
	LDR VR_72, [VR_2]
	ADD VR_73, VR_72, #1
	STR VR_73, [VR_2]
	LDR VR_74, [VR_0]
	ADD VR_75, VR_74, #1
	STR VR_75, [VR_0]
	B .BLOCK_13
.BLOCK_15:
	B .BLOCK_16
.BLOCK_16:
	LDR VR_76, [VR_1]
	LDR VR_77, [VR_4]
	CMP VR_76, VR_77
	BLT .BLOCK_17
	BGE .BLOCK_18
.BLOCK_17:
	MOVW VR_78, :lower16:buf
	MOVT VR_78, :upper16:buf
	ADD VR_79, VR_78, #400
	LDR VR_80, [VR_0]
	ADD VR_81, VR_79, VR_80, LSL #2
	MOVW VR_82, :lower16:buf
	MOVT VR_82, :upper16:buf
	MOV VR_83, VR_82
	LDR VR_84, [VR_1]
	ADD VR_85, VR_83, VR_84, LSL #2
	LDR VR_86, [VR_85]
	STR VR_86, [VR_81]
	LDR VR_87, [VR_1]
	ADD VR_88, VR_87, #1
	STR VR_88, [VR_1]
	LDR VR_89, [VR_0]
	ADD VR_90, VR_89, #1
	STR VR_90, [VR_0]
	B .BLOCK_16
.BLOCK_18:
	B .BLOCK_19
.BLOCK_19:
	LDR VR_91, [VR_5]
	LDR VR_92, [VR_4]
	CMP VR_91, VR_92
	BLT .BLOCK_20
	BGE .BLOCK_21
.BLOCK_20:
	MOVW VR_93, :lower16:buf
	MOVT VR_93, :upper16:buf
	MOV VR_94, VR_93
	LDR VR_95, [VR_5]
	ADD VR_96, VR_94, VR_95, LSL #2
	MOVW VR_97, :lower16:buf
	MOVT VR_97, :upper16:buf
	ADD VR_98, VR_97, #400
	LDR VR_99, [VR_5]
	ADD VR_100, VR_98, VR_99, LSL #2
	LDR VR_101, [VR_100]
	STR VR_101, [VR_96]
	LDR VR_102, [VR_5]
	ADD VR_103, VR_102, #1
	STR VR_103, [VR_5]
	B .BLOCK_19
.BLOCK_21:
	ADD sp, sp, #24
	POP {pc}


	.global main
main:
.BLOCK_22:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOVW VR_1, :lower16:buf
	MOVT VR_1, :upper16:buf
	MOV VR_2, VR_1
	MOV VR_3, VR_2
	MOV r0, VR_3
	BL getarray
	MOV VR_4, r0
	STR VR_4, [VR_0]
	LDR VR_5, [VR_0]
	MOV r1, VR_5
	MOV r0, #0
	BL merge_sort
	LDR VR_6, [VR_0]
	MOVW VR_7, :lower16:buf
	MOVT VR_7, :upper16:buf
	MOV VR_8, VR_7
	MOV VR_9, VR_8
	MOV r1, VR_9
	MOV r0, VR_6
	BL putarray
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_23:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.comm	buf, 800, 4


	.end
