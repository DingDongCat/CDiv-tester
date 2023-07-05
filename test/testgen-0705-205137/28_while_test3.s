	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global EightWhile
EightWhile:
.BLOCK_0:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	MOV VR_4, #5
	STR VR_4, [VR_3]
	MOV VR_5, #6
	STR VR_5, [VR_2]
	MOV VR_6, #7
	STR VR_6, [VR_1]
	MOV VR_7, #10
	STR VR_7, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_8, [VR_3]
	CMP VR_8, #20
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_9, [VR_3]
	ADD VR_10, VR_9, #3
	STR VR_10, [VR_3]
	B .BLOCK_4
.BLOCK_3:
	LDR VR_11, [VR_3]
	LDR VR_12, [VR_2]
	LDR VR_13, [VR_0]
	ADD VR_14, VR_12, VR_13
	ADD VR_15, VR_11, VR_14
	LDR VR_16, [VR_1]
	ADD VR_17, VR_15, VR_16
	MOVW VR_19, :lower16:e
	MOVT VR_19, :upper16:e
	LDR VR_18, [VR_19]
	LDR VR_20, [VR_0]
	ADD VR_21, VR_18, VR_20
	MOVW VR_23, :lower16:g
	MOVT VR_23, :upper16:g
	LDR VR_22, [VR_23]
	SUB VR_24, VR_21, VR_22
	MOVW VR_26, :lower16:h
	MOVT VR_26, :upper16:h
	LDR VR_25, [VR_26]
	ADD VR_27, VR_24, VR_25
	SUB VR_28, VR_17, VR_27
	MOV r0, VR_28
	ADD sp, sp, #16
	BX lr
.BLOCK_4:
	LDR VR_29, [VR_2]
	CMP VR_29, #10
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	LDR VR_30, [VR_2]
	ADD VR_31, VR_30, #1
	STR VR_31, [VR_2]
	B .BLOCK_7
.BLOCK_6:
	LDR VR_32, [VR_2]
	SUB VR_33, VR_32, #2
	STR VR_33, [VR_2]
	B .BLOCK_1
.BLOCK_7:
	LDR VR_34, [VR_1]
	CMP VR_34, #7
	BEQ .BLOCK_8
	BNE .BLOCK_9
.BLOCK_8:
	LDR VR_35, [VR_1]
	SUB VR_36, VR_35, #1
	STR VR_36, [VR_1]
	B .BLOCK_10
.BLOCK_9:
	LDR VR_37, [VR_1]
	ADD VR_38, VR_37, #1
	STR VR_38, [VR_1]
	B .BLOCK_4
.BLOCK_10:
	LDR VR_39, [VR_0]
	CMP VR_39, #20
	BLT .BLOCK_11
	BGE .BLOCK_12
.BLOCK_11:
	LDR VR_40, [VR_0]
	ADD VR_41, VR_40, #3
	STR VR_41, [VR_0]
	B .BLOCK_13
.BLOCK_12:
	LDR VR_42, [VR_0]
	SUB VR_43, VR_42, #1
	STR VR_43, [VR_0]
	B .BLOCK_7
.BLOCK_13:
	MOVW VR_45, :lower16:e
	MOVT VR_45, :upper16:e
	LDR VR_44, [VR_45]
	CMP VR_44, #1
	BGT .BLOCK_14
	BLE .BLOCK_15
.BLOCK_14:
	MOVW VR_47, :lower16:e
	MOVT VR_47, :upper16:e
	LDR VR_46, [VR_47]
	SUB VR_48, VR_46, #1
	MOVW VR_49, :lower16:e
	MOVT VR_49, :upper16:e
	STR VR_48, [VR_49]
	B .BLOCK_16
.BLOCK_15:
	MOVW VR_51, :lower16:e
	MOVT VR_51, :upper16:e
	LDR VR_50, [VR_51]
	ADD VR_52, VR_50, #1
	MOVW VR_53, :lower16:e
	MOVT VR_53, :upper16:e
	STR VR_52, [VR_53]
	B .BLOCK_10
