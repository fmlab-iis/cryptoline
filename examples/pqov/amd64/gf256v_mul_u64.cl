(* popper: cv.exe -v -jobs 64 -isafety -slicing gf256v_mul_u64.cl
Parsing CryptoLine file:                [OK]            0.023487 seconds
Checking well-formedness:               [OK]            0.013385 seconds
Transforming to SSA form:               [OK]            0.007223 seconds
Normalizing specification:              [OK]            0.008992 seconds
Rewriting assignments:                  [OK]            0.018440 seconds
Verifying program safety:               [OK]            17.459816 seconds
Verifying range assertions:             [OK]            0.000437 seconds
Verifying range specification:          [OK]            0.000274 seconds
Rewriting value-preserved casting:      [OK]            0.000139 seconds
Verifying algebraic assertions:         [OK]            0.650081 seconds
Verifying algebraic specification:      [OK]            0.113934 seconds
Verification result:                    [OK]            18.300323 seconds
*)

proc main (bit a00, bit a01, bit a02, bit a03, bit a04, bit a05, bit a06, bit a07,
           bit a08, bit a09, bit a0a, bit a0b, bit a0c, bit a0d, bit a0e, bit a0f,
           bit a10, bit a11, bit a12, bit a13, bit a14, bit a15, bit a16, bit a17,
           bit a18, bit a19, bit a1a, bit a1b, bit a1c, bit a1d, bit a1e, bit a1f,
           bit a20, bit a21, bit a22, bit a23, bit a24, bit a25, bit a26, bit a27,
           bit a28, bit a29, bit a2a, bit a2b, bit a2c, bit a2d, bit a2e, bit a2f,
           bit a30, bit a31, bit a32, bit a33, bit a34, bit a35, bit a36, bit a37,
           bit a38, bit a39, bit a3a, bit a3b, bit a3c, bit a3d, bit a3e, bit a3f,
           bit b00, bit b01, bit b02, bit b03, bit b04, bit b05, bit b06, bit b07,
           bit Z) =
{
  true
  &&
  true
}

