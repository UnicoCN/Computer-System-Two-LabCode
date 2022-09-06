.extern start_kernel
.extern _traps
    .section .text.init
    .globl _start
_start:
    # ------------------
    # - your code here -
    # ------------------
    # Set stvec to &_traps
    la s2, _traps
    csrrw x0,stvec,s2 
    # Set stvec[5] to 1
    addi s2, x0, 0x20
    csrrs x0,sie,s2
    # set initial time interrupt
    rdtime s2 
    li s3, 10000000
    add s2,s2,s3
    addi a7,x0,0x0
    addi a6,x0,0x0
    add a0,x0,s2
    addi a1,x0,0x0
    addi a2,x0,0x0
    addi a3,x0,0x0
    addi a4,x0,0x0
    addi a5,x0,0x0
    ecall
    # Set sstatus[1] to 1
    addi s2,x0,0x2
    csrrs x0,sstatus,s2
    la sp, boot_stack_top
    j start_kernel
    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 0x1000 # <-- change to your stack size

    .globl boot_stack_top
boot_stack_top:
