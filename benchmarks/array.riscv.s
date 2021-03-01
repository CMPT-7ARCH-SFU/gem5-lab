.text
.global _start
_start:
asm_main_after_prologue:
    /* write */
    li a0,1     /* stdout */
    la a1,msg1   /* buffer */
    li a2,15  /* len */
    li a7,64
    ecall

    li t0, 5
    la t1, src
    la t2, dst
loop:
    lw t4,0(t1)
    sw t4,0(t2)
    addi t1,t1,4
    addi t2,t2,4
    addi t0,t0,-1
    bnez t0, loop

    li a0,1     /* stdout */
    la a1,msg2   /* buffer */
    li a2,15  /* len */
    li a7,64
    ecall

    /* exit */
    li a0, 0     /* exit status */
    li a7, 93    /* syscall number */
    ecall
.data
msg1:	.ascii "---ROIBegin---\n"
msg2:   .ascii "---ROIEnd---\n\n\n"
character: .ascii "Copy  \n" 
src:    .word 0x1 
        .word 0x2 
        .word 0x3 
        .word 0x4 
        .word 0x5
dst:    .word 0x0 
        .word 0x0
        .word 0x0
        .word 0x0
        .word 0x0
