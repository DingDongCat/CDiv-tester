	.cpu cortex-a7
	.arch armv7ve
	.fpu vfpv4

	.text

	.global defn
defn:
.BLOCK_0:
	SUB sp, sp, #0
	MOV r0, #4
	BX lr
.BLOCK_1:
	MOV r0, #0
	BX lr


	.global main
main:
.BLOCK_2:
	SUB sp, sp, #4
	ADD VR_0, sp, #0
	BL defn
	MOV VR_1, r0
	STR VR_1, [VR_0]
	LDR VR_2, [VR_0]
	MOV r0, VR_2
	ADD sp, sp, #4
	POP {pc}
.BLOCK_3:
	MOV r0, #0
	ADD sp, sp, #4
	POP {pc}


	.end
