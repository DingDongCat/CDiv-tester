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
	MOVW VR_2, :lower16:k
	MOVT VR_2, :upper16:k
	MOV VR_3, #1
	STR VR_3, [VR_2]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_4, [VR_0]
	MOV VR_6, #10
	SUB VR_5, VR_6, #1
	CMP VR_4, VR_5
	BLE .BLOCK_2
	BGT .BLOCK_3
.BLOCK_2:
	LDR VR_7, [VR_0]
	ADD VR_8, VR_7, #1
	STR VR_8, [VR_0]
	MOVW VR_10, :lower16:k
	MOVT VR_10, :upper16:k
	LDR VR_9, [VR_10]
	ADD VR_11, VR_9, #1
	MOVW VR_13, :lower16:k
	MOVT VR_13, :upper16:k
	LDR VR_12, [VR_13]
	MOVW VR_15, :lower16:k
	MOVT VR_15, :upper16:k
	LDR VR_14, [VR_15]
	ADD VR_16, VR_12, VR_14
	MOVW VR_17, :lower16:k
	MOVT VR_17, :upper16:k
	STR VR_16, [VR_17]
	B .BLOCK_1
.BLOCK_3:
	MOVW VR_19, :lower16:k
	MOVT VR_19, :upper16:k
	LDR VR_18, [VR_19]
	MOV r0, VR_18
	BL putint
	MOVW VR_21, :lower16:k
	MOVT VR_21, :upper16:k
	LDR VR_20, [VR_21]
	MOV r0, VR_20
	ADD sp, sp, #4
	POP {pc}
.BLOCK_4:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global k
k:
	.zero	4


	.end
