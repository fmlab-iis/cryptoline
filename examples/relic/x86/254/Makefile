RELICSRC=$(HOME)/Sources/relic/src/low/x64-asm-254
vpath %.s $(RELICSRC)

OBJ=relic_fp_add_low.o relic_fp_mul_low.o relic_fp_sqr_low.o \
    relic_fp_inv_low.o relic_fp_rdc_low.o
#    relic_fpx_add_low.o relic_fpx_mul_low.o relic_fpx_sqr_low.o relix_fpx_rdc_low.o

main : main.c $(OBJ)
	gcc -Wno-implicit-function-declaration -o main main.c $(OBJ)

%.o : %.s
	cpp -I./ -I$(RELICSRC) $< | as -o $@

clean :
	rm -f $(OBJ) main

