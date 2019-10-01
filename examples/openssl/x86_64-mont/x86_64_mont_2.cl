proc main (uint64 x0, uint64 x1, uint64 y0, uint64 y1, uint64 n, uint64 m0, uint64 m1) =
{
     and
       [
         eqmod m0 1 2,

         eqmod
           (
             (
               n
               *
               (limbs 64 [m0, m1])
             )
             +
             1
           )

         0

         (limbs 64 [0, 0,
                    1 ])
      ]
  &&  
    true
}

mov r8_0 n;
mov rsi_0 x0;
mov rsi_1 x1;
mov r12_0 y0;
mov r12_1 y1;
mov rcx_0 m0;
mov rcx_1 m1;

(* mov	(%r8),%r8		# pull n0[0] value *)
mov r8 r8_0;
(* mov	(%r12),%rbx		# m0=bp[0] *)
mov rbx r12_0;
(* mov	(%rsi),%rax *)
mov rax rsi_0;
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
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[0] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,$1,8),%rax *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
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
(* mov	%r13,-16(%rsp,%r15,8)	#! %r15 = $2 *)
mov rsp_0 r13;
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
(* mov	%r13,-8(%rsp,$2,8) *)
mov rsp_1 r13;
(* mov	%rdx,(%rsp,$2,8)	# store upmost overflow bit *)
mov rsp_2 rdx;
(* mov	(%r12,$1,8),%rbx		# m0=bp[i] *)
mov rbx r12_1;
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
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov	8(%rsi),%rax *)
mov rax rsi_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	8(%rsp),%r10		# tp[1] *)
mov r10 rsp_1;
(* mov	%rdx,%r13 *)
mov r13 rdx;
(* mulq	%rbx			# ap[j]*bp[i] *)
mull rdx rax rbx rax;
(* add	%rax,%r11 *)
adds carry r11 rax r11;
(* mov	(%rcx,$1,8),%rax *)
mov rax rcx_1;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add	%r11,%r10		# ap[j]*bp[i]+tp[j] *)
adds carry r10 r11 r10;
(* mov	%rdx,%r11 *)
mov r11 rdx;
(* adc	$0,%r11 *)
adc r11 0@uint64 r11 carry;
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
(* mov	(%rsp,$2,8),%r10 *)
mov r10 rsp_2;
(* adc	$0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov	%r13,-16(%rsp,$2,8)	# tp[j-1] *)
mov rsp_0 r13;
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
(* mov	%r13,-8(%rsp,$2,8) *)
mov rsp_1 r13;
(* mov	%rdx,(%rsp,$2,8)	# store upmost overflow bit *)
mov rsp_2 rdx;

mov z0 rsp_0;
mov z1 rsp_1;
mov z2 rsp_2;

{
     eqmod
       (
         (limbs 64 [x0, x1])
         *
         (limbs 64 [y0, y1])
       )

       (
         (limbs 64 [0, 0,
                    1])
         *
         (limbs 64 [z0, z1, z2])
       )

       (
         (limbs 64 [m0, m1])
       )
  &&  
     z2 < const 64 2
}
