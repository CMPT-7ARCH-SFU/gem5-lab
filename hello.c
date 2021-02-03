#include <stdio.h>

#define ROI_BEGIN() \
  __asm__ __volatile__(".byte 0x0F\n\t.byte 0x04\n\t.word 0x5A")
//  __asm__ __volatile__ ("xchg %bx,%bx");

#define ROI_END() \
   __asm__ __volatile__(".byte 0x0F\n\t.byte 0x04\n\t.word 0x5B")
//  __asm__ __volatile__("xchg %cx,%cx");



void main(){
  ROI_BEGIN();
  printf("Hello World");
  ROI_END();
}
