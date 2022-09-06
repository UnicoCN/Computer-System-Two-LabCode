.extern trap_handler	
	.section .text.entry
	.align 2
	.global _traps
_traps:
	# Save registers and spec to stack 
	sd sp, -8(sp)
	addi sp,sp,-256
	sd x1,240(sp)
	sd x3,232(sp)
	sd x4,224(sp)
	sd x5,216(sp)
	sd x6,208(sp)
	sd x7,200(sp)
	sd x8,192(sp)
	sd x9,184(sp)
	sd x10,176(sp)
	sd x11,168(sp)
	sd x12,160(sp)
	sd x13,152(sp)
	sd x14,144(sp)
	sd x15,136(sp)
	sd x16,128(sp)
	sd x17,120(sp)
	sd x18,112(sp)
	sd x19,104(sp)
	sd x20,96(sp)
	sd x21,88(sp)
	sd x22,80(sp)
	sd x23,72(sp)
	sd x24,64(sp)
	sd x25,56(sp)
	sd x26,48(sp)
	sd x27,40(sp)
	sd x28,32(sp)
	sd x29,24(sp)
	sd x30,16(sp)
	sd x31,8(sp)
	csrrs s2, sepc, x0
	sd s2,0(sp)
	# call trap_handler	
	csrrs s1,scause,x0
	csrrs s2,sepc,x0
	addi sp, sp, -16
	sd s1,8(sp)
	sd s2,0(sp)
	call trap_handler
	addi sp, sp, 16
	# Restore
	ld x1,240(sp)
	ld x3,232(sp)
	ld x4,224(sp)
	ld x5,216(sp)
	ld x6,208(sp)
	ld x7,200(sp)
	ld x8,192(sp)
	ld x9,184(sp)
	ld x10,176(sp)
	ld x11,168(sp)
	ld x12,160(sp)
	ld x13,152(sp)
	ld x14,144(sp)
	ld x15,136(sp)
	ld x16,128(sp)
	ld x17,120(sp)
	ld x18,112(sp)
	ld x19,104(sp)
	ld x20,96(sp)
	ld x21,88(sp)
	ld x22,80(sp)
	ld x23,72(sp)
	ld x24,64(sp)
	ld x25,56(sp)
	ld x26,48(sp)
	ld x27,40(sp)
	ld x28,32(sp)
	ld x29,24(sp)
	ld x30,16(sp)
	ld x31,8(sp)
	csrrw x0,sepc,x31
	ld x31,0(sp)
	ld sp, 248(sp)
	sret

