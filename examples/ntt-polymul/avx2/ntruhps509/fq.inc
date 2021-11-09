.macro red16 r,rs=0,x=12
vpmulhw         %ymm2,%ymm\r,%ymm\x
.if \rs
vpmulhrsw	\rs(%rcx),%ymm\x,%ymm\x
.else
vpsraw          $11,%ymm\x,%ymm\x
.endif
vpmullw         %ymm0,%ymm\x,%ymm\x
vpsubw          %ymm\x,%ymm\r,%ymm\r
.endm

.macro csubq r,x=12
vpsubw		%ymm0,%ymm\r,%ymm\r
vpsraw		$15,%ymm\r,%ymm\x
vpand		%ymm0,%ymm\x,%ymm\x
vpaddw		%ymm\x,%ymm\r,%ymm\r
#vpcmpgtw	%ymm0,%ymm\r,%ymm\x
#vpand		%ymm0,%ymm\x,%ymm\x
#vpsubw		%ymm\x,%ymm\r,%ymm\r
.endm

.macro caddq r,x=12
vpsraw		$15,%ymm\r,%ymm\x
vpand		%ymm0,%ymm\x,%ymm\x
vpaddw		%ymm\x,%ymm\r,%ymm\r
.endm

.macro fqmulprecomp al,ah,b,x=12,neg=0
vpmullw		%ymm\al,%ymm\b,%ymm\x
vpmulhw		%ymm\ah,%ymm\b,%ymm\b
vpmulhw		%ymm0,%ymm\x,%ymm\x
.ifeq \neg
vpsubw		%ymm\x,%ymm\b,%ymm\b
.else
vpsubw		%ymm\b,%ymm\x,%ymm\b
.endif
.endm

.macro fqmulprecomp1 off,b,x=12
vpmullw		(\off+ 0)*2(%rdx),%ymm\b,%ymm\x
vpmulhw		(\off+16)*2(%rdx),%ymm\b,%ymm\b
vpmulhw		%ymm0,%ymm\x,%ymm\x
vpsubw		%ymm\x,%ymm\b,%ymm\b
.endm

.macro fqmulprecomp2 al,ah,b,c,x=12
vpmullw		%ymm\al,%ymm\b,%ymm\x
vpmulhw		%ymm\ah,%ymm\b,%ymm\c
vpmulhw		%ymm0,%ymm\x,%ymm\x
vpsubw		%ymm\x,%ymm\c,%ymm\c
.endm
