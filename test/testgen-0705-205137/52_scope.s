	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global func
func:
.BLOCK_0:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOVW VR_3, :lower16:a
	MOVT VR_3, :upper16:a
	LDR VR_2, [VR_3]
	STR VR_2, [VR_1]
	MOV VR_4, #1
	STR VR_4, [VR_0]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_5, [VR_0]
	LDR VR_6, [VR_1]
	CMP VR_5, VR_6
	BEQ .BLOCK_3
	BNE .BLOCK_5
.BLOCK_2:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr
.BLOCK_3:
	LDR VR_7, [VR_0]
	ADD VR_8, VR_7, #1
	STR VR_8, [VR_0]
	MOV r0, #1
	ADD sp, sp, #8
	BX lr
.BLOCK_4:
	B .BLOCK_2
.BLOCK_5:
	MOV r0, #0
	ADD sp, sp, #8
	BX lr
.BLOCK_6:
	B .BLOCK_2


	.global main
main:
.BLOCK_7:
	SUB sp, sp, #8
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	MOV VR_2, #0
	STR VR_2, [VR_1]
	MOV VR_3, #0
	STR VR_3, [VR_0]
	B .BLOCK_8
.BLOCK_8:
	LDR VR_4, [VR_0]
	CMP VR_4, #100
	BLT .BLOCK_9
	BGE .BLOCK_10
.BLOCK_9:
	B .BLOCK_11
.BLOCK_10:
	B .BLOCK_14
.BLOCK_11:
	BL func
	MOV VR_5, r0
	CMP VR_5, #1
	BEQ .BLOCK_13
	BNE .BLOCK_12
.BLOCK_12:
	LDR VR_6, [VR_0]
	ADD VR_7, VR_6, #1
	STR VR_7, [VR_0]
	B .BLOCK_8
.BLOCK_13:
	LDR VR_8, [VR_1]
	ADD VR_9, VR_8, #1
	STR VR_9, [VR_1]
	B .BLOCK_12
.BLOCK_14:
	LDR VR_10, [VR_1]
	CMP VR_10, #100
	BLT .BLOCK_16
	BGE .BLOCK_17
.BLOCK_15:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}
.BLOCK_16:
	MOV r0, #1
	BL putint
	B .BLOCK_15
.BLOCK_17:
	MOV r0, #0
	BL putint
	B .BLOCK_15
.BLOCK_18:
	MOV r0, #0
	ADD sp, sp, #8
	POP {pc}


	.data
	.align 4
	.global a
a:
	.word	7


	.end
