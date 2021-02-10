RISCV_HOME?=/data/rv-newlib/
SOURCES := $(wildcard *.s)
OBJECTS := $(patsubst %.s, %.o, $(SOURCES))
BINS     := $(patsubst %.s, %.bin, $(SOURCES))
DUMPS     := $(patsubst %.s, %.dump, $(SOURCES))

RISCV_PREFIX=$(RISCV_HOME)/bin/riscv64-unknown-elf-
RISCV_GCC = $(RISCV_PREFIX)gcc
RISCV_GCC_OPTS = -static -std=gnu99 -O2 -ffast-math -fno-common -fno-builtin-printf
RISCV_AS = $(RISCV_PREFIX)as
RISCV_LD = $(RISCV_PREFIX)ld
RISCV_OBJDUMP = $(RISCV_PREFIX)objdump --disassemble-all --disassemble-zeroes --section=.text --section=.text.startup --section=.data
RISCV_SIM = /data/rv-qemu/bin/qemu-riscv64

all: $(BINS) $(DUMPS)


%.dump: %.bin
	$(RISCV_OBJDUMP) $^ >> $@

%.bin: %.o
	$(RISCV_LD) -Ttext 0x0 -Tdata 0x400 $^ -o $@

%.o: %.s
	$(RISCV_AS) $< -o $@


clean:
	$(RM) $(DUMPS)
	$(RM) $(BINS)
	$(RM) $(OBJECTS)
