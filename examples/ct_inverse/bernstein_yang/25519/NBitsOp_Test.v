From Coq Require Import ZArith Arith List Decidable Lia.
From mathcomp Require Import ssreflect eqtype ssrbool ssrnat ssrfun seq div.
From nbits Require Import NBitsDef AuxLemmas Compatibility NBitsOp.

Set Implicit Arguments.
Unset Strict Implicit.
Import Prenex Implicits.


Section Test.

  Local Open Scope bits_scope.

  (*---------------------------------------------------------------------------
    Preparation of implementation of Karatsuba algorithm
    ---------------------------------------------------------------------------*)

  (* 原本有subB_addB，此處新增addB_subB *)

  Lemma addB_subB bs1 bs2: size bs1 == size bs2 -> bs1 +# bs2 -# bs2 = bs1.
  Proof.
    intros. set bs:= bs1 +# bs2. have H1: size bs2 == size bs2 by done. have HaddBsz: size bs == size bs2 by rewrite size_addB minnE (eqP H) subnn subn0. 
    rewrite (eqP (subB_equiv_addB_negB HaddBsz)) /bs -addBA -(eqP (subB_equiv_addB_negB H1)) subB_same -(eqP H) addB0 unzip1_zip; [by done|by rewrite size_zeros].
  Qed.

  (* 想要直接用addB_subB去證明沒有size bs1 > 0此限制的subB_addB，需要先證明 bs1 -# -# bs2 = bs1 +# bs2 *)

  Lemma subB_negB bs1 bs2: size bs1 == size bs2 -> bs1 -# -# bs2 = bs1 +# bs2.
  Proof.
    set bs:= -# bs2. have Hbs: bs2 = -# bs by rewrite negB_involutive. rewrite Hbs size_negB.
    intros.
    exact: (eqP (subB_equiv_addB_negB H)).
  Qed.

  Lemma subB_addB_generalize bs1 bs2: size bs1 == size bs2 -> bs1 -# bs2 +# bs2 = bs1.
  Proof.
    set bs:= -# bs2. have Hbs: bs2 = -# bs by rewrite negB_involutive. rewrite Hbs size_negB.
    move => H. have Hsz: size bs == size bs by done. rewrite (subB_negB H) -addBA. move /eqP in H.
    rewrite -(eqP (subB_equiv_addB_negB Hsz)) subB_same -H addB0 unzip1_zip; [by done| by rewrite size_zeros].
  Qed.

  (* bs1 = bs1 +# bs2 可以直接看成 bs2 = zeros (size bs2) *)

  Lemma addB_zero bs1 bs2: size bs1 == size bs2 -> bs1 = bs1 +# bs2 <-> bs2 = zeros (size bs2).
  Proof.
    move => Hsz. split.
    - move => H. rewrite addBC in H. rewrite eq_sym in Hsz. by rewrite (eqP Hsz) -subB_same {1}H (addB_subB Hsz).
    - move ->. rewrite addB0 unzip1_zip; [by done|by rewrite size_zeros (eqP Hsz)].
  Qed.

  (* 若是bs a b 長度都相同且轉換到nat後有加法的關係，則在原本的bits中也有加法addB的關係 *)

  Lemma to_nat_add_addB bs a b:
    size a == size b -> size a == size bs -> to_nat bs == to_nat a + to_nat b -> bs = a +# b.
  Proof.
    move => Hszb Hszbs. rewrite -(eqP (to_nat_addB_zext1 Hszb)). set addBab := zext 1 a +# zext 1 b.
    have HaddBsz: size addBab == (size bs).+1 by rewrite /addBab size_addB !size_zext -(eqP Hszb) minnE subnn subn0 (eqP Hszbs) addn1.
    have HaddBsz': size bs <= size addBab by rewrite (eqP HaddBsz) leqnSn.
    rewrite (to_nat_inj_rl HaddBsz') (eqP HaddBsz) subSnn /addBab => Hzextbs.
    by rewrite -(addB_zext1_lown (eqP Hszb)) -(eqP Hzextbs) (eqP Hszbs) low_zext.
  Qed.

  (* 如果a和b長度相同且轉換成nat後相加並未超過該長度的bits所能表示的nat範圍，則to_nat (a +# b) = to_nat a + to_nat b *)

  Lemma to_nat_add_addB_bounded a b:
    size a == size b -> to_nat a + to_nat b < 2 ^ (size a) -> to_nat (a +# b) = to_nat a + to_nat b.
  Proof.
    move => Hsz Hto_nat. pose proof (to_nat_from_nat_bounded Hto_nat) as H. move /eqP in H. set bs := (size a) -bits of (to_nat a + to_nat b).
    have Hbssz: size a == size bs by rewrite size_from_nat.
    by rewrite -(to_nat_add_addB Hsz Hbssz H) /bs (eqP H).
  Qed.

  (* 上述的關係在減法需要多加一個條件，那就是to_nat a <= to_nat b，當初真不應該用to_nat，直接用to_Zpos不是更好嗎... *)

  Lemma leB_to_nat_subB a b: size a == size b -> b <=# a -> to_nat (a -# b) = to_nat a - to_nat b.
  Proof.
    move => Hsz Hblea. rewrite (to_nat_Zpos (a -# b)) (to_Zpos_subB' (eqP Hsz)). assert (Hblea_to_Zpos := Hblea). rewrite eq_sym in Hsz. rewrite (to_Zpos_leB_eqn (eqP Hsz)) -(eqb_id (to_Zpos b <=? to_Zpos a)%Z) in Hblea_to_Zpos.
    move /eqP in Hblea_to_Zpos. apply (Z.leb_le (to_Zpos b) (to_Zpos a)) in Hblea_to_Zpos. apply (Z.le_sub_0 (to_Zpos b) (to_Zpos a)) in Hblea_to_Zpos.
    rewrite -(Z.add_opp_l (to_Zpos b) (to_Zpos a)) -(Z.opp_sub_distr (to_Zpos a) (to_Zpos b)) Z.opp_nonpos_nonneg in Hblea_to_Zpos.
    have Hzmod: (0 <= to_Zpos a - to_Zpos b < 2 ^ Z.of_nat (size a))%Z.
    - split; first by done. have Hsub: (0 <= to_Zpos b)%Z by apply to_Zpos_ge0. apply (Z.le_sub_nonneg (to_Zpos a) (to_Zpos b)) in Hsub. exact: (Z.le_lt_trans (to_Zpos a - to_Zpos b) (to_Zpos a) (2 ^ Z.of_nat (size a)) Hsub (to_Zpos_bounded a)).
    - rewrite (Z.mod_small (to_Zpos a - to_Zpos b) (2 ^ Z.of_nat (size a)) Hzmod) Z2Nat.inj_sub; last by apply to_Zpos_ge0. by rewrite -!to_nat_Zpos.
  Qed.

  Lemma leB_to_nat_sub_subB bs a b:
    size a == size b -> b <=# a -> size a == size bs -> to_nat bs == to_nat a - to_nat b -> bs = a -# b.
  Proof.
    move => Hsz Hblea Hszbs. rewrite -(leB_to_nat_subB Hsz Hblea). rewrite to_nat_inj_ss; first by move /eqP => H.
    by rewrite size_subB minnE -(eqP Hsz) subnn subn0 (eqP Hszbs).
  Qed.

  (* 若是bs1 bs2長度相同且carry_addB bs1 bs2 == [:: false]，則bs1和bs2 先相加再轉換成nat 跟 先轉換成nat再相加 所得到的結果會相同 *)

  Lemma carry_addB_msb_zext a b:
    size a == size b -> carry_addB a b == msb ((zext 1 a) +# (zext 1 b)).
  Proof.
    move => Hsz. pose proof (addB_zext1_high1 (eqP Hsz)) as HaddB_zext1_high1. rewrite high1_msb /from_bool /from_nat /joinlsb oddb in HaddB_zext1_high1.
    by rewrite -(to_bool_bit (carry_addB a b)) -(to_bool_bit (msb (zext 1 a +# zext 1 b))) HaddB_zext1_high1.
  Qed.

  Lemma joinmsb_dropmsb bs:
    0 < size bs -> joinmsb (dropmsb bs) (msb bs) = bs.
  Proof.
    case/lastP: bs; first by done. move => s x Hsz. by rewrite msb_rcons dropmsb_rcons /joinmsb.
  Qed.

  Lemma zext1 bs:
    zext 1 bs == rcons bs b0.
  Proof.
    rewrite /zext cats1 //=.
  Qed.

  Lemma carry_addB_to_nat_add bs1 bs2:
    size bs1 == size bs2 -> ~~(carry_addB bs1 bs2) -> to_nat (bs1 +# bs2) = (to_nat bs1) + (to_nat bs2).
  Proof.
    move => Hsz. rewrite (eqP (carry_addB_msb_zext Hsz)) => Hmsb_zext_false.
    have Hsize_zext: size (zext 1 bs1 +# zext 1 bs2) == (size bs1).+1 by rewrite size_addB !size_zext -(eqP Hsz) minnE subnn subn0 addn1.
    rewrite -(addB_zext1_lown (eqP Hsz)) -(eqP (to_nat_addB_zext1 Hsz)) -dropmsb_low -(eqP Hsize_zext) low_size.
    have Hsize_zext': 0 < size (zext 1 bs1 +# zext 1 bs2) by rewrite (eqP Hsize_zext); exact: (leq_ltn_trans (leq0n (size bs1)) (ltnSn (size bs1))).
    by rewrite -{2}(joinmsb_dropmsb Hsize_zext') (negbTE Hmsb_zext_false) /joinmsb -(eqP (zext1 (dropmsb (zext 1 bs1 +# zext 1 bs2)))) to_nat_zext.
  Qed.

  (* 另外一個確認to_nat (a +# b) = (to_nat a) + (to_nat b)的條件是 a <=# a +# b && b <=# a +# b *)

  Lemma leB_leB_addB_to_nat_add bs a b:
    size a == size b -> a <=# bs -> b <=# bs -> bs == a +# b -> to_nat bs = (to_nat a) + (to_nat b).
  Proof.
    move=> Hsz Hale Hble /eqP HaddBeq. have Hszbsa: size a == size bs by rewrite HaddBeq size_addB minnE -(eqP Hsz) subnn subn0. have Hszbsb: size b == size bs by rewrite -(eqP Hsz).
    rewrite (to_nat_leB (eqP Hszbsa)) in Hale. rewrite (to_nat_leB (eqP Hszbsb)) in Hble.
    case (msb (zext 1 a +# zext 1 b)) eqn: Hmsb_zext_bs.
    - rewrite -(eqP (to_nat_addB_zext1 Hsz)). pose proof (to_nat_addB_zext1 Hsz) as Hzext; move: Hzext Hmsb_zext_bs; set zext_bs := zext 1 a +# zext 1 b; move => Hzext Hmsb_zext_bs.
      have Hsz_zext_bs: size zext_bs == (size a).+1 by rewrite size_addB !size_zext -(eqP Hsz) minnE subnn subn0 addn1.
      have Hsz_zext_bs': 0 < size zext_bs by rewrite (eqP Hsz_zext_bs); exact: (leq_ltn_trans (leq0n (size a)) (ltnSn (size a))).
      rewrite -(joinmsb_dropmsb Hsz_zext_bs') -{1}(low_size zext_bs) (eqP Hsz_zext_bs) dropmsb_low (addB_zext1_lown (eqP Hsz)) -HaddBeq to_nat_joinmsb Hmsb_zext_bs //= mul1n in Hzext.
      pose proof(leq_add Hale Hble) as H. rewrite -(eqP Hzext) leq_add2r in H. pose proof (leq_ltn_trans H (to_nat_bounded bs)) as H'. by rewrite ltnn in H'.
    - move: Hmsb_zext_bs; rewrite HaddBeq. rewrite -(eqP (carry_addB_msb_zext Hsz)) => H. apply (carry_addB_to_nat_add Hsz (negbT H)).
  Qed.

  (* Karatsuba algorithm在conquer階段可能會把不同長度的bits相加，因此額外定義long_addB和long_carry_addB. *)
  (* 此外，為了避免Karatsuba在計算(a+b)*(c+d)時的overflow，需要額外定義zext_addB *)
  Definition long_addB (bs1 bs2 : bits) : bits := (adcB false (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2)).2.
  Definition long_carry_addB (bs1 bs2 : bits) : bool := (adcB false (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2)).1.
  Definition zext_addB (bs1 bs2 : bits) : bits := (zext 1 bs1) +# (zext 1 bs2).

  Definition long_subB (bs1 bs2 : bits) : bits := (sbbB false (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2)).2.
  Definition long_borrow_subB (bs1 bs2 : bits) : bool := (sbbB false (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2)).1.

  Notation "bs1 ++# bs2" := (long_addB bs1 bs2) (at level 40, left associativity) : bits_scope.
  Notation "bs1 0+# bs2" := (zext_addB bs1 bs2) (at level 40, left associativity) : bits_scope.
  Notation "bs1 --# bs2" := (long_subB bs1 bs2) (at level 40, left associativity) : bits_scope.

  (* add zero to the end *)
  Definition zend (n : nat) (bs : bits) : bits := zeros n ++ bs.

  (* high half and low half *)
  Definition low_half (bs : bits) : bits := low (size bs)./2 bs.
  Definition high_half (bs : bits) : bits := high (size bs)./2 bs.

  Notation "bs <<<# n" := (zend n bs) (at level 40, left associativity) : bits_scope.

  (*---------------------------------------------------------------------------
    Definition of multiplication based on Karatsuba algorithm
    ---------------------------------------------------------------------------*)

  Fixpoint Karatsuba_fullmul' (n : nat) (bs1' bs2' : bits) : bits :=
    match n with
    | 0 => full_mul bs1' bs2'
    | m.+1 => if (size bs1' <= 64) then full_mul bs1' bs2' else
                let bs1 := if odd (size bs1') then (zext 1 bs1') else bs1' in
                let bs2 := if odd (size bs2') then (zext 1 bs2') else bs2' in
                let bs1_high := high_half bs1 in
                let bs1_low := low_half bs1 in
                let bs2_high := high_half bs2 in
                let bs2_low := low_half bs2 in
                let hi_hi := low (size bs1_high).*2 (Karatsuba_fullmul' m bs1_high bs2_high) in
                let cross_term := low (size (bs1_high 0+# bs1_low)).*2 (Karatsuba_fullmul' m (bs1_high 0+# bs1_low) (bs2_high 0+# bs2_low)) in
                let lo_lo := low (size bs1_low).*2 (Karatsuba_fullmul' m bs1_low bs2_low) in
                lo_lo ++# ((cross_term --# (hi_hi 0+# lo_lo)) <<<# (size bs1)./2) ++# (hi_hi <<<# size bs1)
    end.

  Definition Karatsuba_fullmul (bs1 bs2 : bits) : bits := low (size bs1).*2 (Karatsuba_fullmul' (Nat.log2_up (size bs1)) bs1 bs2).

  Fixpoint General_Karatsuba_fullmul' (n : nat) (n' : nat) (bs1' bs2' : bits) : bits :=
    match n with
    | 0 => full_mul bs1' bs2'
    | m.+1 => if (size bs1' <= n') then full_mul bs1' bs2' else
                let bs1 := if odd (size bs1') then (zext 1 bs1') else bs1' in
                let bs2 := if odd (size bs2') then (zext 1 bs2') else bs2' in
                let bs1_high := high_half bs1 in
                let bs1_low := low_half bs1 in
                let bs2_high := high_half bs2 in
                let bs2_low := low_half bs2 in
                let hi_hi := low (size bs1_high).*2 (General_Karatsuba_fullmul' m n' bs1_high bs2_high) in
                let cross_term := low (size (bs1_high 0+# bs1_low)).*2 (General_Karatsuba_fullmul' m n' (bs1_high 0+# bs1_low) (bs2_high 0+# bs2_low)) in
                let lo_lo := low (size bs1_low).*2 (General_Karatsuba_fullmul' m n' bs1_low bs2_low) in
                lo_lo ++# ((cross_term --# (hi_hi 0+# lo_lo)) <<<# (size bs1)./2) ++# (hi_hi <<<# size bs1)
    end.

  Definition General_Karatsuba_fullmul (n' : nat) (bs1 bs2 : bits) : bits := low (size bs1).*2 (General_Karatsuba_fullmul' (Nat.log2_up (size bs1)) n' bs1 bs2).

  (* Just a simple test 
  Compute to_Zpos (full_mul (from_Zpos 8192 546464946494564165146496446494654616649466446546541646495464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649) (from_Zpos 8192 165416541644964516515646464694654165516155464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649)).
  Compute to_Zpos (Karatsuba_fullmul (from_Zpos 8192 546464946494564165146496446494654616649466446546541646495464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649) (from_Zpos 8192 165416541644964516515646464694654165516155464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649)). *)
  Lemma low_fullmul bs1 bs2: size bs1 == size bs2 -> low (size bs1).*2 (full_mul bs1 bs2) == full_mul bs1 bs2.
  Proof.
    move => Hsz. have Hsz_fullmul: (size bs1).*2 = size (full_mul bs1 bs2) by rewrite size_full_mul -(eqP Hsz) addnn.
    by rewrite Hsz_fullmul low_size.
  Qed.

  (* about long_addB *)

  Lemma size_long_addB bs1 bs2: size (bs1 ++# bs2) = maxn (size bs1) (size bs2).
  Proof.
    rewrite /long_addB size_adcB. rewrite !size_zext. pose proof (orP (ltn_geq_total (size bs1) (size bs2))). case: H.
    - move => H. pose proof (ltnW H). rewrite -(subn_eq0 (size bs1) (size bs2)) in H0. by rewrite maxnE addnBn !(eqP H0) add0n addn0 minnE subnn subn0.
    - rewrite -(subn_eq0 (size bs2) (size bs1)) => H0. by rewrite maxnE !(eqP H0) addnBn (eqP H0) !addn0 add0n minnE subnn subn0.
  Qed.

  Lemma long_addB_addB bs1 bs2: bs1 ++# bs2 == (zext (size bs2 - size bs1) bs1) +# (zext (size bs1 - size bs2) bs2).
  Proof. by rewrite /long_addB /addB. Qed.

  Lemma long_addB_addB_nn bs1 bs2: size bs1 == size bs2 -> bs1 ++# bs2 == bs1 +# bs2.
  Proof. move => H. by rewrite (eqP (long_addB_addB bs1 bs2)) !(eqP H) subnn !zext0. Qed.

  Lemma long_addB_addB_rl bs1 bs2: size bs1 <= size bs2 -> bs1 ++# bs2 == (zext (size bs2 - size bs1)bs1) +# bs2.
  Proof. rewrite -(subn_eq0 (size bs1) (size bs2)) => H. by rewrite (eqP (long_addB_addB bs1 bs2)) (eqP H) zext0. Qed.

  Lemma long_addB_addB_ll bs1 bs2: size bs2 <= size bs1 -> bs1 ++# bs2 == bs1 +# (zext (size bs1 - size bs2) bs2).
  Proof. rewrite -(subn_eq0 (size bs2) (size bs1)) => H. by rewrite (eqP (long_addB_addB bs1 bs2)) (eqP H) zext0. Qed.

  (* 若是bs1 a b 長度都相同且轉換到nat後有加法的關係，則在原本的bits中也有加法long_addB的關係 *)

  Lemma to_nat_add_long_addB bs a b:
    size bs == size (a ++# b) -> to_nat bs == to_nat a + to_nat b -> bs = a ++# b.
  Proof.
    rewrite (eqP (long_addB_addB a b)) -(to_nat_zext (size b - size a) a) -(to_nat_zext (size a - size b) b).
    set a' := zext (size b - size a) a. set b' := zext (size a - size b) b.
    have Hsz: size a' == size b'.
    - rewrite /a' /b' !size_zext. pose proof (orP (ltn_geq_total (size a) (size b))). case: H => H.
      - pose proof (ltnW H). rewrite (subnKC H0).  rewrite -(subn_eq0 (size a) (size b)) in H0. by rewrite (eqP H0) addn0.
      - rewrite (subnKC H). rewrite -(subn_eq0 (size b) (size a)) in H. by rewrite (eqP H) addn0.
    - move => Hsz_addB Hto_nat. have Hszbs: size a' == size bs by rewrite (eqP Hsz_addB) size_addB minnE -(eqP Hsz) subnn subn0.
      exact: (to_nat_add_addB Hsz Hszbs Hto_nat).
  Qed.

  (* 如果a和b轉換成nat後相加並未超過長度為 size (a ++# b) 的bits所能表示的nat範圍，則to_nat (a ++# b) = to_nat a + to_nat b *)

  Lemma to_nat_add_long_addB_bounded a b:
    to_nat a + to_nat b < 2 ^ maxn (size a) (size b) -> to_nat (a ++# b) == to_nat a + to_nat b.
  Proof.
    move => Hto_nat.  pose proof (to_nat_from_nat_bounded Hto_nat) as H. move /eqP in H. set bs := (maxn (size a) (size b)) -bits of (to_nat a + to_nat b). rewrite (eqP (long_addB_addB a b)).
    set a' := zext (size b - size a) a. set b' := zext (size a - size b) b.
    have Hsz': size a' == size b'.
    - rewrite /a' /b' !size_zext. pose proof (orP (ltn_geq_total (size a) (size b))) as Htemp. case: Htemp => Htemp.
      + pose proof (ltnW Htemp). rewrite -(subn_eq0 (size a) (size b)) in H0. by rewrite addnBn (eqP H0) add0n addn0.
      + assert (H0 := Htemp). rewrite -(subn_eq0 (size b) (size a)) in H0. by rewrite -(maxnE (size b) (size a)) (maxn_idPr Htemp) (eqP H0) addn0.
    - have Hbssz: size a' == size bs by rewrite /a' /bs size_zext size_from_nat maxnE.
      rewrite -(to_nat_add_addB Hsz' Hbssz) to_nat_from_nat; first by rewrite (modn_small Hto_nat).
      by rewrite /a' /b' !to_nat_zext (modn_small Hto_nat).
  Qed.

  (* about long_carry_addB *)

  Lemma long_carry_carry bs1 bs2: long_carry_addB bs1 bs2 == carry_addB (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2).
  Proof. by rewrite /long_carry_addB /carry_addB. Qed.

  Lemma long_carry_carry_nn bs1 bs2: size bs1 == size bs2 -> long_carry_addB bs1 bs2 = carry_addB bs1 bs2.
  Proof. move => /eqP H. by rewrite (eqP (long_carry_carry bs1 bs2)) !H subnn !zext0. Qed.

  (* about zend *)

  Lemma zend0 bs: bs <<<# 0 == bs.
  Proof. by rewrite /zend zeros0. Qed.

  Lemma zend1 bs: bs <<<# 1 == joinlsb false bs.
  Proof. by rewrite /zend /zeros. Qed.

  Lemma zend_shlB_zextB bs n: bs <<<# n == (zext n bs) <<# n.
  Proof.
    set bs' := zext n bs. have Hsz: n <= size bs' by rewrite /bs' size_cat size_zeros leq_addl.
    rewrite (shlB_cat Hsz) /zend !/bs' size_cat size_zeros -subnBA; last by done. by rewrite (subnn n) subn0 low_zext.
  Qed.

  Lemma addC m n: m + n = n + m.
  Proof. induction m; [by rewrite add0n addn0 | by rewrite addSn addnS IHm]. Qed.

  Lemma size_zend bs n: size (bs <<<# n) = size bs + n.
  Proof. by rewrite /zend size_cat size_zeros addC. Qed.

  (* about zext_addB *)

  Lemma size_zext_addB bs1 bs2: size (bs1 0+# bs2) = minn (size bs1).+1 (size bs2).+1.
  Proof. by rewrite /zext_addB size_addB !size_zext !addn1. Qed.

  Lemma zext_addB_addB bs1 bs2: bs1 0+# bs2 == (zext 1 bs1) +# (zext 1 bs2).
  Proof. by rewrite /zext_addB /addB. Qed.

  Lemma to_nat_zext_addB bs1 bs2: size bs1 == size bs2 -> to_nat (bs1 0+# bs2) = to_nat bs1 + to_nat bs2.
  Proof. move => Hsz. by rewrite (eqP (zext_addB_addB bs1 bs2)) (eqP (to_nat_addB_zext1 Hsz)). Qed.

  (* about long_subB *)
  Lemma size_long_subB bs1 bs2: size (bs1 --# bs2) = maxn (size bs1) (size bs2).
  Proof.
    rewrite /long_subB size_sbbB !size_zext. pose proof (orP (ltn_geq_total (size bs1) (size bs2))). case: H => H.
    - pose proof (ltnW H). rewrite -(subn_eq0 (size bs1) (size bs2)) in H0. by rewrite maxnE addnBn !(eqP H0) add0n addn0 minnE subnn subn0.
    - rewrite -(subn_eq0 (size bs2) (size bs1)) in H. by rewrite maxnE !(eqP H) addnBn (eqP H) !addn0 add0n minnE subnn subn0.
  Qed.

  Lemma long_subB_subB bs1 bs2: bs1 --# bs2 == (zext (size bs2 - size bs1) bs1) -# (zext (size bs1 - size bs2) bs2).
  Proof. by rewrite /long_subB /subB. Qed.

  Lemma long_subB_subB_ss bs1 bs2: size bs1 == size bs2 -> bs1 --# bs2 == bs1 -# bs2.
  Proof. move => H. by rewrite (eqP (long_subB_subB bs1 bs2)) !(eqP H) subnn !zext0. Qed.

  Lemma long_subB_subB_rl bs1 bs2: size bs1 <= size bs2 -> bs1 --# bs2 == (zext (size bs2 - size bs1)bs1) -# bs2.
  Proof. rewrite -(subn_eq0 (size bs1) (size bs2)) => H. by rewrite (eqP (long_subB_subB bs1 bs2)) (eqP H) zext0. Qed.

  Lemma long_subB_subB_ll bs1 bs2: size bs2 <= size bs1 -> bs1 --# bs2 == bs1 -# (zext (size bs1 - size bs2) bs2).
  Proof. rewrite -(subn_eq0 (size bs2) (size bs1)) => H. by rewrite (eqP (long_subB_subB bs1 bs2)) (eqP H) zext0. Qed.

  Lemma to_nat_sub_long_subB bs1 bs2: to_nat bs2 <= to_nat bs1 -> to_nat (bs1 --# bs2) == to_nat bs1 - to_nat bs2.
  Proof.
    rewrite (eqP (long_subB_subB bs1 bs2)). set a := zext (size bs2 - size bs1) bs1. set b := zext (size bs1 - size bs2) bs2. move => HleB.
    have Hsz: size a == size b.
    - rewrite /a /b !size_zext. pose proof (orP (ltn_geq_total (size bs1) (size bs2))). case: H => H.
      + pose proof (ltnW H). rewrite -(subn_eq0 (size bs1) (size bs2)) in H0. by rewrite (eqP H0) -maxnE (maxn_idPr (ltnW H)) addn0.
      + assert (H0 := H). rewrite -(subn_eq0 (size bs2) (size bs1)) in H0. by rewrite (eqP H0) -maxnE (maxn_idPr H) addn0.
    - rewrite leB_to_nat_subB; [by rewrite /a /b !to_nat_zext | by done |]. rewrite eq_sym in Hsz. by rewrite (to_nat_leB (eqP Hsz)) /a /b !to_nat_zext.
  Qed.

  (* about zend *)
  Lemma to_nat_zend bs n: to_nat(bs <<<# n) == to_nat bs * 2 ^ n.
  Proof.
    rewrite (eqP (zend_shlB_zextB bs n)) to_nat_shlBnm to_nat_zext size_zext expnD.
    have Hbounded: to_nat bs * 2 ^ n < 2 ^ size bs * 2 ^ n by rewrite ltn_mul2r exp2n_gt0  to_nat_bounded.
    by rewrite (modn_small Hbounded).
  Qed.

  Lemma size_low_half bs: size (low_half bs) = (size bs)./2.
  Proof. by rewrite /low_half size_low. Qed.

  Lemma size_high_half bs: size (high_half bs) = (size bs)./2.
  Proof. by rewrite /high_half size_high. Qed.

  Lemma high_low_half bs: ~~ odd (size bs) -> low_half bs ++ high_half bs == bs.
  Proof.
    move => Hodd. rewrite /low_half /high_half cat_low_high; first by done.
    rewrite addnn -{2}(odd_double_half (size bs)). by rewrite (negbTE Hodd).
  Qed.

  Lemma to_nat_high_low_half bs:
    ~~ odd (size bs) -> to_nat (low_half bs) + to_nat ((high_half bs) <<<# (size bs)./2) == to_nat bs.
  Proof.
    move => Hodd. rewrite -{4}(eqP (high_low_half Hodd)) (to_nat_cat (low_half bs) (high_half bs)) (eqP (to_nat_zend (high_half bs) (size bs)./2)).
    by rewrite {3}/low_half size_low.
  Qed.

  Lemma addB_high_low_half bs:
    ~~ odd (size bs) -> zext (size bs)./2 (low_half bs) +# ((high_half bs) <<<# (size bs)./2) == bs.
  Proof.
    move => Hodd.
    have Hto_nat: to_nat bs == to_nat(zext (size bs)./2 (low_half bs)) + to_nat (high_half bs <<<# (size bs)./2) by rewrite to_nat_zext (eqP (to_nat_high_low_half Hodd)).
    have Hsz_even: (size bs)./2.*2 = size bs by rewrite -{2}(odd_double_half (size bs)) (negbTE Hodd).
    have Hsz: size (zext (size bs)./2 (low_half bs)) == size (high_half bs <<<# (size bs)./2) by rewrite size_zext (size_low_half bs) size_zend (size_high_half bs) !addnn !Hsz_even.
    have Hsz_addB: size (zext (size bs)./2 (low_half bs)) == size bs by rewrite size_zext (size_low_half bs) addnn Hsz_even.
    by rewrite {5}(to_nat_add_addB Hsz Hsz_addB Hto_nat).
  Qed.

  Lemma long_addB_high_low_half bs:
    ~~ odd (size bs) -> (low_half bs) ++# ((high_half bs) <<<# (size bs)./2) == bs.
  Proof.
    move => Hodd. set lo := low_half bs. set hi := high_half bs <<<# (size bs)./2.
    have Hszleq: size lo <= size hi by rewrite /lo /hi (size_low_half bs) size_zend (size_high_half bs) leq_addr.
    have Hsz: size hi == size lo + (size bs)./2 by rewrite /lo /hi (size_low_half bs) size_zend (size_high_half bs).
    rewrite (eqP (long_addB_addB_rl Hszleq)) (eqP Hsz) (size_low_half bs) -addnBA; last by done. rewrite (subnn (size bs)./2) addn0.
    exact: (addB_high_low_half Hodd).
  Qed.

  (* 剛剛才發現nat居然沒有乘法對加法的分配律......只好把上面一些有關to_nat的證明，通通改成to_Zpos了...... *)
  (* 重點是原來有些上面證明的東西，其實在NBitsOP已經證過了...... *)

  Lemma size_addB_ss a b: size a = size b -> size (a +# b) = size a.
  Proof. move => Hsz. by rewrite size_addB minnE -Hsz subnn subn0. Qed.

  Lemma size_subB_ss a b: size a = size b -> size (a -# b) = size a.
  Proof. move => Hsz. by rewrite size_subB minnE -Hsz subnn subn0. Qed.

  Lemma minn_sym n m: minn n m = minn m n.
  Proof.
    pose proof (orP (ltn_geq_total n m)). case: H => H.
    - by rewrite (minn_idPl (ltnW H)) (minn_idPr (ltnW H)).
    - by rewrite (minn_idPl H) (minn_idPr H).
  Qed.

  Lemma maxn_sym n m: maxn n m = maxn m n.
  Proof.
    pose proof (orP (ltn_geq_total n m)). case: H => H.
    - by rewrite (maxn_idPl (ltnW H)) (maxn_idPr (ltnW H)).
    - by rewrite (maxn_idPl H) (maxn_idPr H).
  Qed.

  Lemma to_Zpos_add_addB bs a b:
    size a == size b -> size a == size bs -> to_Zpos bs = (to_Zpos a + to_Zpos b)%Z -> bs = a +# b.
  Proof.
    move => Hszb Hszbs Hbs.
    have Hto_Zpos: to_Zpos (a +# b) = (to_Zpos a + to_Zpos b)%Z. rewrite (to_Zpos_addB' (eqP Hszb)) -!Hbs (eqP Hszbs) Zmod_small; first by done. 
    - split; [by apply to_Zpos_ge0| exact: to_Zpos_bounded].
    - rewrite -Hto_Zpos in Hbs. have HszaddB: size bs = size (a +# b) by rewrite size_addB -(eqP Hszb) minnE subnn subn0 (eqP Hszbs). by rewrite (to_Zpos_inj_ss HszaddB Hbs).
  Qed.

  Lemma to_Zpos_add_addB_bounded a b:
    size a == size b -> (to_Zpos a + to_Zpos b < 2 ^ Z.of_nat (size a))%Z -> to_Zpos (a +# b) = (to_Zpos a + to_Zpos b)%Z.
  Proof.
    move => Hsz Hto_Zpos. rewrite (to_Zpos_addB' (eqP Hsz)) Zmod_small; first by done.
    split; last by done. apply Z.add_nonneg_nonneg; by apply to_Zpos_ge0.
  Qed.

  Lemma leB_to_Zpos_subB a b: size a == size b -> b <=# a -> to_Zpos (a -# b) = (to_Zpos a - to_Zpos b)%Z.
  Proof.
    move => Hsz Hblea. rewrite (to_Zpos_subB' (eqP Hsz)) Zmod_small; first by done. split.
    - assert (Hblea_to_Zpos := Hblea). rewrite eq_sym in Hsz. rewrite (to_Zpos_leB_eqn (eqP Hsz)) -(eqb_id (to_Zpos b <=? to_Zpos a)%Z) in Hblea_to_Zpos.
      move /eqP in Hblea_to_Zpos. apply (Z.leb_le (to_Zpos b) (to_Zpos a)) in Hblea_to_Zpos. apply (Z.le_sub_0 (to_Zpos b) (to_Zpos a)) in Hblea_to_Zpos.
      rewrite -(Z.add_opp_l (to_Zpos b) (to_Zpos a)) -(Z.opp_sub_distr (to_Zpos a) (to_Zpos b)) Z.opp_nonpos_nonneg in Hblea_to_Zpos. exact: Hblea_to_Zpos.
    - have Hsub: (0 <= to_Zpos b)%Z by apply to_Zpos_ge0. apply (Z.le_sub_nonneg (to_Zpos a) (to_Zpos b)) in Hsub. exact: (Z.le_lt_trans (to_Zpos a - to_Zpos b) (to_Zpos a) (2 ^ Z.of_nat (size a)) Hsub (to_Zpos_bounded a)).
  Qed.

  Lemma to_Zpos_sub_subB bs a b:
    size a == size b -> size a == size bs -> to_Zpos bs = (to_Zpos a - to_Zpos b)%Z -> bs = a -# b.
  Proof.
    move => Hsz Hszbs Hto_Zpos. have Hblea: b <=# a.
    - rewrite eq_sym in Hsz. rewrite (to_Zpos_leB_eqn (eqP Hsz)) -(eqb_id (to_Zpos b <=? to_Zpos a)%Z). apply /eqP. apply (Z.leb_le (to_Zpos b) (to_Zpos a)). apply (Z.le_sub_0 (to_Zpos b) (to_Zpos a)).
      rewrite -(Z.add_opp_l (to_Zpos b) (to_Zpos a)) -(Z.opp_sub_distr (to_Zpos a) (to_Zpos b)) Z.opp_nonpos_nonneg -Hto_Zpos. apply to_Zpos_ge0.
    - rewrite -(leB_to_Zpos_subB Hsz Hblea) in Hto_Zpos. apply to_Zpos_inj_ss; last by done. by rewrite (size_subB_ss (eqP Hsz)) (eqP Hszbs).
  Qed.

  (* carry_addB_to_nat_add 的Zpos版本，其實就是 bv2z_add_unsigned *)

  Lemma leB_leB_addB_to_Zpos_add bs a b:
    size a == size b -> a <=# bs -> b <=# bs -> bs == a +# b -> to_Zpos bs = (to_Zpos a + to_Zpos b)%Z.
  Proof.
    move=> Hsz Hale Hble /eqP HaddBeq. have Hszbsa: size a == size bs by rewrite HaddBeq size_addB minnE -(eqP Hsz) subnn subn0. have Hszbsb: size b == size bs by rewrite -(eqP Hsz).
    rewrite (to_Zpos_leB (eqP Hszbsa)) in Hale. rewrite (to_Zpos_leB (eqP Hszbsb)) in Hble.
    case Hcarry: (carry_addB a b).
    - have H: (to_Zpos a + to_Zpos b < to_Zpos bs + 2 ^ Z.of_nat (size bs))%Z. apply Z.add_le_lt_mono; [ exact: Hale | rewrite -(eqP Hszbsb); apply to_Zpos_bounded].
      rewrite -(to_Zpos_addB (eqP Hsz)) Hcarry -HaddBeq -(eqP Hszbsa) in H. have H0: (true * 2 ^ Z.of_nat (size a) = 2 ^ Z.of_nat (size a))%Z by case (2 ^ Z.of_nat (size a))%Z. rewrite H0 in H. by apply Z.lt_irrefl in H.
    - by rewrite -(to_Zpos_addB (eqP Hsz)) Hcarry //= Z.add_0_r HaddBeq.
  Qed.

  Lemma to_Zpos_add_long_addB bs a b:
    size bs == size (a ++# b) -> to_Zpos bs = (to_Zpos a + to_Zpos b)%Z -> bs = a ++# b.
  Proof.
    rewrite (eqP (long_addB_addB a b)) -(to_Zpos_zext a (size b - size a)) -(to_Zpos_zext b (size a - size b)).
    set a' := zext (size b - size a) a. set b' := zext (size a - size b) b.
    have Hsz: size a' == size b'.
    - rewrite /a' /b' !size_zext. pose proof (orP (ltn_geq_total (size a) (size b))). case: H => H.
      - pose proof (ltnW H). rewrite (subnKC H0).  rewrite -(subn_eq0 (size a) (size b)) in H0. by rewrite (eqP H0) addn0.
      - rewrite (subnKC H). rewrite -(subn_eq0 (size b) (size a)) in H. by rewrite (eqP H) addn0.
    - rewrite (size_addB_ss (eqP Hsz)) eq_sym; exact: (to_Zpos_add_addB Hsz).
  Qed.

  Lemma to_Zpos_add_long_addB_bounded a b:
    (to_Zpos a + to_Zpos b < 2 ^ Z.of_nat (maxn (size a) (size b)))%Z -> to_Zpos (a ++# b) = (to_Zpos a + to_Zpos b)%Z.
  Proof.
    rewrite (eqP (long_addB_addB a b)) -(to_Zpos_zext a (size b - size a)) -(to_Zpos_zext b (size a - size b)).
    have Hsz: size (zext (size b - size a) a) = maxn (size a) (size b) by rewrite size_zext maxnE. rewrite -Hsz. apply to_Zpos_add_addB_bounded.
    by rewrite Hsz size_zext -maxnE maxn_sym.
  Qed.

  Lemma to_Zpos_zext_addB bs1 bs2: size bs1 == size bs2 -> to_Zpos (bs1 0+# bs2) = (to_Zpos bs1 + to_Zpos bs2)%Z.
  Proof. move => Hsz. rewrite (eqP (zext_addB_addB bs1 bs2)). pose proof (eqP (to_nat_addB_zext1 Hsz)). by rewrite !to_Zpos_nat H Nat2Z.inj_add. Qed.

  Lemma to_Zpos_sub_long_subB bs1 bs2: (to_Zpos bs2 <= to_Zpos bs1)%Z -> to_Zpos (bs1 --# bs2) = (to_Zpos bs1 - to_Zpos bs2)%Z.
  Proof.
    rewrite (eqP (long_subB_subB bs1 bs2)). set a := zext (size bs2 - size bs1) bs1. set b := zext (size bs1 - size bs2) bs2. move => HleB.
    have Hsz: size a == size b.
    - by rewrite /a /b !size_zext -!maxnE maxn_sym.
    - rewrite leB_to_Zpos_subB; [by rewrite /a /b !to_Zpos_zext | by done |]. rewrite eq_sym in Hsz. by rewrite (to_Zpos_leB (eqP Hsz)) /a /b !to_Zpos_zext.
  Qed.

  Lemma to_Zpos_zend bs n: to_Zpos (bs <<<# n) = (to_Zpos bs * 2 ^ Z.of_nat n)%Z.
  Proof.
    rewrite (eqP (zend_shlB_zextB bs n)) to_Zpos_shlB to_Zpos_zext size_zext Zmod_small; first by done.
    split. apply Z.mul_nonneg_nonneg. apply to_Zpos_ge0. apply (Z.pow_nonneg 2 (Z.of_nat n)); done.
    rewrite -(Zpower_nat_Z 2 (size bs + n)) Zpower_nat_is_exp !Zpower_nat_Z. apply Zmult_lt_compat_r; [apply pow2_nat2z_gt0 | apply to_Zpos_bounded].
  Qed.

  Lemma to_Zpos_high_low_half bs:
    ~~ odd (size bs) -> (to_Zpos (low_half bs) + to_Zpos ((high_half bs) <<<# (size bs)./2))%Z = to_Zpos bs.
  Proof.
    move => Hodd. rewrite -{4}(eqP (high_low_half Hodd)) (to_Zpos_cat (low_half bs) (high_half bs)) (to_Zpos_zend (high_half bs) (size bs)./2).
    by rewrite {3}/low_half size_low.
  Qed.

  Lemma Zexp_distr a b m n p: (0 <= m)%Z -> (0 <= n)%Z -> (a * p ^ m * (b * p ^ n))%Z = (a * b * p ^ (m + n))%Z.
  Proof. move => Hm Hn; rewrite Z.pow_add_r; [apply Z.mul_shuffle1 | exact: Hm | exact: Hn]. Qed.

  Lemma Zmul_cross a b c d: ((a+b)*(c+d) - a * c - b * d)%Z = (a*d+b*c)%Z.
  Proof. by rewrite Z.mul_add_distr_r !Z.mul_add_distr_l Zplus_assoc_reverse Z.add_simpl_l Zplus_assoc Z.add_simpl_r. Qed.

(* 關鍵是這個Lemma，只要證出來，Karatsuba_fullmul就可以等價於full_mul *)
  Lemma Karatsuba_eq a b:
    size a == size b -> 64 < (size a) -> ~~ odd (size a) ->
      (full_mul (low_half a) (low_half b) ++#
      (full_mul (high_half a 0+# low_half a) (high_half b 0+# low_half b) --# (full_mul (high_half a) (high_half b) 0+# full_mul (low_half a) (low_half b)) <<<# (size a)./2) ++#
      (full_mul (high_half a) (high_half b) <<<# size a))
    = full_mul a b.
  Proof.
    move => Hsz Hsz64 Ha_odd. have Hb_odd: ~~ odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite -{9}(eqP (high_low_half Ha_odd)) -{7}(eqP (high_low_half Hb_odd)).
    set hia := high_half a; set hib := high_half b; set loa := low_half a; set lob := low_half b.
    assert (Hsz_all: maxn (maxn (size loa + size lob) (maxn (minn (size hia).+1 (size loa).+1 + minn (size hib).+1 (size lob).+1) (minn (size hia + size hib).+1 (size loa + size lob).+1) + (size a)./2)) (size hia + size hib + size a) = size loa + size hia + (size lob + size hib)).
    {
      rewrite !(size_high_half a) !(size_high_half b) !(size_low_half a) !(size_low_half b) -!(eqP Hsz) !addnn.
      have Hsza: ((size a)./2).*2 = size a by rewrite -{2}(odd_double_half (size a)) (negbTE Ha_odd). rewrite Hsza !minnE !subnn !subn0 doubleS Hsza.
      have H: (size a).+1 <= (size a).+2 by done. rewrite (maxn_idPl H). rewrite -add2n addnCAC addnACl add2n.
      have H0: (size a)./2.+2 <= size a. rewrite -{2}Hsza -addnn -addn2 (leq_add2l (size a)./2 2 (size a)./2) -ltn_double Hsza -muln2. have H1: 1 * 2 < 64 by done. by rewrite (ltn_trans H1 Hsz64).
      rewrite -(leq_add2l (size a) (size a)./2.+2 (size a)) in H0. by rewrite (maxn_idPr (leq_addr (size a)./2.+2 (size a))) (maxn_idPr H0) addnn.
    }
    apply to_Zpos_inj_ss; first by rewrite !size_long_addB !size_zend (size_long_subB (full_mul (hia 0+# loa) (hib 0+# lob)) (full_mul hia hib 0+# full_mul loa lob)) !size_full_mul !size_zext_addB !size_full_mul (size_cat loa hia) (size_cat lob hib); apply Hsz_all. rewrite to_Zpos_full_mul 2!to_Zpos_cat Z.mul_add_distr_r !Z.mul_add_distr_l !size_low_half -!(eqP Hsz).
    set Zpos_hia := (to_Zpos hia * 2 ^ Z.of_nat (size a)./2)%Z; set Zpos_hib := (to_Zpos hib * 2 ^ Z.of_nat (size a)./2)%Z; set Zpos_loa := to_Zpos loa; set Zpos_lob := to_Zpos lob.
    have Hsza_half: Z.of_nat (size a) = (Z.of_nat (size a)./2 + Z.of_nat (size a)./2)%Z by rewrite -Nat2Z.inj_add -{1}(odd_double_half (size a)) (negbTE Ha_odd) /= add0n -addnn.
    have loa_bounded: (Zpos_loa < 2 ^ Z.of_nat (size a)./2)%Z by rewrite -size_low_half; apply to_Zpos_bounded.
    have lob_bounded: (Zpos_lob < 2 ^ Z.of_nat (size a)./2)%Z by rewrite (eqP Hsz) -size_low_half; apply to_Zpos_bounded.
    have hia_bounded: (Zpos_hia < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half /Zpos_hia Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Zmult_gt_0_lt_compat_r; [|rewrite -size_high_half /hia; apply to_Zpos_bounded]. apply Z.lt_gt. apply pow2_nat2z_gt0.
    have hib_bounded: (Zpos_hib < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half {1}(eqP Hsz) /Zpos_hia Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Zmult_gt_0_lt_compat_r; [|rewrite -size_high_half /hia; apply to_Zpos_bounded]. apply Z.lt_gt. apply pow2_nat2z_gt0.
    have loalob_bounded: (Zpos_loa * Zpos_lob < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [apply to_Zpos_ge0 | apply loa_bounded| apply to_Zpos_ge0 | apply lob_bounded].
    have hialob_bounded: (Zpos_hia * Zpos_lob < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [ apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hia_bounded| apply to_Zpos_ge0 | apply lob_bounded].
    have hibloa_bounded: (Zpos_hib * Zpos_loa < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [ apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hib_bounded| apply to_Zpos_ge0 | apply loa_bounded].
    have hiahib_bounded: (Zpos_hia * Zpos_hib < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hia_bounded| apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0] | apply hib_bounded].
    pose proof (to_Zpos_full_mul loa lob) as Zpos_lolo.
    have Zpos_hihi: to_Zpos (full_mul hia hib <<<# size a) = (Zpos_hia * Zpos_hib)%Z. rewrite to_Zpos_zend to_Zpos_full_mul /Zpos_hia /Zpos_hib Zexp_distr. rewrite -Nat2Z.inj_add -{1}(odd_double_half (size a)) -addnn (negbTE Ha_odd) //=. apply Zle_0_nat. apply Zle_0_nat.
    have Zpos_cross: to_Zpos (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2) = (Zpos_hia * Zpos_lob + Zpos_hib * Zpos_loa)%Z.
    {
      rewrite to_Zpos_zend to_Zpos_sub_long_subB !to_Zpos_full_mul !to_Zpos_zext_addB. rewrite 2!to_Zpos_full_mul Z.sub_add_distr Zmul_cross Z.mul_add_distr_r {1}Z.mul_shuffle0; apply Z.add_cancel_l; by rewrite Zmult_assoc_reverse Z.mul_comm /Zpos_hib.
      by rewrite !size_full_mul !size_low_half !size_high_half. by rewrite size_low_half size_high_half. by rewrite size_low_half size_high_half.
      rewrite !to_Zpos_full_mul Z.mul_add_distr_r !Z.mul_add_distr_l Zplus_assoc_reverse. apply (Zplus_le_compat_l _ _ (to_Zpos hia * to_Zpos hib)). rewrite Z.add_assoc -{1}(Z.add_0_l (to_Zpos loa * to_Zpos lob)). apply Z.add_le_mono.
      apply Z.add_nonneg_nonneg; apply Z.mul_nonneg_nonneg; apply to_Zpos_ge0. by apply Z.eq_le_incl. by rewrite size_low_half size_high_half. by rewrite size_low_half size_high_half. by rewrite !size_full_mul !size_low_half !size_high_half.
    }
    have Hgoal: (to_Zpos loa * to_Zpos lob + to_Zpos (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2) < 2 ^ Z.of_nat (maxn (size (full_mul loa lob)) (size (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2))))%Z.
    {
      rewrite Zpos_cross size_zend size_long_subB !size_full_mul !size_zext_addB !size_full_mul !size_low_half !size_high_half -!(eqP Hsz) !minnE !subnn !subn0 !addnn.
      have Hsza: ((size a)./2).*2 = size a by rewrite -{2}(odd_double_half (size a)) (negbTE Ha_odd). rewrite doubleS !Hsza. have Hadd2: (size a).+1 <= (size a).+2 by done. rewrite (maxn_idPl Hadd2).
      have H0: size a <= (size a).+2 + (size a)./2 by rewrite -add2n addnACl leq_addr. rewrite (maxn_idPr H0) -addn2 addnACl addC {1}Nat2Z.inj_add //= addC Zpower_exp; last by done.
      pose proof (Z.add_lt_mono _ _ _ _ hialob_bounded hibloa_bounded) as H1. pose proof (Z.add_lt_mono _ _ _ _ loalob_bounded H1) as H2.
      have H3: (2 ^ Z.of_nat (size a) + (2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2) + 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2)) < 2 ^ Z.of_nat (size a + (size a)./2) * 2 ^ 2)%Z.
      {
        rewrite Zred_factor1 Z.pow_2_r Zmult_assoc -(Zred_factor1 (2 ^ Z.of_nat (size a + (size a)./2) * 2)) Nat2Z.inj_add; apply Z.add_lt_mono_r.
        rewrite Zpower_exp; [| apply Z.le_ge; apply Zle_0_nat | apply Z.le_ge; apply Zle_0_nat]. rewrite {1}(Zred_factor0 (2 ^ Z.of_nat (size a))) Zmult_assoc_reverse.
        apply Zmult_lt_compat_l; [ apply pow2_nat2z_gt0 |]. rewrite Z.mul_comm; apply Z.lt_1_mul_pos; [done | apply pow2_nat2z_gt0].
      }
      apply (Z.lt_trans _ _ _ H2 H3). apply Z.le_ge; apply Zle_0_nat.
    }
    rewrite !to_Zpos_add_long_addB_bounded Zpos_lolo. rewrite 2!Zplus_assoc_reverse; apply Z.add_cancel_l. rewrite Zplus_assoc Zpos_hihi; apply Z.add_cancel_r. rewrite Zpos_cross Z.add_comm; apply Z.add_cancel_r. apply Z.mul_comm.
    apply Hgoal. 2 :{ apply Hgoal. }

    rewrite Zpos_cross Z.add_assoc Zpos_hihi (Z.mul_comm Zpos_hib Zpos_loa) -Z.mul_add_distr_r Zplus_assoc_reverse -Z.mul_add_distr_r -Z.mul_add_distr_l.
    rewrite /Zpos_hia -(to_Zpos_zend hia (size a)./2) (to_Zpos_high_low_half Ha_odd) /Zpos_hib -(to_Zpos_zend hib (size a)./2) {1}(eqP Hsz) (to_Zpos_high_low_half Hb_odd) -(to_Zpos_full_mul a b).
    rewrite !size_long_addB !size_zend (size_long_subB (full_mul (hia 0+# loa) (hib 0+# lob)) (full_mul hia hib 0+# full_mul loa lob)) !size_full_mul !size_zext_addB !size_full_mul Hsz_all.
    rewrite -(size_cat loa hia) -(size_cat lob hib) (eqP (high_low_half Ha_odd)) (eqP (high_low_half Hb_odd)) -(size_full_mul a b); apply to_Zpos_bounded.
  Qed.

  Lemma General_Karatsuba_eq n a b:
    size a == size b -> n > 2 -> n < (size a) -> ~~ odd (size a) ->
      (full_mul (low_half a) (low_half b) ++#
      (full_mul (high_half a 0+# low_half a) (high_half b 0+# low_half b) --# (full_mul (high_half a) (high_half b) 0+# full_mul (low_half a) (low_half b)) <<<# (size a)./2) ++#
      (full_mul (high_half a) (high_half b) <<<# size a))
    = full_mul a b.
  Proof.
    move => Hsz Hnge2 Hszn Ha_odd. have Hb_odd: ~~ odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite -{9}(eqP (high_low_half Ha_odd)) -{7}(eqP (high_low_half Hb_odd)).
    set hia := high_half a; set hib := high_half b; set loa := low_half a; set lob := low_half b.
    assert (Hsz_all: maxn (maxn (size loa + size lob) (maxn (minn (size hia).+1 (size loa).+1 + minn (size hib).+1 (size lob).+1) (minn (size hia + size hib).+1 (size loa + size lob).+1) + (size a)./2)) (size hia + size hib + size a) = size loa + size hia + (size lob + size hib)).
    {
      rewrite !(size_high_half a) !(size_high_half b) !(size_low_half a) !(size_low_half b) -!(eqP Hsz) !addnn.
      have Hsza: ((size a)./2).*2 = size a by rewrite -{2}(odd_double_half (size a)) (negbTE Ha_odd). rewrite Hsza !minnE !subnn !subn0 doubleS Hsza.
      have H: (size a).+1 <= (size a).+2 by done. rewrite (maxn_idPl H). rewrite -add2n addnCAC addnACl add2n.
      have H0: (size a)./2.+2 <= size a. rewrite -{2}Hsza -addnn -addn2 (leq_add2l (size a)./2 2 (size a)./2) -ltn_double Hsza -muln2. have H1: 1 * 2 < n by done. by rewrite (ltn_trans H1 Hszn).
      rewrite -(leq_add2l (size a) (size a)./2.+2 (size a)) in H0. by rewrite (maxn_idPr (leq_addr (size a)./2.+2 (size a))) (maxn_idPr H0) addnn.
    }
    apply to_Zpos_inj_ss; first by rewrite !size_long_addB !size_zend (size_long_subB (full_mul (hia 0+# loa) (hib 0+# lob)) (full_mul hia hib 0+# full_mul loa lob)) !size_full_mul !size_zext_addB !size_full_mul (size_cat loa hia) (size_cat lob hib); apply Hsz_all. rewrite to_Zpos_full_mul 2!to_Zpos_cat Z.mul_add_distr_r !Z.mul_add_distr_l !size_low_half -!(eqP Hsz).
    set Zpos_hia := (to_Zpos hia * 2 ^ Z.of_nat (size a)./2)%Z; set Zpos_hib := (to_Zpos hib * 2 ^ Z.of_nat (size a)./2)%Z; set Zpos_loa := to_Zpos loa; set Zpos_lob := to_Zpos lob.
    have Hsza_half: Z.of_nat (size a) = (Z.of_nat (size a)./2 + Z.of_nat (size a)./2)%Z by rewrite -Nat2Z.inj_add -{1}(odd_double_half (size a)) (negbTE Ha_odd) /= add0n -addnn.
    have loa_bounded: (Zpos_loa < 2 ^ Z.of_nat (size a)./2)%Z by rewrite -size_low_half; apply to_Zpos_bounded.
    have lob_bounded: (Zpos_lob < 2 ^ Z.of_nat (size a)./2)%Z by rewrite (eqP Hsz) -size_low_half; apply to_Zpos_bounded.
    have hia_bounded: (Zpos_hia < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half /Zpos_hia Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Zmult_gt_0_lt_compat_r; [|rewrite -size_high_half /hia; apply to_Zpos_bounded]. apply Z.lt_gt. apply pow2_nat2z_gt0.
    have hib_bounded: (Zpos_hib < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half {1}(eqP Hsz) /Zpos_hia Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Zmult_gt_0_lt_compat_r; [|rewrite -size_high_half /hia; apply to_Zpos_bounded]. apply Z.lt_gt. apply pow2_nat2z_gt0.
    have loalob_bounded: (Zpos_loa * Zpos_lob < 2 ^ Z.of_nat (size a))%Z. rewrite Hsza_half Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [apply to_Zpos_ge0 | apply loa_bounded| apply to_Zpos_ge0 | apply lob_bounded].
    have hialob_bounded: (Zpos_hia * Zpos_lob < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [ apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hia_bounded| apply to_Zpos_ge0 | apply lob_bounded].
    have hibloa_bounded: (Zpos_hib * Zpos_loa < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [ apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hib_bounded| apply to_Zpos_ge0 | apply loa_bounded].
    have hiahib_bounded: (Zpos_hia * Zpos_hib < 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)))%Z. rewrite Z.pow_add_r; [| apply Zle_0_nat | apply Zle_0_nat]. apply Z.mul_lt_mono_nonneg; [apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0]| apply hia_bounded| apply Z.mul_nonneg_nonneg; [apply to_Zpos_ge0 |apply Z.lt_le_incl; apply pow2_nat2z_gt0] | apply hib_bounded].
    pose proof (to_Zpos_full_mul loa lob) as Zpos_lolo.
    have Zpos_hihi: to_Zpos (full_mul hia hib <<<# size a) = (Zpos_hia * Zpos_hib)%Z. rewrite to_Zpos_zend to_Zpos_full_mul /Zpos_hia /Zpos_hib Zexp_distr. rewrite -Nat2Z.inj_add -{1}(odd_double_half (size a)) -addnn (negbTE Ha_odd) //=. apply Zle_0_nat. apply Zle_0_nat.
    have Zpos_cross: to_Zpos (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2) = (Zpos_hia * Zpos_lob + Zpos_hib * Zpos_loa)%Z.
    {
      rewrite to_Zpos_zend to_Zpos_sub_long_subB !to_Zpos_full_mul !to_Zpos_zext_addB. rewrite 2!to_Zpos_full_mul Z.sub_add_distr Zmul_cross Z.mul_add_distr_r {1}Z.mul_shuffle0; apply Z.add_cancel_l; by rewrite Zmult_assoc_reverse Z.mul_comm /Zpos_hib.
      by rewrite !size_full_mul !size_low_half !size_high_half. by rewrite size_low_half size_high_half. by rewrite size_low_half size_high_half.
      rewrite !to_Zpos_full_mul Z.mul_add_distr_r !Z.mul_add_distr_l Zplus_assoc_reverse. apply (Zplus_le_compat_l _ _ (to_Zpos hia * to_Zpos hib)). rewrite Z.add_assoc -{1}(Z.add_0_l (to_Zpos loa * to_Zpos lob)). apply Z.add_le_mono.
      apply Z.add_nonneg_nonneg; apply Z.mul_nonneg_nonneg; apply to_Zpos_ge0. by apply Z.eq_le_incl. by rewrite size_low_half size_high_half. by rewrite size_low_half size_high_half. by rewrite !size_full_mul !size_low_half !size_high_half.
    }
    have Hgoal: (to_Zpos loa * to_Zpos lob + to_Zpos (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2) < 2 ^ Z.of_nat (maxn (size (full_mul loa lob)) (size (full_mul (hia 0+# loa) (hib 0+# lob) --# (full_mul hia hib 0+# full_mul loa lob) <<<# (size a)./2))))%Z.
    {
      rewrite Zpos_cross size_zend size_long_subB !size_full_mul !size_zext_addB !size_full_mul !size_low_half !size_high_half -!(eqP Hsz) !minnE !subnn !subn0 !addnn.
      have Hsza: ((size a)./2).*2 = size a by rewrite -{2}(odd_double_half (size a)) (negbTE Ha_odd). rewrite doubleS !Hsza. have Hadd2: (size a).+1 <= (size a).+2 by done. rewrite (maxn_idPl Hadd2).
      have H0: size a <= (size a).+2 + (size a)./2 by rewrite -add2n addnACl leq_addr. rewrite (maxn_idPr H0) -addn2 addnACl addC {1}Nat2Z.inj_add //= addC Zpower_exp; last by done.
      pose proof (Z.add_lt_mono _ _ _ _ hialob_bounded hibloa_bounded) as H1. pose proof (Z.add_lt_mono _ _ _ _ loalob_bounded H1) as H2.
      have H3: (2 ^ Z.of_nat (size a) + (2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2) + 2 ^ (Z.of_nat (size a) + Z.of_nat (size a)./2)) < 2 ^ Z.of_nat (size a + (size a)./2) * 2 ^ 2)%Z.
      {
        rewrite Zred_factor1 Z.pow_2_r Zmult_assoc -(Zred_factor1 (2 ^ Z.of_nat (size a + (size a)./2) * 2)) Nat2Z.inj_add; apply Z.add_lt_mono_r.
        rewrite Zpower_exp; [| apply Z.le_ge; apply Zle_0_nat | apply Z.le_ge; apply Zle_0_nat]. rewrite {1}(Zred_factor0 (2 ^ Z.of_nat (size a))) Zmult_assoc_reverse.
        apply Zmult_lt_compat_l; [ apply pow2_nat2z_gt0 |]. rewrite Z.mul_comm; apply Z.lt_1_mul_pos; [done | apply pow2_nat2z_gt0].
      }
      apply (Z.lt_trans _ _ _ H2 H3). apply Z.le_ge; apply Zle_0_nat.
    }
    rewrite !to_Zpos_add_long_addB_bounded Zpos_lolo. rewrite 2!Zplus_assoc_reverse; apply Z.add_cancel_l. rewrite Zplus_assoc Zpos_hihi; apply Z.add_cancel_r. rewrite Zpos_cross Z.add_comm; apply Z.add_cancel_r. apply Z.mul_comm.
    apply Hgoal. 2 :{ apply Hgoal. }

    rewrite Zpos_cross Z.add_assoc Zpos_hihi (Z.mul_comm Zpos_hib Zpos_loa) -Z.mul_add_distr_r Zplus_assoc_reverse -Z.mul_add_distr_r -Z.mul_add_distr_l.
    rewrite /Zpos_hia -(to_Zpos_zend hia (size a)./2) (to_Zpos_high_low_half Ha_odd) /Zpos_hib -(to_Zpos_zend hib (size a)./2) {1}(eqP Hsz) (to_Zpos_high_low_half Hb_odd) -(to_Zpos_full_mul a b).
    rewrite !size_long_addB !size_zend (size_long_subB (full_mul (hia 0+# loa) (hib 0+# lob)) (full_mul hia hib 0+# full_mul loa lob)) !size_full_mul !size_zext_addB !size_full_mul Hsz_all.
    rewrite -(size_cat loa hia) -(size_cat lob hib) (eqP (high_low_half Ha_odd)) (eqP (high_low_half Hb_odd)) -(size_full_mul a b); apply to_Zpos_bounded.
  Qed.

  (*---------------------------------------------------------------------------
    Properties of multiplication based on Karatsuba algorithm
    ---------------------------------------------------------------------------*)

  Lemma General_Karatsuba'_full_mul n n' a b: n' > 2 -> size a == size b -> low (size a).*2 (General_Karatsuba_fullmul' n n' a b) == full_mul a b.
  Proof.
    move: a b. induction n.
    - move => a b Hn' Hsz. exact: low_fullmul Hsz.
    - move => a b Hn' Hsz.
      pose proof (orP (leq_gtn_total (size a) n')) as Hszn'. elim: Hszn' => Hszn'.
      + rewrite /General_Karatsuba_fullmul' Hszn'. exact: low_fullmul Hsz.
      + rewrite ltnNge in Hszn'. rewrite /General_Karatsuba_fullmul' (negbTE Hszn'). rewrite -ltnNge in Hszn'.
        pose proof (orP (orbN (odd (size a)))) as Ha_odd. elim: Ha_odd => Ha_odd.
        2 :{
          have Hb_odd: ~~ odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite (negbTE Ha_odd) (negbTE Hb_odd).
          have Hlo_lo: size (low_half a) == size (low_half b) by rewrite (size_low_half a) (size_low_half b) (eqP Hsz).
          have Hhi_hi: size (high_half a) == size (high_half b) by rewrite (size_high_half a) (size_high_half b) (eqP Hsz).
          have Hcross: size (high_half a 0+# low_half a) == size (high_half b 0+# low_half b) by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
          rewrite (eqP (IHn (low_half a) (low_half b) Hn' Hlo_lo)) (eqP (IHn (high_half a) (high_half b) Hn' Hhi_hi)) (eqP (IHn (high_half a 0+# low_half a) (high_half b 0+# low_half b) Hn' Hcross)).
          rewrite (General_Karatsuba_eq Hsz Hn' Hszn' Ha_odd). exact: (low_fullmul Hsz).
        }
        have Hb_odd: odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite Ha_odd Hb_odd.
        set a' := zext 1 a. set b' := zext 1 b.
        have Hsz': size a' == size b' by rewrite /a' /b' !size_zext !addn1.
        have Hszn'': n' < size a' by rewrite /a' size_zext addn1 ltnS (ltnW Hszn').
        have Ha_odd': ~~ odd(size a') by rewrite /a' size_zext addn1 oddS Bool.negb_involutive.
        have Hlo_lo: size (low_half a') == size (low_half b') by rewrite (size_low_half a') (size_low_half b') (eqP Hsz').
        have Hhi_hi: size (high_half a') == size (high_half b') by rewrite (size_high_half a') (size_high_half b') (eqP Hsz').
        have Hcross: size (high_half a' 0+# low_half a') == size (high_half b' 0+# low_half b') by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
        rewrite (eqP (IHn (low_half a') (low_half b') Hn' Hlo_lo)) (eqP (IHn (high_half a') (high_half b') Hn' Hhi_hi)) (eqP (IHn (high_half a' 0+# low_half a') (high_half b' 0+# low_half b') Hn' Hcross)).
        rewrite (General_Karatsuba_eq Hsz' Hn' Hszn'' Ha_odd').
        have Hfull_mul: full_mul a' b' == (zext 2 (full_mul a b)). rewrite -to_nat_inj_ss; [by rewrite to_nat_zext !to_nat_full_mul' /a' /b' !to_nat_zext | by rewrite /a' /b' size_zext !size_full_mul !size_zext !addn1 addSnnS -addn2 (addC (size a) (size b)) addnCAC -addnACl].
        by rewrite (eqP Hfull_mul) -addnn {2}(eqP Hsz) -size_full_mul low_zext.
  Qed.

  Lemma General_Karatsuba_full_mul n' a b: n' > 2 -> size a == size b -> General_Karatsuba_fullmul n' a b == full_mul a b.
  Proof. rewrite /General_Karatsuba_fullmul; apply General_Karatsuba'_full_mul. Qed.

  Lemma test n a b: size a == size b -> (Karatsuba_fullmul' n a b) == (General_Karatsuba_fullmul' n 64 a b).
  Proof.
    move: a b; induction n; first by done. move => a b Hsz; rewrite /General_Karatsuba_fullmul' /Karatsuba_fullmul'.
    pose proof (orP (leq_gtn_total (size a) 64)) as Hsz64. elim: Hsz64 => Hsz64; first by rewrite Hsz64.
    rewrite ltnNge in Hsz64. rewrite (negbTE Hsz64). fold Karatsuba_fullmul' General_Karatsuba_fullmul'.
    rewrite -!(eqP Hsz). pose proof (orP (orbN (odd (size a)))) as Ha_odd. elim: Ha_odd => Ha_odd.
    2:{
      rewrite (negbTE Ha_odd).
      have Hlo_lo: size (low_half a) == size (low_half b) by rewrite (size_low_half a) (size_low_half b) (eqP Hsz).
      have Hhi_hi: size (high_half a) == size (high_half b) by rewrite (size_high_half a) (size_high_half b) (eqP Hsz).
      have Hcross: size (high_half a 0+# low_half a) == size (high_half b 0+# low_half b) by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
      by rewrite (eqP (IHn (low_half a) (low_half b) Hlo_lo)) (eqP (IHn (high_half a) (high_half b) Hhi_hi)) (eqP (IHn (high_half a 0+# low_half a) (high_half b 0+# low_half b) Hcross)).
    }
    rewrite Ha_odd.
    set a' := zext 1 a. set b' := zext 1 b.
    have Hsz': size a' == size b' by rewrite /a' /b' !size_zext !addn1.
    have Ha_odd': ~~ odd(size a') by rewrite /a' size_zext addn1 oddS Bool.negb_involutive.
    have Hlo_lo: size (low_half a') == size (low_half b') by rewrite (size_low_half a') (size_low_half b') (eqP Hsz').
    have Hhi_hi: size (high_half a') == size (high_half b') by rewrite (size_high_half a') (size_high_half b') (eqP Hsz').
    have Hcross: size (high_half a' 0+# low_half a') == size (high_half b' 0+# low_half b') by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
    by rewrite (eqP (IHn (low_half a') (low_half b') Hlo_lo)) (eqP (IHn (high_half a') (high_half b') Hhi_hi)) (eqP (IHn (high_half a' 0+# low_half a') (high_half b' 0+# low_half b') Hcross)).
  Qed.

  Lemma test2 a b: size a == size b -> Karatsuba_fullmul a b == General_Karatsuba_fullmul 64 a b.
  Proof.
    move => Hsz; rewrite /General_Karatsuba_fullmul /Karatsuba_fullmul.
    pose proof (eqP (test (Nat.log2_up (size a)) Hsz)); by rewrite H.
  Qed.

  Lemma Karatsuba'_full_mul n a b: size a == size b -> low (size a).*2 (Karatsuba_fullmul' n a b) == full_mul a b.
  Proof.
    move: a b. induction n.
    - move => a b Hsz. exact: low_fullmul Hsz.
    - move => a b Hsz. pose proof (orP (leq_gtn_total (size a) 64)) as Hsz64. elim: Hsz64 => Hsz64.
      + rewrite /Karatsuba_fullmul' Hsz64. exact: low_fullmul Hsz.
      + rewrite ltnNge in Hsz64. rewrite /Karatsuba_fullmul' (negbTE Hsz64). rewrite -ltnNge in Hsz64.
        pose proof (orP (orbN (odd (size a)))) as Ha_odd. elim: Ha_odd => Ha_odd.
        2 :{
          have Hb_odd: ~~ odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite (negbTE Ha_odd) (negbTE Hb_odd).
          have Hlo_lo: size (low_half a) == size (low_half b) by rewrite (size_low_half a) (size_low_half b) (eqP Hsz).
          have Hhi_hi: size (high_half a) == size (high_half b) by rewrite (size_high_half a) (size_high_half b) (eqP Hsz).
          have Hcross: size (high_half a 0+# low_half a) == size (high_half b 0+# low_half b) by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
          rewrite (eqP (IHn (low_half a) (low_half b) Hlo_lo)) (eqP (IHn (high_half a) (high_half b) Hhi_hi)) (eqP (IHn (high_half a 0+# low_half a) (high_half b 0+# low_half b) Hcross)).
          rewrite (Karatsuba_eq Hsz Hsz64 Ha_odd). exact: (low_fullmul Hsz).
        }
        have Hb_odd: odd (size b) by rewrite -(eqP Hsz) Ha_odd. rewrite Ha_odd Hb_odd.
        set a' := zext 1 a. set b' := zext 1 b.
        have Hsz': size a' == size b' by rewrite /a' /b' !size_zext !addn1.
        have Hsz64': 64 < size a' by rewrite /a' size_zext addn1 ltnS (ltnW Hsz64).
        have Ha_odd': ~~ odd(size a') by rewrite /a' size_zext addn1 oddS Bool.negb_involutive.
        have Hlo_lo: size (low_half a') == size (low_half b') by rewrite (size_low_half a') (size_low_half b') (eqP Hsz').
        have Hhi_hi: size (high_half a') == size (high_half b') by rewrite (size_high_half a') (size_high_half b') (eqP Hsz').
        have Hcross: size (high_half a' 0+# low_half a') == size (high_half b' 0+# low_half b') by rewrite !size_zext_addB (eqP Hlo_lo) (eqP Hhi_hi).
        rewrite (eqP (IHn (low_half a') (low_half b') Hlo_lo)) (eqP (IHn (high_half a') (high_half b') Hhi_hi)) (eqP (IHn (high_half a' 0+# low_half a') (high_half b' 0+# low_half b') Hcross)).
        rewrite (Karatsuba_eq Hsz' Hsz64' Ha_odd').
        have Hfull_mul: full_mul a' b' == (zext 2 (full_mul a b)). rewrite -to_nat_inj_ss; [by rewrite to_nat_zext !to_nat_full_mul' /a' /b' !to_nat_zext | by rewrite /a' /b' size_zext !size_full_mul !size_zext !addn1 addSnnS -addn2 (addC (size a) (size b)) addnCAC -addnACl].
        by rewrite (eqP Hfull_mul) -addnn {2}(eqP Hsz) -size_full_mul low_zext.
  Qed.

  Lemma Karatsuba_full_mul a b: size a == size b -> Karatsuba_fullmul a b == full_mul a b.
  Proof. rewrite /Karatsuba_fullmul; apply Karatsuba'_full_mul. Qed.

  (* Compute test
  Compute to_Zpos (Karatsuba_fullmul (from_Zpos 8192 546464946494564165146496446494654616649466446546541646495464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649) (from_Zpos 8192 165416541644964516515646464694654165516155464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649)).
  Compute to_Zpos (General_Karatsuba_fullmul 64 (from_Zpos 8192 546464946494564165146496446494654616649466446546541646495464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649) (from_Zpos 8192 165416541644964516515646464694654165516155464649464945641651464964464946546166494664465465416464954646494649456416514649644649465461664946644654654164649)). *)

  (*---------------------------------------------------------------------------
    Other tries (unrelated to Karatsuba algorithm) (imcomplete)
    ---------------------------------------------------------------------------*)

  Lemma to_nat_msb bs: to_nat bs = (msb bs) * 2 ^ (size bs).-1 + to_nat (low (size bs).-1 bs).
  Proof.
    case /lastP: bs; first by done. move => s x. rewrite to_nat_rcons !msb_rcons size_rcons Nat.pred_succ low_rcons; last by done.
    by rewrite low_size addC.
  Qed.

  Lemma to_Zpos_msb bs: to_Zpos bs = ((msb bs) * 2 ^ Z.of_nat (size bs).-1 + to_Zpos (low (size bs).-1 bs))%Z.
  Proof.
    case /lastP: bs; first by done. move => s x. rewrite to_Zpos_rcons !msb_rcons size_rcons Nat.pred_succ low_rcons; last by done.
    by rewrite low_size Z.add_comm.
  Qed.

  Lemma Z_true x: (true * x)%Z = x%Z.
  Proof. by case x. Qed.

  Lemma Z_powS n m: (0 <= m)%Z -> (n * n ^ m)%Z = (n ^ (m + 1 ))%Z.
  Proof.
    elim: m; first by done. 2 :{ move => p Hge. pose proof (Z.le_lt_trans _ _ _ Hge (Zlt_neg_0 p)) as Hp. discriminate. }
    move => p Hp; by rewrite /Z.pow /Z.pow_pos //= -Pos.iter_succ Pos.add_1_r.
  Qed.

  Lemma to_Z_msb bs b: to_Z (rcons bs b) = (-b * 2 ^ Z.of_nat (size bs) + to_Zpos (low (size bs) bs))%Z.
  Proof.
    elim: b; last by rewrite //= to_Z_rcons low_size. rewrite low_size Z.add_comm to_Z_to_Zpos to_Zpos_msb.
    rewrite !size_rcons Nat.pred_succ low_rcons; last by done. rewrite low_size msb_rcons //.
    apply (Z.add_cancel_l _ _ (true * 2 ^ Z.of_nat (size bs))). rewrite !Z_true Z.add_assoc Z.add_opp_r {2}(Z.add_comm (2 ^ Z.of_nat (size bs)) (to_Zpos bs)).
    rewrite Z.add_simpl_r Z.add_comm. rewrite Zplus_assoc_reverse Z.add_shuffle2 Z.add_diag Z_powS; last by apply Nat2Z.is_nonneg.
    by rewrite -addn1 Nat2Z.inj_add //= Z.add_assoc Z.add_opp_r Z.add_simpl_l.
  Qed.

  (*
  前提是: register 都是 uint64, rbx = rbxh * 2^63 + rbxl (rbxh 是 rbx 的 msb，rbxl 是底下 63 bits)
  經過一個 umull rdx rax r12 rbx; 的乘法的計算後，
  boolector 證的出:
  rax + rdx * 2^64 = r12 * ((rbxh * 2^63) + rbxl)
  這邊長度都補零補到128 bits。

  卻證不出:
  rax + rdx * 2^64 = (r12 * rbxh * 2^63) + (r12 * rbxl)

  這個看起來就只是一個把加法提出來的問題而已，應該用 coq 證不會很複雜。
  *)

  Lemma HanTing_1st_Problem bs1 bs2: size bs1 == size bs2 -> (to_Zpos (full_mul bs1 bs2) = to_Zpos bs1 * (msb bs2) * 2 ^ Z.of_nat (size bs1).-1 + to_Zpos bs1 * to_Zpos (low (size bs1).-1 bs2))%Z.
  Proof. move => Hsz; rewrite to_Zpos_full_mul (to_Zpos_msb bs2) Z.mul_add_distr_l !(eqP Hsz) Z.mul_assoc //=. Qed.

  (* about abs in Z *)

  Lemma Z_abs_le n: (n <= Z.abs n)%Z.
  Proof. elim: n; first by done. move => p //=; apply Z.le_refl. move => p //=; apply Z.le_refl. Qed.

  Lemma Z_abs_neg_le n: (-n <= Z.abs n)%Z.
  Proof. elim: n; first by done. move => p //=. move => p //=; apply Z.le_refl. Qed.

  Lemma Z_mul_pos_add_max a b c d: (0 <= a)%Z -> (0 <= b)%Z -> (a * c + b * d <= (a + b) * Z.max c d)%Z.
  Proof.
    move => Hapos Hbpos. elim: (Z.le_ge_cases c d) => Hcd.
    - rewrite (Z.max_r c d Hcd) Z.mul_add_distr_r; apply Zplus_le_compat_r. apply (Z.mul_le_mono_nonneg_l c d a Hapos Hcd).
    - rewrite (Z.max_l c d Hcd) Z.mul_add_distr_r; apply Zplus_le_compat_l. apply (Z.mul_le_mono_nonneg_l d c b Hbpos Hcd).
  Qed.

  Lemma Z_mul_neg_add_max a b c d: (a < 0)%Z -> (b < 0)%Z -> (a * c + b * d <= ((-a + -b) * Z.max (-c) (-d)))%Z.
  Proof.
    move => Haneg Hbneg. rewrite -Z.mul_opp_opp -(Z.mul_opp_opp b d); apply Z_mul_pos_add_max; try apply Z.lt_le_incl; try apply Z.opp_lt_mono; by rewrite Z.opp_involutive Z.opp_0.
  Qed.

  Lemma Z_mul_add_max a b c d: (a * c + b * d <= (Z.abs a + Z.abs b) * Z.max (Z.abs c) (Z.abs d))%Z.
  Proof.
    pose proof (Z_abs_le) as Habs. pose proof (Habs (a * c + b * d)%Z) as Hadd_le.
    apply (Z.le_trans (a * c + b * d)%Z (Z.abs (a * c + b * d))%Z _); first by exact: Hadd_le.
    apply (Z.le_trans (Z.abs (a * c + b * d))%Z (Z.abs (a * c) + Z.abs (b * d))%Z _); first by apply Z.abs_triangle.
    rewrite !Z.abs_mul; apply Z_mul_pos_add_max; by apply Z.abs_nonneg.
  Qed.

  Lemma Z_abs_le_neg a b: (b <= 0)%Z -> (Z.abs a <= Z.abs b)%Z -> (b <= a)%Z.
  Proof.
    move => Hbnonpos; rewrite (Z.abs_neq b Hbnonpos). elim: a; first by done.
    - move => p _ //=; apply (Z.le_trans _ 0 _ Hbnonpos). apply Zle_0_pos.
    - move => p Hle //=; apply Z.opp_le_mono. exact: Hle.
  Qed.

  Lemma Z_mul_add_min a b c d: (-((Z.abs a + Z.abs b) * Z.max (Z.abs c) (Z.abs d)) <= a * c + b * d)%Z.
  Proof.
    have Hneg: (- ((Z.abs a + Z.abs b) * Z.max (Z.abs c) (Z.abs d)) <= 0)%Z.
    {
      apply Z.opp_le_mono; rewrite //= Z.opp_involutive. apply Ztac.mul_le. apply Ztac.add_le; by apply Z.abs_nonneg.
      apply (Z.le_trans _ (Z.abs d) _ (Z.abs_nonneg d) (Z.le_max_r (Z.abs c) (Z.abs d))).
    }
    apply Z_abs_le_neg; first by exact Hneg. rewrite (Z.abs_neq _ Hneg) Z.opp_involutive.
    apply (Z.le_trans (Z.abs (a * c + b * d))%Z (Z.abs (a * c) + Z.abs (b * d))%Z _); first by apply Z.abs_triangle.
    rewrite !Z.abs_mul; apply Z_mul_pos_add_max; by apply Z.abs_nonneg.
  Qed.

  Lemma Z_le_le_abs a b c: (a <= b)%Z -> (b <= c)%Z -> (Z.abs b <= Z.max (Z.abs a) (Z.abs c))%Z.
  Proof.
    elim: b. move => _ _ //=; apply (Z.le_trans _ _ _ (Z.abs_nonneg c) (Z.le_max_r (Z.abs a) (Z.abs c))).
    move => p Ha Hc //=. pose proof Z_abs_le as H. apply (Z.le_trans _ (Z.abs c)%Z _ (Z.le_trans _ _ _ Hc (H c)) (Z.le_max_r (Z.abs a) (Z.abs c))).
    move => p Ha Hc //=. apply Z.opp_le_mono in Ha. rewrite Pos2Z.opp_neg in Ha. pose proof Z_abs_neg_le as H.
    apply (Z.le_trans _ (Z.abs a)%Z _ (Z.le_trans _ _ _ Ha (H a)) (Z.le_max_l (Z.abs a) (Z.abs c))).
  Qed.

  Lemma Z_le_lt_abs a b c: (a <= b)%Z -> (b < c)%Z -> (Z.abs b <= Z.max (Z.abs a) (Z.abs c))%Z.
  Proof. move => Ha Hc; apply (Z_le_le_abs Ha (Z.lt_le_incl _ _ Hc)). Qed.

  Lemma Z_lt_le_abs a b c: (a < b)%Z -> (b <= c)%Z -> (Z.abs b <= Z.max (Z.abs a) (Z.abs c))%Z.
  Proof. move => Ha Hc; apply (Z_le_le_abs (Z.lt_le_incl _ _ Ha) Hc). Qed.

  Lemma Z_lt_lt_abs a b c: (a < b)%Z -> (b < c)%Z -> (Z.abs b < Z.max (Z.abs a) (Z.abs c))%Z.
  Proof.
    pose proof Z_abs_le as Hpos; pose proof Z_abs_neg_le as Hneg. elim: b. move => _ Hc //=; apply (Z.lt_le_trans _ _ _ (Z.lt_le_trans _ _ _ Hc (Hpos c)) (Z.le_max_r (Z.abs a) (Z.abs c))).
    move => p Ha Hc //=. apply (Z.lt_le_trans _ (Z.abs c)%Z _ (Z.lt_le_trans _ _ _ Hc (Hpos c)) (Z.le_max_r (Z.abs a) (Z.abs c))).
    move => p Ha Hc //=. apply Z.opp_lt_mono in Ha. rewrite Pos2Z.opp_neg in Ha.
    apply (Z.lt_le_trans _ (Z.abs a)%Z _ (Z.lt_le_trans _ _ _ Ha (Hneg a)) (Z.le_max_l (Z.abs a) (Z.abs c))).
  Qed.

  Lemma Z_abs_pos p: (Z.abs (Z.pos p) = Z.pos p)%Z.
  Proof. by done. Qed.

  Lemma Z_abs_neg p: (Z.abs (Z.neg p) = Z.pos p)%Z.
  Proof. by done. Qed.

  Lemma Zmult_lt_compat2_general a b c d: (0 < a <= c)%Z -> (0 <= d)%Z -> (b < d)%Z -> (a * b < c * d)%Z.
  Proof.
    move => [Ha Hc] Hd. elim: b; intros.
    - rewrite Z.mul_0_r; apply Z.mul_pos_pos; try done. apply (Z.lt_le_trans _ _ _ Ha Hc).
    - apply Zmult_lt_compat2; try done.
    - apply (Z.lt_le_trans _ 0 _); try apply Z.mul_pos_neg; try done. apply Ztac.mul_le; try done.
      apply Z.lt_le_incl. apply (Z.lt_le_trans _ _ _ Ha Hc).
  Qed.

  Lemma Zmult_lt_compat_general a b c d: (0 <= a < c)%Z -> (0 < d)%Z -> (b <= d)%Z -> (a * b < c * d)%Z.
  Proof.
    move => [Ha Hc] Hd. elim: b; intros.
    - rewrite Z.mul_0_r; apply Z.mul_pos_pos; try done. apply (Z.le_lt_trans _ _ _ Ha Hc).
    - apply (Z.le_lt_trans _ (a * d)%Z _). apply Zmult_le_compat_l; try done. apply Zmult_lt_compat_r; try done.
    - apply (Z.le_lt_trans _ 0 _); try apply Z.mul_nonneg_nonpos; try done. apply Z.mul_pos_pos; try done.
      apply (Z.le_lt_trans _ _ _ Ha Hc).
  Qed.

  (*
  這個是我在驗證 divstep64 時實際遇到的問題，我也還沒解決:

  出現的變數有:
  u, v, q, r 是 sint64，
  F, G 是 sint256

  可以用的 premise 有:
  (b-1)
  -2**62 < u <= 2**62,
  -2**62 < v <= 2**62,
  -2**62 < q <= 2**62,
  -2**62 < r <= 2**62,
  (b-2)
  |u| + |v| <=2**62,
  u + v > -2**62
  (b-3) 這件事不知道你可不可以當它 trivial ，因為 F, G 是 sint256
  -2**255 <= F < 2**255,
  -2**255 <= G < 2**255
  我想用 boolecor 證的是:
  (a)
  -2**317 <= u * F + v * G < 2**317, 
  -2**317 <= q * F + r * G < 2**317
  這邊長度都 sign extension 到 320 bits

  不過 boolector 證不出來，也就是說 boolector 證不出 and[(b-1), (b-2), (b-3)] implies (a)
  這邊因為有絕對值，我猜用 coq 應該分成四種 case 就有辦法證了，麻煩幫我試試看。
  *)

  Lemma HanTing_2nd_Problem u v F G:
    (Z.abs u + Z.abs v <= 2 ^ 62)%Z -> (- 2 ^ 62 < u + v)%Z ->
    (- 2 ^ 255 <= F < 2 ^ 255)%Z -> (- 2 ^ 255 <= G < 2 ^ 255)%Z -> (-2^317 <= u * F + v * G < 2^317)%Z.
  Proof.
    pose proof Z_abs_le as Hpos; pose proof Z_abs_neg_le as Hneg.
    move => Habs_add Hadd [HleF HFlt] [HleG HGlt]. split.
    {
      apply (Z.le_trans (- 2 ^ 317)%Z (- ((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G)))%Z _); last by apply Z_mul_add_min.
      apply Z.opp_le_mono; rewrite !Z.opp_involutive (Z.pow_add_r 2 62 255); [|done|done]. apply Zmult_le_compat; first by exact Habs_add.
      apply Z.max_lub; [apply (Z_le_lt_abs HleF HFlt) | apply (Z_le_lt_abs HleG HGlt)]. apply Ztac.add_le; by apply Z.abs_nonneg.
      apply (Z.le_trans _ _ _ (Z.abs_nonneg F) (Z.le_max_l (Z.abs F) (Z.abs G))).
    }
    move : Habs_add Hadd HleF HFlt HleG HGlt. elim: u; elim: v; intros; try done.
    - rewrite Z.mul_0_l Z.add_0_l (Z.pow_add_r 2 62 255); try done. move: HleG HGlt; elim: G; intros; try done. apply Zmult_lt_compat2; try done.
    - rewrite Z.mul_0_l Z.add_0_l (Z.pow_add_r 2 255 62); try done. move: HleG HGlt; elim: G; intros; try done.
      apply (Z.le_lt_trans _ _ _ (Hpos (Z.neg p * Z.neg p0)%Z)); rewrite Z.abs_mul Z.mul_comm; apply Zmult_lt_compat2; split; try done.
      rewrite Z.opp_le_mono Z.opp_involutive Pos2Z.opp_neg in HleG; try done. rewrite Z.add_0_l Z.opp_lt_mono Z.opp_involutive Pos2Z.opp_neg in Hadd; try done.
    - rewrite Z.mul_0_l Z.add_0_r (Z.pow_add_r 2 62 255); try done. move: HleF HFlt; elim: F; intros; try done. apply Zmult_lt_compat2; try done.
    - apply (Z.le_lt_trans _ ((Z.pos p0 + Z.pos p) * Z.max F G)%Z _ ); try apply Z_mul_pos_add_max; try apply Zle_0_pos.
      rewrite (Z.pow_add_r 2 62 255); try done. apply Zmult_lt_compat2_general; try done. apply Z.max_lub_lt; try done.
    - apply (Z.lt_eq_cases (Z.abs (Z.pos p0) + Z.abs (Z.neg p))%Z (2 ^ 62)%Z) in Habs_add. elim: Habs_add => Habs_add.
      + apply (Z.le_lt_trans _ ((Z.abs (Z.pos p0) + Z.abs (Z.neg p)) * Z.max (Z.abs F) (Z.abs G))%Z _ ); try apply Z_mul_add_max; rewrite (Z.pow_add_r 2 62 255); try done.
        apply Zmult_lt_compat_general; try split; try done. pose proof (Z_le_lt_abs HleF HFlt); pose proof (Z_le_lt_abs HleG HGlt); apply Z.max_lub; try done.
      + rewrite Z_abs_pos Z_abs_neg in Habs_add. rewrite -(Z.mul_opp_opp (Z.neg p) G) Pos2Z.opp_neg. apply (Z.lt_le_trans (Z.pos p0 * F + Z.pos p * - G)%Z (Z.pos p0 * 2 ^ 255 + Z.pos p * 2 ^ 255)%Z (2 ^ 317)%Z).
        * apply Z.add_lt_le_mono; try apply Zmult_lt_compat_l; try apply Zmult_le_compat_l; try done. by rewrite Z.opp_le_mono Z.opp_involutive.
        * rewrite -Z.mul_add_distr_r Habs_add //=.
    - rewrite Z.mul_0_l Z.add_0_r (Z.pow_add_r 2 255 62); try done. move: HleF HFlt; elim: F; intros; try done.
      apply (Z.le_lt_trans _ _ _ (Hpos (Z.neg p * Z.neg p0)%Z)); rewrite Z.abs_mul Z.mul_comm; apply Zmult_lt_compat2; split; try done.
      rewrite Z.opp_le_mono Z.opp_involutive Pos2Z.opp_neg in HleF; try done. rewrite Z.add_0_r Z.opp_lt_mono Z.opp_involutive Pos2Z.opp_neg in Hadd; try done.
    - apply (Z.lt_eq_cases (Z.abs (Z.neg p0) + Z.abs (Z.pos p))%Z (2 ^ 62)%Z) in Habs_add. elim: Habs_add => Habs_add.
      + apply (Z.le_lt_trans _ ((Z.abs (Z.neg p0) + Z.abs (Z.pos p)) * Z.max (Z.abs F) (Z.abs G))%Z _ ); try apply Z_mul_add_max; rewrite (Z.pow_add_r 2 62 255); try done.
        apply Zmult_lt_compat_general; try split; try done. pose proof (Z_le_lt_abs HleF HFlt); pose proof (Z_le_lt_abs HleG HGlt); apply Z.max_lub; try done.
      + rewrite Z_abs_pos Z_abs_neg in Habs_add. rewrite -(Z.mul_opp_opp (Z.neg p0) F) Pos2Z.opp_neg. apply (Z.lt_le_trans (Z.pos p0 * - F + Z.pos p * G)%Z (Z.pos p0 * 2 ^ 255 + Z.pos p * 2 ^ 255)%Z (2 ^ 317)%Z).
        * apply Z.add_le_lt_mono; try apply Zmult_lt_compat_l; try apply Zmult_le_compat_l; try done. by rewrite Z.opp_le_mono Z.opp_involutive.
        * rewrite -Z.mul_add_distr_r Habs_add //=.
    - apply (Z.le_lt_trans _ ((-Z.neg p0 + -Z.neg p) * Z.max (-F) (-G))%Z _ ); try apply Z_mul_neg_add_max; try done.
      rewrite (Z.pow_add_r 2 62 255); try done. apply Zmult_lt_compat_general; try split; try done. apply Z.opp_lt_mono; try done.
      apply Z.opp_le_mono in HleF; apply Z.opp_le_mono in HleG. apply Z.max_lub; try done.
  Qed.

  (*
  ( (|u| + |v| <= 2**60) and (-2^255 < F, G < 2**255) ) implies
  -2**315 < uF+vG < 2**315
  *)

  Lemma HanTing_3rd_Problem u v F G:
    (Z.abs u + Z.abs v <= 2 ^ 60)%Z -> (- 2 ^ 255 < F < 2 ^ 255)%Z -> (- 2 ^ 255 < G < 2 ^ 255)%Z -> (-2^315 < u * F + v * G < 2^315)%Z.
  Proof.
    pose proof Z_abs_le as Hpos; pose proof Z_abs_neg_le as Hneg. move => Habs_add_le [HltF HFlt] [HltG HGlt].
    pose proof (Z_lt_lt_abs HltF HFlt) as HFabs; rewrite Z.abs_opp Z.max_id in HFabs.
    pose proof (Z_lt_lt_abs HltG HGlt) as HGabs; rewrite Z.abs_opp Z.max_id in HGabs.
    pose proof (Z.max_lub_lt (Z.abs F) (Z.abs G) (Z.abs (2 ^ 255)) HFabs HGabs) as HmaxFGabs_lt.
    pose proof (Z.add_nonneg_nonneg (Z.abs u) (Z.abs v) (Z.abs_nonneg u) (Z.abs_nonneg v)) as Habs_add_ge0.
    pose proof (Z.le_trans _ _ _ (Z.abs_nonneg F) (Z.le_max_l (Z.abs F) (Z.abs G))) as HmaxFGabs_ge0.
    have Hrange: ((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G) < 2 ^ 315)%Z.
    {
      case: (Zle_lt_or_eq _ _ Habs_add_ge0). 2 :{ move => Habs_eq0; rewrite -Habs_eq0 Z.mul_0_l //. }
      case: (Zle_lt_or_eq _ _ HmaxFGabs_ge0). 2 :{ move => HmaxFGabs_eq0; rewrite -HmaxFGabs_eq0 Z.mul_0_r //. }
      move => HmaxFGabs_gt0 Habs_add_gt0. apply (Zmult_lt_compat2 (Z.abs u + Z.abs v) (Z.max (Z.abs F) (Z.abs G)) (2 ^ 60)%Z (2 ^ 255)%Z); try done; try done.
    }
    split.
    2 :{
      apply (Z.le_lt_trans _ ((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G))); try apply Z_mul_add_max; apply Hrange.
    }
    apply (Z.lt_le_trans (- 2 ^ 315)%Z (-((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G)))%Z); last by apply Z_mul_add_min.
    apply Z.opp_lt_mono; rewrite 2! Z.opp_involutive; apply Hrange.
  Qed.

  (*
  多了一個變數，range 也不太一樣，要證明
  ( (|u| + |v| <= 2**60) and (-2^29 < F, G < 2**255+2**29) and (0 <= d < 2^60) ) implies
  -2**316 < uF + vG + d*(2**255 - 19) < 2**316
  *)

  Lemma HanTing_4th_Problem u v F G d:
    (Z.abs u + Z.abs v <= 2 ^ 60)%Z -> (- 2 ^ 29 < F < 2 ^ 255 + 2 ^ 29)%Z -> (- 2 ^ 29 < G < 2 ^ 255 + 2 ^ 29)%Z ->
    (0 <= d < 2^60)%Z -> (-2^316 < u * F + v * G + d * (2^255 - 19) < 2^316)%Z.
  Proof.
    pose proof Z_abs_le as Hpos; pose proof Z_abs_neg_le as Hneg. move => Habs_add_le [HltF HFlt] [HltG HGlt] [HleD HDlt].
    set x := (u * F + v * G)%Z; set y := (d * (2^255 - 19))%Z.
    pose proof (Z_lt_lt_abs HltF HFlt) as HFabs; rewrite Z.abs_opp Z.max_r // in HFabs.
    pose proof (Z_lt_lt_abs HltG HGlt) as HGabs; rewrite Z.abs_opp Z.max_r // in HGabs.
    pose proof (Z.max_lub_lt (Z.abs F) (Z.abs G) (Z.abs (2 ^ 255 + 2 ^ 29)) HFabs HGabs) as HmaxFGabs_lt.
    pose proof (Z.add_nonneg_nonneg (Z.abs u) (Z.abs v) (Z.abs_nonneg u) (Z.abs_nonneg v)) as Habs_add_ge0.
    pose proof (Z.le_trans _ _ _ (Z.abs_nonneg F) (Z.le_max_l (Z.abs F) (Z.abs G))) as HmaxFGabs_ge0.
    have Hxabs: ((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G) < 2 ^ 315 + 2 ^ 89)%Z.
    {
      case: (Zle_lt_or_eq _ _ Habs_add_ge0). 2 :{ move => Habs_eq0; rewrite -Habs_eq0 Z.mul_0_l //. }
      case: (Zle_lt_or_eq _ _ HmaxFGabs_ge0). 2 :{ move => HmaxFGabs_eq0; rewrite -HmaxFGabs_eq0 Z.mul_0_r //. }
      move => HmaxFGabs_gt0 Habs_add_gt0. apply (Zmult_lt_compat2 (Z.abs u + Z.abs v) (Z.max (Z.abs F) (Z.abs G)) (2 ^ 60)%Z (2 ^ 255 + 2^29)%Z); try done; try done.
    }
    have Hd_max: (y <= 2 ^ 315 - 2 ^ 255 - 19 * 2 ^ 60 + 19)%Z.
    {
      by apply (Z.mul_le_mono_nonneg d  (2^60-1)%Z (2^255 - 19)%Z (2^255 - 19)%Z HleD (Zlt_succ_le d (2^60-1)%Z HDlt)).
    }
    split.
    2 :{
      apply (Z.lt_trans _ (2^316 - 2^255 + 2^89 - 19 * 2^60 + 19)%Z); try done.
      apply (Z.add_lt_le_mono x (2 ^ 315 + 2 ^ 89)%Z y (2 ^ 315 - 2 ^ 255 - 19 * 2 ^ 60 + 19)).
      apply (Z.le_lt_trans _ ((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G))); try apply Z_mul_add_max; apply Hxabs. apply Hd_max.
    }
    rewrite -[(- 2 ^ 316)%Z]Z.add_0_r; apply (Z.add_lt_le_mono (- 2 ^ 316)%Z x 0%Z y); last by apply (Z.mul_nonneg_nonneg _ _ HleD).
    apply (Z.lt_le_trans (- 2 ^ 316)%Z (-((Z.abs u + Z.abs v) * Z.max (Z.abs F) (Z.abs G)))%Z); last by apply Z_mul_add_min.
    apply Z.opp_lt_mono; rewrite 2! Z.opp_involutive; apply (Z.lt_trans _ (2 ^ 315 + 2 ^ 89)%Z _ Hxabs); try done.
  Qed.


  (* about long_udivB; unfinished *)

  Definition long_udivB (bs1 bs2 : bits) : bits * bits := udivB (zext (size bs2 - size bs1) bs1) (zext (size bs1 - size bs2) bs2).
  Definition long_udivB' (bs1 bs2 : bits) : bits := (long_udivB bs1 bs2).1.
  Definition long_uremB bs1 bs2 := (long_udivB bs1 bs2).2.

  Lemma size_long_udivB bs1 bs2: size (long_udivB bs1 bs2).1 = maxn (size bs1) (size bs2).
  Proof. by rewrite /long_udivB size_udivB size_zext maxnE. Qed.

  Lemma size_long_uremB bs1 bs2: size (long_udivB bs1 bs2).2 = maxn (size bs1) (size bs2).
  Proof. by rewrite /long_udivB size_uremB size_zext maxnE. Qed.

  Lemma to_Zpos_udivB_rev : forall m n , size n = size m -> ~~(n == zeros (size n)) ->
                                     to_Zpos (udivB m n).1 = (Z.div (to_Zpos m) (to_Zpos n)).
  Proof. move => m n; rewrite -(revK m) => Hsz Hnotzeros; rewrite to_Zpos_udivB; [done | by rewrite Hsz  size_rev| done]. Qed.

  Lemma to_Zpos_uremB_rev : forall m n , size n = size m -> ~~(n == zeros (size n)) ->
                                     to_Zpos (udivB m n).2 = (Zmod (to_Zpos m) (to_Zpos n)).
  Proof. move => m n; rewrite -(revK m) => Hsz Hnotzeros; rewrite to_Zpos_uremB; [done | by rewrite Hsz  size_rev| done]. Qed.

  Lemma addn_subn_eq m n: m + (n - m) = n + (m - n).
  Proof. by rewrite -!maxnE maxn_sym. Qed.

  Lemma to_Zpos_long_udivB : forall m n: bits , ~~(n == zeros (size n)) ->
                                     to_Zpos (long_udivB (rev m) n).1 = (Z.div (to_Zpos (rev m)) (to_Zpos n)).
  Proof.
    rewrite /long_udivB => m n Hnotzeros. set bs1 := zext (size n - size (rev m)) (rev m); set bs2:= zext (size (rev m) - size n) n.
    rewrite to_Zpos_udivB_rev; [by rewrite !to_Zpos_zext | by rewrite !size_zext addn_subn_eq | by rewrite -ltB0n ltB_zext_r ltB0n].
  Qed.

  Lemma to_Zpos_long_udivB_rev: forall m n: bits , ~~(n == zeros (size n)) ->
                                     to_Zpos (long_udivB m n).1 = (Z.div (to_Zpos m) (to_Zpos n)).
  Proof. move => m n; rewrite -(revK m) => Hnotzeros; rewrite to_Zpos_long_udivB; done. Qed.

  Lemma to_Zpos_long_udivB' : forall m n: bits , ~~ (n == zeros (size n)) ->
                                     to_Zpos (long_udivB' m n) = (Z.div (to_Zpos m) (to_Zpos n)).
  Proof. move => m n Hnotzeros; rewrite /long_udivB' to_Zpos_long_udivB_rev; done. Qed.

  Lemma to_Zpos_long_uremB : forall m n: bits , ~~(n == zeros (size n)) ->
                                     to_Zpos (long_udivB (rev m) n).2 = (Zmod (to_Zpos (rev m)) (to_Zpos n)).
  Proof.
    rewrite /long_udivB => m n Hnotzeros. set bs1 := zext (size n - size (rev m)) (rev m); set bs2:= zext (size (rev m) - size n) n.
    rewrite to_Zpos_uremB_rev; [by rewrite !to_Zpos_zext | by rewrite !size_zext addn_subn_eq | by rewrite -ltB0n ltB_zext_r ltB0n].
  Qed.

  Lemma to_Zpos_long_uremB' : forall m n: bits , ~~ (n == zeros (size n)) ->
                                     to_Zpos (long_uremB m n) = (Zmod (to_Zpos m) (to_Zpos n)).
  Proof. move => m n; rewrite -(revK m) => Hnotzeros; rewrite to_Zpos_long_uremB; done. Qed.

  Lemma long_udivB0 : forall n m, (long_udivB m (zeros n)) = (ones (maxn (size m) n), zext (n - size m) m).
  Proof. intros; by rewrite/long_udivB zext_zero udivB0 size_zext size_zeros maxnE. Qed.

  Lemma long_udiv0B : forall n (m: bits), ~~(m==zeros(size m)) -> long_udivB (zeros n) m = (zeros (maxn n (size m)), zeros (maxn n (size m))).
  Proof.
    intros; rewrite/long_udivB zext_zero size_zeros udiv0B; [by rewrite addC !maxnE | by rewrite size_zext addC addn_subn_eq |].
    by rewrite -ltB0n ltB_zext_r ltB0n.
  Qed.

  Lemma zext_from_Zpos m n p: (0 <= p < 2 ^ Z.of_nat n)%Z -> zext m (from_Zpos n p) = from_Zpos (m+n) p.
  Proof.
    move => [Hge0 Hltbound]; apply to_Zpos_inj_ss; first by rewrite size_zext !size_from_Zpos addC.
    rewrite to_Zpos_zext !to_Zpos_from_Zpos_bounded; try done. rewrite addC Nat2Z.inj_add Z.pow_add_r; try apply Zle_0_nat.
    apply (Z.lt_le_trans p (2 ^ Z.of_nat n)%Z _); try done. apply Z.le_mul_diag_r; try apply (Zlt_le_succ 0 (2 ^ Z.of_nat m)%Z); try apply pow2_nat2z_gt0.
  Qed.

  Lemma long_udivB1: forall n (m: bits), 0 < n -> ~~(m==zeros(size m)) -> long_udivB m (from_Zpos n 1) = (zext (n - size m) m, zeros (maxn n (size m))).
  Proof.
    intros; rewrite /long_udivB size_from_Zpos zext_from_Zpos; try split; try apply Z.pow_gt_1; try done. 2:{ rewrite -Nat2Z.inj_0; apply inj_lt; apply (ltP H). }
    rewrite addC. have Hsz: size (zext (n - size m) m) = n + (size m - n). by rewrite size_zext addn_subn_eq.
    rewrite -Hsz maxnE addn_subn_eq udivB1 size_zext; [ done | by rewrite addn_subn_eq -Hsz -ltB0n ltB_zext_r ltB0n].
  Qed.

  Lemma long_udivB_lt bs1 bs2 :
    ~~ (bs1 == zeros (size bs1)) ->
    (from_Zpos (size bs2) 1) <# bs2 ->
    (long_udivB bs1 bs2).1 <# bs1.
  Proof.
    intros; rewrite /long_udivB to_Zpos_ltB_eqn -(to_Zpos_zext bs1 (size bs2 - size bs1)); set bs1' := (zext (size bs2 - size bs1) bs1); set bs2' := (zext (size bs1 - size bs2) bs2).
    rewrite -to_Zpos_ltB_eqn; apply udivB_lt; [ by rewrite !size_zext addn_subn_eq | by rewrite -ltB0n ltB_zext_r ltB0n|].
    assert (H2 := H0). move: H0; rewrite !to_Zpos_ltB_eqn !to_Zpos_from_Zpos; try done. move => H0; rewrite Zmod_1_l; try rewrite to_Zpos_zext; rewrite Zmod_1_l in H0; try apply Z.pow_gt_1; try done; rewrite -Nat2Z.inj_0; apply inj_lt; case: (Nat.eq_0_gt_0_cases (size bs2)) => Hsz; try done; try by rewrite (eqP (size0 Hsz)) /= ltBnn in H2.
    rewrite size_zext; by apply Nat.lt_lt_add_r.
  Qed.

  Lemma to_Zpos_from_Zpos_eq n z: to_Zpos (from_Zpos n z) = z <-> (0 <= z < 2 ^ Z.of_nat n)%Z.
  Proof.
    split; intros. 2 :{ move: H => [H0 Hn]; by rewrite (to_Zpos_from_Zpos_bounded H0 Hn). }
    rewrite -H to_Zpos_from_Zpos. apply Z.mod_pos_bound; apply Z.pow_pos_nonneg; [done | apply Zle_0_nat]. rewrite -H; apply to_Zpos_ge0.
  Qed.