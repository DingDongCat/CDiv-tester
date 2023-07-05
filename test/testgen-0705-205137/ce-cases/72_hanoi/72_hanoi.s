	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global move
move:
.BLOCK_0:
	SUB sp, sp, #8
	MOV VR_3, r1
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	STR VR_3, [VR_0]
	LDR VR_4, [VR_1]
	MOV r0, VR_4
	BL putint
	MOV r0, #32
	BL putch
	LDR VR_5, [VR_0]
	MOV r0, VR_5
	BL putint
	MOV r0, #44
	BL putch
	MOV r0, #32
	BL putch
	ADD sp, sp, #8
	POP {pc}


	.global hanoi
hanoi:
.BLOCK_1:
	SUB sp, sp, #16
	MOV VR_7, r3
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
	STR VR_7, [VR_0]
	B .BLOCK_2
.BLOCK_2:
	LDR VR_8, [VR_3]
	CMP VR_8, #1
	BEQ .BLOCK_4
	BNE .BLOCK_5
.BLOCK_3:
	ADD sp, sp, #16
	POP {pc}
.BLOCK_4:
	LDR VR_9, [VR_2]
	LDR VR_10, [VR_0]
	MOV r1, VR_10
	MOV r0, VR_9
	BL move
	B .BLOCK_3
.BLOCK_5:
	LDR VR_11, [VR_3]
	SUB VR_12, VR_11, #1
	LDR VR_13, [VR_2]
	LDR VR_14, [VR_0]
	LDR VR_15, [VR_1]
	MOV r3, VR_15
	MOV r2, VR_14
	MOV r1, VR_13
	MOV r0, VR_12
	BL hanoi
	LDR VR_16, [VR_2]
	LDR VR_17, [VR_0]
	MOV r1, VR_17
	MOV r0, VR_16
	BL move
	LDR VR_18, [VR_3]
	SUB VR_19, VR_18, #1
	LDR VR_20, [VR_1]
	LDR VR_21, [VR_2]
	LDR VR_22, [VR_0]
	MOV r3, VR_22
	MOV r2, VR_21
	MOV r1, VR_20
	MOV r0, VR_19
	BL hanoi
	B .BLOCK_3


	.global main
main:
.BLOCK_6:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	STR VR_1, [VR_0]
	B .BLOCK_7
.BLOCK_7:
	LDR VR_2, [VR_0]
	CMP VR_2, #0
	BGT .BLOCK_8
	BLE .BLOCK_9
.BLOCK_8:
	BL getint
	MOV VR_3, r0
	MOV r3, #3
	MOV r2, #2
	MOV r1, #1
	MOV r0, VR_3
	BL hanoi
	MOV r0, #10
	BL putch
	LDR VR_4, [VR_0]
	SUB VR_5, VR_4, #1
	STR VR_5, [VR_0]
	B .BLOCK_7
.BLOCK_9:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_10:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.end
