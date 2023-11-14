.equ _SYS_EX, 93
.equ _SYS_WR, 64

.global _start

.include "quicksort.S"

.section .rodata
    arrsize: .byte 7
# arrsize2: .byte 20

.section .data
    testarray: .byte 5,1,3,7,8,10,6
 /*   # testarray2: .byte 7,3,5,8,5,12,250,1,99,2,54,34,23,65,13,24,75,37,88,77 */
    msg: .string "Hello"
	
.section .text
_start:
    li a0,1     /* stdout */
    la a1,msg
    li a2,5  /* len */
    li a7,_SYS_WR
    ecall
    la a1, testarray
    li a2, 0
    lbu a3, arrsize
    addi a3, a3, -1
    jal ra, quicksort

    # STOP EXECUTION
    li a7, _SYS_EX
	ecall
