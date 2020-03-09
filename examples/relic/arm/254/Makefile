RELICSRC=$(HOME)/Sources/relic/src/low/arm-asm-254
vpath %.s $(RELICSRC)

GCC=arm-linux-gnueabi-gcc
AS=arm-linux-gnueabi-as
OBJ=relic_fp_add_low.o relic_fp_mul_low.o relic_fp_rdc_low.o
#    relic_fpx_add_low.o relic_fpx_mul_low.o relic_fpx_sqr_low.o relix_fpx_rdc_low.o

main : main.c $(OBJ)
	$(GCC) -Wno-implicit-function-declaration -o main main.c $(OBJ)

%.o : %.s
	cpp -I./ -I$(RELICSRC) $< | $(AS) -o $@

clean :
	rm -f $(OBJ) main

