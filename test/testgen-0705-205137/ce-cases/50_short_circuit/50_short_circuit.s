	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global func
func:
.BLOCK_0:
	SUB sp, sp, #4
	MOV VR_1, r0
	ADD VR_0, sp, #0
	STR VR_1, [VR_0]
	MOVW VR_3, :lower16:g
	MOVT VR_3, :upper16:g
	LDR VR_2, [VR_3]
	LDR VR_4, [VR_0]
	ADD VR_5, VR_2, VR_4
	MOVW VR_6, :lower16:g
	MOVT VR_6, :upper16:g
	STR VR_5, [VR_6]
	MOVW VR_8, :lower16:g
	MOVT VR_8, :upper16:g
	LDR VR_7, [VR_8]
	MOV r0, VR_7
	BL putint
	MOVW VR_10, :lower16:g
	MOVT VR_10, :upper16:g
	LDR VR_9, [VR_10]
	MOV r0, VR_9
	ADD sp, sp, #4
	POP {pc}
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.global main
main:
.BLOCK_2:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL getint
	MOV VR_1, r0
	STR VR_1, [VR_0]
	B .BLOCK_3
.BLOCK_3:
	LDR VR_2, [VR_0]
	CMP VR_2, #10
	BGT .BLOCK_7
	BLE .BLOCK_6
.BLOCK_4:
	BL getint
	MOV VR_3, r0
	STR VR_3, [VR_0]
	B .BLOCK_8
.BLOCK_5:
	MOV VR_4, #1
	STR VR_4, [VR_0]
	B .BLOCK_4
.BLOCK_6:
	MOV VR_5, #0
	STR VR_5, [VR_0]
	B .BLOCK_4
.BLOCK_7:
	LDR VR_6, [VR_0]
	MOV r0, VR_6
	BL func
	MOV VR_7, r0
	CMP VR_7, #0
	BNE .BLOCK_5
	BEQ .BLOCK_6
.BLOCK_8:
	LDR VR_8, [VR_0]
	CMP VR_8, #11
	BGT .BLOCK_12
	BLE .BLOCK_11
.BLOCK_9:
	BL getint
	MOV VR_9, r0
	STR VR_9, [VR_0]
	B .BLOCK_13
.BLOCK_10:
	MOV VR_10, #1
	STR VR_10, [VR_0]
	B .BLOCK_9
.BLOCK_11:
	MOV VR_11, #0
	STR VR_11, [VR_0]
	B .BLOCK_9
.BLOCK_12:
	LDR VR_12, [VR_0]
	MOV r0, VR_12
	BL func
	MOV VR_13, r0
	CMP VR_13, #0
	BNE .BLOCK_10
	BEQ .BLOCK_11
.BLOCK_13:
	LDR VR_14, [VR_0]
	CMP VR_14, #99
	BLE .BLOCK_15
	BGT .BLOCK_17
.BLOCK_14:
	BL getint
	MOV VR_15, r0
	STR VR_15, [VR_0]
	B .BLOCK_18
.BLOCK_15:
	MOV VR_16, #1
	STR VR_16, [VR_0]
	B .BLOCK_14
.BLOCK_16:
	MOV VR_17, #0
	STR VR_17, [VR_0]
	B .BLOCK_14
.BLOCK_17:
	LDR VR_18, [VR_0]
	MOV r0, VR_18
	BL func
	MOV VR_19, r0
	CMP VR_19, #0
	BNE .BLOCK_15
	BEQ .BLOCK_16
.BLOCK_18:
	LDR VR_20, [VR_0]
	CMP VR_20, #100
	BLE .BLOCK_20
	BGT .BLOCK_22
.BLOCK_19:
	B .BLOCK_23
.BLOCK_20:
	MOV VR_21, #1
	STR VR_21, [VR_0]
	B .BLOCK_19
.BLOCK_21:
	MOV VR_22, #0
	STR VR_22, [VR_0]
	B .BLOCK_19
.BLOCK_22:
	LDR VR_23, [VR_0]
	MOV r0, VR_23
	BL func
	MOV VR_24, r0
	CMP VR_24, #0
	BNE .BLOCK_20
	BEQ .BLOCK_21
.BLOCK_23:
	MOV r0, #99
	BL func
	MOV VR_25, r0
	CMP VR_25, #0
	BEQ .BLOCK_27
	BNE .BLOCK_26
.BLOCK_24:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_25:
	MOV VR_26, #1
	STR VR_26, [VR_0]
	B .BLOCK_24
.BLOCK_26:
	MOV VR_27, #0
	STR VR_27, [VR_0]
	B .BLOCK_24
.BLOCK_27:
	MOV r0, #100
	BL func
	MOV VR_28, r0
	CMP VR_28, #0
	BNE .BLOCK_25
	BEQ .BLOCK_26
.BLOCK_28:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global g
g:
	.zero	4


	.end
