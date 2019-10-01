proc main (L0x7fffffffdb60, L0x7fffffffdbe0, L0x7fffffffdbe8, L0x7fffffffdbf0, L0x7fffffffdbf8, carry2, r10, rax, rdi) =
{
  bveTrue
  |
  bvrTrue
}

(* push   %r15 *)
push   %%r15;
(* push   %r14 *)
push   %%r14;
(* push   %r13 *)
push   %%r13;
(* push   %r12 *)
push   %%r12;
(* push   %rbp *)
push   %%rbp;
(* mov    %rdi,%rbp *)
bvAssign rbp (bvVar rdi);
(* push   %rbx *)
push   %%rbx;
(* sub    $0x58,%rsp *)
sub    $0x58,%rsp;
(* mov    (%rdi),%rcx                              #! EA = L0x7fffffffdbe0 *)
bvAssign rcx (bvVar L0x7fffffffdbe0);
(* mov    %fs:0x28,%rax *)
mov    %fs:0x28,%%rax;
(* mov    %rax,0x48(%rsp)                          #! EA = L0x7fffffffdb98 *)
bvAssign L0x7fffffffdb98 (bvVar rax);
(* xor    %eax,%eax *)
bvAssign rax (bvConst 0);
(* mov    0x8(%rdi),%r14                           #! EA = L0x7fffffffdbe8 *)
bvAssign r14 (bvVar L0x7fffffffdbe8);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* lea    (%r14,%r14,1),%rax                       #! EA = L0x862d53ff78840e14 *)
bvAddC carry1 tmp (bvVar r14) (bvVar r14);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rsi *)
bvAssign rsi (bvVar r12);
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* movabs $0x7fffffffffffffff,%rbx *)
bvAssign rbx (bvConst 0x7fffffffffffffff);
(* mul    %r14 *)
bvMulf rdx rax (bvVar r14) (bvVar rax);
(* mov    %rbx,%rcx *)
bvAssign rcx (bvVar rbx);
(* mov    0x18(%rbp),%r14                          #! EA = L0x7fffffffdbf8 *)
bvAssign r14 (bvVar L0x7fffffffdbf8);
(* and    %rsi,%rcx *)
bvAndb rcx (bvVar rsi) (bvVar rcx);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rax *)
bvAssign rax (bvVar rsi);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* adc    %rcx,%rdx *)
bvAdcC carry rdx (bvVar rcx) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdx,%r9 *)
bvAssign r9 (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* mov    %rbx,%rcx *)
bvAssign rcx (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* and    %rbx,%rax *)
bvAndb rax (bvVar rbx) (bvVar rax);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* mov    0x10(%rbp),%r9                           #! EA = L0x7fffffffdbf0 *)
bvAssign r9 (bvVar L0x7fffffffdbf0);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* mov    %rsi,0x20(%rsp)                          #! EA = L0x7fffffffdb70 *)
bvAssign L0x7fffffffdb70 (bvVar rsi);
(* lea    (%r14,%r14,1),%rax                       #! EA = L0x96c0ede1ab931482 *)
bvAddC carry1 tmp (bvVar r14) (bvVar r14);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdb78 *)
bvAssign L0x7fffffffdb78 (bvVar rdi);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    %r12,%rsi *)
bvAssign rsi (bvVar r12);
(* mulx   %rax,%r9,%r10 *)
bvMulf r10 r9 (bvVar rax) (bvVar rdx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* and    %rsi,%rcx *)
bvAndb rcx (bvVar rsi) (bvVar rcx);
(* mul    %r14 *)
bvMulf rdx rax (bvVar r14) (bvVar rax);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rax *)
bvAssign rax (bvVar rsi);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* adc    %rcx,%rdx *)
bvAdcC carry rdx (bvVar rcx) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdx,%r9 *)
bvAssign r9 (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffdb78 *)
bvAssign rdx (bvVar L0x7fffffffdb78);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* and    %rbx,%rax *)
bvAndb rax (bvVar rbx) (bvVar rax);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdb70 *)
bvAssign rax (bvVar L0x7fffffffdb70);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,0x30(%rsp)                          #! EA = L0x7fffffffdb80 *)
bvAssign L0x7fffffffdb80 (bvVar rsi);
(* add    0x30(%rsp),%rax                          #! EA = L0x7fffffffdb80 *)
bvAddC carry rax (bvVar L0x7fffffffdb80) (bvVar rax);
(* mov    %rdi,0x38(%rsp)                          #! EA = L0x7fffffffdb88 *)
bvAssign L0x7fffffffdb88 (bvVar rdi);
(* adc    0x38(%rsp),%rdx                          #! EA = L0x7fffffffdb88 *)
bvAdcC carry rdx (bvVar L0x7fffffffdb88) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffdb70 *)
bvAssign L0x7fffffffdb70 (bvVar rax);
(* lea    0x10(%rsp),%rsi                          #! EA = L0x7fffffffdb60 *)
bvAssign rsi (bvVar L0x7fffffffdb60);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* lea    0x20(%rsp),%rdi                          #! EA = L0x7fffffffdb70 *)
bvAssign rdi (bvVar L0x7fffffffdb70);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* and    %rbx,%rax *)
bvAndb rax (bvVar rbx) (bvVar rax);
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffdb78 *)
bvAssign L0x7fffffffdb78 (bvVar rax);
(* #callq  0x404240 <fpexp1251> *)
#callq  0x404240 <fpexp1251>;
(* push   %r15 *)
push   %%r15;
(* push   %r14 *)
push   %%r14;
(* push   %r13 *)
push   %%r13;
(* push   %r12 *)
push   %%r12;
(* push   %rbp *)
push   %%rbp;
(* push   %rbx *)
push   %%rbx;
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* sub    $0x30,%rsp *)
sub    $0x30,%rsp;
(* mov    (%rdi),%r15                              #! EA = L0x7fffffffdb70 *)
bvAssign r15 (bvVar L0x7fffffffdb70);
(* mov    %rsi,-0x38(%rsp)                         #! EA = L0x7fffffffdab0 *)
bvAssign L0x7fffffffdab0 (bvVar rsi);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffdac0 *)
bvAssign L0x7fffffffdac0 (bvVar r15);
(* mulx   %r15,%r9,%r10 *)
bvMulf r10 r9 (bvVar r15) (bvVar rdx);
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffdb78 *)
bvAssign rdx (bvVar L0x7fffffffdb78);
(* mov    %r10,%rcx *)
bvAssign rcx (bvVar r10);
(* mov    %r9,%r11 *)
bvAssign r11 (bvVar r9);
(* lea    (%rdx,%rdx,1),%rsi                       #! EA = L0xe3b2094320889d14 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mulx   %rsi,%rax,%rdx *)
bvMulf rdx rax (bvVar rsi) (bvVar rdx);
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* mov    %rdi,%r14 *)
bvAssign r14 (bvVar rdi);
(* mov    %rdi,-0x40(%rsp)                         #! EA = L0x7fffffffdaa8 *)
bvAssign L0x7fffffffdaa8 (bvVar rdi);
(* movabs $0x7fffffffffffffff,%rax *)
bvAssign rax (bvConst 0x7fffffffffffffff);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* mov    %rax,%rdx *)
bvAssign rdx (bvVar rax);
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* mulx   %rbx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rbx) (bvVar rdx);
(* mov    %r14,%rdx *)
bvAssign rdx (bvVar r14);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r12,%rsi *)
bvAssign rsi (bvVar r12);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* lea    (%r9,%r9,1),%rcx                         #! EA = L0xa73f14bfd7761dd2 *)
bvAddC carry1 tmp (bvVar r9) (bvVar r9);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* mulx   %rcx,%r9,%r10 *)
bvMulf r10 r9 (bvVar rcx) (bvVar rdx);
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* mov    %rbx,%r14 *)
bvAssign r14 (bvVar rbx);
(* shrd   $0x3f,%rdi,%rcx *)
bvConcatShl rdi rcx (bvVar rdi) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rsi,%rbp *)
bvAssign rbp (bvVar rsi);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rsi                       #! EA = L0x4b24ce1c1c4a712c *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdi,%r8 *)
bvAssign r8 (bvVar rdi);
(* mulx   %rsi,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rsi) (bvVar rdx);
(* add    %r14,%rcx *)
bvAddC carry rcx (bvVar r14) (bvVar rcx);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%rdi *)
bvAndb rdi (bvVar rcx) (bvVar rdi);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%r12 *)
bvAssign r12 (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* and    %rax,%rdx *)
bvAndb rdx (bvVar rax) (bvVar rdx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0x27f0a1d93a0e5ac2 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mov    %rax,%rdx *)
bvAssign rdx (bvVar rax);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mulx   %rdi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rdi) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rbp,%rdx *)
bvAssign rdx (bvVar rbp);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rax,%rdi *)
bvAndb rdi (bvVar rax) (bvVar rdi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* mulx   %rbx,%r9,%r10 *)
bvMulf r10 r9 (bvVar rbx) (bvVar rdx);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    %rbx,%r11 *)
bvAssign r11 (bvVar rbx);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* add    %rdi,%rcx *)
bvAddC carry rcx (bvVar rdi) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* add    %r11,%r11 *)
bvAddC carry r11 (bvVar r11) (bvVar r11);
(* and    %rcx,%rdi *)
bvAndb rdi (bvVar rcx) (bvVar rdi);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r11,%r11,%r12 *)
bvMulf r12 r11 (bvVar r11) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rsi                       #! EA = L0xd36feb154eed7d56 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rbp *)
bvAssign rbp (bvVar rdi);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rdx,-0x48(%rsp)                         #! EA = L0x7fffffffdaa0 *)
bvAssign L0x7fffffffdaa0 (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mov    %rdi,-0x60(%rsp)                         #! EA = L0x7fffffffda88 *)
bvAssign L0x7fffffffda88 (bvVar rdi);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r8,%rbx *)
bvAssign rbx (bvVar r8);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0x1ee0708a79f99156 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rdi,%r11 *)
bvAssign r11 (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0xe1e0c1e49b5fc236 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r8,%rbx *)
bvAssign rbx (bvVar r8);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0x65881fe03cacadc *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* mov    -0x48(%rsp),%rdx                         #! EA = L0x7fffffffdaa0 *)
bvAssign rdx (bvVar L0x7fffffffdaa0);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* mulx   %rbx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rbx) (bvVar rdx);
(* mov    %rbp,%rdx *)
bvAssign rdx (bvVar rbp);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r12,%rsi *)
bvAssign rsi (bvVar r12);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* lea    (%r9,%r9,1),%rcx                         #! EA = L0xddf885b2f32a9258 *)
bvAddC carry1 tmp (bvVar r9) (bvVar r9);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* mulx   %rcx,%r9,%r10 *)
bvMulf r10 r9 (bvVar rcx) (bvVar rdx);
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* mov    %rbx,%r14 *)
bvAssign r14 (bvVar rbx);
(* shrd   $0x3f,%rdi,%rcx *)
bvConcatShl rdi rcx (bvVar rdi) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rsi                       #! EA = L0x8db90a66137bf97c *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rbp *)
bvAssign rbp (bvVar rdi);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rdx,-0x50(%rsp)                         #! EA = L0x7fffffffda98 *)
bvAssign L0x7fffffffda98 (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mov    %rdi,-0x68(%rsp)                         #! EA = L0x7fffffffda80 *)
bvAssign L0x7fffffffda80 (bvVar rdi);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r8,%rbx *)
bvAssign rbx (bvVar r8);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdx                       #! EA = L0x40498565260fb97e *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xecd213c59987535e *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xfc4803f399169572 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x15875dbb99b522dc *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x9959a20e4b557998 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r10,%rcx *)
bvAssign rcx (bvVar r10);
(* mov    %rdi,%r11 *)
bvAssign r11 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r11,%rdx *)
bvAssign rdx (bvVar r11);
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %r8,%rdi *)
bvAdcC carry rdi (bvVar r8) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mov    %rdi,%r8 *)
bvAssign r8 (bvVar rdi);
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* lea    (%rdi,%rdi,1),%rdi                       #! EA = L0x3efe662ffe0e3e6a *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mulx   %rdi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rdi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%rsi *)
bvAndb rsi (bvVar rcx) (bvVar rsi);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rsi,%r10 *)
bvAssign r10 (bvVar rsi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %rdi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rdi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdx                       #! EA = L0x2125bc2512f148dc *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* mov    -0x50(%rsp),%rdx                         #! EA = L0x7fffffffda98 *)
bvAssign rdx (bvVar L0x7fffffffda98);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* mov    %r14,%rsi *)
bvAssign rsi (bvVar r14);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mulx   %rbx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rbx) (bvVar rdx);
(* mov    %rbp,%rdx *)
bvAssign rdx (bvVar rbp);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* lea    (%r9,%r9,1),%rcx                         #! EA = L0xd5e8e3fcdf92875c *)
bvAddC carry1 tmp (bvVar r9) (bvVar r9);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* mulx   %rcx,%r9,%r10 *)
bvMulf r10 r9 (bvVar rcx) (bvVar rdx);
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* mov    %rbx,%r12 *)
bvAssign r12 (bvVar rbx);
(* shrd   $0x3f,%rdi,%rcx *)
bvConcatShl rdi rcx (bvVar rdi) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rsi                       #! EA = L0x28c51b26bfa7fb12 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rbp *)
bvAssign rbp (bvVar rdi);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rdx,-0x58(%rsp)                         #! EA = L0x7fffffffda90 *)
bvAssign L0x7fffffffda90 (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffdae0 *)
bvAssign L0x7fffffffdae0 (bvVar rdi);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r8,%rbx *)
bvAssign rbx (bvVar r8);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdx                       #! EA = L0x54017259e4b25ef8 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xd5ec07d4400ed3f2 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x8570a945e361a794 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xe0307650c983ce80 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x1a45c474e61db244 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x565e8d1a74d3751a *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x8ba76d1c8f4a2bd0 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xc9731bf2a650823c *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x575f736a1abd6514 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x94c21d24b2219eea *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x103eee1890965eaa *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x857993c7df89dd02 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r10 *)
bvAndb r10 (bvVar rcx) (bvVar r10);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rbx,%r10 *)
bvAssign r10 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %r10,%r11 *)
bvAssign r11 (bvVar r10);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0xae2915f74d5dea12 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r10,%rcx *)
bvAssign rcx (bvVar r10);
(* mov    %rdi,%r11 *)
bvAssign r11 (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %r11,%rdx *)
bvAssign rdx (bvVar r11);
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* and    %rax,%r8 *)
bvAndb r8 (bvVar rax) (bvVar r8);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %r8,%rdi *)
bvAdcC carry rdi (bvVar r8) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mov    %rdi,%r8 *)
bvAssign r8 (bvVar rdi);
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* lea    (%rdi,%rdi,1),%rdi                       #! EA = L0x7da98541e63212d4 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mulx   %rdi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rdi) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* and    %rcx,%rsi *)
bvAndb rsi (bvVar rcx) (bvVar rsi);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rsi,%r10 *)
bvAssign r10 (bvVar rsi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mulx   %rdi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rdi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %rdi,%rsi *)
bvAssign rsi (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdx                       #! EA = L0xb77972253a67b2e8 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* mov    -0x58(%rsp),%rdx                         #! EA = L0x7fffffffda90 *)
bvAssign rdx (bvVar L0x7fffffffda90);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* adc    %r8,%rdi *)
bvAdcC carry rdi (bvVar r8) (bvVar rdi) carry;
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* mov    %rdi,%rsi *)
bvAssign rsi (bvVar rdi);
(* and    %rax,%rsi *)
bvAndb rsi (bvVar rax) (bvVar rsi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* mov    %rsi,%rbx *)
bvAssign rbx (bvVar rsi);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* mov    %r14,%rsi *)
bvAssign rsi (bvVar r14);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mulx   %rbx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rbx) (bvVar rdx);
(* mov    %rbp,%rdx *)
bvAssign rdx (bvVar rbp);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* lea    (%r9,%r9,1),%rcx                         #! EA = L0x760e161d395bccfe *)
bvAddC carry1 tmp (bvVar r9) (bvVar r9);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* mulx   %rcx,%r9,%r10 *)
bvMulf r10 r9 (bvVar rcx) (bvVar rdx);
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* mov    %rbx,%r12 *)
bvAssign r12 (bvVar rbx);
(* shrd   $0x3f,%rdi,%rcx *)
bvConcatShl rdi rcx (bvVar rdi) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    $0x1f,%r12d *)
mov    $0x1f,%r12d;
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rsi,%r8 *)
bvAssign r8 (bvVar rsi);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x4debf024a7de18dc *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rdi,%r11 *)
bvAssign r11 (bvVar rdi);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %r14,%rsi *)
bvAddC carry rsi (bvVar r14) (bvVar rsi);
(* mov    %r13,%r9 *)
bvAssign r9 (bvVar r13);
(* mulx   %r11,%r13,%r14 *)
bvMulf r14 r13 (bvVar r11) (bvVar rdx);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* mov    %r8,-0x18(%rsp)                          #! EA = L0x7fffffffdad0 *)
bvAssign L0x7fffffffdad0 (bvVar r8);
(* mov    %r12d,%r8d *)
mov    %r12d,%r8d;
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffdab8 *)
bvAssign L0x7fffffffdab8 (bvVar rdx);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* mov    %r11,(%rsp)                              #! EA = L0x7fffffffdae8 *)
bvAssign L0x7fffffffdae8 (bvVar r11);
(* adc    %r14,%rdi *)
bvAdcC carry rdi (bvVar r14) (bvVar rdi) carry;
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%r9 *)
bvAssign r9 (bvVar rsi);
(* mov    %rdi,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rdi);
(* nopl   (%rax)                                   #! EA = L0x7fffffffffffffff *)
nopl   %%L0x7fffffffffffffff                                   #! L0x7fffffffffffffff = L0x7fffffffffffffff;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x7fee5fbc60f016e6 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x419188b4f971097e *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xabe0eab1f274e3e6 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xa19a713eed249a58 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x2e47ce5a12c62142 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x27d2b6df540c75d6 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xcef53b65881ec154 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x1b95bcf567a0dbc6 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xe5ca9a392364a668 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xce3cade112778402 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xc67425120333709c *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x10615d914dc5ec04 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x8b9fd15c6fbfde14 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x99db86d6ad55fc5a *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x166837a231fa5a0a *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xeb3e63db5de1eb96 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x71773b97047baddc *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x31c64f88e5646bca *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xa685768967ea087a *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x89cbd9f33814538a *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x3e07e06362036658 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xfd77b149a67af25a *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xf3b855333b306dbe *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xc8a411394a6ea926 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xca5ccf889c3ad7d0 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0xc97640ba443fe7a2 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x5459da7de34ccbb4 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x23e0b5fb039d4ffa *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x619458b0935e8902 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x44efbd2a19012f36 *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* movabs $0x7fffffffffffffff,%rbp *)
bvAssign rbp (bvConst 0x7fffffffffffffff);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* lea    (%rdx,%rdx,1),%r13                       #! EA = L0x9b7412d923c0360e *)
bvAddC carry1 tmp (bvVar rdx) (bvVar rdx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r13,%r9,%r10 *)
bvMulf r10 r9 (bvVar r13) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* add    %r12,%r9 *)
bvAddC carry r9 (bvVar r12) (bvVar r9);
(* adc    %rbx,%r10 *)
bvAdcC carry r10 (bvVar rbx) (bvVar r10) carry;
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* and    %r9,%rbx *)
bvAndb rbx (bvVar r9) (bvVar rbx);
(* shrd   $0x3f,%r10,%r9 *)
bvConcatShl r10 r9 (bvVar r10) (bvVar r9) 64-0x3f;
(* mov    %rbx,%r15 *)
bvAssign r15 (bvVar rbx);
(* shr    $0x3f,%r10 *)
bvSplit r10 tmp (bvVar r10) 0x3f;
(* mulx   %r13,%rcx,%rbx *)
bvMulf rbx rcx (bvVar r13) (bvVar rdx);
(* add    %r9,%rcx *)
bvAddC carry rcx (bvVar r9) (bvVar rcx);
(* adc    %r10,%rbx *)
bvAdcC carry rbx (bvVar r10) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r15,%rbx *)
bvAdcC carry rbx (bvVar r15) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rbx,%r9 *)
bvAssign r9 (bvVar rbx);
(* and    %rax,%rbx *)
bvAndb rbx (bvVar rax) (bvVar rbx);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* mov    %r9,%rcx *)
bvAssign rcx (bvVar r9);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%r9 *)
bvAssign r9 (bvVar rcx);
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar rbx);
(* sub    $0x1,%r8d *)
sub    $0x1,%r8d;
(* #jne    0x4050f8 <fpexp1251+3768> *)
#jne    0x4050f8 <fpexp1251+3768>;
(* mov    -0x18(%rsp),%r8                          #! EA = L0x7fffffffdad0 *)
bvAssign r8 (bvVar L0x7fffffffdad0);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* mov    (%rsp),%r11                              #! EA = L0x7fffffffdae8 *)
bvAssign r11 (bvVar L0x7fffffffdae8);
(* mov    -0x28(%rsp),%r15                         #! EA = L0x7fffffffdac0 *)
bvAssign r15 (bvVar L0x7fffffffdac0);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    %r8,-0x28(%rsp)                          #! EA = L0x7fffffffdac0 *)
bvAssign L0x7fffffffdac0 (bvVar r8);
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* mov    -0x70(%rsp),%rdx                         #! EA = L0x7fffffffda78 *)
bvAssign rdx (bvVar L0x7fffffffda78);
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffdad0 *)
bvAssign L0x7fffffffdad0 (bvVar r11);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* mov    %r11,%rdx *)
bvAssign rdx (bvVar r11);
(* mulx   %r9,%r9,%r10 *)
bvMulf r10 r9 (bvVar r9) (bvVar rdx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* mov    $0x20,%r9d *)
mov    $0x20,%r9d;
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* add    %rbx,%rsi *)
bvAddC carry rsi (bvVar rbx) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* mov    -0x70(%rsp),%rax                         #! EA = L0x7fffffffda78 *)
bvAssign rax (bvVar L0x7fffffffda78);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %r15,-0x70(%rsp)                         #! EA = L0x7fffffffda78 *)
bvAssign L0x7fffffffda78 (bvVar r15);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %rax,%rax *)
bvAddC carry rax (bvVar rax) (bvVar rax);
(* mul    %r11 *)
bvMulf rdx rax (bvVar r11) (bvVar rax);
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %rcx,%rax *)
bvAddC carry rax (bvVar rcx) (bvVar rax);
(* adc    %r14,%rdx *)
bvAdcC carry rdx (bvVar r14) (bvVar rdx) carry;
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* and    %rbp,%rax *)
bvAndb rax (bvVar rbp) (bvVar rax);
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* xchg   %ax,%ax *)
xchg   %ax,%ax;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xf4f1a5d87192ce42 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x9381e460b4501318 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xb6d4922e40283b88 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xa11d0ef25c78cd7e *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x526270ec017efcbe *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xd0861023103bf196 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xd04d8291a3809a9e *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xa8b35e31e5137130 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x48be01f6abf8eb3c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x78ea0fcc7cdf7f54 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x77b2de5c45d41e90 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x6e60e7befeb0e8da *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xacf92e20f373b64e *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x4445c0c7e6efeb4e *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xb3f6b8da29d8ff4 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xf64637e86b49d8aa *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x4215d52be8ab9ed8 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x353dd8742df46ee2 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xc8c1da96ba2b370c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x7837eec8bf4f1fd0 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xdcf27708ce51c0aa *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xe018032568b7f56c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x10a3233af2e37d50 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x9c6e63e3bf2e53b8 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xe2cacbd80f25882c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x31f85e88a8a421d4 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xea718762805b76e4 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x998d054e12ef116e *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x12c67233ad96da46 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xff1e6e934098a736 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0x812a318bbbef7f7c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* lea    (%r8,%r8,1),%r13                         #! EA = L0xcd4049ec442b317c *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rbp,%rax *)
bvAssign rax (bvVar rbp);
(* movabs $0x7fffffffffffffff,%r10 *)
bvAssign r10 (bvConst 0x7fffffffffffffff);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mulx   %r13,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r13) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r13,%rdx *)
bvAssign rdx (bvVar r13);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r15 *)
bvAssign r15 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %r8,%rax,%rdx *)
bvMulf rdx rax (bvVar r8) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r15,%rdi *)
bvAdcC carry rdi (bvVar r15) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbp,%rdi *)
bvAndb rdi (bvVar rbp) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* sub    $0x1,%r9d *)
sub    $0x1,%r9d;
(* #jne    0x405210 <fpexp1251+4048> *)
#jne    0x405210 <fpexp1251+4048>;
(* mov    -0x28(%rsp),%r8                          #! EA = L0x7fffffffdac0 *)
bvAssign r8 (bvVar L0x7fffffffdac0);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    -0x18(%rsp),%r11                         #! EA = L0x7fffffffdad0 *)
bvAssign r11 (bvVar L0x7fffffffdad0);
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffda78 *)
bvAssign r15 (bvVar L0x7fffffffda78);
(* mulx   %r8,%r13,%r14 *)
bvMulf r14 r13 (bvVar r8) (bvVar rdx);
(* mulx   %r11,%r11,%r12 *)
bvMulf r12 r11 (bvVar r11) (bvVar rdx);
(* mov    %rax,%rdx *)
bvAssign rdx (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* mulx   %r8,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r8) (bvVar rdx);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mov    %r13,%r11 *)
bvAssign r11 (bvVar r13);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* add    %r14,%rsi *)
bvAddC carry rsi (bvVar r14) (bvVar rsi);
(* mulx   -0x30(%rsp),%r13,%r14                    #! EA = L0x7fffffffdab8 *)
bvMulf r14 r13 (bvVar L0x7fffffffdab8) (bvVar rdx);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mov    %r14,%rdx *)
bvAssign rdx (bvVar r14);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %r13,%rax *)
bvAssign rax (bvVar r13);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* mov    %rax,%r13 *)
bvAssign r13 (bvVar rax);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* and    %r10,%rax *)
bvAndb rax (bvVar r10) (bvVar rax);
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* adc    %rax,%rdi *)
bvAdcC carry rdi (bvVar rax) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rax                       #! EA = L0x2f0998f3499df968 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%r8 *)
bvAssign r8 (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rax,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rax) (bvVar rdx);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mul    %r8 *)
bvMulf rdx rax (bvVar r8) (bvVar rax);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x91c265d67f691df0 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x516deba9b7d0032c *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xee426872aa6b172 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x42c7f899b36f4d18 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xa8dbe2729e304a08 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x8a1ba1775aec366a *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x85da78801b2e23a2 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x6cee83db5312a24 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x74041e8ac09048b6 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%r14 *)
bvAssign r14 (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x1aefa7e9f655443e *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x63efe95d3cac07fa *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%r14 *)
bvAssign r14 (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xbe18faf7dcae5fc8 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xacc5040e7bda0968 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%r14 *)
bvAssign r14 (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdi                       #! EA = L0xa9cceeeb8216b20a *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* mulx   %rdi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rdi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mulx   %rax,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rax) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mov    %rdi,%rcx *)
bvAssign rcx (bvVar rdi);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rcx *)
bvSplit rcx tmp (bvVar rcx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0x10d55a55226e68c2 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    -0x8(%rsp),%r14                          #! EA = L0x7fffffffdae0 *)
bvAssign r14 (bvVar L0x7fffffffdae0);
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* and    %rcx,%rax *)
bvAndb rax (bvVar rcx) (bvVar rax);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* mov    %rcx,%rax *)
bvAssign rax (bvVar rcx);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* shrd   $0x3f,%rbx,%rax *)
bvConcatShl rbx rax (bvVar rbx) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r13,%rax *)
bvAddC carry rax (bvVar r13) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* mov    -0x58(%rsp),%rdx                         #! EA = L0x7fffffffda90 *)
bvAssign rdx (bvVar L0x7fffffffda90);
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* mov    %r14,%rdx *)
bvAssign rdx (bvVar r14);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* mov    %rcx,%r11 *)
bvAssign r11 (bvVar rcx);
(* lea    (%r8,%r8,1),%rcx                         #! EA = L0x59362c48d46f0c10 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %r14,%rdx *)
bvAssign rdx (bvVar r14);
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* mov    %rsi,%rax *)
bvAssign rax (bvVar rsi);
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* shrd   $0x3f,%rdi,%rax *)
bvConcatShl rdi rax (bvVar rdi) (bvVar rax) 64-0x3f;
(* add    %rcx,%rax *)
bvAddC carry rax (bvVar rcx) (bvVar rax);
(* adc    %rbx,%rdx *)
bvAdcC carry rdx (bvVar rbx) (bvVar rdx) carry;
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* and    %r10,%rax *)
bvAndb rax (bvVar r10) (bvVar rax);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %rax,%rbx *)
bvAssign rbx (bvVar rax);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rax                       #! EA = L0x22b09ac1e143c796 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%r8 *)
bvAssign r8 (bvVar rbx);
(* mulx   %rax,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rax) (bvVar rdx);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mul    %r8 *)
bvMulf rdx rax (bvVar r8) (bvVar rax);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xa35297e5f1a65546 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x1587d386d29bcfb0 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x270b8e0ca7936d8e *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%r14 *)
bvAssign r14 (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xebc82c3354efdbac *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r13,%rcx *)
bvAddC carry rcx (bvVar r13) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0xa95c1ee3bcbe3ab0 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mov    %r10,%r14 *)
bvAssign r14 (bvVar r10);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r14 *)
bvAndb r14 (bvVar rcx) (bvVar r14);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r14,%rbx *)
bvAdcC carry rbx (bvVar r14) (bvVar rbx) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdi                       #! EA = L0x9c3b1ee596132c34 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rcx *)
bvAssign rcx (bvVar r14);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* mulx   %rdi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rdi) (bvVar rdx);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mov    %r10,%rdx *)
bvAssign rdx (bvVar r10);
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r12,%rbx *)
bvAdcC carry rbx (bvVar r12) (bvVar rbx) carry;
(* and    %rcx,%rdx *)
bvAndb rdx (bvVar rcx) (bvVar rdx);
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mulx   %rax,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rax) (bvVar rdx);
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mov    %rdi,%rcx *)
bvAssign rcx (bvVar rdi);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rcx *)
bvSplit rcx tmp (bvVar rcx) 0x3f;
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rsi                       #! EA = L0x3d57d9864f34cc22 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* and    %rcx,%rax *)
bvAndb rax (bvVar rcx) (bvVar rax);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* mov    %rcx,%rax *)
bvAssign rax (bvVar rcx);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* shrd   $0x3f,%rbx,%rax *)
bvConcatShl rbx rax (bvVar rbx) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r13,%rax *)
bvAddC carry rax (bvVar r13) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* mov    -0x50(%rsp),%rdx                         #! EA = L0x7fffffffda98 *)
bvAssign rdx (bvVar L0x7fffffffda98);
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* mov    -0x68(%rsp),%rdx                         #! EA = L0x7fffffffda80 *)
bvAssign rdx (bvVar L0x7fffffffda80);
(* add    %rbx,%r11 *)
bvAddC carry r11 (bvVar rbx) (bvVar r11);
(* adc    %r14,%r12 *)
bvAdcC carry r12 (bvVar r14) (bvVar r12) carry;
(* mov    %r11,%rsi *)
bvAssign rsi (bvVar r11);
(* mov    %rcx,%r11 *)
bvAssign r11 (bvVar rcx);
(* lea    (%r8,%r8,1),%rcx                         #! EA = L0xebf683c16e0ffc5a *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rdi *)
bvAssign rdi (bvVar r12);
(* mov    %r10,%r8 *)
bvAssign r8 (bvVar r10);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    -0x68(%rsp),%rdx                         #! EA = L0x7fffffffda80 *)
bvAssign rdx (bvVar L0x7fffffffda80);
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %rax,%rdi *)
bvAdcC carry rdi (bvVar rax) (bvVar rdi) carry;
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rcx                       #! EA = L0x80c8f7d8b7f082d4 *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rax,%r11 *)
bvAssign r11 (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* and    %r11,%rax *)
bvAndb rax (bvVar r11) (bvVar rax);
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* mov    %r11,%rax *)
bvAssign rax (bvVar r11);
(* mulx   %rbx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rbx) (bvVar rdx);
(* mov    %r12,%rdx *)
bvAssign rdx (bvVar r12);
(* shrd   $0x3f,%r12,%rax *)
bvConcatShl r12 rax (bvVar r12) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rcx,%rax *)
bvAddC carry rax (bvVar rcx) (bvVar rax);
(* adc    %rbx,%rdx *)
bvAdcC carry rdx (bvVar rbx) (bvVar rdx) carry;
(* add    %r13,%rax *)
bvAddC carry rax (bvVar r13) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%r11 *)
bvAssign r11 (bvVar rax);
(* mov    %rdx,%r12 *)
bvAssign r12 (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* mov    %r11,%rsi *)
bvAssign rsi (bvVar r11);
(* mov    %r12,%rbx *)
bvAssign rbx (bvVar r12);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rdx                       #! EA = L0x9a7e186add6a5cde *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rcx *)
bvAssign rcx (bvVar r12);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mov    %r14,%rbx *)
bvAssign rbx (bvVar r14);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* and    %rcx,%r8 *)
bvAndb r8 (bvVar rcx) (bvVar r8);
(* shrd   $0x3f,%rbx,%rcx *)
bvConcatShl rbx rcx (bvVar rbx) (bvVar rcx) 64-0x3f;
(* shr    $0x3f,%rbx *)
bvSplit rbx tmp (bvVar rbx) 0x3f;
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* add    %r11,%rcx *)
bvAddC carry rcx (bvVar r11) (bvVar rcx);
(* adc    %r8,%rbx *)
bvAdcC carry rbx (bvVar r8) (bvVar rbx) carry;
(* mov    %rcx,%rsi *)
bvAssign rsi (bvVar rcx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* xor    %ebx,%ebx *)
bvAssign rbx (bvConst 0);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%r8                        #! EA = L0x19ec70d6d3d0c4fa *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rsi *)
bvAssign rsi (bvVar r14);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* and    %rsi,%rbx *)
bvAndb rbx (bvVar rsi) (bvVar rbx);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rbx,%r12 *)
bvAssign r12 (bvVar rbx);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* mov    %rdi,%rsi *)
bvAssign rsi (bvVar rdi);
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mulx   %rsi,%r13,%r14 *)
bvMulf r14 r13 (bvVar rsi) (bvVar rdx);
(* mov    %rdi,%rcx *)
bvAssign rcx (bvVar rdi);
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* lea    (%rdi,%rdi,1),%rdi                       #! EA = L0x13d1f30ff2157fb0 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mulx   %rdi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rdi) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* and    %r8,%rax *)
bvAndb rax (bvVar r8) (bvVar rax);
(* mov    %rdx,%r9 *)
bvAssign r9 (bvVar rdx);
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* mov    %r8,%rax *)
bvAssign rax (bvVar r8);
(* mulx   %rdi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rdi) (bvVar rdx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* shrd   $0x3f,%r9,%rax *)
bvConcatShl r9 rax (bvVar r9) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r13,%rax *)
bvAddC carry rax (bvVar r13) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* xor    %r14d,%r14d *)
bvAssign r14 (bvConst 0);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* mov    -0x48(%rsp),%rdx                         #! EA = L0x7fffffffdaa0 *)
bvAssign rdx (bvVar L0x7fffffffdaa0);
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* mulx   %r8,%r11,%r12 *)
bvMulf r12 r11 (bvVar r8) (bvVar rdx);
(* mov    -0x60(%rsp),%rdx                         #! EA = L0x7fffffffda88 *)
bvAssign rdx (bvVar L0x7fffffffda88);
(* add    %rbx,%r11 *)
bvAddC carry r11 (bvVar rbx) (bvVar r11);
(* adc    %r14,%r12 *)
bvAdcC carry r12 (bvVar r14) (bvVar r12) carry;
(* mov    %r11,%rsi *)
bvAssign rsi (bvVar r11);
(* mov    %rcx,%r11 *)
bvAssign r11 (bvVar rcx);
(* lea    (%r8,%r8,1),%rcx                         #! EA = L0x5d1a5e70575d626a *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rdi *)
bvAssign rdi (bvVar r12);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* mov    -0x60(%rsp),%rdx                         #! EA = L0x7fffffffda88 *)
bvAssign rdx (bvVar L0x7fffffffda88);
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %rcx,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rcx) (bvVar rdx);
(* add    %rcx,%rsi *)
bvAddC carry rsi (bvVar rcx) (bvVar rsi);
(* adc    %rbx,%rdi *)
bvAdcC carry rdi (bvVar rbx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %rax,%rdi *)
bvAdcC carry rdi (bvVar rax) (bvVar rdi) carry;
(* mov    %rsi,%rcx *)
bvAssign rcx (bvVar rsi);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %r10,%rdi *)
bvAndb rdi (bvVar r10) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rdi,%rbx *)
bvAssign rbx (bvVar rdi);
(* add    %rax,%rcx *)
bvAddC carry rcx (bvVar rax) (bvVar rcx);
(* adc    %rdx,%rbx *)
bvAdcC carry rbx (bvVar rdx) (bvVar rbx) carry;
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* lea    (%rbx,%rbx,1),%rdi                       #! EA = L0x43f9ca5aadf007ac *)
bvAddC carry1 tmp (bvVar rbx) (bvVar rbx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mov    %rbx,%rsi *)
bvAssign rsi (bvVar rbx);
(* mulx   %rdi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rdi) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* and    %rcx,%rax *)
bvAndb rax (bvVar rcx) (bvVar rax);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* mov    %rax,%r12 *)
bvAssign r12 (bvVar rax);
(* mov    %rcx,%rax *)
bvAssign rax (bvVar rcx);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* shrd   $0x3f,%rbx,%rax *)
bvConcatShl rbx rax (bvVar rbx) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r13,%rax *)
bvAddC carry rax (bvVar r13) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rbx *)
bvAssign rbx (bvVar rdx);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* and    %r10,%rbx *)
bvAndb rbx (bvVar r10) (bvVar rbx);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    %rbx,%rdx *)
bvAssign rdx (bvVar rbx);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mov    -0x40(%rsp),%r15                         #! EA = L0x7fffffffdaa8 *)
bvAssign r15 (bvVar L0x7fffffffdaa8);
(* mulx   %rax,%rcx,%rbx *)
bvMulf rbx rcx (bvVar rax) (bvVar rdx);
(* mulx   %rdi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rdi) (bvVar rdx);
(* lea    (%rdi,%rdi,1),%rsi                       #! EA = L0x7418e539549b8466 *)
bvAddC carry1 tmp (bvVar rdi) (bvVar rdi);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mulx   %rax,%rax,%rdx *)
bvMulf rdx rax (bvVar rax) (bvVar rdx);
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* add    %rbx,%rax *)
bvAddC carry rax (bvVar rbx) (bvVar rax);
(* mov    %rax,%r8 *)
bvAssign r8 (bvVar rax);
(* mov    %r10,%rax *)
bvAssign rax (bvVar r10);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* and    %r8,%rax *)
bvAndb rax (bvVar r8) (bvVar rax);
(* mov    %rdx,%r9 *)
bvAssign r9 (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* mov    %r8,%rax *)
bvAssign rax (bvVar r8);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* shrd   $0x3f,%r9,%rax *)
bvConcatShl r9 rax (bvVar r9) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %rcx,%rax *)
bvAddC carry rax (bvVar rcx) (bvVar rax);
(* adc    %r14,%rdx *)
bvAdcC carry rdx (bvVar r14) (bvVar rdx) carry;
(* mov    %rax,%rcx *)
bvAssign rcx (bvVar rax);
(* xor    %edi,%edi *)
bvAssign rdi (bvConst 0);
(* mov    %rdx,%rsi *)
bvAssign rsi (bvVar rdx);
(* and    %rdx,%r10 *)
bvAndb r10 (bvVar rdx) (bvVar r10);
(* shr    $0x3f,%rsi *)
bvSplit rsi tmp (bvVar rsi) 0x3f;
(* mov    %r10,%rbx *)
bvAssign rbx (bvVar r10);
(* add    %rsi,%rcx *)
bvAddC carry rcx (bvVar rsi) (bvVar rcx);
(* adc    %rdi,%rbx *)
bvAdcC carry rbx (bvVar rdi) (bvVar rbx) carry;
(* mov    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffdab0 *)
bvAssign rdi (bvVar L0x7fffffffdab0);
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdb60 *)
bvAssign L0x7fffffffdb60 (bvVar rcx);
(* mov    %rbx,0x8(%rdi)                           #! EA = L0x7fffffffdb68 *)
bvAssign L0x7fffffffdb68 (bvVar rbx);
(* add    $0x30,%rsp *)
add    $0x30,%rsp;
(* pop    %rbx *)
pop    %%rbx;
(* pop    %rbp *)
pop    %%rbp;
(* pop    %r12 *)
pop    %%r12;
(* pop    %r13 *)
pop    %%r13;
(* pop    %r14 *)
pop    %%r14;
(* pop    %r15 *)
pop    %%r15;
(* #retq *)
#retq;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffdb60 *)
bvAssign r9 (bvVar L0x7fffffffdb60);
(* mov    0x18(%rsp),%rcx                          #! EA = L0x7fffffffdb68 *)
bvAssign rcx (bvVar L0x7fffffffdb68);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r9,%r11,%r12 *)
bvMulf r12 r11 (bvVar r9) (bvVar rdx);
(* lea    (%rcx,%rcx,1),%rsi                       #! EA = L0x630737a7cfa0774 *)
bvAddC carry1 tmp (bvVar rcx) (bvVar rcx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mov    %r12,%rax *)
bvAssign rax (bvVar r12);
(* mulx   %rsi,%r9,%r10 *)
bvMulf r10 r9 (bvVar rsi) (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %r9,%rax *)
bvAddC carry rax (bvVar r9) (bvVar rax);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* and    %r14,%rax *)
bvAndb rax (bvVar r14) (bvVar rax);
(* mov    %rdx,%r15 *)
bvAssign r15 (bvVar rdx);
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* shrd   $0x3f,%r15,%rax *)
bvConcatShl r15 rax (bvVar r15) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdx,%rdi *)
bvAssign rdi (bvVar rdx);
(* mov    %rdi,%r9 *)
bvAssign r9 (bvVar rdi);
(* and    %rbx,%rdi *)
bvAndb rdi (bvVar rbx) (bvVar rdi);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* mov    %rdi,%rdx *)
bvAssign rdx (bvVar rdi);
(* add    %r9,%rax *)
bvAddC carry rax (bvVar r9) (bvVar rax);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdx,%r8 *)
bvAssign r8 (bvVar rdx);
(* mov    %rax,%rdx *)
bvAssign rdx (bvVar rax);
(* lea    (%r8,%r8,1),%rcx                         #! EA = L0x52a095ad9e499fe4 *)
bvAddC carry1 tmp (bvVar r8) (bvVar r8);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* mulx   %rax,%r11,%r12 *)
bvMulf r12 r11 (bvVar rax) (bvVar rdx);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* mulx   %rcx,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rcx) (bvVar rdx);
(* add    %r12,%rsi *)
bvAddC carry rsi (bvVar r12) (bvVar rsi);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffdb78 *)
bvAssign r8 (bvVar L0x7fffffffdb78);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* and    %rsi,%rax *)
bvAndb rax (bvVar rsi) (bvVar rax);
(* shrd   $0x3f,%rdi,%rsi *)
bvConcatShl rdi rsi (bvVar rdi) (bvVar rsi) 64-0x3f;
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* mulx   %rcx,%rax,%rdx *)
bvMulf rdx rax (bvVar rcx) (bvVar rdx);
(* add    %rax,%rsi *)
bvAddC carry rsi (bvVar rax) (bvVar rsi);
(* adc    %rdx,%rdi *)
bvAdcC carry rdi (bvVar rdx) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,%r9 *)
bvAssign r9 (bvVar rsi);
(* mov    0x20(%rsp),%rsi                          #! EA = L0x7fffffffdb70 *)
bvAssign rsi (bvVar L0x7fffffffdb70);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %rdi,%rax *)
bvAssign rax (bvVar rdi);
(* and    %rbx,%rdi *)
bvAndb rdi (bvVar rbx) (bvVar rdi);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* add    %rax,%r9 *)
bvAddC carry r9 (bvVar rax) (bvVar r9);
(* adc    %rdx,%r10 *)
bvAdcC carry r10 (bvVar rdx) (bvVar r10) carry;
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %rsi,%r11,%r12 *)
bvMulf r12 r11 (bvVar rsi) (bvVar rdx);
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mov    %r10,%rcx *)
bvAssign rcx (bvVar r10);
(* mov    %r12,%rax *)
bvAssign rax (bvVar r12);
(* mulx   %r10,%rsi,%rdi *)
bvMulf rdi rsi (bvVar r10) (bvVar rdx);
(* mov    %r9,%rdx *)
bvAssign rdx (bvVar r9);
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* lea    (%rcx,%rcx,1),%r9                        #! EA = L0xbc26658cee324700 *)
bvAddC carry1 tmp (bvVar rcx) (bvVar rcx);
 bvAddC carry2 (bvVar tmp) (bvConst 1);
 bvAssert bvtrue | bveq (bvvar carry1) (bvconst 0);
 bvAssume bveq (bvvar carry1) (bvconst 0) | bvtrue;
 bvAssert bvtrue | bveq (bvvar carry2) (bvconst 0);
 bvAssume bveq (bvvar carry2) (bvconst 0) | bvtrue;
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* mov    $0xffffffffffffffff,%rsi *)
bvAssign rsi (bvConst 0xffffffffffffffff);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* and    %r14,%rax *)
bvAndb rax (bvVar r14) (bvVar rax);
(* mov    %rdx,%r15 *)
bvAssign r15 (bvVar rdx);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mulx   %r9,%r9,%r10 *)
bvMulf r10 r9 (bvVar r9) (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* shrd   $0x3f,%r15,%rax *)
bvConcatShl r15 rax (bvVar r15) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* mov    0x8(%rbp),%r15                           #! EA = L0x7fffffffdbe8 *)
bvAssign r15 (bvVar L0x7fffffffdbe8);
(* add    %r9,%rax *)
bvAddC carry rax (bvVar r9) (bvVar rax);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %rdi,%rdx *)
bvAdcC carry rdx (bvVar rdi) (bvVar rdx) carry;
(* mov    %rax,%r9 *)
bvAssign r9 (bvVar rax);
(* movabs $0x7fffffffffffffff,%rdi *)
bvAssign rdi (bvConst 0x7fffffffffffffff);
(* mov    %rdx,%r10 *)
bvAssign r10 (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* xor    %edx,%edx *)
bvAssign rdx (bvConst 0);
(* mov    %r10,%rcx *)
bvAssign rcx (bvVar r10);
(* shr    $0x3f,%rax *)
bvSplit rax tmp (bvVar rax) 0x3f;
(* and    %rbx,%rcx *)
bvAndb rcx (bvVar rbx) (bvVar rcx);
(* add    %r9,%rax *)
bvAddC carry rax (bvVar r9) (bvVar rax);
(* adc    %rcx,%rdx *)
bvAdcC carry rdx (bvVar rcx) (bvVar rdx) carry;
(* sub    0x10(%rbp),%rsi                          #! EA = L0x7fffffffdbf0 *)
bvSubC carry rsi (bvVar rsi) (bvVar L0x7fffffffdbf0);
(* sbb    0x18(%rbp),%rdi                          #! EA = L0x7fffffffdbf8 *)
bvSbbC carry rdi (bvVar rdi) (bvVar L0x7fffffffdbf8) carry;
(* mov    %rdx,%rcx *)
bvAssign rcx (bvVar rdx);
(* mov    %rcx,0x8(%rsp)                           #! EA = L0x7fffffffdb58 *)
bvAssign L0x7fffffffdb58 (bvVar rcx);
(* mov    %rsi,%r8 *)
bvAssign r8 (bvVar rsi);
(* mov    0x0(%rbp),%rsi                           #! EA = L0x7fffffffdbe0 *)
bvAssign rsi (bvVar L0x7fffffffdbe0);
(* mov    %rdi,0x18(%rbp)                          #! EA = L0x7fffffffdbf8 *)
bvAssign L0x7fffffffdbf8 (bvVar rdi);
(* mov    %rsi,%rdx *)
bvAssign rdx (bvVar rsi);
(* mulx   %rax,%r13,%r14 *)
bvMulf r14 r13 (bvVar rax) (bvVar rdx);
(* mov    %rcx,%rdx *)
bvAssign rdx (bvVar rcx);
(* mov    %r13,%r11 *)
bvAssign r11 (bvVar r13);
(* mulx   %rsi,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rsi) (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* mulx   %rax,%r9,%r10 *)
bvMulf r10 r9 (bvVar rax) (bvVar rdx);
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* mov    %r14,%r9 *)
bvAssign r9 (bvVar r14);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* add    %rsi,%r9 *)
bvAddC carry r9 (bvVar rsi) (bvVar r9);
(* adc    %rdi,%r10 *)
bvAdcC carry r10 (bvVar rdi) (bvVar r10) carry;
(* mov    %rbx,%rdi *)
bvAssign rdi (bvVar rbx);
(* mov    %r9,%rsi *)
bvAssign rsi (bvVar r9);
(* and    %r9,%rdi *)
bvAndb rdi (bvVar r9) (bvVar rdi);
(* add    %rcx,%rcx *)
bvAddC carry rcx (bvVar rcx) (bvVar rcx);
(* shrd   $0x3f,%r10,%rsi *)
bvConcatShl r10 rsi (bvVar r10) (bvVar rsi) 64-0x3f;
(* mov    %rdi,%r12 *)
bvAssign r12 (bvVar rdi);
(* mov    %r10,%rdi *)
bvAssign rdi (bvVar r10);
(* mulx   %rcx,%r13,%r14 *)
bvMulf r14 r13 (bvVar rcx) (bvVar rdx);
(* mov    %r8,%rdx *)
bvAssign rdx (bvVar r8);
(* shr    $0x3f,%rdi *)
bvSplit rdi tmp (bvVar rdi) 0x3f;
(* add    %r13,%rsi *)
bvAddC carry rsi (bvVar r13) (bvVar rsi);
(* adc    %r14,%rdi *)
bvAdcC carry rdi (bvVar r14) (bvVar rdi) carry;
(* add    %r11,%rsi *)
bvAddC carry rsi (bvVar r11) (bvVar rsi);
(* adc    %r12,%rdi *)
bvAdcC carry rdi (bvVar r12) (bvVar rdi) carry;
(* mov    %rsi,%r9 *)
bvAssign r9 (bvVar rsi);
(* xor    %r12d,%r12d *)
bvAssign r12 (bvConst 0);
(* mov    %rdi,%r11 *)
bvAssign r11 (bvVar rdi);
(* and    %rbx,%rdi *)
bvAndb rdi (bvVar rbx) (bvVar rdi);
(* shr    $0x3f,%r11 *)
bvSplit r11 tmp (bvVar r11) 0x3f;
(* mov    %rdi,%r10 *)
bvAssign r10 (bvVar rdi);
(* mulx   %rax,%rsi,%rdi *)
bvMulf rdi rsi (bvVar rax) (bvVar rdx);
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffdb58 *)
bvAssign rdx (bvVar L0x7fffffffdb58);
(* add    %r11,%r9 *)
bvAddC carry r9 (bvVar r11) (bvVar r9);
(* mov    0x18(%rbp),%r11                          #! EA = L0x7fffffffdbf8 *)
bvAssign r11 (bvVar L0x7fffffffdbf8);
(* adc    %r12,%r10 *)
bvAdcC carry r10 (bvVar r12) (bvVar r10) carry;
(* mov    %r9,0x0(%rbp)                            #! EA = L0x7fffffffdbe0 *)
bvAssign L0x7fffffffdbe0 (bvVar r9);
(* mov    %r10,0x8(%rbp)                           #! EA = L0x7fffffffdbe8 *)
bvAssign L0x7fffffffdbe8 (bvVar r10);
(* mulx   %r8,%r9,%r10 *)
bvMulf r10 r9 (bvVar r8) (bvVar rdx);
(* mul    %r11 *)
bvMulf rdx rax (bvVar r11) (bvVar rax);
(* add    %r9,%rax *)
bvAddC carry rax (bvVar r9) (bvVar rax);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* add    %rdi,%rax *)
bvAddC carry rax (bvVar rdi) (bvVar rax);
(* mov    %rax,%r14 *)
bvAssign r14 (bvVar rax);
(* mov    %rbx,%rax *)
bvAssign rax (bvVar rbx);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* and    %r14,%rax *)
bvAndb rax (bvVar r14) (bvVar rax);
(* mov    %rdx,%r15 *)
bvAssign r15 (bvVar rdx);
(* mov    %r11,%rdx *)
bvAssign rdx (bvVar r11);
(* mov    %rax,%r10 *)
bvAssign r10 (bvVar rax);
(* mov    %r14,%rax *)
bvAssign rax (bvVar r14);
(* mulx   %rcx,%r11,%r12 *)
bvMulf r12 r11 (bvVar rcx) (bvVar rdx);
(* mov    %r15,%rdx *)
bvAssign rdx (bvVar r15);
(* shrd   $0x3f,%r15,%rax *)
bvConcatShl r15 rax (bvVar r15) (bvVar rax) 64-0x3f;
(* shr    $0x3f,%rdx *)
bvSplit rdx tmp (bvVar rdx) 0x3f;
(* add    %r11,%rax *)
bvAddC carry rax (bvVar r11) (bvVar rax);
(* adc    %r12,%rdx *)
bvAdcC carry rdx (bvVar r12) (bvVar rdx) carry;
(* add    %rsi,%rax *)
bvAddC carry rax (bvVar rsi) (bvVar rax);
(* adc    %r10,%rdx *)
bvAdcC carry rdx (bvVar r10) (bvVar rdx) carry;
(* mov    %rax,%rsi *)
bvAssign rsi (bvVar rax);
(* xor    %r10d,%r10d *)
bvAssign r10 (bvConst 0);
(* mov    %rdx,%r9 *)
bvAssign r9 (bvVar rdx);
(* mov    %rdx,%rax *)
bvAssign rax (bvVar rdx);
(* and    %rbx,%rax *)
bvAndb rax (bvVar rbx) (bvVar rax);
(* shr    $0x3f,%r9 *)
bvSplit r9 tmp (bvVar r9) 0x3f;
(* add    %r9,%rsi *)
bvAddC carry rsi (bvVar r9) (bvVar rsi);
(* mov    %rax,%rdi *)
bvAssign rdi (bvVar rax);
(* adc    %r10,%rdi *)
bvAdcC carry rdi (bvVar r10) (bvVar rdi) carry;
(* mov    %rsi,0x10(%rbp)                          #! EA = L0x7fffffffdbf0 *)
bvAssign L0x7fffffffdbf0 (bvVar rsi);
(* mov    0x48(%rsp),%rax                          #! EA = L0x7fffffffdb98 *)
bvAssign rax (bvVar L0x7fffffffdb98);
(* xor    %fs:0x28,%rax *)
xor    %fs:0x28,%%rax;
(* mov    %rdi,0x18(%rbp)                          #! EA = L0x7fffffffdbf8 *)
bvAssign L0x7fffffffdbf8 (bvVar rdi);
(* #jne    0x40781b <fp2inv1271+1003> *)
#jne    0x40781b <fp2inv1271+1003>;
(* add    $0x58,%rsp *)
add    $0x58,%rsp;
(* pop    %rbx *)
pop    %%rbx;
(* pop    %rbp *)
pop    %%rbp;
(* pop    %r12 *)
pop    %%r12;
(* pop    %r13 *)
pop    %%r13;
(* pop    %r14 *)
pop    %%r14;
(* pop    %r15 *)
pop    %%r15;
(* #retq *)
#retq;

{
  bveTrue
  |
  bvrTrue
}

