	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #0
	STR VR_1, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	MOVW VR_3, :lower16:a
	MOVT VR_3, :upper16:a
	LDR VR_2, [VR_3]
	MOVW VR_5, :lower16:b
	MOVT VR_5, :upper16:b
	LDR VR_4, [VR_5]
	MUL VR_6, VR_2, VR_4
	MOVW VR_8, :lower16:c
	MOVT VR_8, :upper16:c
	LDR VR_7, [VR_8]
	SDIV VR_9, VR_6, VR_7
	MOVW VR_11, :lower16:e
	MOVT VR_11, :upper16:e
	LDR VR_10, [VR_11]
	MOVW VR_13, :lower16:d
	MOVT VR_13, :upper16:d
	LDR VR_12, [VR_13]
	ADD VR_14, VR_10, VR_12
	CMP VR_9, VR_14
	BEQ .BLOCK_5
	BNE .BLOCK_4
.BLOCK_2:
	LDR VR_15, [VR_0]
	MOV r0, VR_15
	BL putint
	LDR VR_16, [VR_0]
	MOV r0, VR_16
	ADD sp, sp, #4
	POP {pc}
.BLOCK_3:
	MOV VR_17, #1
	STR VR_17, [VR_0]
	B .BLOCK_2
.BLOCK_4:
	MOVW VR_19, :lower16:a
	MOVT VR_19, :upper16:a
	LDR VR_18, [VR_19]
	MOVW VR_21, :lower16:b
	MOVT VR_21, :upper16:b
	LDR VR_20, [VR_21]
	MOVW VR_23, :lower16:c
	MOVT VR_23, :upper16:c
	LDR VR_22, [VR_23]
	MUL VR_24, VR_20, VR_22
	SUB VR_25, VR_18, VR_24
	MOVW VR_27, :lower16:d
	MOVT VR_27, :upper16:d
	LDR VR_26, [VR_27]
	MOVW VR_29, :lower16:a
	MOVT VR_29, :upper16:a
	LDR VR_28, [VR_29]
	MOVW VR_31, :lower16:c
	MOVT VR_31, :upper16:c
	LDR VR_30, [VR_31]
	SDIV VR_32, VR_28, VR_30
	SUB VR_33, VR_26, VR_32
	CMP VR_25, VR_33
	BEQ .BLOCK_3
	BNE .BLOCK_2
.BLOCK_5:
	MOVW VR_35, :lower16:a
	MOVT VR_35, :upper16:a
	LDR VR_34, [VR_35]
	MOVW VR_37, :lower16:a
	MOVT VR_37, :upper16:a
	LDR VR_36, [VR_37]
	MOVW VR_39, :lower16:b
	MOVT VR_39, :upper16:b
	LDR VR_38, [VR_39]
	ADD VR_40, VR_36, VR_38
	MUL VR_41, VR_34, VR_40
	MOVW VR_43, :lower16:c
	MOVT VR_43, :upper16:c
	LDR VR_42, [VR_43]
	ADD VR_44, VR_41, VR_42
	MOVW VR_46, :lower16:d
	MOVT VR_46, :upper16:d
	LDR VR_45, [VR_46]
	MOVW VR_48, :lower16:e
	MOVT VR_48, :upper16:e
	LDR VR_47, [VR_48]
	ADD VR_49, VR_45, VR_47
	CMP VR_44, VR_49
	BLE .BLOCK_3
	BGT .BLOCK_4
.BLOCK_6:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global a
a:
	.word	1
	.global b
b:
	.zero	4
	.global c
c:
	.word	1
	.global d
d:
	.word	2
	.global e
e:
	.word	4


	.end
