	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global printans
printans:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOVW VR_2, :lower16:sum
	MOVT VR_2, :upper16:sum
	LDR VR_1, [VR_2]
	ADD VR_3, VR_1, #1
	MOVW VR_4, :lower16:sum
	MOVT VR_4, :upper16:sum
	STR VR_3, [VR_4]
	MOV VR_5, #1
	STR VR_5, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_6, [VR_0]
	MOVW VR_8, :lower16:n
	MOVT VR_8, :upper16:n
	LDR VR_7, [VR_8]
	CMP VR_6, VR_7
	BLE .BLOCK_2
	BGT .BLOCK_3
.BLOCK_2:
	LDR VR_9, [VR_0]
	MOVW VR_10, :lower16:ans
	MOVT VR_10, :upper16:ans
	ADD VR_11, VR_10, VR_9, LSL #2
	LDR VR_12, [VR_11]
	MOV r0, VR_12
	BL putint
	B .BLOCK_4
.BLOCK_3:
	ADD sp, sp, #4
	POP {pc}
.BLOCK_4:
	LDR VR_13, [VR_0]
	MOVW VR_15, :lower16:n
	MOVT VR_15, :upper16:n
	LDR VR_14, [VR_15]
	CMP VR_13, VR_14
	BEQ .BLOCK_6
	BNE .BLOCK_8
.BLOCK_5:
	LDR VR_16, [VR_0]
	ADD VR_17, VR_16, #1
	STR VR_17, [VR_0]
	B .BLOCK_1
.BLOCK_6:
	MOV r0, #10
	BL putch
	ADD sp, sp, #4
	POP {pc}
.BLOCK_7:
	B .BLOCK_5
.BLOCK_8:
	MOV r0, #32
	BL putch
	B .BLOCK_5


	.global f
f:
.BLOCK_9:
	SUB sp, sp, #8
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	MOV VR_3, #1
	STR VR_3, [VR_0]
	B .BLOCK_10
.BLOCK_10:
	LDR VR_4, [VR_0]
	MOVW VR_6, :lower16:n
	MOVT VR_6, :upper16:n
	LDR VR_5, [VR_6]
	CMP VR_4, VR_5
	BLE .BLOCK_11
	BGT .BLOCK_12
.BLOCK_11:
	B .BLOCK_13
.BLOCK_12:
	ADD sp, sp, #8
	POP {pc}
.BLOCK_13:
	LDR VR_7, [VR_0]
	MOVW VR_8, :lower16:row
	MOVT VR_8, :upper16:row
	ADD VR_9, VR_8, VR_7, LSL #2
	LDR VR_10, [VR_9]
	CMP VR_10, #1
	BNE .BLOCK_19
	BEQ .BLOCK_14
.BLOCK_14:
	LDR VR_11, [VR_0]
	ADD VR_12, VR_11, #1
	STR VR_12, [VR_0]
	B .BLOCK_10
.BLOCK_15:
	LDR VR_13, [VR_1]
	MOVW VR_14, :lower16:ans
	MOVT VR_14, :upper16:ans
	ADD VR_15, VR_14, VR_13, LSL #2
	LDR VR_16, [VR_0]
	STR VR_16, [VR_15]
	B .BLOCK_16
.BLOCK_16:
	LDR VR_17, [VR_1]
	MOVW VR_19, :lower16:n
	MOVT VR_19, :upper16:n
	LDR VR_18, [VR_19]
	CMP VR_17, VR_18
	BEQ .BLOCK_18
	BNE .BLOCK_17
