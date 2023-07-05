	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global Dijkstra
Dijkstra:
.BLOCK_0:
	SUB sp, sp, #24
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	ADD VR_5, sp, #20
	MOV VR_6, #1
	STR VR_6, [VR_5]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_7, [VR_5]
	MOVW VR_9, :lower16:n
	MOVT VR_9, :upper16:n
	LDR VR_8, [VR_9]
	CMP VR_7, VR_8
	BLE .BLOCK_2
	BGT .BLOCK_3
.BLOCK_2:
	LDR VR_10, [VR_5]
	MOVW VR_11, :lower16:dis
	MOVT VR_11, :upper16:dis
	ADD VR_12, VR_11, VR_10, LSL #2
	MOVW VR_13, :lower16:e
	MOVT VR_13, :upper16:e
	ADD VR_14, VR_13, #64
	LDR VR_15, [VR_5]
	ADD VR_16, VR_14, VR_15, LSL #2
	LDR VR_17, [VR_16]
	STR VR_17, [VR_12]
	LDR VR_18, [VR_5]
	MOVW VR_19, :lower16:book
	MOVT VR_19, :upper16:book
	ADD VR_20, VR_19, VR_18, LSL #2
	MOV VR_21, #0
	STR VR_21, [VR_20]
	LDR VR_22, [VR_5]
	ADD VR_23, VR_22, #1
	STR VR_23, [VR_5]
	B .BLOCK_1
.BLOCK_3:
	MOVW VR_24, :lower16:book
	MOVT VR_24, :upper16:book
	ADD VR_25, VR_24, #4
	MOV VR_26, #1
	STR VR_26, [VR_25]
	MOV VR_27, #1
	STR VR_27, [VR_5]
	B .BLOCK_4
.BLOCK_4:
	LDR VR_28, [VR_5]
	MOVW VR_30, :lower16:n
	MOVT VR_30, :upper16:n
	LDR VR_29, [VR_30]
	SUB VR_31, VR_29, #1
	CMP VR_28, VR_31
	BLE .BLOCK_5
	BGT .BLOCK_6
.BLOCK_5:
	MOVW VR_32, #65535
	STR VR_32, [VR_3]
	MOV VR_33, #0
	STR VR_33, [VR_2]
	MOV VR_34, #1
	STR VR_34, [VR_1]
	B .BLOCK_7
.BLOCK_6:
	ADD sp, sp, #24
	BX lr
.BLOCK_7:
	LDR VR_35, [VR_1]
	MOVW VR_37, :lower16:n
	MOVT VR_37, :upper16:n
	LDR VR_36, [VR_37]
	CMP VR_35, VR_36
	BLE .BLOCK_8
	BGT .BLOCK_9
.BLOCK_8:
	B .BLOCK_10
.BLOCK_9:
	LDR VR_38, [VR_2]
	MOVW VR_39, :lower16:book
	MOVT VR_39, :upper16:book
	ADD VR_40, VR_39, VR_38, LSL #2
	MOV VR_41, #1
	STR VR_41, [VR_40]
	MOV VR_42, #1
	STR VR_42, [VR_0]
	B .BLOCK_14
.BLOCK_10:
	LDR VR_43, [VR_3]
	LDR VR_44, [VR_1]
	MOVW VR_45, :lower16:dis
	MOVT VR_45, :upper16:dis
	ADD VR_46, VR_45, VR_44, LSL #2
	LDR VR_47, [VR_46]
	CMP VR_43, VR_47
	BGT .BLOCK_13
	BLE .BLOCK_11
.BLOCK_11:
	LDR VR_48, [VR_1]
	ADD VR_49, VR_48, #1
	STR VR_49, [VR_1]
	B .BLOCK_7
.BLOCK_12:
	LDR VR_50, [VR_1]
	MOVW VR_51, :lower16:dis
	MOVT VR_51, :upper16:dis
	ADD VR_52, VR_51, VR_50, LSL #2
	LDR VR_53, [VR_52]
	STR VR_53, [VR_3]
	LDR VR_54, [VR_1]
	STR VR_54, [VR_2]
	B .BLOCK_11