.BLOCK_16:
	MOVW VR_55, :lower16:f
	MOVT VR_55, :upper16:f
	LDR VR_54, [VR_55]
	CMP VR_54, #2
	BGT .BLOCK_17
	BLE .BLOCK_18
.BLOCK_17:
	MOVW VR_57, :lower16:f
	MOVT VR_57, :upper16:f
	LDR VR_56, [VR_57]
	SUB VR_58, VR_56, #2
	MOVW VR_59, :lower16:f
	MOVT VR_59, :upper16:f
	STR VR_58, [VR_59]
	B .BLOCK_19
.BLOCK_18:
	MOVW VR_61, :lower16:f
	MOVT VR_61, :upper16:f
	LDR VR_60, [VR_61]
	ADD VR_62, VR_60, #1
	MOVW VR_63, :lower16:f
	MOVT VR_63, :upper16:f
	STR VR_62, [VR_63]
	B .BLOCK_13
.BLOCK_19:
	MOVW VR_65, :lower16:g
	MOVT VR_65, :upper16:g
	LDR VR_64, [VR_65]
	CMP VR_64, #3
	BLT .BLOCK_20
	BGE .BLOCK_21
.BLOCK_20:
	MOVW VR_67, :lower16:g
	MOVT VR_67, :upper16:g
	LDR VR_66, [VR_67]
	ADD VR_68, VR_66, #10
	MOVW VR_69, :lower16:g
	MOVT VR_69, :upper16:g
	STR VR_68, [VR_69]
	B .BLOCK_22
.BLOCK_21:
	MOVW VR_71, :lower16:g
	MOVT VR_71, :upper16:g
	LDR VR_70, [VR_71]
	SUB VR_72, VR_70, #8
	MOVW VR_73, :lower16:g
	MOVT VR_73, :upper16:g
	STR VR_72, [VR_73]
	B .BLOCK_16
.BLOCK_22:
	MOVW VR_75, :lower16:h
	MOVT VR_75, :upper16:h
	LDR VR_74, [VR_75]
	CMP VR_74, #10
	BLT .BLOCK_23
	BGE .BLOCK_24
.BLOCK_23:
	MOVW VR_77, :lower16:h
	MOVT VR_77, :upper16:h
	LDR VR_76, [VR_77]
	ADD VR_78, VR_76, #8
	MOVW VR_79, :lower16:h
	MOVT VR_79, :upper16:h
	STR VR_78, [VR_79]
	B .BLOCK_22
.BLOCK_24:
	MOVW VR_81, :lower16:h
	MOVT VR_81, :upper16:h
	LDR VR_80, [VR_81]
	SUB VR_82, VR_80, #1
	MOVW VR_83, :lower16:h
	MOVT VR_83, :upper16:h
	STR VR_82, [VR_83]
	B .BLOCK_19
.BLOCK_25:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr


	.global main
main:
.BLOCK_26:
	SUB sp, sp, #0
	MOVW VR_0, :lower16:g
	MOVT VR_0, :upper16:g
	MOV VR_1, #1
	STR VR_1, [VR_0]
	MOVW VR_2, :lower16:h
	MOVT VR_2, :upper16:h
	MOV VR_3, #2
	STR VR_3, [VR_2]
	MOVW VR_4, :lower16:e
	MOVT VR_4, :upper16:e
	MOV VR_5, #4
	STR VR_5, [VR_4]
	MOVW VR_6, :lower16:f
	MOVT VR_6, :upper16:f
	MOV VR_7, #6
	STR VR_7, [VR_6]
	BL EightWhile
	MOV VR_8, r0
	MOV r0, VR_8
	POP {pc}
.BLOCK_27:
	MOV r0, #0
	POP {pc}


	.data
	.align 4
	.global g
g:
	.zero	4
	.global h
h:
	.zero	4
	.global f
f:
	.zero	4
	.global e
e:
	.zero	4


	.end