mov %rsi [b00, b01, b02, b03, b04, b05, b06, b07,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
mov %rdi [a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,a0a,a0b,a0c,a0d,a0e,a0f,
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a1a,a1b,a1c,a1d,a1e,a1f,
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a2a,a2b,a2c,a2d,a2e,a2f,
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a3a,a3b,a3c,a3d,a3e,a3f];

(* #! -> SP = 0x7fffffffc0e8 *)
#! 0x7fffffffc0e8 = 0x7fffffffc0e8;
(* movzbl %sil,%eax                                #! PC = 0x55555555c430 *)
mov %rax %rsi;
(* mov    %rdi,%rdx                                #! PC = 0x55555555c434 *)
mov %rdx %rdi;
(* and    $0x1,%esi                                #! PC = 0x55555555c437 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rcx                                #! PC = 0x55555555c43a *)
mov %rcx %rdi;
(* imul   %rdi,%rsi                                #! PC = 0x55555555c43d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdx                                #! PC = 0x55555555c441 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* add    %rcx,%rcx                                #! PC = 0x55555555c445 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rcx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* mov    %rax,%r10                                #! PC = 0x55555555c448 *)
mov %r10 %rax;
(* movabs $0x101010101010101,%rdi                  #! PC = 0x55555555c44b *)
mov %rdi [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    %r10                                     #! PC = 0x55555555c455 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %r10;
mov %r10 [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* mov    %rax,%r9                                 #! PC = 0x55555555c458 *)
mov %r9 %rax;
(* movabs $0xfefefefefefefefe,%r8                  #! PC = 0x55555555c45b *)
mov %r8 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %rdi,%rdx                                #! PC = 0x55555555c465 *)
mul %rdx %rdx %rdi;
(* and    %r8,%rcx                                 #! PC = 0x55555555c468 *)
mul %rcx %rcx %r8;
(* and    $0x1,%r10d                               #! PC = 0x55555555c46b *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %r10;
mov %r10 [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%r9                                 #! PC = 0x55555555c46f *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %r9;
mov %r9 [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x55555555c473 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* and    $0x1,%r9d                                #! PC = 0x55555555c477 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %r9;
mov %r9 [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x55555555c47b *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x55555555c47f *)
adds %dc %rdx %rdx %rcx;
(* imul   %rdx,%r10                                #! PC = 0x55555555c482 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %r10;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %r10 %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x55555555c486 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x55555555c48a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %rdi,%rdx                                #! PC = 0x55555555c48e *)
mul %rdx %rdx %rdi;
(* and    %r8,%rcx                                 #! PC = 0x55555555c491 *)
mul %rcx %rcx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x55555555c494 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x55555555c498 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %r10,%r11                                #! PC = 0x55555555c49c *)
mov %r11 %r10;
(* xor    %rdx,%rcx                                #! PC = 0x55555555c49f *)
adds %dc %rcx %rcx %rdx;
(* xor    %rsi,%r11                                #! PC = 0x55555555c4a2 *)
adds %dc %r11 %r11 %rsi;
(* imul   %rcx,%r9                                 #! PC = 0x55555555c4a5 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %r9;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %r9 %rcx %imul;
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x55555555c4a9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rcx                                #! PC = 0x55555555c4ad *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %rdi,%rcx                                #! PC = 0x55555555c4b1 *)
mul %rcx %rcx %rdi;
(* and    %r8,%rdx                                 #! PC = 0x55555555c4b4 *)
mul %rdx %rdx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x55555555c4b7 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* mov    %r9,%r10                                 #! PC = 0x55555555c4bb *)
mov %r10 %r9;
(* mov    %rax,%r9                                 #! PC = 0x55555555c4be *)
mov %r9 %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x55555555c4c1 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%r9                                 #! PC = 0x55555555c4c5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %r9;
mov %r9 [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x55555555c4c9 *)
adds %dc %rdx %rdx %rcx;
(* xor    %r11,%r10                                #! PC = 0x55555555c4cc *)
adds %dc %r10 %r10 %r11;
(* and    $0x1,%r9d                                #! PC = 0x55555555c4cf *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %r9;
mov %r9 [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x55555555c4d3 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%r9                                 #! PC = 0x55555555c4d7 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %r9;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %r9 %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x55555555c4db *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x55555555c4df *)
mul %rsi %rsi %r8;
(* and    %rdi,%rdx                                #! PC = 0x55555555c4e2 *)
mul %rdx %rdx %rdi;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x55555555c4e5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x55555555c4e9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%r9                                 #! PC = 0x55555555c4ed *)
adds %dc %r9 %r9 %r10;
(* xor    %rdx,%rsi                                #! PC = 0x55555555c4f0 *)
adds %dc %rsi %rsi %rdx;
(* mov    %rax,%rdx                                #! PC = 0x55555555c4f3 *)
mov %rdx %rax;
(* shr    $0x4,%rdx                                #! PC = 0x55555555c4f6 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* lea    (%rsi,%rsi,1),%rcx                       #! PC = 0x55555555c4fa *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* and    $0x1,%edx                                #! PC = 0x55555555c4fe *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdx;
mov %rdx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* and    %r8,%rcx                                 #! PC = 0x55555555c501 *)
mul %rcx %rcx %r8;
(* imul   %rsi,%rdx                                #! PC = 0x55555555c504 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdx %rsi %imul;
(* shr    $0x7,%rsi                                #! PC = 0x55555555c508 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %rdi,%rsi                                #! PC = 0x55555555c50c *)
mul %rsi %rsi %rdi;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x55555555c50f *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rsi                       #! PC = 0x55555555c513 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rsi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %r9,%rdx                                 #! PC = 0x55555555c517 *)
adds %dc %rdx %rdx %r9;
(* xor    %rsi,%rcx                                #! PC = 0x55555555c51a *)
adds %dc %rcx %rcx %rsi;
(* mov    %rax,%rsi                                #! PC = 0x55555555c51d *)
mov %rsi %rax;
(* shr    $0x5,%rsi                                #! PC = 0x55555555c520 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%esi                                #! PC = 0x55555555c524 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rcx,%rsi                                #! PC = 0x55555555c527 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* xor    %rdx,%rsi                                #! PC = 0x55555555c52b *)
adds %dc %rsi %rsi %rdx;
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x55555555c52e *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rcx                                #! PC = 0x55555555c532 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %rdi,%rcx                                #! PC = 0x55555555c536 *)
mul %rcx %rcx %rdi;
(* and    %r8,%rdx                                 #! PC = 0x55555555c539 *)
mul %rdx %rdx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x55555555c53c *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x55555555c540 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x55555555c544 *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x55555555c547 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x55555555c54a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x55555555c54e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x55555555c552 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x55555555c555 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x55555555c559 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x55555555c55c *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x55555555c560 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %rdi,%rdx                                #! PC = 0x55555555c564 *)
mul %rdx %rdx %rdi;
(* and    %rsi,%r8                                 #! PC = 0x55555555c567 *)
mul %r8 %r8 %rsi;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x55555555c56a *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x55555555c56e *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%r8                                 #! PC = 0x55555555c572 *)
adds %dc %r8 %r8 %rdx;
(* imul   %r8,%rax                                 #! PC = 0x55555555c575 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %r8 %imul;
(* xor    %rcx,%rax                                #! PC = 0x55555555c579 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffc0e8 *)
#! 0x7fffffffc0e8 = 0x7fffffffc0e8;
(* #retq                                           #! PC = 0x55555555c57c *)
#retq                                           #! 0x55555555c57c = 0x55555555c57c;

mov [r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r0a,r0b,r0c,r0d,r0e,r0f,
     r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r1a,r1b,r1c,r1d,r1e,r1f,
     r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r2a,r2b,r2c,r2d,r2e,r2f,
     r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r3a,r3b,r3c,r3d,r3e,r3f] %rax;
{
  and [
    eqmod r00*Z**0+r01*Z**1+r02*Z**2+r03*Z**3+r04*Z**4+r05*Z**5+r06*Z**6+r07*Z**7
         (a00*Z**0+a01*Z**1+a02*Z**2+a03*Z**3+a04*Z**4+a05*Z**5+a06*Z**6+a07*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r08*Z**0+r09*Z**1+r0a*Z**2+r0b*Z**3+r0c*Z**4+r0d*Z**5+r0e*Z**6+r0f*Z**7
         (a08*Z**0+a09*Z**1+a0a*Z**2+a0b*Z**3+a0c*Z**4+a0d*Z**5+a0e*Z**6+a0f*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r10*Z**0+r11*Z**1+r12*Z**2+r13*Z**3+r14*Z**4+r15*Z**5+r16*Z**6+r17*Z**7
         (a10*Z**0+a11*Z**1+a12*Z**2+a13*Z**3+a14*Z**4+a15*Z**5+a16*Z**6+a17*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r18*Z**0+r19*Z**1+r1a*Z**2+r1b*Z**3+r1c*Z**4+r1d*Z**5+r1e*Z**6+r1f*Z**7
         (a18*Z**0+a19*Z**1+a1a*Z**2+a1b*Z**3+a1c*Z**4+a1d*Z**5+a1e*Z**6+a1f*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r20*Z**0+r21*Z**1+r22*Z**2+r23*Z**3+r24*Z**4+r25*Z**5+r26*Z**6+r27*Z**7
         (a20*Z**0+a21*Z**1+a22*Z**2+a23*Z**3+a24*Z**4+a25*Z**5+a26*Z**6+a27*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r28*Z**0+r29*Z**1+r2a*Z**2+r2b*Z**3+r2c*Z**4+r2d*Z**5+r2e*Z**6+r2f*Z**7
         (a28*Z**0+a29*Z**1+a2a*Z**2+a2b*Z**3+a2c*Z**4+a2d*Z**5+a2e*Z**6+a2f*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r30*Z**0+r31*Z**1+r32*Z**2+r33*Z**3+r34*Z**4+r35*Z**5+r36*Z**6+r37*Z**7
         (a30*Z**0+a31*Z**1+a32*Z**2+a33*Z**3+a34*Z**4+a35*Z**5+a36*Z**6+a37*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2],
    eqmod r38*Z**0+r39*Z**1+r3a*Z**2+r3b*Z**3+r3c*Z**4+r3d*Z**5+r3e*Z**6+r3f*Z**7
         (a38*Z**0+a39*Z**1+a3a*Z**2+a3b*Z**3+a3c*Z**4+a3d*Z**5+a3e*Z**6+a3f*Z**7)*
         (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
          [Z**8+Z**4+Z**3+Z**1+1, 2]
       ]
  &&
  true
}

