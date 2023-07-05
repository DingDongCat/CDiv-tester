	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global bubblesort
bubblesort:
.BLOCK_0:
	SUB sp, sp, #16
	MOV VR_4, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	STR VR_4, [VR_3]
	MOV VR_5, #0
	STR VR_5, [VR_2]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_6, [VR_2]
	MOVW VR_8, :lower16:n
	MOVT VR_8, :upper16:n
	LDR VR_7, [VR_8]
	SUB VR_9, VR_7, #1
	CMP VR_6, VR_9
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	MOV VR_10, #0
	STR VR_10, [VR_1]
	B .BLOCK_4
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr
.BLOCK_4:
	LDR VR_11, [VR_1]
	MOVW VR_13, :lower16:n
	MOVT VR_13, :upper16:n
	LDR VR_12, [VR_13]
	LDR VR_14, [VR_2]
	SUB VR_15, VR_12, VR_14
	SUB VR_16, VR_15, #1
	CMP VR_11, VR_16
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	B .BLOCK_7
.BLOCK_6:
	LDR VR_17, [VR_2]
	ADD VR_18, VR_17, #1
	STR VR_18, [VR_2]
	B .BLOCK_1
.BLOCK_7:
	LDR VR_19, [VR_3]
	LDR VR_20, [VR_1]
	ADD VR_21, VR_19, VR_20, LSL #2
	LDR VR_22, [VR_21]
	LDR VR_23, [VR_3]
	LDR VR_24, [VR_1]
	ADD VR_25, VR_24, #1
	ADD VR_26, VR_23, VR_25, LSL #2
	LDR VR_27, [VR_26]
	CMP VR_22, VR_27
	BGT .BLOCK_9
	BLE .BLOCK_8
.BLOCK_8:
	LDR VR_28, [VR_1]
	ADD VR_29, VR_28, #1
	STR VR_29, [VR_1]
	B .BLOCK_4
.BLOCK_9:
	LDR VR_30, [VR_3]
	LDR VR_31, [VR_1]
	ADD VR_32, VR_31, #1
	ADD VR_33, VR_30, VR_32, LSL #2
	LDR VR_34, [VR_33]
	STR VR_34, [VR_0]
	LDR VR_35, [VR_3]
	LDR VR_36, [VR_1]
	ADD VR_37, VR_36, #1
	ADD VR_38, VR_35, VR_37, LSL #2
	LDR VR_39, [VR_3]
	LDR VR_40, [VR_1]
	ADD VR_41, VR_39, VR_40, LSL #2
	LDR VR_42, [VR_41]
	STR VR_42, [VR_38]
	LDR VR_43, [VR_3]
	LDR VR_44, [VR_1]
	ADD VR_45, VR_43, VR_44, LSL #2
	LDR VR_46, [VR_0]
	STR VR_46, [VR_45]
	B .BLOCK_8
.BLOCK_10:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr


	.global main
main:
.BLOCK_11:
	SUB sp, sp, #48
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	MOVW VR_3, :lower16:n
	MOVT VR_3, :upper16:n
	MOV VR_4, #10
	STR VR_4, [VR_3]
	MOV VR_5, VR_2
	MOV VR_6, #4
	STR VR_6, [VR_5]
	ADD VR_7, VR_2, #4
	MOV VR_8, #3
	STR VR_8, [VR_7]
	ADD VR_9, VR_2, #8
	MOV VR_10, #9
	STR VR_10, [VR_9]
	ADD VR_11, VR_2, #12
	MOV VR_12, #2
	STR VR_12, [VR_11]
	ADD VR_13, VR_2, #16
	MOV VR_14, #0
	STR VR_14, [VR_13]
	ADD VR_15, VR_2, #20
	MOV VR_16, #1
	STR VR_16, [VR_15]
	ADD VR_17, VR_2, #24
	MOV VR_18, #6
	STR VR_18, [VR_17]
	ADD VR_19, VR_2, #28
	MOV VR_20, #5
	STR VR_20, [VR_19]
	ADD VR_21, VR_2, #32
	MOV VR_22, #7
	STR VR_22, [VR_21]
	ADD VR_23, VR_2, #36
	MOV VR_24, #8
	STR VR_24, [VR_23]
	MOV VR_25, VR_2
	MOV r0, VR_25
	BL bubblesort
	MOV VR_26, r0
	STR VR_26, [VR_1]
	B .BLOCK_12
.BLOCK_12:
	LDR VR_27, [VR_1]
	MOVW VR_29, :lower16:n
	MOVT VR_29, :upper16:n
	LDR VR_28, [VR_29]
	CMP VR_27, VR_28
	BLT .BLOCK_13
	BGE .BLOCK_14
.BLOCK_13:
	LDR VR_30, [VR_1]
	ADD VR_31, VR_2, VR_30, LSL #2
	LDR VR_32, [VR_31]
	STR VR_32, [VR_0]
	LDR VR_33, [VR_0]
	MOV r0, VR_33
	BL putint
	MOV VR_34, #10
	STR VR_34, [VR_0]
	LDR VR_35, [VR_0]
	MOV r0, VR_35
	BL putch
	LDR VR_36, [VR_1]
	ADD VR_37, VR_36, #1
	STR VR_37, [VR_1]
	B .BLOCK_12
.BLOCK_14:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}
.BLOCK_15:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}


	.data
	.align 4
	.global n
n:
	.zero	4


	.end
