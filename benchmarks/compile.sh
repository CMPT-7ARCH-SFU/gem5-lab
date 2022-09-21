$RISCV_HOME/bin/riscv64-unknown-elf-as -g -o main.o main.S
$RISCV_HOME/bin/riscv64-unknown-elf-as -g -o quicksort.o quicksort.S
$RISCV_HOME/bin/riscv64-unknown-elf-ld -o quicksort main.o quicksort.o

echo $PATH

rm -r *.o
