include Makefile.riscv.common

all: $(BINS) $(DUMPS) $(OBJECTS)


%.dump: %.bin
	$(RISCV_OBJDUMP) $^ > $@

%.bin: %.o
	$(RISCV_LD) $^ -o $@

%.o: %.s
	$(RISCV_AS) -g $< -o $@


clean:
	$(RM) $(DUMPS)
	$(RM) $(BINS)
	$(RM) $(OBJECTS)
