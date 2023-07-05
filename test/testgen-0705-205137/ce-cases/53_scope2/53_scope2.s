	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global main
main:
.BLOCK_0:
	SUB sp, sp, #16
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	ADD VR_2, sp, #8
	ADD VR_3, sp, #12
	MOVW VR_4, :lower16:k
	MOVT VR_4, :upper16:k
	MOVW VR_5, #3389
	STR VR_5, [VR_4]
	B .BLOCK_1
.BLOCK_1:
	MOVW VR_7, :lower16:k
	MOVT VR_7, :upper16:k
	LDR VR_6, [VR_7]
	MOVW VR_8, #10000
	CMP VR_6, VR_8
	BLT .BLOCK_3
	BGE .BLOCK_2
.BLOCK_2:
	MOVW VR_10, :lower16:k
	MOVT VR_10, :upper16:k
	LDR VR_9, [VR_10]
	MOV r0, VR_9
	ADD sp, sp, #16
	POP {pc}
.BLOCK_3:
	MOVW VR_12, :lower16:k
	MOVT VR_12, :upper16:k
	LDR VR_11, [VR_12]
	ADD VR_13, VR_11, #1
	MOVW VR_14, :lower16:k
	MOVT VR_14, :upper16:k
	STR VR_13, [VR_14]
	MOV VR_15, #112
	STR VR_15, [VR_3]
	B .BLOCK_4
.BLOCK_4:
	LDR VR_16, [VR_3]
	CMP VR_16, #10
	BGT .BLOCK_5
	BLE .BLOCK_6
.BLOCK_5:
	LDR VR_17, [VR_3]
	SUB VR_18, VR_17, #88
	STR VR_18, [VR_3]
	B .BLOCK_7
.BLOCK_6:
	LDR VR_19, [VR_3]
	MOV r0, VR_19
	BL putint
	B .BLOCK_2
.BLOCK_7:
	LDR VR_20, [VR_3]
	CMP VR_20, #1000
	BLT .BLOCK_9
	BGE .BLOCK_8
.BLOCK_8:
	B .BLOCK_4
.BLOCK_9:
	MOV VR_21, #9
	STR VR_21, [VR_2]
	MOV VR_22, #11
	STR VR_22, [VR_1]
	MOV VR_23, #10
	STR VR_23, [VR_2]
	LDR VR_24, [VR_3]
	LDR VR_25, [VR_2]
	SUB VR_26, VR_24, VR_25
	STR VR_26, [VR_3]
	MOV VR_27, #11
	STR VR_27, [VR_0]
	LDR VR_28, [VR_3]
	LDR VR_29, [VR_0]
	ADD VR_30, VR_28, VR_29
	LDR VR_31, [VR_1]
	ADD VR_32, VR_30, VR_31
	STR VR_32, [VR_3]
	B .BLOCK_8
.BLOCK_10:
	MOV r0, #0
	ADD sp, sp, #16
	POP {pc}


	.data
	.align 4
	.global k
k:
	.zero	4


	.end
