	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global read_program
read_program:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #0
	STR VR_2, [VR_1]
	BL getint
	MOV VR_3, r0
	STR VR_3, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_1]
	LDR VR_5, [VR_0]
	CMP VR_4, VR_5
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_6, [VR_1]
	MOVW VR_7, :lower16:program
	MOVT VR_7, :upper16:program
	ADD VR_8, VR_7, VR_6, LSL #2
	BL getch
	MOV VR_9, r0
	STR VR_9, [VR_8]
	LDR VR_10, [VR_1]
	ADD VR_11, VR_10, #1
	STR VR_11, [VR_1]
	B .BLOCK_1
.BLOCK_3:
	LDR VR_12, [VR_1]
	MOVW VR_13, :lower16:program
	MOVT VR_13, :upper16:program
	ADD VR_14, VR_13, VR_12, LSL #2
	MOV VR_15, #0
	STR VR_15, [VR_14]
	ADD sp, sp, #8
	POP {pc}


	.global interpret
interpret:
.BLOCK_4:
	SUB sp, sp, #16
	MOV VR_4, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	STR VR_4, [VR_3]
	MOV VR_5, #0
	STR VR_5, [VR_0]
	B .BLOCK_5
.BLOCK_5:
	LDR VR_6, [VR_3]
	LDR VR_7, [VR_0]
	ADD VR_8, VR_6, VR_7, LSL #2
	LDR VR_9, [VR_8]
	CMP VR_9, #0
	BNE .BLOCK_6
	BEQ .BLOCK_7
.BLOCK_6:
	LDR VR_10, [VR_3]
	LDR VR_11, [VR_0]
	ADD VR_12, VR_10, VR_11, LSL #2
	LDR VR_13, [VR_12]
	STR VR_13, [VR_2]
	B .BLOCK_8
.BLOCK_7:
	ADD sp, sp, #16
	POP {pc}
.BLOCK_8:
	LDR VR_14, [VR_2]
	CMP VR_14, #62
	BEQ .BLOCK_10
	BNE .BLOCK_11
.BLOCK_9:
	LDR VR_15, [VR_0]
	ADD VR_16, VR_15, #1
	STR VR_16, [VR_0]
	B .BLOCK_5
.BLOCK_10:
	MOVW VR_18, :lower16:ptr
	MOVT VR_18, :upper16:ptr
	LDR VR_17, [VR_18]
	ADD VR_19, VR_17, #1
	MOVW VR_20, :lower16:ptr
	MOVT VR_20, :upper16:ptr
	STR VR_19, [VR_20]
	B .BLOCK_9
.BLOCK_11:
	B .BLOCK_12
.BLOCK_12:
	LDR VR_21, [VR_2]
	CMP VR_21, #60
	BEQ .BLOCK_14
	BNE .BLOCK_15
.BLOCK_13:
	B .BLOCK_9
.BLOCK_14:
	MOVW VR_23, :lower16:ptr
	MOVT VR_23, :upper16:ptr
	LDR VR_22, [VR_23]
	SUB VR_24, VR_22, #1
	MOVW VR_25, :lower16:ptr
	MOVT VR_25, :upper16:ptr
	STR VR_24, [VR_25]
	B .BLOCK_13
.BLOCK_15:
	B .BLOCK_16
.BLOCK_16:
	LDR VR_26, [VR_2]
	CMP VR_26, #43
	BEQ .BLOCK_18
	BNE .BLOCK_19
.BLOCK_17:
	B .BLOCK_13
.BLOCK_18:
	MOVW VR_28, :lower16:ptr
	MOVT VR_28, :upper16:ptr
	LDR VR_27, [VR_28]
	MOVW VR_29, :lower16:tape
	MOVT VR_29, :upper16:tape
	ADD VR_30, VR_29, VR_27, LSL #2
	MOVW VR_32, :lower16:ptr
	MOVT VR_32, :upper16:ptr
	LDR VR_31, [VR_32]
	MOVW VR_33, :lower16:tape
	MOVT VR_33, :upper16:tape
	ADD VR_34, VR_33, VR_31, LSL #2
	LDR VR_35, [VR_34]
	ADD VR_36, VR_35, #1
	STR VR_36, [VR_30]
	B .BLOCK_17
.BLOCK_19:
	B .BLOCK_20
.BLOCK_20:
	LDR VR_37, [VR_2]
	CMP VR_37, #45
	BEQ .BLOCK_22
	BNE .BLOCK_23
.BLOCK_21:
	B .BLOCK_17
