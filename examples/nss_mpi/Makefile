
NSS_DIR=$(HOME)/Sources/nss
NSPR_DIR=$(HOME)/Sources/nspr
NSPR_INC=$(NSPR_DIR)/dist/include/nspr
MPI_DIR=$(NSS_DIR)/lib/freebl/mpi
UTIL_DIR=$(NSS_DIR)/lib/util
OBJ_DIR=$(NSS_DIR)/lib/freebl/Linux4.4_x86_64_cc_glibc_PTH_64_OPT.OBJ/Linux_SINGLE_SHLIB/

all:
	gcc -I$(MPI_DIR) -I$(UTIL_DIR) -I$(NSPR_INC) \
	$(OBJ_DIR)/mpprime.o $(OBJ_DIR)/mpi.o \
	$(OBJ_DIR)/mp_comba.o $(OBJ_DIR)/mpi_amd64_gas.o \
	$(OBJ_DIR)/mpi_amd64.o $(OBJ_DIR)/mplogic.o \
	$(OBJ_DIR)/mpmontg.o $(OBJ_DIR)/mpcpucache.o \
	nss_mpi.c

