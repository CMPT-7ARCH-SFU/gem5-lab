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

    li a0,1     /* stdout */
    la a1,msg2   /* buffer */
    li a2,15  /* len */
    li a7,64
    ecall

    la t3,src    
    /* exit */
    li a0, 0     /* exit status */
    li a7, 93    /* syscall number */
    ecall
.data
msg1:	.ascii "---ROIBegin---\n"
msg2:   .ascii "---ROIEnd---\n\n\n"
src:    .word 0x1 
dst:    .word 0x0
