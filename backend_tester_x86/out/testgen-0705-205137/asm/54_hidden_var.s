	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #220
	ADD VR_0, sp, #0
	ADD VR_1, sp, #140
	ADD VR_2, sp, #144
	ADD VR_3, sp, #208
	ADD VR_4, sp, #212
	ADD VR_5, sp, #216
	MOV VR_6, #1
	STR VR_6, [VR_5]
	MOV VR_7, #2
	STR VR_7, [VR_4]
	MOV VR_8, #3
	STR VR_8, [VR_4]
	LDR VR_9, [VR_4]
	MOV r0, VR_9
	BL putint
	LDR VR_10, [VR_4]
	MOV r0, VR_10
	BL putint
	LDR VR_11, [VR_5]
	MOV r0, VR_11
	BL putint
	MOV r0, #10
	BL putch
	B .BLOCK_1
.BLOCK_1:
	LDR VR_12, [VR_5]
	CMP VR_12, #5
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	MOV VR_13, #0
	STR VR_13, [VR_3]
	LDR VR_14, [VR_3]
	ADD VR_15, VR_14, #1
	STR VR_15, [VR_3]
	B .BLOCK_4
.BLOCK_3:
	LDR VR_16, [VR_5]
	MOV r0, VR_16
	BL putint
	MOV r0, #10
	BL putch
	MOVW VR_17, :lower16:c
	MOVT VR_17, :upper16:c
	ADD VR_18, VR_17, #8
	MOV VR_19, #1
	STR VR_19, [VR_18]
	MOV VR_20, VR_2
	MOV VR_21, VR_20
	MOV r2, #64
	MOV r1, #0
	MOV r0, VR_21
	BL memset
	ADD VR_22, VR_21, #4
	MOV VR_23, #9
	STR VR_23, [VR_22]
	ADD VR_24, VR_21, #32
	MOV VR_25, #8
	STR VR_25, [VR_24]
	ADD VR_26, VR_21, #36
	MOV VR_27, #3
	STR VR_27, [VR_26]
	MOV VR_28, #2
	STR VR_28, [VR_1]
	B .BLOCK_8
.BLOCK_4:
	LDR VR_29, [VR_3]
	CMP VR_29, #0
	BNE .BLOCK_6
	BEQ .BLOCK_5
.BLOCK_5:
	B .BLOCK_1
.BLOCK_6:
	B .BLOCK_3
.BLOCK_7:
	B .BLOCK_5
.BLOCK_8:
	MOVW VR_30, :lower16:c
	MOVT VR_30, :upper16:c
	ADD VR_31, VR_30, #8
	LDR VR_32, [VR_31]
	CMP VR_32, #0
	BNE .BLOCK_10
	BEQ .BLOCK_9
.BLOCK_9:
	MOV r0, #10
	BL putch
	MOVW VR_34, :lower16:b
	MOVT VR_34, :upper16:b
	LDR VR_33, [VR_34]
	MOV r0, VR_33
	BL putint
	MOV r0, #10
	BL putch
	MOVW VR_35, :lower16:c
	MOVT VR_35, :upper16:c
	MOV VR_36, VR_35
	LDR VR_37, [VR_36]
	MOV r0, VR_37
	BL putint
	MOVW VR_38, :lower16:c
	MOVT VR_38, :upper16:c
	ADD VR_39, VR_38, #4
	LDR VR_40, [VR_39]
	MOV r0, VR_40
	BL putint
	MOVW VR_41, :lower16:c
	MOVT VR_41, :upper16:c
	ADD VR_42, VR_41, #8
	LDR VR_43, [VR_42]
	MOV r0, VR_43
	BL putint
	MOVW VR_44, :lower16:c
	MOVT VR_44, :upper16:c
	ADD VR_45, VR_44, #12
	LDR VR_46, [VR_45]
	MOV r0, VR_46
	BL putint
	MOV r0, #10
	BL putch
	MOV r0, #0
	ADD sp, sp, #220
	POP {pc}
.BLOCK_10:
	MOV VR_47, VR_0
	MOV VR_48, VR_47
	MOV VR_49, VR_48
	MOV r2, #140
	MOV r1, #0
	MOV r0, VR_49
	BL memset
	ADD VR_50, VR_49, #40
	MOV VR_51, #2
	STR VR_51, [VR_50]
	ADD VR_52, VR_49, #44
	MOV VR_53, #1
	STR VR_53, [VR_52]
	ADD VR_54, VR_49, #48
	MOV VR_55, #8
	STR VR_55, [VR_54]
	LDR VR_56, [VR_1]
	MOV VR_58, #20
	MLA VR_57, VR_56, VR_58, VR_0
	MOV VR_59, VR_57
	MOV VR_60, VR_59
	LDR VR_61, [VR_60]
	MOV r0, VR_61
	BL putint
	LDR VR_62, [VR_1]
	MOV VR_64, #20
	MLA VR_63, VR_62, VR_64, VR_0
	MOV VR_65, VR_63
	ADD VR_66, VR_65, #4
	LDR VR_67, [VR_66]
	MOV r0, VR_67
	BL putint
	LDR VR_68, [VR_1]
	MOV VR_70, #20
	MLA VR_69, VR_68, VR_70, VR_0
	MOV VR_71, VR_69
	ADD VR_72, VR_71, #8
	LDR VR_73, [VR_72]
	MOV r0, VR_73
	BL putint
	B .BLOCK_9
.BLOCK_11:
	MOV r0, #0
	ADD sp, sp, #220
	POP {pc}


	.data
	.align 4
	.global b
b:
	.word	5
	.global c
c:
	.word	6
	.word	7
	.word	8
	.word	9


	.end
