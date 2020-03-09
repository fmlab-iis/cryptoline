RELICDIR=$(HOME)/Sources/relic
RELICSRC=$(RELICDIR)/src/low/x64-asm-382
RELICLIB=$(RELICDIR)/build/lib
vpath %.s $(RELICSRC)

OBJ=relic_fp_add_low.o relic_fp_mul_low.o relic_fp_rdc_low.o

main-fp : main-fp.c $(OBJ)
	gcc -Wno-implicit-function-declaration -o main-fp main-fp.c $(OBJ)

main-fp2 : main-fp2.c
	gcc -I$(RELICDIR)/include -I$(RELICDIR)/build/include -o main-fp2 main-fp2.c $(RELICLIB)/librelic_s.a

%.o : %.s
	cpp -I./ -I$(RELICSRC) $< | as -o $@

clean :
	rm -f $(OBJ) main-fp main-fp2

