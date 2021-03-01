include Makefile.riscv.common

SOURCES := $(wildcard *.c)
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))
OBJECTS += m5op.o
BINS     := $(patsubst %.c, %.bin, $(SOURCES))
DUMPS     := $(patsubst %.c, %.dump, $(SOURCES))

all: $(BINS) $(DUMPS) $(OBJECTS)


%.dump: %.bin
	$(RISCV_OBJDUMP) $^ > $@

%.bin: %.o m5op.o
	$(RISCV_GCC) -static $^ -o $@

%.o: %.c
	$(RISCV_GCC) -c -g -I./include $< -o $@ 

m5op.o: m5op.S
	$(RISCV_GCC) -c -g -I./include $< -o $@ 


clean:
	$(RM) $(DUMPS)
	$(RM) $(BINS)
	$(RM) $(OBJECTS)

