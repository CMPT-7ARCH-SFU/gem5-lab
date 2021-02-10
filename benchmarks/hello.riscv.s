.text
.global _start
_start:
asm_main_after_prologue:
    /* write */
    li a0,1     /* stdout */
    la a1,msg1   /* buffer */
    li a2,5  /* len */
    li a7,64
    ecall

    /* exit */
    li a0, 0     /* exit status */
    li a7, 93    /* syscall number */
    ecall
.data
msg1:	.ascii "Msg-1\n"
msg2:   .ascii "Msg-2\n"

