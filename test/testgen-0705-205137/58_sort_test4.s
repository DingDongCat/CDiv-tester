	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global select_sort
select_sort:
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
	MOV VR_8, #0
	STR VR_8, [VR_3]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_9, [VR_3]
	LDR VR_10, [VR_4]
	SUB VR_11, VR_10, #1
	CMP VR_9, VR_11
	BLT .BLOCK_2
	BGE .BLOCK_3
.BLOCK_2:
	LDR VR_12, [VR_3]
	STR VR_12, [VR_1]
	LDR VR_13, [VR_3]
	ADD VR_14, VR_13, #1
	STR VR_14, [VR_2]
	B .BLOCK_4
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #24
	BX lr
.BLOCK_4:
	LDR VR_15, [VR_2]
	LDR VR_16, [VR_4]
	CMP VR_15, VR_16
	BLT .BLOCK_5
	BGE .BLOCK_6
.BLOCK_5:
	B .BLOCK_7
.BLOCK_6:
	B .BLOCK_10
.BLOCK_7:
	LDR VR_17, [VR_5]
	LDR VR_18, [VR_1]
	ADD VR_19, VR_17, VR_18, LSL #2
	LDR VR_20, [VR_19]
	LDR VR_21, [VR_5]
	LDR VR_22, [VR_2]
	ADD VR_23, VR_21, VR_22, LSL #2
	LDR VR_24, [VR_23]
	CMP VR_20, VR_24
	BGT .BLOCK_9
	BLE .BLOCK_8
.BLOCK_8:
	LDR VR_25, [VR_2]
	ADD VR_26, VR_25, #1
	STR VR_26, [VR_2]
	B .BLOCK_4
.BLOCK_9:
	LDR VR_27, [VR_2]
	STR VR_27, [VR_1]
	B .BLOCK_8
.BLOCK_10:
	LDR VR_28, [VR_1]
	LDR VR_29, [VR_3]
	CMP VR_28, VR_29
	BNE .BLOCK_12
	BEQ .BLOCK_11
.BLOCK_11:
	LDR VR_30, [VR_3]
	ADD VR_31, VR_30, #1
	STR VR_31, [VR_3]
	B .BLOCK_1
.BLOCK_12:
	LDR VR_32, [VR_5]
	LDR VR_33, [VR_1]
	ADD VR_34, VR_32, VR_33, LSL #2
	LDR VR_35, [VR_34]
	STR VR_35, [VR_0]
	LDR VR_36, [VR_5]
	LDR VR_37, [VR_1]
	ADD VR_38, VR_36, VR_37, LSL #2
	LDR VR_39, [VR_5]
	LDR VR_40, [VR_3]
	ADD VR_41, VR_39, VR_40, LSL #2
	LDR VR_42, [VR_41]
	STR VR_42, [VR_38]
	LDR VR_43, [VR_5]
	LDR VR_44, [VR_3]
	ADD VR_45, VR_43, VR_44, LSL #2
	LDR VR_46, [VR_0]
	STR VR_46, [VR_45]
	B .BLOCK_11
.BLOCK_13:
	MOV r0, #0
	ADD sp, sp, #24
	BX lr


	.global main
main:
.BLOCK_14:
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
	MOV VR_25, #0
	STR VR_25, [VR_1]
	MOV VR_26, VR_2
	MOVW VR_28, :lower16:n
	MOVT VR_28, :upper16:n
	LDR VR_27, [VR_28]
	MOV r1, VR_27
	MOV r0, VR_26
	BL select_sort
	MOV VR_29, r0
	STR VR_29, [VR_1]
	B .BLOCK_15
.BLOCK_15:
	LDR VR_30, [VR_1]
	MOVW VR_32, :lower16:n
	MOVT VR_32, :upper16:n
	LDR VR_31, [VR_32]
	CMP VR_30, VR_31
	BLT .BLOCK_16
	BGE .BLOCK_17
.BLOCK_16:
	LDR VR_33, [VR_1]
	ADD VR_34, VR_2, VR_33, LSL #2
	LDR VR_35, [VR_34]
	STR VR_35, [VR_0]
	LDR VR_36, [VR_0]
	MOV r0, VR_36
	BL putint
	MOV VR_37, #10
	STR VR_37, [VR_0]
	LDR VR_38, [VR_0]
	MOV r0, VR_38
	BL putch
	LDR VR_39, [VR_1]
	ADD VR_40, VR_39, #1
	STR VR_40, [VR_1]
	B .BLOCK_15
.BLOCK_17:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}
.BLOCK_18:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}


	.data
	.align 4
	.global n
n:
	.zero	4


	.end
