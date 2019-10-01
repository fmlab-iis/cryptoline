(* on quine lp
Verifying program safety:               [OK]            52.619364 seconds
Verifying assertions:                   [OK]            0.451621 seconds
Verifying range specification:          [OK]            7.585715 seconds
Verifying algebraic specification:      [OK]            157790.580855 seconds
Verification result:                    [OK]            157851.247044 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 n, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
     and
       [
         eqmod m0 1 2,

         eqmod
           (
             (
               n
               *
               (limbs 64 [m0, m1, m2, m3])
             )
             +
             1
           )

         0

         (limbs 64 [0, 1])
      ]
  &&
    true
}

mov rsi_0 x0;
mov rsi_1 x1;
mov rsi_2 x2;
mov rsi_3 x3;
mov r12_0 y0;
mov r12_1 y1;
mov r12_2 y2;
mov r12_3 y3;
mov rcx_0 m0;
mov rcx_1 m1;
mov rcx_2 m2;
mov rcx_3 m3;
mov r8_0 n;

(* mov	(%r8),%r8		# pull n0[0] value *)
mov r8 r8_0;
(* mov	(%r12),%rbx		# m0=bp[0] *)
mov rbx r12_0;
(* mov	(%rsi),%rax *)
mov rax rsi_0;
(* xor	%r14,%r14			# i=0 *)
mov r14 0@uint64;
(* xor	%r15,%r15			# j=0 *)
mov r15 0@uint64;
(* mov	%r8,%rbp *)
mov rbp r8;
(* mulq	%rbx			# ap[0]*bp[0] *)
mull rdx rax rbx rax;
(* mov	%rax,%r10 *)
mov r10 rax;
(* mov	(%rcx),%rax *)
mov rax rcx_0;
(* imulq	%r10,%rbp		# "tp[0]"*n0 *)
mull dontcare rbp r10 rbp;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* mulq	%rbp			# np[0]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r10		# discarded *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbx			# ap[j]*bp[0] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 1 *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mov	%rdx,%r10 *)
mov r10 rdx;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 2 *)
mov rax rsi_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r13		# np[j]*m1+ap[j]*bp[0] *)
adds carry r13 r11 r13;
(* mov	%r10,%r11 *)
mov r11 r10;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 2 *)
mov rsp_0 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[0] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 2 *)
mov rax rcx_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mov	%rdx,%r10 *)
mov r10 rdx;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 3 *)
mov rax rsi_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r13		# np[j]*m1+ap[j]*bp[0] *)
adds carry r13 r11 r13;
(* mov	%r10,%r11 *)
mov r11 r10;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 3 *)
mov rsp_1 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[0] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 3 *)
mov rax rcx_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mov	%rdx,%r10 *)
mov r10 rdx;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi),%rax		# ap[0] *)
mov rax rsi_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r13		# np[j]*m1+ap[j]*bp[0] *)
adds carry r13 r11 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 4 *)
mov rsp_2 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mov	%r10,%r11 *)
mov r11 r10;
(* xor	%rdx,%rdx *)
mov rdx 0@uint64;
(* add	%r11,%r13 *)
adds carry r13 r11 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-8(%rsp,%r9,8)	#! %r9 = 4 *)
mov rsp_3 r13;
(* mov	%rdx,(%rsp,%r9,8)	# store upmost overflow bit	#! %r9 = 4 *)
mov rsp_4 rdx;
(* lea	1(%r14),%r14		# i++ *)
add r14 r14 1@uint64;
(* mov	(%r12,%r14,8),%rbx		# m0=bp[i]	#! %r14 = 1 *)
mov rbx r12_1;
(* xor	%r15,%r15			# j=0 *)
mov r15 0@uint64;
(* mov	%r8,%rbp *)
mov rbp r8;
(* mov	(%rsp),%r10 *)
mov r10 rsp_0;
(* mulq	%rbx			# ap[0]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r10		# ap[0]*bp[i]+tp[0] *)
adds carry r10 rax r10;
(* mov	(%rcx),%rax *)
mov rax rcx_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imulq	%r10,%rbp		# tp[0]*n0 *)
mull dontcare rbp r10 rbp;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* mulq	%rbp			# np[0]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r10		# discarded *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	8(%rsp),%r10		# tp[1] *)
mov r10 rsp_1;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 1 *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 2 *)
mov rax rsi_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 2 *)
mov r10 rsp_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 2 *)
mov rsp_0 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 2 *)
mov rax rcx_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 3 *)
mov rax rsi_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 3 *)
mov r10 rsp_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 3 *)
mov rsp_1 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 3 *)
mov rax rcx_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi),%rax		# ap[0] *)
mov rax rsi_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 4 *)
mov r10 rsp_4;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 4 *)
mov rsp_2 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* xor	%rdx,%rdx *)
mov rdx 0@uint64;
(* add	%r11,%r13 *)
adds carry r13 r11 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# pull upmost overflow bit *)
adds carry r13 r10 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-8(%rsp,%r9,8)			#! %r9 = 4 *)
mov rsp_3 r13;
(* mov	%rdx,(%rsp,%r9,8)	# store upmost overflow bit	#! %r9 = 4 *)
mov rsp_4 rdx;
(* lea	1(%r14),%r14		# i++ *)
add r14 r14 1@uint64;
(* mov	(%r12,%r14,8),%rbx		# m0=bp[i]	#! %r14 = 2 *)
mov rbx r12_2;
(* xor	%r15,%r15			# j=0 *)
mov r15 0@uint64;
(* mov	%r8,%rbp *)
mov rbp r8;
(* mov	(%rsp),%r10 *)
mov r10 rsp_0;
(* mulq	%rbx			# ap[0]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r10		# ap[0]*bp[i]+tp[0] *)
adds carry r10 rax r10;
(* mov	(%rcx),%rax *)
mov rax rcx_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imulq	%r10,%rbp		# tp[0]*n0 *)
mull dontcare rbp r10 rbp;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* mulq	%rbp			# np[0]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r10		# discarded *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	8(%rsp),%r10		# tp[1] *)
mov r10 rsp_1;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 1 *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 2 *)
mov rax rsi_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 2 *)
mov r10 rsp_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 2 *)
mov rsp_0 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 2 *)
mov rax rcx_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 3 *)
mov rax rsi_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 3 *)
mov r10 rsp_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 3 *)
mov rsp_1 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 3 *)
mov rax rcx_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi),%rax		# ap[0] *)
mov rax rsi_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 4 *)
mov r10 rsp_4;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 4 *)
mov rsp_2 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* xor	%rdx,%rdx *)
mov rdx 0@uint64;
(* add	%r11,%r13 *)
adds carry r13 r11 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# pull upmost overflow bit *)
adds carry r13 r10 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-8(%rsp,%r9,8)			#! %r9 = 4 *)
mov rsp_3 r13;
(* mov	%rdx,(%rsp,%r9,8)	# store upmost overflow bit	#! %r9 = 4 *)
mov rsp_4 rdx;
(* lea	1(%r14),%r14		# i++ *)
add r14 r14 1@uint64;
(* mov	(%r12,%r14,8),%rbx		# m0=bp[i]	#! %r14 = 3 *)
mov rbx r12_3;
(* xor	%r15,%r15			# j=0 *)
mov r15 0@uint64;
(* mov	%r8,%rbp *)
mov rbp r8;
(* mov	(%rsp),%r10 *)
mov r10 rsp_0;
(* mulq	%rbx			# ap[0]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r10		# ap[0]*bp[i]+tp[0] *)
adds carry r10 rax r10;
(* mov	(%rcx),%rax *)
mov rax rcx_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imulq	%r10,%rbp		# tp[0]*n0 *)
mull dontcare rbp r10 rbp;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* mulq	%rbp			# np[0]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r10		# discarded *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	8(%rsp),%r10		# tp[1] *)
mov r10 rsp_1;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 1 *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 2 *)
mov rax rsi_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 2 *)
mov r10 rsp_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 2 *)
mov rsp_0 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 2 *)
mov rax rcx_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi,%r15,8),%rax				#! %r15 = 3 *)
mov rax rsi_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 3 *)
mov r10 rsp_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 3 *)
mov rsp_1 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,%r15,8),%rax				#! %r15 = 3 *)
mov rax rcx_3;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea	1(%r15),%r15		# j++ *)
add r15 r15 1@uint64;
(* mulq	%rbp			# np[j]*m1 *)
mull rdx rax rbp rax;
(* add	%rax,%r13 *)
adds carry r13 rax r13;
(* mov	(%rsi),%rax		# ap[0] *)
mov rax rsi_0;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# np[j]*m1+ap[j]*bp[i]+tp[j] *)
adds carry r13 r10 r13;
(* mov	(%rsp,%r15,8),%r10			#! %r15 = 4 *)
mov r10 rsp_4;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,%r15,8)	# tp[j-1]	#! %r15 = 4 *)
mov rsp_2 r13;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* xor	%rdx,%rdx *)
mov rdx 0@uint64;
(* add	%r11,%r13 *)
adds carry r13 r11 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r10,%r13		# pull upmost overflow bit *)
adds carry r13 r10 r13;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-8(%rsp,%r9,8)			#! %r9 = 4 *)
mov rsp_3 r13;
(* mov	%rdx,(%rsp,%r9,8)	# store upmost overflow bit	#! %r9 = 4 *)
mov rsp_4 rdx;

mov z0 rsp_0;
mov z1 rsp_1;
mov z2 rsp_2;
mov z3 rsp_3;
mov z4 rsp_4;

{
     eqmod
       (
         (limbs 64 [x0, x1, x2, x3])
         *
         (limbs 64 [y0, y1, y2, y3])
       )

       (
         (limbs 64 [0, 0, 0, 0,
                    1])
         *
         (limbs 64 [z0, z1, z2, z3,
                    z4])
       )

       (
         (limbs 64 [m0, m1, m2, m3])
       )
  &&
     z4 < const 64 2
}