.BLOCK_17:
	LDR VR_20, [VR_0]
	MOVW VR_21, :lower16:row
	MOVT VR_21, :upper16:row
	ADD VR_22, VR_21, VR_20, LSL #2
	MOV VR_23, #1
	STR VR_23, [VR_22]
	LDR VR_24, [VR_1]
	LDR VR_25, [VR_0]
	ADD VR_26, VR_24, VR_25
	MOVW VR_27, :lower16:line1
	MOVT VR_27, :upper16:line1
	ADD VR_28, VR_27, VR_26, LSL #2
	MOV VR_29, #1
	STR VR_29, [VR_28]
	MOVW VR_31, :lower16:n
	MOVT VR_31, :upper16:n
	LDR VR_30, [VR_31]
	LDR VR_32, [VR_1]
	ADD VR_33, VR_30, VR_32
	LDR VR_34, [VR_0]
	SUB VR_35, VR_33, VR_34
	MOVW VR_36, :lower16:line2
	MOVT VR_36, :upper16:line2
	ADD VR_37, VR_36, VR_35, LSL #2
	MOV VR_38, #1
	STR VR_38, [VR_37]
	LDR VR_39, [VR_1]
	ADD VR_40, VR_39, #1
	MOV r0, VR_40
	BL f
	LDR VR_41, [VR_0]
	MOVW VR_42, :lower16:row
	MOVT VR_42, :upper16:row
	ADD VR_43, VR_42, VR_41, LSL #2
	MOV VR_44, #0
	STR VR_44, [VR_43]
	LDR VR_45, [VR_1]
	LDR VR_46, [VR_0]
	ADD VR_47, VR_45, VR_46
	MOVW VR_48, :lower16:line1
	MOVT VR_48, :upper16:line1
	ADD VR_49, VR_48, VR_47, LSL #2
	MOV VR_50, #0
	STR VR_50, [VR_49]
	MOVW VR_52, :lower16:n
	MOVT VR_52, :upper16:n
	LDR VR_51, [VR_52]
	LDR VR_53, [VR_1]
	ADD VR_54, VR_51, VR_53
	LDR VR_55, [VR_0]
	SUB VR_56, VR_54, VR_55
	MOVW VR_57, :lower16:line2
	MOVT VR_57, :upper16:line2
	ADD VR_58, VR_57, VR_56, LSL #2
	MOV VR_59, #0
	STR VR_59, [VR_58]
	B .BLOCK_14
.BLOCK_18:
	BL printans
	B .BLOCK_17
.BLOCK_19:
	LDR VR_60, [VR_1]
	LDR VR_61, [VR_0]
	ADD VR_62, VR_60, VR_61
	MOVW VR_63, :lower16:line1
	MOVT VR_63, :upper16:line1
	ADD VR_64, VR_63, VR_62, LSL #2
	LDR VR_65, [VR_64]
	CMP VR_65, #0
	BEQ .BLOCK_20
	BNE .BLOCK_14
.BLOCK_20:
	MOVW VR_67, :lower16:n
	MOVT VR_67, :upper16:n
	LDR VR_66, [VR_67]
	LDR VR_68, [VR_1]
	ADD VR_69, VR_66, VR_68
	LDR VR_70, [VR_0]
	SUB VR_71, VR_69, VR_70
	MOVW VR_72, :lower16:line2
	MOVT VR_72, :upper16:line2
	ADD VR_73, VR_72, VR_71, LSL #2
	LDR VR_74, [VR_73]
	CMP VR_74, #0
	BEQ .BLOCK_15
	BNE .BLOCK_14


	.global main
main:
.BLOCK_21:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	STR VR_1, [VR_0]
	B .BLOCK_22
.BLOCK_22:
	LDR VR_2, [VR_0]
	CMP VR_2, #0
	BGT .BLOCK_23
	BLE .BLOCK_24
.BLOCK_23:
	BL getint
	MOV VR_3, r0
	MOVW VR_4, :lower16:n
	MOVT VR_4, :upper16:n
	STR VR_3, [VR_4]
	MOV r0, #1
	BL f
	LDR VR_5, [VR_0]
	SUB VR_6, VR_5, #1
	STR VR_6, [VR_0]
	B .BLOCK_22
.BLOCK_24:
	MOVW VR_8, :lower16:sum
	MOVT VR_8, :upper16:sum
	LDR VR_7, [VR_8]
	MOV r0, VR_7
	ADD sp, sp, #4
	POP {pc}
.BLOCK_25:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.comm	ans, 200, 4
	.global sum
sum:
	.zero	4
	.global n
n:
	.zero	4
	.comm	row, 200, 4
	.comm	line1, 200, 4
	.comm	line2, 400, 4


	.end
