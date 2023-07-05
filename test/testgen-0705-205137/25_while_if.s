	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global get_one
get_one:
.BLOCK_0:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOV r0, #1
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global deepWhileBr
deepWhileBr:
.BLOCK_2:
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
	LDR VR_7, [VR_4]
	LDR VR_8, [VR_3]
	ADD VR_9, VR_7, VR_8
	STR VR_9, [VR_2]
	B .BLOCK_3
.BLOCK_3:
	LDR VR_10, [VR_2]
	CMP VR_10, #75
	BLT .BLOCK_4
	BGE .BLOCK_5
.BLOCK_4:
	MOV VR_11, #42
	STR VR_11, [VR_1]
	B .BLOCK_6
.BLOCK_5:
	LDR VR_12, [VR_2]
	MOV r0, VR_12
	ADD sp, sp, #20
	POP {pc}
.BLOCK_6:
	LDR VR_13, [VR_2]
	CMP VR_13, #100
	BLT .BLOCK_8
	BGE .BLOCK_7
.BLOCK_7:
	B .BLOCK_3
.BLOCK_8:
	LDR VR_14, [VR_2]
	LDR VR_15, [VR_1]
	ADD VR_16, VR_14, VR_15
	STR VR_16, [VR_2]
	B .BLOCK_9
.BLOCK_9:
	LDR VR_17, [VR_2]
	CMP VR_17, #99
	BGT .BLOCK_11
	BLE .BLOCK_10
.BLOCK_10:
	B .BLOCK_7
.BLOCK_11:
	LDR VR_18, [VR_1]
	MOV VR_19, VR_18, LSL #1
	STR VR_19, [VR_0]
	B .BLOCK_12
.BLOCK_12:
	MOV r0, #0
	BL get_one
	MOV VR_20, r0
	CMP VR_20, #1
	BEQ .BLOCK_14
	BNE .BLOCK_13
.BLOCK_13:
	B .BLOCK_10
.BLOCK_14:
	LDR VR_21, [VR_0]
	MOV VR_22, VR_21, LSL #1
	STR VR_22, [VR_2]
	B .BLOCK_13
.BLOCK_15:
	MOV r0, #0
	ADD sp, sp, #20
	POP {pc}


	.global main
main:
.BLOCK_16:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #2
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	LDR VR_3, [VR_0]
	MOV r1, VR_3
	MOV r0, VR_2
	BL deepWhileBr
	MOV VR_4, r0
	STR VR_4, [VR_0]
	LDR VR_5, [VR_0]
	MOV r0, VR_5
	BL putint
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_17:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.end
