	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global swap
swap:
.BLOCK_0:
	SUB sp, sp, #16
	MOV VR_6, r2
	MOV VR_5, r1
	MOV VR_4, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	STR VR_4, [VR_3]
	STR VR_5, [VR_2]
	STR VR_6, [VR_1]
	LDR VR_7, [VR_3]
	LDR VR_8, [VR_2]
	ADD VR_9, VR_7, VR_8, LSL #2
	LDR VR_10, [VR_9]
	STR VR_10, [VR_0]
	LDR VR_11, [VR_3]
	LDR VR_12, [VR_2]
	ADD VR_13, VR_11, VR_12, LSL #2
	LDR VR_14, [VR_3]
	LDR VR_15, [VR_1]
	ADD VR_16, VR_14, VR_15, LSL #2
	LDR VR_17, [VR_16]
	STR VR_17, [VR_13]
	LDR VR_18, [VR_3]
	LDR VR_19, [VR_1]
	ADD VR_20, VR_18, VR_19, LSL #2
	LDR VR_21, [VR_0]
	STR VR_21, [VR_20]
	MOV r0, #0
	ADD sp, sp, #16
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #16
	BX lr


	.global heap_ajust
heap_ajust:
.BLOCK_2:
	SUB sp, sp, #20
	MOV VR_7, r2
	MOV VR_6, r1
	MOV VR_5, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	STR VR_5, [VR_4]
	STR VR_6, [VR_3]
	STR VR_7, [VR_2]
	LDR VR_8, [VR_3]
	STR VR_8, [VR_1]
	LDR VR_9, [VR_1]
	MOV VR_10, VR_9, LSL #1
	ADD VR_11, VR_10, #1
	STR VR_11, [VR_0]
	B .BLOCK_3
.BLOCK_3:
	LDR VR_12, [VR_0]
	LDR VR_13, [VR_2]
	ADD VR_14, VR_13, #1
	CMP VR_12, VR_14
	BLT .BLOCK_4
	BGE .BLOCK_5
.BLOCK_4:
	B .BLOCK_6
.BLOCK_5:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_6:
	LDR VR_15, [VR_0]
	LDR VR_16, [VR_2]
	CMP VR_15, VR_16
	BLT .BLOCK_9
	BGE .BLOCK_7
.BLOCK_7:
	B .BLOCK_10
.BLOCK_8:
	LDR VR_17, [VR_0]
	ADD VR_18, VR_17, #1
	STR VR_18, [VR_0]
	B .BLOCK_7
.BLOCK_9:
	LDR VR_19, [VR_4]
	LDR VR_20, [VR_0]
	ADD VR_21, VR_19, VR_20, LSL #2
	LDR VR_22, [VR_21]
	LDR VR_23, [VR_4]
	LDR VR_24, [VR_0]
	ADD VR_25, VR_24, #1
	ADD VR_26, VR_23, VR_25, LSL #2
	LDR VR_27, [VR_26]
	CMP VR_22, VR_27
	BLT .BLOCK_8
	BGE .BLOCK_7
.BLOCK_10:
	LDR VR_28, [VR_4]
	LDR VR_29, [VR_1]
	ADD VR_30, VR_28, VR_29, LSL #2
	LDR VR_31, [VR_30]
	LDR VR_32, [VR_4]
	LDR VR_33, [VR_0]
	ADD VR_34, VR_32, VR_33, LSL #2
	LDR VR_35, [VR_34]
	CMP VR_31, VR_35
	BGT .BLOCK_12
	BLE .BLOCK_14
.BLOCK_11:
	B .BLOCK_3
.BLOCK_12:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_13:
	B .BLOCK_11
