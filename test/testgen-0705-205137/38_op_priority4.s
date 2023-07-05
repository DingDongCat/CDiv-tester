	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	MOVW VR_2, :lower16:a
	MOVT VR_2, :upper16:a
	STR VR_1, [VR_2]
	BL getint
	MOV VR_3, r0
	MOVW VR_4, :lower16:b
	MOVT VR_4, :upper16:b
	STR VR_3, [VR_4]
	BL getint
	MOV VR_5, r0
	MOVW VR_6, :lower16:c
	MOVT VR_6, :upper16:c
	STR VR_5, [VR_6]
	BL getint
	MOV VR_7, r0
	MOVW VR_8, :lower16:d
	MOVT VR_8, :upper16:d
	STR VR_7, [VR_8]
	BL getint
	MOV VR_9, r0
	MOVW VR_10, :lower16:e
	MOVT VR_10, :upper16:e
	STR VR_9, [VR_10]
	MOV VR_11, #0
	STR VR_11, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	MOVW VR_13, :lower16:a
	MOVT VR_13, :upper16:a
	LDR VR_12, [VR_13]
	MOVW VR_15, :lower16:b
	MOVT VR_15, :upper16:b
	LDR VR_14, [VR_15]
	MOVW VR_17, :lower16:c
	MOVT VR_17, :upper16:c
	LDR VR_16, [VR_17]
	MUL VR_18, VR_14, VR_16
	SUB VR_19, VR_12, VR_18
	MOVW VR_21, :lower16:d
	MOVT VR_21, :upper16:d
	LDR VR_20, [VR_21]
	MOVW VR_23, :lower16:a
	MOVT VR_23, :upper16:a
	LDR VR_22, [VR_23]
	MOVW VR_25, :lower16:c
	MOVT VR_25, :upper16:c
	LDR VR_24, [VR_25]
	SDIV VR_26, VR_22, VR_24
	SUB VR_27, VR_20, VR_26
	CMP VR_19, VR_27
	BNE .BLOCK_3
	BEQ .BLOCK_4
.BLOCK_2:
	LDR VR_28, [VR_0]
	MOV r0, VR_28
	ADD sp, sp, #4
	POP {pc}
.BLOCK_3:
	MOV VR_29, #1
	STR VR_29, [VR_0]
	B .BLOCK_2
.BLOCK_4:
	MOVW VR_31, :lower16:a
	MOVT VR_31, :upper16:a
	LDR VR_30, [VR_31]
	MOVW VR_33, :lower16:b
	MOVT VR_33, :upper16:b
	LDR VR_32, [VR_33]
	MUL VR_34, VR_30, VR_32
	MOVW VR_36, :lower16:c
	MOVT VR_36, :upper16:c
	LDR VR_35, [VR_36]
	SDIV VR_37, VR_34, VR_35
	MOVW VR_39, :lower16:e
	MOVT VR_39, :upper16:e
	LDR VR_38, [VR_39]
	MOVW VR_41, :lower16:d
	MOVT VR_41, :upper16:d
	LDR VR_40, [VR_41]
	ADD VR_42, VR_38, VR_40
	CMP VR_37, VR_42
	BEQ .BLOCK_3
	BNE .BLOCK_5
.BLOCK_5:
	MOVW VR_44, :lower16:a
	MOVT VR_44, :upper16:a
	LDR VR_43, [VR_44]
	MOVW VR_46, :lower16:b
	MOVT VR_46, :upper16:b
	LDR VR_45, [VR_46]
	ADD VR_47, VR_43, VR_45
	MOVW VR_49, :lower16:c
	MOVT VR_49, :upper16:c
	LDR VR_48, [VR_49]
	ADD VR_50, VR_47, VR_48
	MOVW VR_52, :lower16:d
	MOVT VR_52, :upper16:d
	LDR VR_51, [VR_52]
	MOVW VR_54, :lower16:e
	MOVT VR_54, :upper16:e
	LDR VR_53, [VR_54]
	ADD VR_55, VR_51, VR_53
	CMP VR_50, VR_55
	BEQ .BLOCK_3
	BNE .BLOCK_2
.BLOCK_6:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global a
a:
	.zero	4
	.global b
b:
	.zero	4
	.global c
c:
	.zero	4
	.global d
d:
	.zero	4
	.global e
e:
	.zero	4


	.end
