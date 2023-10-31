# by@colossus7$ ~/cryptoline/examples/tests: cv -debug -v -isafety cc.cl.X 
# Parsing CryptoLine file:		[OK]		0.000396 seconds
# Checking well-formedness:		[OK]		0.000125 seconds
# Transforming to SSA form:		[OK]		0.000053 seconds
# Normalizing specification:		[OK]		0.000036 seconds
# Rewriting assignments:		[OK]		0.000014 seconds
# Verifying program safety:		
# 	 Cut 0
# 	     Round 1 (9 safety conditions, timeout = 300 seconds)
# 		 Safety condition #1	[OK]
# 		 Safety condition #4	[OK]
# 		 Safety condition #5	[OK]
# 		 Safety condition #3	[OK]
# 		 Safety condition #2	[OK]
# 		 Safety condition #6	[OK]
# 		 Safety condition #7	[OK]
# 		 Safety condition #0	[OK]
# 		 Safety condition #8	[OK]
# 	 Overall			[OK]		6.780289 seconds
# Verifying range assertions:		[OK]		422.013162 seconds
# Verifying range specification:	[OK]		0.000743 seconds
# Rewriting value-preserved casting:	[OK]		0.000026 seconds
# Verifying algebraic assertions:	[OK]		0.127151 seconds
# Verifying algebraic specification:	[OK]		0.000682 seconds
# Verification result:			[OK]		428.922871 seconds

# ----- main -----

# Story:
# |bR - BM| <= M < R/2
# |aB - LR| <= R/2
# |abR - LMR| <= |a||bR - BM|+M|aB-LR| < MR
# bR = b*R, BM = B*M, aB = a*B, LR = L*R, ab = a*b, LM = L*M
# (ab)R = T0, a(bR) = T1, a(BM) = T2, (aB)M = T3, (LR)M = T4, (LM)R = T5, 
# (ab-LM) = R1, (bR-BM) = B1, (aB-LR) = L1
# a*B1 = T6, L1*M = T7, R1*R = T8 = T6 + T7  

proc main(a@sint32,B@sint32,b@sint32,M@sint32,R@sint64) =
{ and [ R = 2**32, M = 2**23 - 2**13 + 1
  ] && and [ R = 1@64 << 32@64,
    M = 8380417@32, 0@32 <s M, 
    b <s (M >> 1@32), 0@32 <s  b + (M >> 1@32),
    (sext B 32) * (sext M 32) - (sext b 32) * R <=s (sext M 32),
    (sext b 32) * R - (sext B 32) * (sext M 32) <=s (sext M 32),
    B & 1@32 = 0@32
  ]
}

cast b64@sint64 b;
cast a64@sint64 a;
cast M64@sint64 M;
cast B64@sint64 B;
split BB dc B 1;
assert true && dc = 0@32;  # CHECK
assume dc = 0 && dc = 0@32;

mulj LL a BB;
split L0 LX LL 31;
split L2 L3 LX 30;
vpc L32@sint32 L0;
vpc XX@sint32 L2;
add L L32 XX;
cast L64@sint64 L;

cast LY@sint31 LX;
cast L1@sint64 LY;
sub LZ LL L1;

assert eq LZ (LL-L1) && and [LZ = L64 << 31@64, L1 = LL - LZ,
  L1 <s (2**30)@64, 0@64 <=s L1 + (2**30)@64];  # CHECK
assume LZ = L * 2**31 && and [LZ = L64 << 31@64, L1 = LL - LZ,
  L1 <s (2**30)@64, 0@64 <=s L1 + (2**30)@64];

mul bR b64 R;
assert true && (bR = b64 << (32@64)); # CHECK
assume bR = b * R && (bR = b64 << (32@64));
mulj BM B M;
mulj ab a b;
mul LR L64 R;
assert LR=2*LZ && and [LR = L64 << (32@64), LR = LZ << (1@64)]; # CHECK
assume LR=2*LZ && and [LR = L64 << (32@64), LR = LZ << (1@64)]; 
mulj aB a B;
assert aB=2*LL && aB = LL << (1@64); # CHECK
assume aB=2*LL && aB = LL << (1@64); 
mulj LM L M;

assert true && and [ aB - LR = L1 << 1@64]; # CHECK
assume true && and [ aB - LR = L1 << 1@64]; 

mulj T0 ab R;
mulj T1 a64 bR;
mulj T2 a64 BM;
mulj T3 aB M64;
mulj T4 LR M64;
mulj T5 LM R;

assert and [T0=T1,T4=T5] && and [T0=T1,T4=T5]; # CHECK
assume and [T0=T1,T4=T5] && and [T0=T1,T4=T5]; 
# assert T2 = T3 && T2 = T3;
# associative law assumed to hold 
assert T2 = T3 && true;
assume T2 = T3 && T2 = T3; 
 
sub B1 bR BM;
sub L1 aB LR;
sub R1 ab LM;

mulj T6 a64 B1;
#assert eq T6 (T1-T2) && T6=(T1-T2);
assert eq T6 (T1-T2) && true;
assume eq T6 (T1-T2) && T6=(T1-T2);
assert true && and [
  T6 <s (sext M64 64 << 31@128), 0@128 <s T6 + (sext M64 64 << 31@128)]; # CHECK
assume true && and [
  T6 <s (sext M64 64 << 31@128), 0@128 <s T6 + (sext M64 64 << 31@128)]; #

mulj T7 L1 M64;
#assert eq T7 (T3-T4) && T7 = (T3-T4);
assert eq T7 (T3-T4) && true;
assume true && T7 = (T3-T4);
assert true && and [
  T7 <s (sext M64 64 << 31@128), 0@128 <=s T7 + (sext M64 64 << 31@128)]; # CHECK
assume true && and [
  T7 <s (sext M64 64 << 31@128), 0@128 <=s T7 + (sext M64 64 << 31@128)]; #
  
mulj T8 R1 R;
#assert eq T8 (T0-T5) && T8 = T0-T5;
assert eq T8 (T6+T7) && true;
assume true && T8 = T6+T7;
#assert eq T8 (T0-T5) && T8 = (T0-T5);
assert eq T8 (T0-T5) && true;
assume true && T8 = (T0-T5);
assert true && and [T8 = (sext R1 64 << 32@128)]; # CHECK
assume true && and [T8 = (sext R1 64 << 32@128)]; # 
assert true && and [
  T8<s (sext M64 64 << 32@128), 0@128 <s T8 + (sext M64 64 << 32@128)]; # CHECK
assume true && and [
  T8<s (sext M64 64 << 32@128), 0@128 <s T8 + (sext M64 64 << 32@128)]; # 
assert true && and [  
  R1 <s M64, 0@64 <s R1 + M64]; # CHECK
assume true && and [  
  R1 <s M64, 0@64 <s R1 + M64]; # 
 
mull dontcare ab0 a b;
mull dontcare LM0 L M;
subs dontcare T9 ab0 LM0;
assert true && R1 = (sext T9 32); # CHECK
assume R1 = T9 && R1 = (sext T9 32); # 

assert eqmod T9 (a*b) M && and [T9 <=s M, 0@32 <=s T9+M];
assume eqmod T9 (a*b) M && and [T9 <=s M, 0@32 <=s T9+M];

{
  true && true
}