.BLOCK_13:
	LDR VR_55, [VR_1]
	MOVW VR_56, :lower16:book
	MOVT VR_56, :upper16:book
	ADD VR_57, VR_56, VR_55, LSL #2
	LDR VR_58, [VR_57]
	CMP VR_58, #0
	BEQ .BLOCK_12
	BNE .BLOCK_11
.BLOCK_14:
	LDR VR_59, [VR_0]
	MOVW VR_61, :lower16:n
	MOVT VR_61, :upper16:n
	LDR VR_60, [VR_61]
	CMP VR_59, VR_60
	BLE .BLOCK_15
	BGT .BLOCK_16
.BLOCK_15:
	B .BLOCK_17
.BLOCK_16:
	LDR VR_62, [VR_5]
	ADD VR_63, VR_62, #1
	STR VR_63, [VR_5]
	B .BLOCK_4
.BLOCK_17:
	LDR VR_64, [VR_2]
	MOVW VR_65, :lower16:e
	MOVT VR_65, :upper16:e
	ADD VR_66, VR_65, VR_64, LSL #6
	LDR VR_67, [VR_0]
	ADD VR_68, VR_66, VR_67, LSL #2
	LDR VR_69, [VR_68]
	MOVW VR_70, #65535
	CMP VR_69, VR_70
	BLT .BLOCK_19
	BGE .BLOCK_18
.BLOCK_18:
	LDR VR_71, [VR_0]
	ADD VR_72, VR_71, #1
	STR VR_72, [VR_0]
	B .BLOCK_14
.BLOCK_19:
	B .BLOCK_20
.BLOCK_20:
	LDR VR_73, [VR_0]
	MOVW VR_74, :lower16:dis
	MOVT VR_74, :upper16:dis
	ADD VR_75, VR_74, VR_73, LSL #2
	LDR VR_76, [VR_75]
	LDR VR_77, [VR_2]
	MOVW VR_78, :lower16:dis
	MOVT VR_78, :upper16:dis
	ADD VR_79, VR_78, VR_77, LSL #2
	LDR VR_80, [VR_79]
	LDR VR_81, [VR_2]
	MOVW VR_82, :lower16:e
	MOVT VR_82, :upper16:e
	ADD VR_83, VR_82, VR_81, LSL #6
	LDR VR_84, [VR_0]
	ADD VR_85, VR_83, VR_84, LSL #2
	LDR VR_86, [VR_85]
	ADD VR_87, VR_80, VR_86
	CMP VR_76, VR_87
	BGT .BLOCK_22
	BLE .BLOCK_21
.BLOCK_21:
	B .BLOCK_18
.BLOCK_22:
	LDR VR_88, [VR_0]
	MOVW VR_89, :lower16:dis
	MOVT VR_89, :upper16:dis
	ADD VR_90, VR_89, VR_88, LSL #2
	LDR VR_91, [VR_2]
	MOVW VR_92, :lower16:dis
	MOVT VR_92, :upper16:dis
	ADD VR_93, VR_92, VR_91, LSL #2
	LDR VR_94, [VR_93]
	LDR VR_95, [VR_2]
	MOVW VR_96, :lower16:e
	MOVT VR_96, :upper16:e
	ADD VR_97, VR_96, VR_95, LSL #6
	LDR VR_98, [VR_0]
	ADD VR_99, VR_97, VR_98, LSL #2
	LDR VR_100, [VR_99]
	ADD VR_101, VR_94, VR_100
	STR VR_101, [VR_90]
	B .BLOCK_21


	.global main
main:
.BLOCK_23:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	BL getint
	MOV VR_4, r0
	MOVW VR_5, :lower16:n
	MOVT VR_5, :upper16:n
	STR VR_4, [VR_5]
	BL getint
	MOV VR_6, r0
	MOVW VR_7, :lower16:m
	MOVT VR_7, :upper16:m
	STR VR_6, [VR_7]
	MOV VR_8, #1
	STR VR_8, [VR_3]
	B .BLOCK_24
.BLOCK_24:
	LDR VR_9, [VR_3]
	MOVW VR_11, :lower16:n
	MOVT VR_11, :upper16:n
	LDR VR_10, [VR_11]
	CMP VR_9, VR_10
	BLE .BLOCK_25
	BGT .BLOCK_26
.BLOCK_25:
	MOV VR_12, #1
	STR VR_12, [VR_2]
	B .BLOCK_27
