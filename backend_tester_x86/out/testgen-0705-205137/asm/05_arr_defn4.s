	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #128
	ADD VR_0, sp, #0
	ADD VR_1, sp, #32
	ADD VR_2, sp, #64
	ADD VR_3, sp, #96
	MOV VR_4, VR_3
	MOV VR_5, VR_4
	MOV r2, #32
	MOV r1, #0
	MOV r0, VR_5
	BL memset
	MOV VR_6, VR_2
	MOV VR_7, VR_6
	MOV r2, #32
	MOV r1, #0
	MOV r0, VR_7
	BL memset
	MOV VR_8, #1
	STR VR_8, [VR_7]
	ADD VR_9, VR_7, #4
	MOV VR_10, #2
	STR VR_10, [VR_9]
	ADD VR_11, VR_7, #8
	MOV VR_12, #3
	STR VR_12, [VR_11]
	ADD VR_13, VR_7, #12
	MOV VR_14, #4
	STR VR_14, [VR_13]
	ADD VR_15, VR_7, #16
	MOV VR_16, #5
	STR VR_16, [VR_15]
	ADD VR_17, VR_7, #20
	MOV VR_18, #6
	STR VR_18, [VR_17]
	ADD VR_19, VR_7, #24
	MOV VR_20, #7
	STR VR_20, [VR_19]
	ADD VR_21, VR_7, #28
	MOV VR_22, #8
	STR VR_22, [VR_21]
	MOVW VR_23, :lower16:glb_0
	MOVT VR_23, :upper16:glb_0
	ADD VR_24, VR_23, #24
	MOV VR_25, VR_24
	LDR VR_26, [VR_25]
	MOV VR_27, VR_1
	MOV VR_28, VR_27
	MOV r2, #32
	MOV r1, #0
	MOV r0, VR_28
	BL memset
	MOV VR_29, #1
	STR VR_29, [VR_28]
	ADD VR_30, VR_28, #4
	MOV VR_31, #2
	STR VR_31, [VR_30]
	ADD VR_32, VR_28, #8
	MOV VR_33, #3
	STR VR_33, [VR_32]
	ADD VR_34, VR_28, #16
	MOV VR_35, #5
	STR VR_35, [VR_34]
	ADD VR_36, VR_28, #24
	STR VR_26, [VR_36]
	ADD VR_37, VR_28, #28
	MOV VR_38, #8
	STR VR_38, [VR_37]
	ADD VR_39, VR_1, #16
	ADD VR_40, VR_39, #4
	LDR VR_41, [VR_40]
	ADD VR_42, VR_2, #16
	ADD VR_43, VR_42, #4
	LDR VR_44, [VR_43]
	MOV VR_45, VR_0
	MOV VR_46, VR_45
	MOV VR_47, VR_46
	MOV r2, #32
	MOV r1, #0
	MOV r0, VR_47
	BL memset
	STR VR_41, [VR_47]
	ADD VR_48, VR_47, #4
	STR VR_44, [VR_48]
	ADD VR_49, VR_47, #8
	MOV VR_50, #3
	STR VR_50, [VR_49]
	ADD VR_51, VR_47, #12
	MOV VR_52, #4
	STR VR_52, [VR_51]
	ADD VR_53, VR_47, #16
	MOV VR_54, #5
	STR VR_54, [VR_53]
	ADD VR_55, VR_47, #20
	MOV VR_56, #6
	STR VR_56, [VR_55]
	ADD VR_57, VR_47, #24
	MOV VR_58, #7
	STR VR_58, [VR_57]
	ADD VR_59, VR_47, #28
	MOV VR_60, #8
	STR VR_60, [VR_59]
	ADD VR_61, VR_0, #24
	ADD VR_62, VR_61, #4
	MOV VR_63, VR_62
	LDR VR_64, [VR_63]
	MOV VR_65, VR_0
	MOV VR_66, VR_65
	MOV VR_67, VR_66
	LDR VR_68, [VR_67]
	ADD VR_69, VR_64, VR_68
	MOV VR_70, VR_0
	ADD VR_71, VR_70, #4
	MOV VR_72, VR_71
	LDR VR_73, [VR_72]
	ADD VR_74, VR_69, VR_73
	ADD VR_75, VR_1, #24
	MOV VR_76, VR_75
	LDR VR_77, [VR_76]
	ADD VR_78, VR_74, VR_77
	MOV r0, VR_78
	ADD sp, sp, #128
	POP {pc}
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #128
	POP {pc}


	.data
	.align 4
	.global glb_0
glb_0:
	.word	1
	.word	2
	.word	3
	.word	4
	.zero	8
	.word	7
	.zero	4


	.end
