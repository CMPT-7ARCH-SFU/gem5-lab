.text
.global _start
_start:
asm_main_after_prologue:
    /* write */
    li a0,1     /* stdout */
    la a1,msg   /* buffer */
    li a2,5  /* len */
    li a7,64
    ecall

    /* exit */
    li a0, 0     /* exit status */
    li a7, 93    /* syscall number */
    ecall
msg:
    .ascii "hello\n"
    len = . - msg
