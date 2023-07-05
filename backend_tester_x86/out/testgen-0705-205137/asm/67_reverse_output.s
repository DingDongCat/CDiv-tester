	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global reverse
reverse:
.BLOCK_0:
	SUB sp, sp, #8
	MOV VR_2, r0
	ADD VR_0, sp, #0
	ADD VR_1, sp, #4
	STR VR_2, [VR_1]
	B .BLOCK_1
.BLOCK_1:
	LDR VR_3, [VR_1]
	CMP VR_3, #1
	BLE .BLOCK_3
	BGT .BLOCK_4
.BLOCK_2:
	ADD sp, sp, #8
	POP {pc}
.BLOCK_3:
	BL getint
	MOV VR_4, r0
	STR VR_4, [VR_0]
	LDR VR_5, [VR_0]
	MOV r0, VR_5
	BL putint
	B .BLOCK_2
.BLOCK_4:
	BL getint
	MOV VR_6, r0
	STR VR_6, [VR_0]
	LDR VR_7, [VR_1]
	SUB VR_8, VR_7, #1
	MOV r0, VR_8
	BL reverse
	LDR VR_9, [VR_0]
	MOV r0, VR_9
	BL putint
	B .BLOCK_2


	.global main
main:
.BLOCK_5:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOV VR_1, #200
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	MOV r0, VR_2
	BL reverse
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}
.BLOCK_6:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.end