.BLOCK_22:
	MOVW VR_39, :lower16:ptr
	MOVT VR_39, :upper16:ptr
	LDR VR_38, [VR_39]
	MOVW VR_40, :lower16:tape
	MOVT VR_40, :upper16:tape
	ADD VR_41, VR_40, VR_38, LSL #2
	MOVW VR_43, :lower16:ptr
	MOVT VR_43, :upper16:ptr
	LDR VR_42, [VR_43]
	MOVW VR_44, :lower16:tape
	MOVT VR_44, :upper16:tape
	ADD VR_45, VR_44, VR_42, LSL #2
	LDR VR_46, [VR_45]
	SUB VR_47, VR_46, #1
	STR VR_47, [VR_41]
	B .BLOCK_21
.BLOCK_23:
	B .BLOCK_24
.BLOCK_24:
	LDR VR_48, [VR_2]
	CMP VR_48, #46
	BEQ .BLOCK_26
	BNE .BLOCK_27
.BLOCK_25:
	B .BLOCK_21
.BLOCK_26:
	MOVW VR_50, :lower16:ptr
	MOVT VR_50, :upper16:ptr
	LDR VR_49, [VR_50]
	MOVW VR_51, :lower16:tape
	MOVT VR_51, :upper16:tape
	ADD VR_52, VR_51, VR_49, LSL #2
	LDR VR_53, [VR_52]
	MOV r0, VR_53
	BL putch
	B .BLOCK_25
.BLOCK_27:
	B .BLOCK_28
.BLOCK_28:
	LDR VR_54, [VR_2]
	CMP VR_54, #44
	BEQ .BLOCK_30
	BNE .BLOCK_31
.BLOCK_29:
	B .BLOCK_25
.BLOCK_30:
	MOVW VR_56, :lower16:ptr
	MOVT VR_56, :upper16:ptr
	LDR VR_55, [VR_56]
	MOVW VR_57, :lower16:tape
	MOVT VR_57, :upper16:tape
	ADD VR_58, VR_57, VR_55, LSL #2
	BL getch
	MOV VR_59, r0
	STR VR_59, [VR_58]
	B .BLOCK_29
.BLOCK_31:
	B .BLOCK_32
.BLOCK_32:
	LDR VR_60, [VR_2]
	CMP VR_60, #93
	BEQ .BLOCK_45
	BNE .BLOCK_33
.BLOCK_33:
	B .BLOCK_29
.BLOCK_34:
	MOV VR_61, #1
	STR VR_61, [VR_1]
	B .BLOCK_35
.BLOCK_35:
	LDR VR_62, [VR_1]
	CMP VR_62, #0
	BGT .BLOCK_36
	BLE .BLOCK_37
.BLOCK_36:
	LDR VR_63, [VR_0]
	SUB VR_64, VR_63, #1
	STR VR_64, [VR_0]
	LDR VR_65, [VR_3]
	LDR VR_66, [VR_0]
	ADD VR_67, VR_65, VR_66, LSL #2
	LDR VR_68, [VR_67]
	STR VR_68, [VR_2]
	B .BLOCK_38
.BLOCK_37:
	B .BLOCK_33
.BLOCK_38:
	LDR VR_69, [VR_2]
	CMP VR_69, #91
	BEQ .BLOCK_40
	BNE .BLOCK_41
.BLOCK_39:
	B .BLOCK_35
.BLOCK_40:
	LDR VR_70, [VR_1]
	SUB VR_71, VR_70, #1
	STR VR_71, [VR_1]
	B .BLOCK_39
.BLOCK_41:
	B .BLOCK_42
.BLOCK_42:
	LDR VR_72, [VR_2]
	CMP VR_72, #93
	BEQ .BLOCK_44
	BNE .BLOCK_43
.BLOCK_43:
	B .BLOCK_39
.BLOCK_44:
	LDR VR_73, [VR_1]
	ADD VR_74, VR_73, #1
	STR VR_74, [VR_1]
	B .BLOCK_43
.BLOCK_45:
	MOVW VR_76, :lower16:ptr
	MOVT VR_76, :upper16:ptr
	LDR VR_75, [VR_76]
	MOVW VR_77, :lower16:tape
	MOVT VR_77, :upper16:tape
	ADD VR_78, VR_77, VR_75, LSL #2
	LDR VR_79, [VR_78]
	CMP VR_79, #0
	BNE .BLOCK_34
	BEQ .BLOCK_33


	.global main
main:
.BLOCK_46:
	SUB sp, sp, #0
	BL read_program
	MOVW VR_0, :lower16:program
	MOVT VR_0, :upper16:program
	MOV VR_1, VR_0
	MOV r0, VR_1
	BL interpret
	MOV r0, #0
	POP {pc}
.BLOCK_47:
	MOV r0, #0
	POP {pc}


	.data
	.align 4
	.comm	tape, 262144, 4
	.comm	program, 131072, 4
	.global ptr
ptr:
	.zero	4


	.end
