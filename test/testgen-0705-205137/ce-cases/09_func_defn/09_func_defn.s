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
	LDR VR_2, [VR_0]
	SUB VR_3, VR_2, #1
	STR VR_3, [VR_0]
	LDR VR_4, [VR_0]
	MOV r0, VR_4
	ADD sp, sp, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	ADD sp, sp, #4
	BX lr


	.global main
main:
.BLOCK_2:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	MOVW VR_1, :lower16:a
	MOVT VR_1, :upper16:a
	MOV VR_2, #10
	STR VR_2, [VR_1]
	MOVW VR_4, :lower16:a
	MOVT VR_4, :upper16:a
	LDR VR_3, [VR_4]
	MOV r0, VR_3
	BL func
	MOV VR_5, r0
	STR VR_5, [VR_0]
	LDR VR_6, [VR_0]
	MOV r0, VR_6
	ADD sp, sp, #4
	POP {pc}
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.data
	.align 4
	.global a
a:
	.zero	4


	.end