.BLOCK_26:
	MOV VR_13, #1
	STR VR_13, [VR_3]
	B .BLOCK_34
.BLOCK_27:
	LDR VR_14, [VR_2]
	MOVW VR_16, :lower16:n
	MOVT VR_16, :upper16:n
	LDR VR_15, [VR_16]
	CMP VR_14, VR_15
	BLE .BLOCK_28
	BGT .BLOCK_29
.BLOCK_28:
	B .BLOCK_30
.BLOCK_29:
	LDR VR_17, [VR_3]
	ADD VR_18, VR_17, #1
	STR VR_18, [VR_3]
	B .BLOCK_24
.BLOCK_30:
	LDR VR_19, [VR_3]
	LDR VR_20, [VR_2]
	CMP VR_19, VR_20
	BEQ .BLOCK_32
	BNE .BLOCK_33
.BLOCK_31:
	LDR VR_21, [VR_2]
	ADD VR_22, VR_21, #1
	STR VR_22, [VR_2]
	B .BLOCK_27
.BLOCK_32:
	LDR VR_23, [VR_3]
	MOVW VR_24, :lower16:e
	MOVT VR_24, :upper16:e
	ADD VR_25, VR_24, VR_23, LSL #6
	LDR VR_26, [VR_2]
	ADD VR_27, VR_25, VR_26, LSL #2
	MOV VR_28, #0
	STR VR_28, [VR_27]
	B .BLOCK_31
.BLOCK_33:
	LDR VR_29, [VR_3]
	MOVW VR_30, :lower16:e
	MOVT VR_30, :upper16:e
	ADD VR_31, VR_30, VR_29, LSL #6
	LDR VR_32, [VR_2]
	ADD VR_33, VR_31, VR_32, LSL #2
	MOVW VR_34, #65535
	STR VR_34, [VR_33]
	B .BLOCK_31
.BLOCK_34:
	LDR VR_35, [VR_3]
	MOVW VR_37, :lower16:m
	MOVT VR_37, :upper16:m
	LDR VR_36, [VR_37]
	CMP VR_35, VR_36
	BLE .BLOCK_35
	BGT .BLOCK_36
.BLOCK_35:
	BL getint
	MOV VR_38, r0
	STR VR_38, [VR_1]
	BL getint
	MOV VR_39, r0
	STR VR_39, [VR_0]
	LDR VR_40, [VR_1]
	MOVW VR_41, :lower16:e
	MOVT VR_41, :upper16:e
	ADD VR_42, VR_41, VR_40, LSL #6
	LDR VR_43, [VR_0]
	ADD VR_44, VR_42, VR_43, LSL #2
	BL getint
	MOV VR_45, r0
	STR VR_45, [VR_44]
	LDR VR_46, [VR_3]
	ADD VR_47, VR_46, #1
	STR VR_47, [VR_3]
	B .BLOCK_34
.BLOCK_36:
	BL Dijkstra
	MOV VR_48, #1
	STR VR_48, [VR_3]
	B .BLOCK_37
.BLOCK_37:
	LDR VR_49, [VR_3]
	MOVW VR_51, :lower16:n
	MOVT VR_51, :upper16:n
	LDR VR_50, [VR_51]
	CMP VR_49, VR_50
	BLE .BLOCK_38
	BGT .BLOCK_39
.BLOCK_38:
	LDR VR_52, [VR_3]
	MOVW VR_53, :lower16:dis
	MOVT VR_53, :upper16:dis
	ADD VR_54, VR_53, VR_52, LSL #2
	LDR VR_55, [VR_54]
	MOV r0, VR_55
	BL putint
	MOV r0, #32
	BL putch
	LDR VR_56, [VR_3]
	ADD VR_57, VR_56, #1
	STR VR_57, [VR_3]
	B .BLOCK_37
.BLOCK_39:
	MOV r0, #10
	BL putch
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}
.BLOCK_40:
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}


	.data
	.align 4
	.comm	e, 1024, 4
	.comm	book, 64, 4
	.comm	dis, 64, 4
	.global n
n:
	.zero	4
	.global m
m:
	.zero	4
	.global v1
v1:
	.zero	4
	.global v2
v2:
	.zero	4
	.global w
w:
	.zero	4


	.end