.BLOCK_14:
	LDR VR_36, [VR_4]
	LDR VR_37, [VR_1]
	LDR VR_38, [VR_0]
	MOV r2, VR_38
	MOV r1, VR_37
	MOV r0, VR_36
	BL swap
	MOV VR_39, r0
	STR VR_39, [VR_1]
	LDR VR_40, [VR_0]
	STR VR_40, [VR_1]
	LDR VR_41, [VR_1]
	MOV VR_42, VR_41, LSL #1
	ADD VR_43, VR_42, #1
	STR VR_43, [VR_0]
	B .BLOCK_11
.BLOCK_15:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.global heap_sort
heap_sort:
.BLOCK_16:
	SUB sp, sp, #20
	MOV VR_6, r1
	MOV VR_5, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	ADD VR_4, sp, #16
	STR VR_5, [VR_4]
	STR VR_6, [VR_3]
	LDR VR_7, [VR_3]
	MOV VR_9, VR_7, ASR #0
	ADD VR_9, VR_7, VR_9, LSR #31
	MOV VR_8, VR_9, ASR #1
	SUB VR_10, VR_8, #1
	STR VR_10, [VR_2]
	B .BLOCK_17
.BLOCK_17:
	LDR VR_11, [VR_2]
	MOV VR_13, #0
	SUB VR_12, VR_13, #1
	CMP VR_11, VR_12
	BGT .BLOCK_18
	BLE .BLOCK_19
.BLOCK_18:
	LDR VR_14, [VR_3]
	SUB VR_15, VR_14, #1
	STR VR_15, [VR_1]
	LDR VR_16, [VR_4]
	LDR VR_17, [VR_2]
	LDR VR_18, [VR_1]
	MOV r2, VR_18
	MOV r1, VR_17
	MOV r0, VR_16
	BL heap_ajust
	MOV VR_19, r0
	STR VR_19, [VR_1]
	LDR VR_20, [VR_2]
	SUB VR_21, VR_20, #1
	STR VR_21, [VR_2]
	B .BLOCK_17
.BLOCK_19:
	LDR VR_22, [VR_3]
	SUB VR_23, VR_22, #1
	STR VR_23, [VR_2]
	B .BLOCK_20
.BLOCK_20:
	LDR VR_24, [VR_2]
	CMP VR_24, #0
	BGT .BLOCK_21
	BLE .BLOCK_22
.BLOCK_21:
	MOV VR_25, #0
	STR VR_25, [VR_0]
	LDR VR_26, [VR_4]
	LDR VR_27, [VR_0]
	LDR VR_28, [VR_2]
	MOV r2, VR_28
	MOV r1, VR_27
	MOV r0, VR_26
	BL swap
	MOV VR_29, r0
	STR VR_29, [VR_1]
	LDR VR_30, [VR_2]
	SUB VR_31, VR_30, #1
	STR VR_31, [VR_1]
	LDR VR_32, [VR_4]
	LDR VR_33, [VR_0]
	LDR VR_34, [VR_1]
	MOV r2, VR_34
	MOV r1, VR_33
	MOV r0, VR_32
	BL heap_ajust
	MOV VR_35, r0
	STR VR_35, [VR_1]
	LDR VR_36, [VR_2]
	SUB VR_37, VR_36, #1
	STR VR_37, [VR_2]
	B .BLOCK_20
.BLOCK_22:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}
.BLOCK_23:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.global main
main:
.BLOCK_24:
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
	BL heap_sort
	MOV VR_29, r0
	STR VR_29, [VR_1]
	B .BLOCK_25
.BLOCK_25:
	LDR VR_30, [VR_1]
	MOVW VR_32, :lower16:n
	MOVT VR_32, :upper16:n
	LDR VR_31, [VR_32]
	CMP VR_30, VR_31
	BLT .BLOCK_26
	BGE .BLOCK_27
.BLOCK_26:
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
	B .BLOCK_25
.BLOCK_27:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}
.BLOCK_28:
	MOV r0, #0
	ADD sp, sp, #48
	POP {pc}


	.data
	.align 4
	.global n
n:
	.zero	4


	.end
