$RISCV_HOME/bin/riscv64-unknown-elf-as -o main.o main.S
$RISCV_HOME/bin/riscv64-unknown-elf-as -o quicksort.o quicksort.S
$RISCV_HOME/bin/riscv64-unknown-elf-ld -o quicksort main.o quicksort.o
rm -r *.o
