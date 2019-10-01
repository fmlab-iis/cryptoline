proc main (ymm4_LLLL, ymm4_LLLH, ymm4_LLHL, ymm4_LLHH, ymm4_LHLL,
           ymm4_LHLH, ymm4_LHHL, ymm4_LHHH, ymm4_HLLL, ymm4_HLLH,
           ymm4_HLHL, ymm4_HLHH, ymm4_HHLL, ymm4_HHLH, ymm4_HHHL,
           ymm4_HHHH,
           ymm5_LLLL, ymm5_LLLH, ymm5_LLHL, ymm5_LLHH, ymm5_LHLL,
           ymm5_LHLH, ymm5_LHHL, ymm5_LHHH, ymm5_HLLL, ymm5_HLLH,
           ymm5_HLHL, ymm5_HLHH, ymm5_HHLL, ymm5_HHLH, ymm5_HHHL,
           ymm5_HHHH,
           ymm6_LLLL, ymm6_LLLH, ymm6_LLHL, ymm6_LLHH, ymm6_LHLL,
           ymm6_LHLH, ymm6_LHHL, ymm6_LHHH, ymm6_HLLL, ymm6_HLLH,
           ymm6_HLHL, ymm6_HLHH, ymm6_HHLL, ymm6_HHLH, ymm6_HHHL,
           ymm6_HHHH,
           ymm7_LLLL, ymm7_LLLH, ymm7_LLHL, ymm7_LLHH, ymm7_LHLL,
           ymm7_LHLH, ymm7_LHHL, ymm7_LHHH, ymm7_HLLL, ymm7_HLLH,
           ymm7_HLHL, ymm7_HLHH, ymm7_HHLL, ymm7_HHLH, ymm7_HHHL,
           ymm7_HHHH,
           ymm8_LLLL, ymm8_LLLH, ymm8_LLHL, ymm8_LLHH, ymm8_LHLL,
           ymm8_LHLH, ymm8_LHHL, ymm8_LHHH, ymm8_HLLL, ymm8_HLLH,
           ymm8_HLHL, ymm8_HLHH, ymm8_HHLL, ymm8_HHLH, ymm8_HHHL,
           ymm8_HHHH,
           ymm9_LLLL, ymm9_LLLH, ymm9_LLHL, ymm9_LLHH, ymm9_LHLL,
           ymm9_LHLH, ymm9_LHHL, ymm9_LHHH, ymm9_HLLL, ymm9_HLLH,
           ymm9_HLHL, ymm9_HLHH, ymm9_HHLL, ymm9_HHLH, ymm9_HHHL,
           ymm9_HHHH,
           ymm10_LLLL, ymm10_LLLH, ymm10_LLHL, ymm10_LLHH, ymm10_LHLL,   
           ymm10_LHLH, ymm10_LHHL, ymm10_LHHH, ymm10_HLLL, ymm10_HLLH,
           ymm10_HLHL, ymm10_HLHH, ymm10_HHLL, ymm10_HHLH, ymm10_HHHL,
           ymm10_HHHH,
           ymm11_LLLL, ymm11_LLLH, ymm11_LLHL, ymm11_LLHH, ymm11_LHLL,
           ymm11_LHLH, ymm11_LHHL, ymm11_LHHH, ymm11_HLLL, ymm11_HLLH,
           ymm11_HLHL, ymm11_HLHH, ymm11_HHLL, ymm11_HHLH, ymm11_HHHL,
           ymm11_HHHH) =

{
  bvTrue
|
  bvTrue
}

(* constants *)

bvAssign qinv (bvConst 57857);
bvAssign q (bvConst 7681);
bvAssign zeta (bvConst 62);
bvAssign twoq (bvConst 15362);

(* zetas *)

bvAssign zeta000 (bvConst 3777);
bvAssign zeta020 (bvConst 4499);
bvAssign zeta040 (bvConst 3625);
bvAssign zeta060 (bvConst 3985);
bvAssign zeta080 (bvConst 6581);
bvAssign zeta0a0 (bvConst 2456);
bvAssign zeta0c0 (bvConst 2194);
bvAssign zeta0e0 (bvConst 121);
bvAssign zeta100 (bvConst 5431);
bvAssign zeta120 (bvConst 834);
bvAssign zeta140 (bvConst 5186);
bvAssign zeta160 (bvConst 5362);
bvAssign zeta180 (bvConst 2876);
bvAssign zeta1a0 (bvConst 5980);
bvAssign zeta1c0 (bvConst 1414);
bvAssign zeta1e0 (bvConst 2816);
bvAssign zeta1f0 (bvConst 5593);
bvAssign zeta200 (bvConst 5444);
bvAssign zeta210 (bvConst 1986);
bvAssign zeta220 (bvConst 6082);
bvAssign zeta230 (bvConst 1993);
bvAssign zeta240 (bvConst 3706);
bvAssign zeta250 (bvConst 5675);
bvAssign zeta260 (bvConst 6156);
bvAssign zeta270 (bvConst 5124);
bvAssign zeta280 (bvConst 1296);
bvAssign zeta290 (bvConst 1483);
bvAssign zeta2a0 (bvConst 4851);
bvAssign zeta2b0 (bvConst 3364);
bvAssign zeta2c0 (bvConst 617);
bvAssign zeta2d0 (bvConst 1921);
bvAssign zeta2e0 (bvConst 3992);
bvAssign zeta2e8 (bvConst 5943);
bvAssign zeta2f0 (bvConst 3266);
bvAssign zeta2f8 (bvConst 4081);
bvAssign zeta300 (bvConst 810);
bvAssign zeta308 (bvConst 1887);
bvAssign zeta310 (bvConst 7043);
bvAssign zeta318 (bvConst 7674);
bvAssign zeta320 (bvConst 7243);
bvAssign zeta328 (bvConst 7002);
bvAssign zeta330 (bvConst 6376);
bvAssign zeta338 (bvConst 5921);
bvAssign zeta340 (bvConst 396);
bvAssign zeta348 (bvConst 4507);
bvAssign zeta350 (bvConst 4126);
bvAssign zeta358 (bvConst 5800);
bvAssign zeta360 (bvConst 3772);
bvAssign zeta368 (bvConst 5146);
bvAssign zeta370 (bvConst 5241);
bvAssign zeta378 (bvConst 5126);
bvAssign zeta380 (bvConst 1535);
bvAssign zeta388 (bvConst 7132);
bvAssign zeta390 (bvConst 3153);
bvAssign zeta398 (bvConst 2310);
bvAssign zeta3a0 (bvConst 6282);
bvAssign zeta3a8 (bvConst 1321);
bvAssign zeta3b0 (bvConst 514);
bvAssign zeta3b8 (bvConst 4725);
bvAssign zeta3c0 (bvConst 7578);
bvAssign zeta3c8 (bvConst 2804);
bvAssign zeta3d0 (bvConst 5638);
bvAssign zeta3d8 (bvConst 6250);
bvAssign zeta3e0 (bvConst 6627);
bvAssign zeta3e4 (bvConst 1698);
bvAssign zeta3e8 (bvConst 4225);
bvAssign zeta3ec (bvConst 1166);
bvAssign zeta3f0 (bvConst 2426);
bvAssign zeta3f4 (bvConst 3831);
bvAssign zeta3f8 (bvConst 915);
bvAssign zeta3fc (bvConst 7679);
bvAssign zeta400 (bvConst 4264);
bvAssign zeta404 (bvConst 7487);
bvAssign zeta408 (bvConst 2919);
bvAssign zeta40c (bvConst 2789);
bvAssign zeta410 (bvConst 3405);
bvAssign zeta414 (bvConst 2385);
bvAssign zeta418 (bvConst 5568);
bvAssign zeta41c (bvConst 4949);
bvAssign zeta420 (bvConst 2175);
bvAssign zeta424 (bvConst 373);
bvAssign zeta428 (bvConst 3692);
bvAssign zeta42c (bvConst 6951);
bvAssign zeta430 (bvConst 5925);
bvAssign zeta434 (bvConst 3135);
bvAssign zeta438 (bvConst 5290);
bvAssign zeta43c (bvConst 660);
bvAssign zeta440 (bvConst 6184);
bvAssign zeta444 (bvConst 2572);
bvAssign zeta448 (bvConst 4536);
bvAssign zeta44c (bvConst 1350);
bvAssign zeta450 (bvConst 5457);
bvAssign zeta454 (bvConst 4093);
bvAssign zeta458 (bvConst 6000);
bvAssign zeta45c (bvConst 2883);
bvAssign zeta460 (bvConst 6291);
bvAssign zeta464 (bvConst 1598);
bvAssign zeta468 (bvConst 3750);
bvAssign zeta46c (bvConst 2762);
bvAssign zeta470 (bvConst 2835);
bvAssign zeta474 (bvConst 2764);
bvAssign zeta478 (bvConst 5448);
bvAssign zeta47c (bvConst 3816);
bvAssign zeta480 (bvConst 6148);
bvAssign zeta484 (bvConst 1464);
bvAssign zeta488 (bvConst 6954);
bvAssign zeta48c (bvConst 1521);
bvAssign zeta490 (bvConst 1386);
bvAssign zeta494 (bvConst 4253);
bvAssign zeta498 (bvConst 6760);
bvAssign zeta49c (bvConst 4938);
bvAssign zeta4a0 (bvConst 5521);
bvAssign zeta4a4 (bvConst 2649);
bvAssign zeta4a8 (bvConst 6822);
bvAssign zeta4ac (bvConst 2579);
bvAssign zeta4b0 (bvConst 1532);
bvAssign zeta4b4 (bvConst 1919);
bvAssign zeta4b8 (bvConst 7195);
bvAssign zeta4bc (bvConst 404);
bvAssign zeta4c0 (bvConst 6625);
bvAssign zeta4c4 (bvConst 783);
bvAssign zeta4c8 (bvConst 1799);
bvAssign zeta4cc (bvConst 5016);
bvAssign zeta4d0 (bvConst 3480);
bvAssign zeta4d4 (bvConst 2133);
bvAssign zeta4d8 (bvConst 4371);
bvAssign zeta4dc (bvConst 6513);
bvAssign zeta4e0 (bvConst 7664);
bvAssign zeta4e2 (bvConst 3744);
bvAssign zeta4e4 (bvConst 2422);
bvAssign zeta4e6 (bvConst 2001);
bvAssign zeta4e8 (bvConst 1278);
bvAssign zeta4ea (bvConst 929);
bvAssign zeta4ec (bvConst 6333);
bvAssign zeta4ee (bvConst 5451);
bvAssign zeta4f0 (bvConst 7502);
bvAssign zeta4f2 (bvConst 6439);
bvAssign zeta4f4 (bvConst 5622);
bvAssign zeta4f6 (bvConst 6611);
bvAssign zeta4f8 (bvConst 2161);
bvAssign zeta4fa (bvConst 1649);
bvAssign zeta4fc (bvConst 2072);
bvAssign zeta4fe (bvConst 3177);
bvAssign zeta500 (bvConst 5610);
bvAssign zeta502 (bvConst 1121);
bvAssign zeta504 (bvConst 7245);
bvAssign zeta506 (bvConst 236);
bvAssign zeta508 (bvConst 715);
bvAssign zeta50a (bvConst 670);
bvAssign zeta50c (bvConst 7023);
bvAssign zeta50e (bvConst 6205);
bvAssign zeta510 (bvConst 5303);
bvAssign zeta512 (bvConst 2767);
bvAssign zeta514 (bvConst 3542);
bvAssign zeta516 (bvConst 7455);
bvAssign zeta518 (bvConst 1203);
bvAssign zeta51a (bvConst 1181);
bvAssign zeta51c (bvConst 7530);
bvAssign zeta51e (bvConst 3887);
bvAssign zeta520 (bvConst 1712);
bvAssign zeta522 (bvConst 7459);
bvAssign zeta524 (bvConst 2786);
bvAssign zeta526 (bvConst 7230);
bvAssign zeta528 (bvConst 4134);
bvAssign zeta52a (bvConst 1779);
bvAssign zeta52c (bvConst 6530);
bvAssign zeta52e (bvConst 7247);
bvAssign zeta530 (bvConst 3568);
bvAssign zeta532 (bvConst 3988);
bvAssign zeta534 (bvConst 3581);
bvAssign zeta536 (bvConst 6095);
bvAssign zeta538 (bvConst 1509);
bvAssign zeta53a (bvConst 2918);
bvAssign zeta53c (bvConst 2339);
bvAssign zeta53e (bvConst 6274);
bvAssign zeta540 (bvConst 3434);
bvAssign zeta542 (bvConst 4131);
bvAssign zeta544 (bvConst 2340);
bvAssign zeta546 (bvConst 2891);
bvAssign zeta548 (bvConst 2998);
bvAssign zeta54a (bvConst 4367);
bvAssign zeta54c (bvConst 3461);
bvAssign zeta54e (bvConst 4962);
bvAssign zeta550 (bvConst 5434);
bvAssign zeta552 (bvConst 5092);
bvAssign zeta554 (bvConst 1144);
bvAssign zeta556 (bvConst 1072);
bvAssign zeta558 (bvConst 1295);
bvAssign zeta55a (bvConst 4866);
bvAssign zeta55c (bvConst 3911);
bvAssign zeta55e (bvConst 3450);
bvAssign zeta560 (bvConst 3781);
bvAssign zeta562 (bvConst 5423);
bvAssign zeta564 (bvConst 796);
bvAssign zeta566 (bvConst 3163);
bvAssign zeta568 (bvConst 4473);
bvAssign zeta56a (bvConst 7092);
bvAssign zeta56c (bvConst 2963);
bvAssign zeta56e (bvConst 7557);
bvAssign zeta570 (bvConst 3214);
bvAssign zeta572 (bvConst 3334);
bvAssign zeta574 (bvConst 4315);
bvAssign zeta576 (bvConst 3936);
bvAssign zeta578 (bvConst 3723);
bvAssign zeta57a (bvConst 1931);
bvAssign zeta57c (bvConst 7252);
bvAssign zeta57e (bvConst 7279);
bvAssign zeta580 (bvConst 4273);
bvAssign zeta582 (bvConst 83);
bvAssign zeta584 (bvConst 6155);
bvAssign zeta586 (bvConst 826);
bvAssign zeta588 (bvConst 6343);
bvAssign zeta58a (bvConst 2345);
bvAssign zeta58c (bvConst 5378);
bvAssign zeta58e (bvConst 2515);
bvAssign zeta590 (bvConst 7039);
bvAssign zeta592 (bvConst 5844);
bvAssign zeta594 (bvConst 4716);
bvAssign zeta596 (bvConst 6890);
bvAssign zeta598 (bvConst 370);
bvAssign zeta59a (bvConst 293);
bvAssign zeta59c (bvConst 3312);
bvAssign zeta59e (bvConst 2083);
bvAssign zeta5a0 (bvConst 5992);
bvAssign zeta5a2 (bvConst 6904);
bvAssign zeta5a4 (bvConst 2070);
bvAssign zeta5a6 (bvConst 2262);
bvAssign zeta5a8 (bvConst 6788);
bvAssign zeta5aa (bvConst 2386);
bvAssign zeta5ac (bvConst 7493);
bvAssign zeta5ae (bvConst 6162);
bvAssign zeta5b0 (bvConst 4807);
bvAssign zeta5b2 (bvConst 6277);
bvAssign zeta5b4 (bvConst 1012);
bvAssign zeta5b6 (bvConst 2130);
bvAssign zeta5b8 (bvConst 1441);
bvAssign zeta5ba (bvConst 2532);
bvAssign zeta5bc (bvConst 4346);
bvAssign zeta5be (bvConst 6597);
bvAssign zeta5c0 (bvConst 4338);
bvAssign zeta5c2 (bvConst 2937);
bvAssign zeta5c4 (bvConst 509);
bvAssign zeta5c6 (bvConst 6278);
bvAssign zeta5c8 (bvConst 2812);
bvAssign zeta5ca (bvConst 3763);
bvAssign zeta5cc (bvConst 592);
bvAssign zeta5ce (bvConst 2005);
bvAssign zeta5d0 (bvConst 3657);
bvAssign zeta5d2 (bvConst 2460);
bvAssign zeta5d4 (bvConst 4004);
bvAssign zeta5d6 (bvConst 3752);
bvAssign zeta5d8 (bvConst 692);
bvAssign zeta5da (bvConst 1669);
bvAssign zeta5dc (bvConst 2167);
bvAssign zeta5de (bvConst 4394);

(* # save old-1 *)

bvGhost ymm4_LLLLo1, ymm4_LLLHo1, ymm4_LLHLo1, ymm4_LLHHo1, ymm4_LHLLo1,
        ymm4_LHLHo1, ymm4_LHHLo1, ymm4_LHHHo1, ymm4_HLLLo1, ymm4_HLLHo1,
        ymm4_HLHLo1, ymm4_HLHHo1, ymm4_HHLLo1, ymm4_HHLHo1, ymm4_HHHLo1,
        ymm4_HHHHo1,
        ymm5_LLLLo1, ymm5_LLLHo1, ymm5_LLHLo1, ymm5_LLHHo1, ymm5_LHLLo1,
        ymm5_LHLHo1, ymm5_LHHLo1, ymm5_LHHHo1, ymm5_HLLLo1, ymm5_HLLHo1,
        ymm5_HLHLo1, ymm5_HLHHo1, ymm5_HHLLo1, ymm5_HHLHo1, ymm5_HHHLo1,
        ymm5_HHHHo1,
        ymm6_LLLLo1, ymm6_LLLHo1, ymm6_LLHLo1, ymm6_LLHHo1, ymm6_LHLLo1,
        ymm6_LHLHo1, ymm6_LHHLo1, ymm6_LHHHo1, ymm6_HLLLo1, ymm6_HLLHo1,
        ymm6_HLHLo1, ymm6_HLHHo1, ymm6_HHLLo1, ymm6_HHLHo1, ymm6_HHHLo1,
        ymm6_HHHHo1,
        ymm7_LLLLo1, ymm7_LLLHo1, ymm7_LLHLo1, ymm7_LLHHo1, ymm7_LHLLo1,
        ymm7_LHLHo1, ymm7_LHHLo1, ymm7_LHHHo1, ymm7_HLLLo1, ymm7_HLLHo1,
        ymm7_HLHLo1, ymm7_HLHHo1, ymm7_HHLLo1, ymm7_HHLHo1, ymm7_HHHLo1,
        ymm7_HHHHo1,
        ymm8_LLLLo1, ymm8_LLLHo1, ymm8_LLHLo1, ymm8_LLHHo1, ymm8_LHLLo1,
        ymm8_LHLHo1, ymm8_LHHLo1, ymm8_LHHHo1, ymm8_HLLLo1, ymm8_HLLHo1,
        ymm8_HLHLo1, ymm8_HLHHo1, ymm8_HHLLo1, ymm8_HHLHo1, ymm8_HHHLo1,
        ymm8_HHHHo1,
        ymm9_LLLLo1, ymm9_LLLHo1, ymm9_LLHLo1, ymm9_LLHHo1, ymm9_LHLLo1,
        ymm9_LHLHo1, ymm9_LHHLo1, ymm9_LHHHo1, ymm9_HLLLo1, ymm9_HLLHo1,
        ymm9_HLHLo1, ymm9_HLHHo1, ymm9_HHLLo1, ymm9_HHLHo1, ymm9_HHHLo1,
        ymm9_HHHHo1,
        ymm10_LLLLo1, ymm10_LLLHo1, ymm10_LLHLo1, ymm10_LLHHo1, ymm10_LHLLo1,
        ymm10_LHLHo1, ymm10_LHHLo1, ymm10_LHHHo1, ymm10_HLLLo1, ymm10_HLLHo1,
        ymm10_HLHLo1, ymm10_HLHHo1, ymm10_HHLLo1, ymm10_HHLHo1, ymm10_HHHLo1,
        ymm10_HHHHo1,
        ymm11_LLLLo1, ymm11_LLLHo1, ymm11_LLHLo1, ymm11_LLHHo1, ymm11_LHLLo1,
        ymm11_LHLHo1, ymm11_LHHLo1, ymm11_LHHHo1, ymm11_HLLLo1, ymm11_HLLHo1,
        ymm11_HLHLo1, ymm11_HLHHo1, ymm11_HHLLo1, ymm11_HHLHo1, ymm11_HHHLo1,
        ymm11_HHHHo1 :
  bveands [bveEq (bvvar ymm4_LLLLo1) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo1) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo1) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo1) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo1) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo1) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo1) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo1) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo1) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo1) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo1) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo1) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo1) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo1) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo1) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo1) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo1) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo1) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo1) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo1) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo1) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo1) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo1) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo1) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo1) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo1) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo1) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo1) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo1) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo1) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo1) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo1) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo1) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo1) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo1) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo1) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo1) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo1) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo1) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo1) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo1) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo1) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo1) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo1) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo1) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo1) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo1) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo1) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo1) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo1) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo1) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo1) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo1) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo1) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo1) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo1) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo1) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo1) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo1) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo1) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo1) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo1) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo1) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo1) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo1) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo1) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo1) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo1) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo1) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo1) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo1) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo1) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo1) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo1) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo1) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo1) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo1) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo1) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo1) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo1) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo1) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo1) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo1) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo1) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo1) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo1) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo1) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo1) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo1) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo1) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo1) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo1) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo1) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo1) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo1) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo1) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo1) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo1) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo1) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo1) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo1) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo1) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo1) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo1) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo1) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo1) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo1) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo1) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo1) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo1) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo1) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo1) (bvvar ymm10_HHHH),
           bveEq (bvvar ymm11_LLLLo1) (bvvar ymm11_LLLL),
           bveEq (bvvar ymm11_LLLHo1) (bvvar ymm11_LLLH),
           bveEq (bvvar ymm11_LLHLo1) (bvvar ymm11_LLHL),
           bveEq (bvvar ymm11_LLHHo1) (bvvar ymm11_LLHH),
           bveEq (bvvar ymm11_LHLLo1) (bvvar ymm11_LHLL),
           bveEq (bvvar ymm11_LHLHo1) (bvvar ymm11_LHLH),
           bveEq (bvvar ymm11_LHHLo1) (bvvar ymm11_LHHL),
           bveEq (bvvar ymm11_LHHHo1) (bvvar ymm11_LHHH),
           bveEq (bvvar ymm11_HLLLo1) (bvvar ymm11_HLLL),
           bveEq (bvvar ymm11_HLLHo1) (bvvar ymm11_HLLH),
           bveEq (bvvar ymm11_HLHLo1) (bvvar ymm11_HLHL),
           bveEq (bvvar ymm11_HLHHo1) (bvvar ymm11_HLHH),
           bveEq (bvvar ymm11_HHLLo1) (bvvar ymm11_HHLL),
           bveEq (bvvar ymm11_HHLHo1) (bvvar ymm11_HHLH),
           bveEq (bvvar ymm11_HHHLo1) (bvvar ymm11_HHHL),
           bveEq (bvvar ymm11_HHHHo1) (bvvar ymm11_HHHH)]
  |
    bvTrue;

(* vmovdqa 0x60(%rsi),%ymm15                       #! EA = L0x435b80 *)
bvAssign ymm15_LLLL (bvVar zeta060);
bvAssign ymm15_LLLH (bvVar zeta060);
bvAssign ymm15_LLHL (bvVar zeta060);
bvAssign ymm15_LLHH (bvVar zeta060);
bvAssign ymm15_LHLL (bvVar zeta060);
bvAssign ymm15_LHLH (bvVar zeta060);
bvAssign ymm15_LHHL (bvVar zeta060);
bvAssign ymm15_LHHH (bvVar zeta060);
bvAssign ymm15_HLLL (bvVar zeta060);
bvAssign ymm15_HLLH (bvVar zeta060);
bvAssign ymm15_HLHL (bvVar zeta060);
bvAssign ymm15_HLHH (bvVar zeta060);
bvAssign ymm15_HHLL (bvVar zeta060);
bvAssign ymm15_HHLH (bvVar zeta060);
bvAssign ymm15_HHHL (bvVar zeta060);
bvAssign ymm15_HHHH (bvVar zeta060);
(* vmovdqa 0x80(%rsi),%ymm3                        #! EA = L0x435ba0 *)
bvAssign ymm3_LLLL (bvVar zeta080);
bvAssign ymm3_LLLH (bvVar zeta080);
bvAssign ymm3_LLHL (bvVar zeta080);
bvAssign ymm3_LLHH (bvVar zeta080);
bvAssign ymm3_LHLL (bvVar zeta080);
bvAssign ymm3_LHLH (bvVar zeta080);
bvAssign ymm3_LHHL (bvVar zeta080);
bvAssign ymm3_LHHH (bvVar zeta080);
bvAssign ymm3_HLLL (bvVar zeta080);
bvAssign ymm3_HLLH (bvVar zeta080);
bvAssign ymm3_HLHL (bvVar zeta080);
bvAssign ymm3_HLHH (bvVar zeta080);
bvAssign ymm3_HHLL (bvVar zeta080);
bvAssign ymm3_HHLH (bvVar zeta080);
bvAssign ymm3_HHHL (bvVar zeta080);
bvAssign ymm3_HHHH (bvVar zeta080);
(* vpmullw %ymm15,%ymm6,%ymm12 *)
bvSmulf ymm6_LLLL ymm12_LLLL (bvVar ymm15_LLLL) (bvVar ymm6_LLLL);
bvSmulf ymm6_LLLH ymm12_LLLH (bvVar ymm15_LLLH) (bvVar ymm6_LLLH);
bvSmulf ymm6_LLHL ymm12_LLHL (bvVar ymm15_LLHL) (bvVar ymm6_LLHL);
bvSmulf ymm6_LLHH ymm12_LLHH (bvVar ymm15_LLHH) (bvVar ymm6_LLHH);
bvSmulf ymm6_LHLL ymm12_LHLL (bvVar ymm15_LHLL) (bvVar ymm6_LHLL);
bvSmulf ymm6_LHLH ymm12_LHLH (bvVar ymm15_LHLH) (bvVar ymm6_LHLH);
bvSmulf ymm6_LHHL ymm12_LHHL (bvVar ymm15_LHHL) (bvVar ymm6_LHHL);
bvSmulf ymm6_LHHH ymm12_LHHH (bvVar ymm15_LHHH) (bvVar ymm6_LHHH);
bvSmulf ymm6_HLLL ymm12_HLLL (bvVar ymm15_HLLL) (bvVar ymm6_HLLL);
bvSmulf ymm6_HLLH ymm12_HLLH (bvVar ymm15_HLLH) (bvVar ymm6_HLLH);
bvSmulf ymm6_HLHL ymm12_HLHL (bvVar ymm15_HLHL) (bvVar ymm6_HLHL);
bvSmulf ymm6_HLHH ymm12_HLHH (bvVar ymm15_HLHH) (bvVar ymm6_HLHH);
bvSmulf ymm6_HHLL ymm12_HHLL (bvVar ymm15_HHLL) (bvVar ymm6_HHLL);
bvSmulf ymm6_HHLH ymm12_HHLH (bvVar ymm15_HHLH) (bvVar ymm6_HHLH);
bvSmulf ymm6_HHHL ymm12_HHHL (bvVar ymm15_HHHL) (bvVar ymm6_HHHL);
bvSmulf ymm6_HHHH ymm12_HHHH (bvVar ymm15_HHHH) (bvVar ymm6_HHHH);
(* vpmulhw %ymm15,%ymm6,%ymm6 *)
(* merged with previous vpmullw ymm15, ymm6, ymmX *)
(* vpmullw %ymm15,%ymm7,%ymm13 *)
bvSmulf ymm7_LLLL ymm13_LLLL (bvVar ymm15_LLLL) (bvVar ymm7_LLLL);
bvSmulf ymm7_LLLH ymm13_LLLH (bvVar ymm15_LLLH) (bvVar ymm7_LLLH);
bvSmulf ymm7_LLHL ymm13_LLHL (bvVar ymm15_LLHL) (bvVar ymm7_LLHL);
bvSmulf ymm7_LLHH ymm13_LLHH (bvVar ymm15_LLHH) (bvVar ymm7_LLHH);
bvSmulf ymm7_LHLL ymm13_LHLL (bvVar ymm15_LHLL) (bvVar ymm7_LHLL);
bvSmulf ymm7_LHLH ymm13_LHLH (bvVar ymm15_LHLH) (bvVar ymm7_LHLH);
bvSmulf ymm7_LHHL ymm13_LHHL (bvVar ymm15_LHHL) (bvVar ymm7_LHHL);
bvSmulf ymm7_LHHH ymm13_LHHH (bvVar ymm15_LHHH) (bvVar ymm7_LHHH);
bvSmulf ymm7_HLLL ymm13_HLLL (bvVar ymm15_HLLL) (bvVar ymm7_HLLL);
bvSmulf ymm7_HLLH ymm13_HLLH (bvVar ymm15_HLLH) (bvVar ymm7_HLLH);
bvSmulf ymm7_HLHL ymm13_HLHL (bvVar ymm15_HLHL) (bvVar ymm7_HLHL);
bvSmulf ymm7_HLHH ymm13_HLHH (bvVar ymm15_HLHH) (bvVar ymm7_HLHH);
bvSmulf ymm7_HHLL ymm13_HHLL (bvVar ymm15_HHLL) (bvVar ymm7_HHLL);
bvSmulf ymm7_HHLH ymm13_HHLH (bvVar ymm15_HHLH) (bvVar ymm7_HHLH);
bvSmulf ymm7_HHHL ymm13_HHHL (bvVar ymm15_HHHL) (bvVar ymm7_HHHL);
bvSmulf ymm7_HHHH ymm13_HHHH (bvVar ymm15_HHHH) (bvVar ymm7_HHHH);
(* vpmulhw %ymm15,%ymm7,%ymm7 *)
(* merged with previous vpmullw ymm15, ymm7, ymmX *)
(* vpmullw %ymm3,%ymm10,%ymm14 *)
bvSmulf ymm10_LLLL ymm14_LLLL (bvVar ymm3_LLLL) (bvVar ymm10_LLLL);
bvSmulf ymm10_LLLH ymm14_LLLH (bvVar ymm3_LLLH) (bvVar ymm10_LLLH);
bvSmulf ymm10_LLHL ymm14_LLHL (bvVar ymm3_LLHL) (bvVar ymm10_LLHL);
bvSmulf ymm10_LLHH ymm14_LLHH (bvVar ymm3_LLHH) (bvVar ymm10_LLHH);
bvSmulf ymm10_LHLL ymm14_LHLL (bvVar ymm3_LHLL) (bvVar ymm10_LHLL);
bvSmulf ymm10_LHLH ymm14_LHLH (bvVar ymm3_LHLH) (bvVar ymm10_LHLH);
bvSmulf ymm10_LHHL ymm14_LHHL (bvVar ymm3_LHHL) (bvVar ymm10_LHHL);
bvSmulf ymm10_LHHH ymm14_LHHH (bvVar ymm3_LHHH) (bvVar ymm10_LHHH);
bvSmulf ymm10_HLLL ymm14_HLLL (bvVar ymm3_HLLL) (bvVar ymm10_HLLL);
bvSmulf ymm10_HLLH ymm14_HLLH (bvVar ymm3_HLLH) (bvVar ymm10_HLLH);
bvSmulf ymm10_HLHL ymm14_HLHL (bvVar ymm3_HLHL) (bvVar ymm10_HLHL);
bvSmulf ymm10_HLHH ymm14_HLHH (bvVar ymm3_HLHH) (bvVar ymm10_HLHH);
bvSmulf ymm10_HHLL ymm14_HHLL (bvVar ymm3_HHLL) (bvVar ymm10_HHLL);
bvSmulf ymm10_HHLH ymm14_HHLH (bvVar ymm3_HHLH) (bvVar ymm10_HHLH);
bvSmulf ymm10_HHHL ymm14_HHHL (bvVar ymm3_HHHL) (bvVar ymm10_HHHL);
bvSmulf ymm10_HHHH ymm14_HHHH (bvVar ymm3_HHHH) (bvVar ymm10_HHHH);
(* vpmulhw %ymm3,%ymm10,%ymm10 *)
(* merged with previous vpmullw ymm3, ymm10, ymmX *)
(* vpmullw %ymm3,%ymm11,%ymm15 *)
bvSmulf ymm11_LLLL ymm15_LLLL (bvVar ymm3_LLLL) (bvVar ymm11_LLLL);
bvSmulf ymm11_LLLH ymm15_LLLH (bvVar ymm3_LLLH) (bvVar ymm11_LLLH);
bvSmulf ymm11_LLHL ymm15_LLHL (bvVar ymm3_LLHL) (bvVar ymm11_LLHL);
bvSmulf ymm11_LLHH ymm15_LLHH (bvVar ymm3_LLHH) (bvVar ymm11_LLHH);
bvSmulf ymm11_LHLL ymm15_LHLL (bvVar ymm3_LHLL) (bvVar ymm11_LHLL);
bvSmulf ymm11_LHLH ymm15_LHLH (bvVar ymm3_LHLH) (bvVar ymm11_LHLH);
bvSmulf ymm11_LHHL ymm15_LHHL (bvVar ymm3_LHHL) (bvVar ymm11_LHHL);
bvSmulf ymm11_LHHH ymm15_LHHH (bvVar ymm3_LHHH) (bvVar ymm11_LHHH);
bvSmulf ymm11_HLLL ymm15_HLLL (bvVar ymm3_HLLL) (bvVar ymm11_HLLL);
bvSmulf ymm11_HLLH ymm15_HLLH (bvVar ymm3_HLLH) (bvVar ymm11_HLLH);
bvSmulf ymm11_HLHL ymm15_HLHL (bvVar ymm3_HLHL) (bvVar ymm11_HLHL);
bvSmulf ymm11_HLHH ymm15_HLHH (bvVar ymm3_HLHH) (bvVar ymm11_HLHH);
bvSmulf ymm11_HHLL ymm15_HHLL (bvVar ymm3_HHLL) (bvVar ymm11_HHLL);
bvSmulf ymm11_HHLH ymm15_HHLH (bvVar ymm3_HHLH) (bvVar ymm11_HHLH);
bvSmulf ymm11_HHHL ymm15_HHHL (bvVar ymm3_HHHL) (bvVar ymm11_HHHL);
bvSmulf ymm11_HHHH ymm15_HHHH (bvVar ymm3_HHHH) (bvVar ymm11_HHHH);
(* vpmulhw %ymm3,%ymm11,%ymm11 *)
(* merged with previous vpmullw ymm3, ymm11, ymmX *)
(* # BGEIN Montgomery reduction *)
# BGEIN Montgomery reduction;
(* vpmullw %ymm0,%ymm12,%ymm12 *)
bvAssign ymm12_LLLL0 (bvVar ymm12_LLLL);
bvSmulf tmp ymm12_LLLL (bvVar qinv) (bvVar ymm12_LLLL);
bvAssign ymm12_LLLH0 (bvVar ymm12_LLLH);
bvSmulf tmp ymm12_LLLH (bvVar qinv) (bvVar ymm12_LLLH);
bvAssign ymm12_LLHL0 (bvVar ymm12_LLHL);
bvSmulf tmp ymm12_LLHL (bvVar qinv) (bvVar ymm12_LLHL);
bvAssign ymm12_LLHH0 (bvVar ymm12_LLHH);
bvSmulf tmp ymm12_LLHH (bvVar qinv) (bvVar ymm12_LLHH);
bvAssign ymm12_LHLL0 (bvVar ymm12_LHLL);
bvSmulf tmp ymm12_LHLL (bvVar qinv) (bvVar ymm12_LHLL);
bvAssign ymm12_LHLH0 (bvVar ymm12_LHLH);
bvSmulf tmp ymm12_LHLH (bvVar qinv) (bvVar ymm12_LHLH);
bvAssign ymm12_LHHL0 (bvVar ymm12_LHHL);
bvSmulf tmp ymm12_LHHL (bvVar qinv) (bvVar ymm12_LHHL);
bvAssign ymm12_LHHH0 (bvVar ymm12_LHHH);
bvSmulf tmp ymm12_LHHH (bvVar qinv) (bvVar ymm12_LHHH);
bvAssign ymm12_HLLL0 (bvVar ymm12_HLLL);
bvSmulf tmp ymm12_HLLL (bvVar qinv) (bvVar ymm12_HLLL);
bvAssign ymm12_HLLH0 (bvVar ymm12_HLLH);
bvSmulf tmp ymm12_HLLH (bvVar qinv) (bvVar ymm12_HLLH);
bvAssign ymm12_HLHL0 (bvVar ymm12_HLHL);
bvSmulf tmp ymm12_HLHL (bvVar qinv) (bvVar ymm12_HLHL);
bvAssign ymm12_HLHH0 (bvVar ymm12_HLHH);
bvSmulf tmp ymm12_HLHH (bvVar qinv) (bvVar ymm12_HLHH);
bvAssign ymm12_HHLL0 (bvVar ymm12_HHLL);
bvSmulf tmp ymm12_HHLL (bvVar qinv) (bvVar ymm12_HHLL);
bvAssign ymm12_HHLH0 (bvVar ymm12_HHLH);
bvSmulf tmp ymm12_HHLH (bvVar qinv) (bvVar ymm12_HHLH);
bvAssign ymm12_HHHL0 (bvVar ymm12_HHHL);
bvSmulf tmp ymm12_HHHL (bvVar qinv) (bvVar ymm12_HHHL);
bvAssign ymm12_HHHH0 (bvVar ymm12_HHHH);
bvSmulf tmp ymm12_HHHH (bvVar qinv) (bvVar ymm12_HHHH);
(* vpmullw %ymm0,%ymm13,%ymm13 *)
bvAssign ymm13_LLLL0 (bvVar ymm13_LLLL);
bvSmulf tmp ymm13_LLLL (bvVar qinv) (bvVar ymm13_LLLL);
bvAssign ymm13_LLLH0 (bvVar ymm13_LLLH);
bvSmulf tmp ymm13_LLLH (bvVar qinv) (bvVar ymm13_LLLH);
bvAssign ymm13_LLHL0 (bvVar ymm13_LLHL);
bvSmulf tmp ymm13_LLHL (bvVar qinv) (bvVar ymm13_LLHL);
bvAssign ymm13_LLHH0 (bvVar ymm13_LLHH);
bvSmulf tmp ymm13_LLHH (bvVar qinv) (bvVar ymm13_LLHH);
bvAssign ymm13_LHLL0 (bvVar ymm13_LHLL);
bvSmulf tmp ymm13_LHLL (bvVar qinv) (bvVar ymm13_LHLL);
bvAssign ymm13_LHLH0 (bvVar ymm13_LHLH);
bvSmulf tmp ymm13_LHLH (bvVar qinv) (bvVar ymm13_LHLH);
bvAssign ymm13_LHHL0 (bvVar ymm13_LHHL);
bvSmulf tmp ymm13_LHHL (bvVar qinv) (bvVar ymm13_LHHL);
bvAssign ymm13_LHHH0 (bvVar ymm13_LHHH);
bvSmulf tmp ymm13_LHHH (bvVar qinv) (bvVar ymm13_LHHH);
bvAssign ymm13_HLLL0 (bvVar ymm13_HLLL);
bvSmulf tmp ymm13_HLLL (bvVar qinv) (bvVar ymm13_HLLL);
bvAssign ymm13_HLLH0 (bvVar ymm13_HLLH);
bvSmulf tmp ymm13_HLLH (bvVar qinv) (bvVar ymm13_HLLH);
bvAssign ymm13_HLHL0 (bvVar ymm13_HLHL);
bvSmulf tmp ymm13_HLHL (bvVar qinv) (bvVar ymm13_HLHL);
bvAssign ymm13_HLHH0 (bvVar ymm13_HLHH);
bvSmulf tmp ymm13_HLHH (bvVar qinv) (bvVar ymm13_HLHH);
bvAssign ymm13_HHLL0 (bvVar ymm13_HHLL);
bvSmulf tmp ymm13_HHLL (bvVar qinv) (bvVar ymm13_HHLL);
bvAssign ymm13_HHLH0 (bvVar ymm13_HHLH);
bvSmulf tmp ymm13_HHLH (bvVar qinv) (bvVar ymm13_HHLH);
bvAssign ymm13_HHHL0 (bvVar ymm13_HHHL);
bvSmulf tmp ymm13_HHHL (bvVar qinv) (bvVar ymm13_HHHL);
bvAssign ymm13_HHHH0 (bvVar ymm13_HHHH);
bvSmulf tmp ymm13_HHHH (bvVar qinv) (bvVar ymm13_HHHH);
(* vpmullw %ymm0,%ymm14,%ymm14 *)
bvAssign ymm14_LLLL0 (bvVar ymm14_LLLL);
bvSmulf tmp ymm14_LLLL (bvVar qinv) (bvVar ymm14_LLLL);
bvAssign ymm14_LLLH0 (bvVar ymm14_LLLH);
bvSmulf tmp ymm14_LLLH (bvVar qinv) (bvVar ymm14_LLLH);
bvAssign ymm14_LLHL0 (bvVar ymm14_LLHL);
bvSmulf tmp ymm14_LLHL (bvVar qinv) (bvVar ymm14_LLHL);
bvAssign ymm14_LLHH0 (bvVar ymm14_LLHH);
bvSmulf tmp ymm14_LLHH (bvVar qinv) (bvVar ymm14_LLHH);
bvAssign ymm14_LHLL0 (bvVar ymm14_LHLL);
bvSmulf tmp ymm14_LHLL (bvVar qinv) (bvVar ymm14_LHLL);
bvAssign ymm14_LHLH0 (bvVar ymm14_LHLH);
bvSmulf tmp ymm14_LHLH (bvVar qinv) (bvVar ymm14_LHLH);
bvAssign ymm14_LHHL0 (bvVar ymm14_LHHL);
bvSmulf tmp ymm14_LHHL (bvVar qinv) (bvVar ymm14_LHHL);
bvAssign ymm14_LHHH0 (bvVar ymm14_LHHH);
bvSmulf tmp ymm14_LHHH (bvVar qinv) (bvVar ymm14_LHHH);
bvAssign ymm14_HLLL0 (bvVar ymm14_HLLL);
bvSmulf tmp ymm14_HLLL (bvVar qinv) (bvVar ymm14_HLLL);
bvAssign ymm14_HLLH0 (bvVar ymm14_HLLH);
bvSmulf tmp ymm14_HLLH (bvVar qinv) (bvVar ymm14_HLLH);
bvAssign ymm14_HLHL0 (bvVar ymm14_HLHL);
bvSmulf tmp ymm14_HLHL (bvVar qinv) (bvVar ymm14_HLHL);
bvAssign ymm14_HLHH0 (bvVar ymm14_HLHH);
bvSmulf tmp ymm14_HLHH (bvVar qinv) (bvVar ymm14_HLHH);
bvAssign ymm14_HHLL0 (bvVar ymm14_HHLL);
bvSmulf tmp ymm14_HHLL (bvVar qinv) (bvVar ymm14_HHLL);
bvAssign ymm14_HHLH0 (bvVar ymm14_HHLH);
bvSmulf tmp ymm14_HHLH (bvVar qinv) (bvVar ymm14_HHLH);
bvAssign ymm14_HHHL0 (bvVar ymm14_HHHL);
bvSmulf tmp ymm14_HHHL (bvVar qinv) (bvVar ymm14_HHHL);
bvAssign ymm14_HHHH0 (bvVar ymm14_HHHH);
bvSmulf tmp ymm14_HHHH (bvVar qinv) (bvVar ymm14_HHHH);
(* vpmullw %ymm0,%ymm15,%ymm15 *)
bvAssign ymm15_LLLL0 (bvVar ymm15_LLLL);
bvSmulf tmp ymm15_LLLL (bvVar qinv) (bvVar ymm15_LLLL);
bvAssign ymm15_LLLH0 (bvVar ymm15_LLLH);
bvSmulf tmp ymm15_LLLH (bvVar qinv) (bvVar ymm15_LLLH);
bvAssign ymm15_LLHL0 (bvVar ymm15_LLHL);
bvSmulf tmp ymm15_LLHL (bvVar qinv) (bvVar ymm15_LLHL);
bvAssign ymm15_LLHH0 (bvVar ymm15_LLHH);
bvSmulf tmp ymm15_LLHH (bvVar qinv) (bvVar ymm15_LLHH);
bvAssign ymm15_LHLL0 (bvVar ymm15_LHLL);
bvSmulf tmp ymm15_LHLL (bvVar qinv) (bvVar ymm15_LHLL);
bvAssign ymm15_LHLH0 (bvVar ymm15_LHLH);
bvSmulf tmp ymm15_LHLH (bvVar qinv) (bvVar ymm15_LHLH);
bvAssign ymm15_LHHL0 (bvVar ymm15_LHHL);
bvSmulf tmp ymm15_LHHL (bvVar qinv) (bvVar ymm15_LHHL);
bvAssign ymm15_LHHH0 (bvVar ymm15_LHHH);
bvSmulf tmp ymm15_LHHH (bvVar qinv) (bvVar ymm15_LHHH);
bvAssign ymm15_HLLL0 (bvVar ymm15_HLLL);
bvSmulf tmp ymm15_HLLL (bvVar qinv) (bvVar ymm15_HLLL);
bvAssign ymm15_HLLH0 (bvVar ymm15_HLLH);
bvSmulf tmp ymm15_HLLH (bvVar qinv) (bvVar ymm15_HLLH);
bvAssign ymm15_HLHL0 (bvVar ymm15_HLHL);
bvSmulf tmp ymm15_HLHL (bvVar qinv) (bvVar ymm15_HLHL);
bvAssign ymm15_HLHH0 (bvVar ymm15_HLHH);
bvSmulf tmp ymm15_HLHH (bvVar qinv) (bvVar ymm15_HLHH);
bvAssign ymm15_HHLL0 (bvVar ymm15_HHLL);
bvSmulf tmp ymm15_HHLL (bvVar qinv) (bvVar ymm15_HHLL);
bvAssign ymm15_HHLH0 (bvVar ymm15_HHLH);
bvSmulf tmp ymm15_HHLH (bvVar qinv) (bvVar ymm15_HHLH);
bvAssign ymm15_HHHL0 (bvVar ymm15_HHHL);
bvSmulf tmp ymm15_HHHL (bvVar qinv) (bvVar ymm15_HHHL);
bvAssign ymm15_HHHH0 (bvVar ymm15_HHHH);
bvSmulf tmp ymm15_HHHH (bvVar qinv) (bvVar ymm15_HHHH);
(* vpmulhw %ymm1,%ymm12,%ymm12 *)
bvSmulf ymm12_LLLL tmp (bvVar q) (bvVar ymm12_LLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LLLL0) | bvTrue;
bvSmulf ymm12_LLLH tmp (bvVar q) (bvVar ymm12_LLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LLLH0) | bvTrue;
bvSmulf ymm12_LLHL tmp (bvVar q) (bvVar ymm12_LLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LLHL0) | bvTrue;
bvSmulf ymm12_LLHH tmp (bvVar q) (bvVar ymm12_LLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LLHH0) | bvTrue;
bvSmulf ymm12_LHLL tmp (bvVar q) (bvVar ymm12_LHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LHLL0) | bvTrue;
bvSmulf ymm12_LHLH tmp (bvVar q) (bvVar ymm12_LHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LHLH0) | bvTrue;
bvSmulf ymm12_LHHL tmp (bvVar q) (bvVar ymm12_LHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LHHL0) | bvTrue;
bvSmulf ymm12_LHHH tmp (bvVar q) (bvVar ymm12_LHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_LHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_LHHH0) | bvTrue;
bvSmulf ymm12_HLLL tmp (bvVar q) (bvVar ymm12_HLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HLLL0) | bvTrue;
bvSmulf ymm12_HLLH tmp (bvVar q) (bvVar ymm12_HLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HLLH0) | bvTrue;
bvSmulf ymm12_HLHL tmp (bvVar q) (bvVar ymm12_HLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HLHL0) | bvTrue;
bvSmulf ymm12_HLHH tmp (bvVar q) (bvVar ymm12_HLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HLHH0) | bvTrue;
bvSmulf ymm12_HHLL tmp (bvVar q) (bvVar ymm12_HHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HHLL0) | bvTrue;
bvSmulf ymm12_HHLH tmp (bvVar q) (bvVar ymm12_HHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HHLH0) | bvTrue;
bvSmulf ymm12_HHHL tmp (bvVar q) (bvVar ymm12_HHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HHHL0) | bvTrue;
bvSmulf ymm12_HHHH tmp (bvVar q) (bvVar ymm12_HHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm12_HHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm12_HHHH0) | bvTrue;
(* vpmulhw %ymm1,%ymm13,%ymm13 *)
bvSmulf ymm13_LLLL tmp (bvVar q) (bvVar ymm13_LLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LLLL0) | bvTrue;
bvSmulf ymm13_LLLH tmp (bvVar q) (bvVar ymm13_LLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LLLH0) | bvTrue;
bvSmulf ymm13_LLHL tmp (bvVar q) (bvVar ymm13_LLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LLHL0) | bvTrue;
bvSmulf ymm13_LLHH tmp (bvVar q) (bvVar ymm13_LLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LLHH0) | bvTrue;
bvSmulf ymm13_LHLL tmp (bvVar q) (bvVar ymm13_LHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LHLL0) | bvTrue;
bvSmulf ymm13_LHLH tmp (bvVar q) (bvVar ymm13_LHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LHLH0) | bvTrue;
bvSmulf ymm13_LHHL tmp (bvVar q) (bvVar ymm13_LHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LHHL0) | bvTrue;
bvSmulf ymm13_LHHH tmp (bvVar q) (bvVar ymm13_LHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_LHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_LHHH0) | bvTrue;
bvSmulf ymm13_HLLL tmp (bvVar q) (bvVar ymm13_HLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HLLL0) | bvTrue;
bvSmulf ymm13_HLLH tmp (bvVar q) (bvVar ymm13_HLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HLLH0) | bvTrue;
bvSmulf ymm13_HLHL tmp (bvVar q) (bvVar ymm13_HLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HLHL0) | bvTrue;
bvSmulf ymm13_HLHH tmp (bvVar q) (bvVar ymm13_HLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HLHH0) | bvTrue;
bvSmulf ymm13_HHLL tmp (bvVar q) (bvVar ymm13_HHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HHLL0) | bvTrue;
bvSmulf ymm13_HHLH tmp (bvVar q) (bvVar ymm13_HHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HHLH0) | bvTrue;
bvSmulf ymm13_HHHL tmp (bvVar q) (bvVar ymm13_HHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HHHL0) | bvTrue;
bvSmulf ymm13_HHHH tmp (bvVar q) (bvVar ymm13_HHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm13_HHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm13_HHHH0) | bvTrue;
(* vpmulhw %ymm1,%ymm14,%ymm14 *)
bvSmulf ymm14_LLLL tmp (bvVar q) (bvVar ymm14_LLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LLLL0) | bvTrue;
bvSmulf ymm14_LLLH tmp (bvVar q) (bvVar ymm14_LLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LLLH0) | bvTrue;
bvSmulf ymm14_LLHL tmp (bvVar q) (bvVar ymm14_LLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LLHL0) | bvTrue;
bvSmulf ymm14_LLHH tmp (bvVar q) (bvVar ymm14_LLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LLHH0) | bvTrue;
bvSmulf ymm14_LHLL tmp (bvVar q) (bvVar ymm14_LHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LHLL0) | bvTrue;
bvSmulf ymm14_LHLH tmp (bvVar q) (bvVar ymm14_LHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LHLH0) | bvTrue;
bvSmulf ymm14_LHHL tmp (bvVar q) (bvVar ymm14_LHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LHHL0) | bvTrue;
bvSmulf ymm14_LHHH tmp (bvVar q) (bvVar ymm14_LHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_LHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_LHHH0) | bvTrue;
bvSmulf ymm14_HLLL tmp (bvVar q) (bvVar ymm14_HLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HLLL0) | bvTrue;
bvSmulf ymm14_HLLH tmp (bvVar q) (bvVar ymm14_HLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HLLH0) | bvTrue;
bvSmulf ymm14_HLHL tmp (bvVar q) (bvVar ymm14_HLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HLHL0) | bvTrue;
bvSmulf ymm14_HLHH tmp (bvVar q) (bvVar ymm14_HLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HLHH0) | bvTrue;
bvSmulf ymm14_HHLL tmp (bvVar q) (bvVar ymm14_HHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HHLL0) | bvTrue;
bvSmulf ymm14_HHLH tmp (bvVar q) (bvVar ymm14_HHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HHLH0) | bvTrue;
bvSmulf ymm14_HHHL tmp (bvVar q) (bvVar ymm14_HHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HHHL0) | bvTrue;
bvSmulf ymm14_HHHH tmp (bvVar q) (bvVar ymm14_HHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm14_HHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm14_HHHH0) | bvTrue;
(* vpmulhw %ymm1,%ymm15,%ymm15 *)
bvSmulf ymm15_LLLL tmp (bvVar q) (bvVar ymm15_LLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LLLL0) | bvTrue;
bvSmulf ymm15_LLLH tmp (bvVar q) (bvVar ymm15_LLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LLLH0) | bvTrue;
bvSmulf ymm15_LLHL tmp (bvVar q) (bvVar ymm15_LLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LLHL0) | bvTrue;
bvSmulf ymm15_LLHH tmp (bvVar q) (bvVar ymm15_LLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LLHH0) | bvTrue;
bvSmulf ymm15_LHLL tmp (bvVar q) (bvVar ymm15_LHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LHLL0) | bvTrue;
bvSmulf ymm15_LHLH tmp (bvVar q) (bvVar ymm15_LHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LHLH0) | bvTrue;
bvSmulf ymm15_LHHL tmp (bvVar q) (bvVar ymm15_LHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LHHL0) | bvTrue;
bvSmulf ymm15_LHHH tmp (bvVar q) (bvVar ymm15_LHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_LHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_LHHH0) | bvTrue;
bvSmulf ymm15_HLLL tmp (bvVar q) (bvVar ymm15_HLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HLLL0) | bvTrue;
bvSmulf ymm15_HLLH tmp (bvVar q) (bvVar ymm15_HLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HLLH0) | bvTrue;
bvSmulf ymm15_HLHL tmp (bvVar q) (bvVar ymm15_HLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HLHL0) | bvTrue;
bvSmulf ymm15_HLHH tmp (bvVar q) (bvVar ymm15_HLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HLHH0) | bvTrue;
bvSmulf ymm15_HHLL tmp (bvVar q) (bvVar ymm15_HHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HHLL0) | bvTrue;
bvSmulf ymm15_HHLH tmp (bvVar q) (bvVar ymm15_HHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HHLH0) | bvTrue;
bvSmulf ymm15_HHHL tmp (bvVar q) (bvVar ymm15_HHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HHHL0) | bvTrue;
bvSmulf ymm15_HHHH tmp (bvVar q) (bvVar ymm15_HHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm15_HHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm15_HHHH0) | bvTrue;
(* vpsubw %ymm12,%ymm6,%ymm12 *)
bvSsub ymm12_LLLL (bvVar ymm6_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm12_LLLH (bvVar ymm6_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm12_LLHL (bvVar ymm6_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm12_LLHH (bvVar ymm6_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm12_LHLL (bvVar ymm6_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm12_LHLH (bvVar ymm6_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm12_LHHL (bvVar ymm6_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm12_LHHH (bvVar ymm6_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm12_HLLL (bvVar ymm6_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm12_HLLH (bvVar ymm6_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm12_HLHL (bvVar ymm6_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm12_HLHH (bvVar ymm6_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm12_HHLL (bvVar ymm6_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm12_HHLH (bvVar ymm6_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm12_HHHL (bvVar ymm6_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm12_HHHH (bvVar ymm6_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm7,%ymm13 *)
bvSsub ymm13_LLLL (bvVar ymm7_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm13_LLLH (bvVar ymm7_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm13_LLHL (bvVar ymm7_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm13_LLHH (bvVar ymm7_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm13_LHLL (bvVar ymm7_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm13_LHLH (bvVar ymm7_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm13_LHHL (bvVar ymm7_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm13_LHHH (bvVar ymm7_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm13_HLLL (bvVar ymm7_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm13_HLLH (bvVar ymm7_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm13_HLHL (bvVar ymm7_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm13_HLHH (bvVar ymm7_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm13_HHLL (bvVar ymm7_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm13_HHLH (bvVar ymm7_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm13_HHHL (bvVar ymm7_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm13_HHHH (bvVar ymm7_HHHH) (bvVar ymm13_HHHH);
(* vpsubw %ymm14,%ymm10,%ymm14 *)
bvSsub ymm14_LLLL (bvVar ymm10_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm14_LLLH (bvVar ymm10_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm14_LLHL (bvVar ymm10_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm14_LLHH (bvVar ymm10_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm14_LHLL (bvVar ymm10_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm14_LHLH (bvVar ymm10_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm14_LHHL (bvVar ymm10_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm14_LHHH (bvVar ymm10_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm14_HLLL (bvVar ymm10_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm14_HLLH (bvVar ymm10_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm14_HLHL (bvVar ymm10_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm14_HLHH (bvVar ymm10_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm14_HHLL (bvVar ymm10_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm14_HHLH (bvVar ymm10_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm14_HHHL (bvVar ymm10_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm14_HHHH (bvVar ymm10_HHHH) (bvVar ymm14_HHHH);
(* vpsubw %ymm15,%ymm11,%ymm15 *)
bvSsub ymm15_LLLL (bvVar ymm11_LLLL) (bvVar ymm15_LLLL);
bvSsub ymm15_LLLH (bvVar ymm11_LLLH) (bvVar ymm15_LLLH);
bvSsub ymm15_LLHL (bvVar ymm11_LLHL) (bvVar ymm15_LLHL);
bvSsub ymm15_LLHH (bvVar ymm11_LLHH) (bvVar ymm15_LLHH);
bvSsub ymm15_LHLL (bvVar ymm11_LHLL) (bvVar ymm15_LHLL);
bvSsub ymm15_LHLH (bvVar ymm11_LHLH) (bvVar ymm15_LHLH);
bvSsub ymm15_LHHL (bvVar ymm11_LHHL) (bvVar ymm15_LHHL);
bvSsub ymm15_LHHH (bvVar ymm11_LHHH) (bvVar ymm15_LHHH);
bvSsub ymm15_HLLL (bvVar ymm11_HLLL) (bvVar ymm15_HLLL);
bvSsub ymm15_HLLH (bvVar ymm11_HLLH) (bvVar ymm15_HLLH);
bvSsub ymm15_HLHL (bvVar ymm11_HLHL) (bvVar ymm15_HLHL);
bvSsub ymm15_HLHH (bvVar ymm11_HLHH) (bvVar ymm15_HLHH);
bvSsub ymm15_HHLL (bvVar ymm11_HHLL) (bvVar ymm15_HHLL);
bvSsub ymm15_HHLH (bvVar ymm11_HHLH) (bvVar ymm15_HHLH);
bvSsub ymm15_HHHL (bvVar ymm11_HHHL) (bvVar ymm15_HHHL);
bvSsub ymm15_HHHH (bvVar ymm11_HHHH) (bvVar ymm15_HHHH);
(* # END Montgomery reduction *)
# END Montgomery reduction;
(* vpsubw %ymm12,%ymm4,%ymm6 *)
bvSsub ymm6_LLLL (bvVar ymm4_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm6_LLLH (bvVar ymm4_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm6_LLHL (bvVar ymm4_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm6_LLHH (bvVar ymm4_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm6_LHLL (bvVar ymm4_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm6_LHLH (bvVar ymm4_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm6_LHHL (bvVar ymm4_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm6_LHHH (bvVar ymm4_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm6_HLLL (bvVar ymm4_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm6_HLLH (bvVar ymm4_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm6_HLHL (bvVar ymm4_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm6_HLHH (bvVar ymm4_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm6_HHLL (bvVar ymm4_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm6_HHLH (bvVar ymm4_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm6_HHHL (bvVar ymm4_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm6_HHHH (bvVar ymm4_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm5,%ymm7 *)
bvSsub ymm7_LLLL (bvVar ymm5_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm7_LLLH (bvVar ymm5_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm7_LLHL (bvVar ymm5_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm7_LLHH (bvVar ymm5_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm7_LHLL (bvVar ymm5_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm7_LHLH (bvVar ymm5_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm7_LHHL (bvVar ymm5_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm7_LHHH (bvVar ymm5_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm7_HLLL (bvVar ymm5_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm7_HLLH (bvVar ymm5_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm7_HLHL (bvVar ymm5_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm7_HLHH (bvVar ymm5_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm7_HHLL (bvVar ymm5_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm7_HHLH (bvVar ymm5_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm7_HHHL (bvVar ymm5_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm7_HHHH (bvVar ymm5_HHHH) (bvVar ymm13_HHHH);
(* vpsubw %ymm14,%ymm8,%ymm10 *)
bvSsub ymm10_LLLL (bvVar ymm8_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm10_LLLH (bvVar ymm8_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm10_LLHL (bvVar ymm8_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm10_LLHH (bvVar ymm8_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm10_LHLL (bvVar ymm8_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm10_LHLH (bvVar ymm8_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm10_LHHL (bvVar ymm8_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm10_LHHH (bvVar ymm8_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm10_HLLL (bvVar ymm8_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm10_HLLH (bvVar ymm8_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm10_HLHL (bvVar ymm8_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm10_HLHH (bvVar ymm8_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm10_HHLL (bvVar ymm8_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm10_HHLH (bvVar ymm8_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm10_HHHL (bvVar ymm8_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm10_HHHH (bvVar ymm8_HHHH) (bvVar ymm14_HHHH);
(* vpsubw %ymm15,%ymm9,%ymm11 *)
bvSsub ymm11_LLLL (bvVar ymm9_LLLL) (bvVar ymm15_LLLL);
bvSsub ymm11_LLLH (bvVar ymm9_LLLH) (bvVar ymm15_LLLH);
bvSsub ymm11_LLHL (bvVar ymm9_LLHL) (bvVar ymm15_LLHL);
bvSsub ymm11_LLHH (bvVar ymm9_LLHH) (bvVar ymm15_LLHH);
bvSsub ymm11_LHLL (bvVar ymm9_LHLL) (bvVar ymm15_LHLL);
bvSsub ymm11_LHLH (bvVar ymm9_LHLH) (bvVar ymm15_LHLH);
bvSsub ymm11_LHHL (bvVar ymm9_LHHL) (bvVar ymm15_LHHL);
bvSsub ymm11_LHHH (bvVar ymm9_LHHH) (bvVar ymm15_LHHH);
bvSsub ymm11_HLLL (bvVar ymm9_HLLL) (bvVar ymm15_HLLL);
bvSsub ymm11_HLLH (bvVar ymm9_HLLH) (bvVar ymm15_HLLH);
bvSsub ymm11_HLHL (bvVar ymm9_HLHL) (bvVar ymm15_HLHL);
bvSsub ymm11_HLHH (bvVar ymm9_HLHH) (bvVar ymm15_HLHH);
bvSsub ymm11_HHLL (bvVar ymm9_HHLL) (bvVar ymm15_HHLL);
bvSsub ymm11_HHLH (bvVar ymm9_HHLH) (bvVar ymm15_HHLH);
bvSsub ymm11_HHHL (bvVar ymm9_HHHL) (bvVar ymm15_HHHL);
bvSsub ymm11_HHHH (bvVar ymm9_HHHH) (bvVar ymm15_HHHH);
(* vpaddw %ymm12,%ymm4,%ymm4 *)
bvSadd ymm4_LLLL (bvVar ymm12_LLLL) (bvVar ymm4_LLLL);
bvSadd ymm4_LLLH (bvVar ymm12_LLLH) (bvVar ymm4_LLLH);
bvSadd ymm4_LLHL (bvVar ymm12_LLHL) (bvVar ymm4_LLHL);
bvSadd ymm4_LLHH (bvVar ymm12_LLHH) (bvVar ymm4_LLHH);
bvSadd ymm4_LHLL (bvVar ymm12_LHLL) (bvVar ymm4_LHLL);
bvSadd ymm4_LHLH (bvVar ymm12_LHLH) (bvVar ymm4_LHLH);
bvSadd ymm4_LHHL (bvVar ymm12_LHHL) (bvVar ymm4_LHHL);
bvSadd ymm4_LHHH (bvVar ymm12_LHHH) (bvVar ymm4_LHHH);
bvSadd ymm4_HLLL (bvVar ymm12_HLLL) (bvVar ymm4_HLLL);
bvSadd ymm4_HLLH (bvVar ymm12_HLLH) (bvVar ymm4_HLLH);
bvSadd ymm4_HLHL (bvVar ymm12_HLHL) (bvVar ymm4_HLHL);
bvSadd ymm4_HLHH (bvVar ymm12_HLHH) (bvVar ymm4_HLHH);
bvSadd ymm4_HHLL (bvVar ymm12_HHLL) (bvVar ymm4_HHLL);
bvSadd ymm4_HHLH (bvVar ymm12_HHLH) (bvVar ymm4_HHLH);
bvSadd ymm4_HHHL (bvVar ymm12_HHHL) (bvVar ymm4_HHHL);
bvSadd ymm4_HHHH (bvVar ymm12_HHHH) (bvVar ymm4_HHHH);
(* vpaddw %ymm13,%ymm5,%ymm5 *)
bvSadd ymm5_LLLL (bvVar ymm13_LLLL) (bvVar ymm5_LLLL);
bvSadd ymm5_LLLH (bvVar ymm13_LLLH) (bvVar ymm5_LLLH);
bvSadd ymm5_LLHL (bvVar ymm13_LLHL) (bvVar ymm5_LLHL);
bvSadd ymm5_LLHH (bvVar ymm13_LLHH) (bvVar ymm5_LLHH);
bvSadd ymm5_LHLL (bvVar ymm13_LHLL) (bvVar ymm5_LHLL);
bvSadd ymm5_LHLH (bvVar ymm13_LHLH) (bvVar ymm5_LHLH);
bvSadd ymm5_LHHL (bvVar ymm13_LHHL) (bvVar ymm5_LHHL);
bvSadd ymm5_LHHH (bvVar ymm13_LHHH) (bvVar ymm5_LHHH);
bvSadd ymm5_HLLL (bvVar ymm13_HLLL) (bvVar ymm5_HLLL);
bvSadd ymm5_HLLH (bvVar ymm13_HLLH) (bvVar ymm5_HLLH);
bvSadd ymm5_HLHL (bvVar ymm13_HLHL) (bvVar ymm5_HLHL);
bvSadd ymm5_HLHH (bvVar ymm13_HLHH) (bvVar ymm5_HLHH);
bvSadd ymm5_HHLL (bvVar ymm13_HHLL) (bvVar ymm5_HHLL);
bvSadd ymm5_HHLH (bvVar ymm13_HHLH) (bvVar ymm5_HHLH);
bvSadd ymm5_HHHL (bvVar ymm13_HHHL) (bvVar ymm5_HHHL);
bvSadd ymm5_HHHH (bvVar ymm13_HHHH) (bvVar ymm5_HHHH);
(* vpaddw %ymm14,%ymm8,%ymm8 *)
bvSadd ymm8_LLLL (bvVar ymm14_LLLL) (bvVar ymm8_LLLL);
bvSadd ymm8_LLLH (bvVar ymm14_LLLH) (bvVar ymm8_LLLH);
bvSadd ymm8_LLHL (bvVar ymm14_LLHL) (bvVar ymm8_LLHL);
bvSadd ymm8_LLHH (bvVar ymm14_LLHH) (bvVar ymm8_LLHH);
bvSadd ymm8_LHLL (bvVar ymm14_LHLL) (bvVar ymm8_LHLL);
bvSadd ymm8_LHLH (bvVar ymm14_LHLH) (bvVar ymm8_LHLH);
bvSadd ymm8_LHHL (bvVar ymm14_LHHL) (bvVar ymm8_LHHL);
bvSadd ymm8_LHHH (bvVar ymm14_LHHH) (bvVar ymm8_LHHH);
bvSadd ymm8_HLLL (bvVar ymm14_HLLL) (bvVar ymm8_HLLL);
bvSadd ymm8_HLLH (bvVar ymm14_HLLH) (bvVar ymm8_HLLH);
bvSadd ymm8_HLHL (bvVar ymm14_HLHL) (bvVar ymm8_HLHL);
bvSadd ymm8_HLHH (bvVar ymm14_HLHH) (bvVar ymm8_HLHH);
bvSadd ymm8_HHLL (bvVar ymm14_HHLL) (bvVar ymm8_HHLL);
bvSadd ymm8_HHLH (bvVar ymm14_HHLH) (bvVar ymm8_HHLH);
bvSadd ymm8_HHHL (bvVar ymm14_HHHL) (bvVar ymm8_HHHL);
bvSadd ymm8_HHHH (bvVar ymm14_HHHH) (bvVar ymm8_HHHH);
(* vpaddw %ymm15,%ymm9,%ymm9 *)
bvSadd ymm9_LLLL (bvVar ymm15_LLLL) (bvVar ymm9_LLLL);
bvSadd ymm9_LLLH (bvVar ymm15_LLLH) (bvVar ymm9_LLLH);
bvSadd ymm9_LLHL (bvVar ymm15_LLHL) (bvVar ymm9_LLHL);
bvSadd ymm9_LLHH (bvVar ymm15_LLHH) (bvVar ymm9_LLHH);
bvSadd ymm9_LHLL (bvVar ymm15_LHLL) (bvVar ymm9_LHLL);
bvSadd ymm9_LHLH (bvVar ymm15_LHLH) (bvVar ymm9_LHLH);
bvSadd ymm9_LHHL (bvVar ymm15_LHHL) (bvVar ymm9_LHHL);
bvSadd ymm9_LHHH (bvVar ymm15_LHHH) (bvVar ymm9_LHHH);
bvSadd ymm9_HLLL (bvVar ymm15_HLLL) (bvVar ymm9_HLLL);
bvSadd ymm9_HLLH (bvVar ymm15_HLLH) (bvVar ymm9_HLLH);
bvSadd ymm9_HLHL (bvVar ymm15_HLHL) (bvVar ymm9_HLHL);
bvSadd ymm9_HLHH (bvVar ymm15_HLHH) (bvVar ymm9_HLHH);
bvSadd ymm9_HHLL (bvVar ymm15_HHLL) (bvVar ymm9_HHLL);
bvSadd ymm9_HHLH (bvVar ymm15_HHLH) (bvVar ymm9_HHLH);
bvSadd ymm9_HHHL (bvVar ymm15_HHHL) (bvVar ymm9_HHHL);
bvSadd ymm9_HHHH (bvVar ymm15_HHHH) (bvVar ymm9_HHHH);

(* # save old-2 *)

bvGhost ymm4_LLLLo2, ymm4_LLLHo2, ymm4_LLHLo2, ymm4_LLHHo2, ymm4_LHLLo2,
        ymm4_LHLHo2, ymm4_LHHLo2, ymm4_LHHHo2, ymm4_HLLLo2, ymm4_HLLHo2,
        ymm4_HLHLo2, ymm4_HLHHo2, ymm4_HHLLo2, ymm4_HHLHo2, ymm4_HHHLo2,
        ymm4_HHHHo2,
        ymm5_LLLLo2, ymm5_LLLHo2, ymm5_LLHLo2, ymm5_LLHHo2, ymm5_LHLLo2,
        ymm5_LHLHo2, ymm5_LHHLo2, ymm5_LHHHo2, ymm5_HLLLo2, ymm5_HLLHo2,
        ymm5_HLHLo2, ymm5_HLHHo2, ymm5_HHLLo2, ymm5_HHLHo2, ymm5_HHHLo2,
        ymm5_HHHHo2,
        ymm6_LLLLo2, ymm6_LLLHo2, ymm6_LLHLo2, ymm6_LLHHo2, ymm6_LHLLo2,
        ymm6_LHLHo2, ymm6_LHHLo2, ymm6_LHHHo2, ymm6_HLLLo2, ymm6_HLLHo2,
        ymm6_HLHLo2, ymm6_HLHHo2, ymm6_HHLLo2, ymm6_HHLHo2, ymm6_HHHLo2,
        ymm6_HHHHo2,
        ymm7_LLLLo2, ymm7_LLLHo2, ymm7_LLHLo2, ymm7_LLHHo2, ymm7_LHLLo2,
        ymm7_LHLHo2, ymm7_LHHLo2, ymm7_LHHHo2, ymm7_HLLLo2, ymm7_HLLHo2,
        ymm7_HLHLo2, ymm7_HLHHo2, ymm7_HHLLo2, ymm7_HHLHo2, ymm7_HHHLo2,
        ymm7_HHHHo2,
        ymm8_LLLLo2, ymm8_LLLHo2, ymm8_LLHLo2, ymm8_LLHHo2, ymm8_LHLLo2,
        ymm8_LHLHo2, ymm8_LHHLo2, ymm8_LHHHo2, ymm8_HLLLo2, ymm8_HLLHo2,
        ymm8_HLHLo2, ymm8_HLHHo2, ymm8_HHLLo2, ymm8_HHLHo2, ymm8_HHHLo2,
        ymm8_HHHHo2,
        ymm9_LLLLo2, ymm9_LLLHo2, ymm9_LLHLo2, ymm9_LLHHo2, ymm9_LHLLo2,
        ymm9_LHLHo2, ymm9_LHHLo2, ymm9_LHHHo2, ymm9_HLLLo2, ymm9_HLLHo2,
        ymm9_HLHLo2, ymm9_HLHHo2, ymm9_HHLLo2, ymm9_HHLHo2, ymm9_HHHLo2,
        ymm9_HHHHo2,
        ymm10_LLLLo2, ymm10_LLLHo2, ymm10_LLHLo2, ymm10_LLHHo2, ymm10_LHLLo2,
        ymm10_LHLHo2, ymm10_LHHLo2, ymm10_LHHHo2, ymm10_HLLLo2, ymm10_HLLHo2,
        ymm10_HLHLo2, ymm10_HLHHo2, ymm10_HHLLo2, ymm10_HHLHo2, ymm10_HHHLo2,
        ymm10_HHHHo2,
        ymm11_LLLLo2, ymm11_LLLHo2, ymm11_LLHLo2, ymm11_LLHHo2, ymm11_LHLLo2,
        ymm11_LHLHo2, ymm11_LHHLo2, ymm11_LHHHo2, ymm11_HLLLo2, ymm11_HLLHo2,
        ymm11_HLHLo2, ymm11_HLHHo2, ymm11_HHLLo2, ymm11_HHLHo2, ymm11_HHHLo2,
        ymm11_HHHHo2 :
  bveands [bveEq (bvvar ymm4_LLLLo2) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo2) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo2) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo2) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo2) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo2) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo2) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo2) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo2) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo2) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo2) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo2) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo2) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo2) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo2) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo2) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo2) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo2) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo2) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo2) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo2) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo2) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo2) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo2) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo2) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo2) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo2) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo2) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo2) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo2) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo2) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo2) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo2) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo2) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo2) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo2) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo2) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo2) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo2) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo2) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo2) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo2) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo2) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo2) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo2) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo2) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo2) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo2) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo2) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo2) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo2) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo2) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo2) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo2) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo2) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo2) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo2) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo2) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo2) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo2) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo2) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo2) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo2) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo2) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo2) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo2) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo2) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo2) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo2) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo2) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo2) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo2) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo2) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo2) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo2) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo2) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo2) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo2) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo2) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo2) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo2) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo2) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo2) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo2) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo2) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo2) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo2) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo2) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo2) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo2) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo2) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo2) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo2) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo2) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo2) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo2) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo2) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo2) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo2) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo2) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo2) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo2) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo2) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo2) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo2) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo2) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo2) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo2) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo2) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo2) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo2) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo2) (bvvar ymm10_HHHH),
           bveEq (bvvar ymm11_LLLLo2) (bvvar ymm11_LLLL),
           bveEq (bvvar ymm11_LLLHo2) (bvvar ymm11_LLLH),
           bveEq (bvvar ymm11_LLHLo2) (bvvar ymm11_LLHL),
           bveEq (bvvar ymm11_LLHHo2) (bvvar ymm11_LLHH),
           bveEq (bvvar ymm11_LHLLo2) (bvvar ymm11_LHLL),
           bveEq (bvvar ymm11_LHLHo2) (bvvar ymm11_LHLH),
           bveEq (bvvar ymm11_LHHLo2) (bvvar ymm11_LHHL),
           bveEq (bvvar ymm11_LHHHo2) (bvvar ymm11_LHHH),
           bveEq (bvvar ymm11_HLLLo2) (bvvar ymm11_HLLL),
           bveEq (bvvar ymm11_HLLHo2) (bvvar ymm11_HLLH),
           bveEq (bvvar ymm11_HLHLo2) (bvvar ymm11_HLHL),
           bveEq (bvvar ymm11_HLHHo2) (bvvar ymm11_HLHH),
           bveEq (bvvar ymm11_HHLLo2) (bvvar ymm11_HHLL),
           bveEq (bvvar ymm11_HHLHo2) (bvvar ymm11_HHLH),
           bveEq (bvvar ymm11_HHHLo2) (bvvar ymm11_HHHL),
           bveEq (bvvar ymm11_HHHHo2) (bvvar ymm11_HHHH)]
  |
    bvTrue;

(* # cuts-2 *)

{
  bveands [
    bveEqMod (bvvar ymm4_LLLLo2)
             ((bvvar ymm4_LLLLo1) +
              (bvvar zeta060) * (bvvar ymm6_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLLo2)
             ((bvvar ymm4_LLLLo1) -
              (bvvar zeta060) * (bvvar ymm6_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLHo2)
             ((bvvar ymm4_LLLHo1) +
              (bvvar zeta060) * (bvvar ymm6_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLHo2)
             ((bvvar ymm4_LLLHo1) -
              (bvvar zeta060) * (bvvar ymm6_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHLo2)
             ((bvvar ymm4_LLHLo1) +
              (bvvar zeta060) * (bvvar ymm6_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHLo2)
             ((bvvar ymm4_LLHLo1) -
              (bvvar zeta060) * (bvvar ymm6_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHHo2)
             ((bvvar ymm4_LLHHo1) +
              (bvvar zeta060) * (bvvar ymm6_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHHo2)
             ((bvvar ymm4_LLHHo1) -
              (bvvar zeta060) * (bvvar ymm6_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLLo2)
             ((bvvar ymm4_LHLLo1) +
              (bvvar zeta060) * (bvvar ymm6_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLLo2)
             ((bvvar ymm4_LHLLo1) -
              (bvvar zeta060) * (bvvar ymm6_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLHo2)
             ((bvvar ymm4_LHLHo1) +
              (bvvar zeta060) * (bvvar ymm6_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLHo2)
             ((bvvar ymm4_LHLHo1) -
              (bvvar zeta060) * (bvvar ymm6_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHLo2)
             ((bvvar ymm4_LHHLo1) +
              (bvvar zeta060) * (bvvar ymm6_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHLo2)
             ((bvvar ymm4_LHHLo1) -
              (bvvar zeta060) * (bvvar ymm6_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHHo2)
             ((bvvar ymm4_LHHHo1) +
              (bvvar zeta060) * (bvvar ymm6_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHHo2)
             ((bvvar ymm4_LHHHo1) -
              (bvvar zeta060) * (bvvar ymm6_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLLo2)
             ((bvvar ymm4_HLLLo1) +
              (bvvar zeta060) * (bvvar ymm6_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLLo2)
             ((bvvar ymm4_HLLLo1) -
              (bvvar zeta060) * (bvvar ymm6_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLHo2)
             ((bvvar ymm4_HLLHo1) +
              (bvvar zeta060) * (bvvar ymm6_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLHo2)
             ((bvvar ymm4_HLLHo1) -
              (bvvar zeta060) * (bvvar ymm6_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHLo2)
             ((bvvar ymm4_HLHLo1) +
              (bvvar zeta060) * (bvvar ymm6_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHLo2)
             ((bvvar ymm4_HLHLo1) -
              (bvvar zeta060) * (bvvar ymm6_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHHo2)
             ((bvvar ymm4_HLHHo1) +
              (bvvar zeta060) * (bvvar ymm6_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHHo2)
             ((bvvar ymm4_HLHHo1) -
              (bvvar zeta060) * (bvvar ymm6_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLLo2)
             ((bvvar ymm4_HHLLo1) +
              (bvvar zeta060) * (bvvar ymm6_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLLo2)
             ((bvvar ymm4_HHLLo1) -
              (bvvar zeta060) * (bvvar ymm6_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLHo2)
             ((bvvar ymm4_HHLHo1) +
              (bvvar zeta060) * (bvvar ymm6_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLHo2)
             ((bvvar ymm4_HHLHo1) -
              (bvvar zeta060) * (bvvar ymm6_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHLo2)
             ((bvvar ymm4_HHHLo1) +
              (bvvar zeta060) * (bvvar ymm6_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHLo2)
             ((bvvar ymm4_HHHLo1) -
              (bvvar zeta060) * (bvvar ymm6_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHHo2)
             ((bvvar ymm4_HHHHo1) +
              (bvvar zeta060) * (bvvar ymm6_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHHo2)
             ((bvvar ymm4_HHHHo1) -
              (bvvar zeta060) * (bvvar ymm6_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLLo2)
             ((bvvar ymm5_LLLLo1) +
              (bvvar zeta060) * (bvvar ymm7_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLLo2)
             ((bvvar ymm5_LLLLo1) -
              (bvvar zeta060) * (bvvar ymm7_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLHo2)
             ((bvvar ymm5_LLLHo1) +
              (bvvar zeta060) * (bvvar ymm7_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLHo2)
             ((bvvar ymm5_LLLHo1) -
              (bvvar zeta060) * (bvvar ymm7_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHLo2)
             ((bvvar ymm5_LLHLo1) +
              (bvvar zeta060) * (bvvar ymm7_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHLo2)
             ((bvvar ymm5_LLHLo1) -
              (bvvar zeta060) * (bvvar ymm7_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHHo2)
             ((bvvar ymm5_LLHHo1) +
              (bvvar zeta060) * (bvvar ymm7_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHHo2)
             ((bvvar ymm5_LLHHo1) -
              (bvvar zeta060) * (bvvar ymm7_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLLo2)
             ((bvvar ymm5_LHLLo1) +
              (bvvar zeta060) * (bvvar ymm7_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLLo2)
             ((bvvar ymm5_LHLLo1) -
              (bvvar zeta060) * (bvvar ymm7_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLHo2)
             ((bvvar ymm5_LHLHo1) +
              (bvvar zeta060) * (bvvar ymm7_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLHo2)
             ((bvvar ymm5_LHLHo1) -
              (bvvar zeta060) * (bvvar ymm7_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHLo2)
             ((bvvar ymm5_LHHLo1) +
              (bvvar zeta060) * (bvvar ymm7_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHLo2)
             ((bvvar ymm5_LHHLo1) -
              (bvvar zeta060) * (bvvar ymm7_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHHo2)
             ((bvvar ymm5_LHHHo1) +
              (bvvar zeta060) * (bvvar ymm7_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHHo2)
             ((bvvar ymm5_LHHHo1) -
              (bvvar zeta060) * (bvvar ymm7_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLLo2)
             ((bvvar ymm5_HLLLo1) +
              (bvvar zeta060) * (bvvar ymm7_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLLo2)
             ((bvvar ymm5_HLLLo1) -
              (bvvar zeta060) * (bvvar ymm7_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLHo2)
             ((bvvar ymm5_HLLHo1) +
              (bvvar zeta060) * (bvvar ymm7_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLHo2)
             ((bvvar ymm5_HLLHo1) -
              (bvvar zeta060) * (bvvar ymm7_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHLo2)
             ((bvvar ymm5_HLHLo1) +
              (bvvar zeta060) * (bvvar ymm7_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHLo2)
             ((bvvar ymm5_HLHLo1) -
              (bvvar zeta060) * (bvvar ymm7_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHHo2)
             ((bvvar ymm5_HLHHo1) +
              (bvvar zeta060) * (bvvar ymm7_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHHo2)
             ((bvvar ymm5_HLHHo1) -
              (bvvar zeta060) * (bvvar ymm7_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLLo2)
             ((bvvar ymm5_HHLLo1) +
              (bvvar zeta060) * (bvvar ymm7_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLLo2)
             ((bvvar ymm5_HHLLo1) -
              (bvvar zeta060) * (bvvar ymm7_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLHo2)
             ((bvvar ymm5_HHLHo1) +
              (bvvar zeta060) * (bvvar ymm7_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLHo2)
             ((bvvar ymm5_HHLHo1) -
              (bvvar zeta060) * (bvvar ymm7_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHLo2)
             ((bvvar ymm5_HHHLo1) +
              (bvvar zeta060) * (bvvar ymm7_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHLo2)
             ((bvvar ymm5_HHHLo1) -
              (bvvar zeta060) * (bvvar ymm7_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHHo2)
             ((bvvar ymm5_HHHHo1) +
              (bvvar zeta060) * (bvvar ymm7_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHHo2)
             ((bvvar ymm5_HHHHo1) -
              (bvvar zeta060) * (bvvar ymm7_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLLo2)
             ((bvvar ymm8_LLLLo1) +
              (bvvar zeta080) * (bvvar ymm10_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLLo2)
             ((bvvar ymm8_LLLLo1) -
              (bvvar zeta080) * (bvvar ymm10_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLHo2)
             ((bvvar ymm8_LLLHo1) +
              (bvvar zeta080) * (bvvar ymm10_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLHo2)
             ((bvvar ymm8_LLLHo1) -
              (bvvar zeta080) * (bvvar ymm10_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHLo2)
             ((bvvar ymm8_LLHLo1) +
              (bvvar zeta080) * (bvvar ymm10_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHLo2)
             ((bvvar ymm8_LLHLo1) -
              (bvvar zeta080) * (bvvar ymm10_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHHo2)
             ((bvvar ymm8_LLHHo1) +
              (bvvar zeta080) * (bvvar ymm10_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHHo2)
             ((bvvar ymm8_LLHHo1) -
              (bvvar zeta080) * (bvvar ymm10_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLLo2)
             ((bvvar ymm8_LHLLo1) +
              (bvvar zeta080) * (bvvar ymm10_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLLo2)
             ((bvvar ymm8_LHLLo1) -
              (bvvar zeta080) * (bvvar ymm10_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLHo2)
             ((bvvar ymm8_LHLHo1) +
              (bvvar zeta080) * (bvvar ymm10_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLHo2)
             ((bvvar ymm8_LHLHo1) -
              (bvvar zeta080) * (bvvar ymm10_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHLo2)
             ((bvvar ymm8_LHHLo1) +
              (bvvar zeta080) * (bvvar ymm10_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHLo2)
             ((bvvar ymm8_LHHLo1) -
              (bvvar zeta080) * (bvvar ymm10_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHHo2)
             ((bvvar ymm8_LHHHo1) +
              (bvvar zeta080) * (bvvar ymm10_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHHo2)
             ((bvvar ymm8_LHHHo1) -
              (bvvar zeta080) * (bvvar ymm10_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLLo2)
             ((bvvar ymm8_HLLLo1) +
              (bvvar zeta080) * (bvvar ymm10_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLLo2)
             ((bvvar ymm8_HLLLo1) -
              (bvvar zeta080) * (bvvar ymm10_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLHo2)
             ((bvvar ymm8_HLLHo1) +
              (bvvar zeta080) * (bvvar ymm10_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLHo2)
             ((bvvar ymm8_HLLHo1) -
              (bvvar zeta080) * (bvvar ymm10_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHLo2)
             ((bvvar ymm8_HLHLo1) +
              (bvvar zeta080) * (bvvar ymm10_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHLo2)
             ((bvvar ymm8_HLHLo1) -
              (bvvar zeta080) * (bvvar ymm10_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHHo2)
             ((bvvar ymm8_HLHHo1) +
              (bvvar zeta080) * (bvvar ymm10_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHHo2)
             ((bvvar ymm8_HLHHo1) -
              (bvvar zeta080) * (bvvar ymm10_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLLo2)
             ((bvvar ymm8_HHLLo1) +
              (bvvar zeta080) * (bvvar ymm10_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLLo2)
             ((bvvar ymm8_HHLLo1) -
              (bvvar zeta080) * (bvvar ymm10_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLHo2)
             ((bvvar ymm8_HHLHo1) +
              (bvvar zeta080) * (bvvar ymm10_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLHo2)
             ((bvvar ymm8_HHLHo1) -
              (bvvar zeta080) * (bvvar ymm10_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHLo2)
             ((bvvar ymm8_HHHLo1) +
              (bvvar zeta080) * (bvvar ymm10_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHLo2)
             ((bvvar ymm8_HHHLo1) -
              (bvvar zeta080) * (bvvar ymm10_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHHo2)
             ((bvvar ymm8_HHHHo1) +
              (bvvar zeta080) * (bvvar ymm10_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHHo2)
             ((bvvar ymm8_HHHHo1) -
              (bvvar zeta080) * (bvvar ymm10_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLLo2)
             ((bvvar ymm9_LLLLo1) +
              (bvvar zeta080) * (bvvar ymm11_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLLLo2)
             ((bvvar ymm9_LLLLo1) -
              (bvvar zeta080) * (bvvar ymm11_LLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLHo2)
             ((bvvar ymm9_LLLHo1) +
              (bvvar zeta080) * (bvvar ymm11_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLLHo2)
             ((bvvar ymm9_LLLHo1) -
              (bvvar zeta080) * (bvvar ymm11_LLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHLo2)
             ((bvvar ymm9_LLHLo1) +
              (bvvar zeta080) * (bvvar ymm11_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLHLo2)
             ((bvvar ymm9_LLHLo1) -
              (bvvar zeta080) * (bvvar ymm11_LLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHHo2)
             ((bvvar ymm9_LLHHo1) +
              (bvvar zeta080) * (bvvar ymm11_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLHHo2)
             ((bvvar ymm9_LLHHo1) -
              (bvvar zeta080) * (bvvar ymm11_LLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLLo2)
             ((bvvar ymm9_LHLLo1) +
              (bvvar zeta080) * (bvvar ymm11_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHLLo2)
             ((bvvar ymm9_LHLLo1) -
              (bvvar zeta080) * (bvvar ymm11_LHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLHo2)
             ((bvvar ymm9_LHLHo1) +
              (bvvar zeta080) * (bvvar ymm11_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHLHo2)
             ((bvvar ymm9_LHLHo1) -
              (bvvar zeta080) * (bvvar ymm11_LHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHLo2)
             ((bvvar ymm9_LHHLo1) +
              (bvvar zeta080) * (bvvar ymm11_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHHLo2)
             ((bvvar ymm9_LHHLo1) -
              (bvvar zeta080) * (bvvar ymm11_LHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHHo2)
             ((bvvar ymm9_LHHHo1) +
              (bvvar zeta080) * (bvvar ymm11_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHHHo2)
             ((bvvar ymm9_LHHHo1) -
              (bvvar zeta080) * (bvvar ymm11_LHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLLo2)
             ((bvvar ymm9_HLLLo1) +
              (bvvar zeta080) * (bvvar ymm11_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLLLo2)
             ((bvvar ymm9_HLLLo1) -
              (bvvar zeta080) * (bvvar ymm11_HLLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLHo2)
             ((bvvar ymm9_HLLHo1) +
              (bvvar zeta080) * (bvvar ymm11_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLLHo2)
             ((bvvar ymm9_HLLHo1) -
              (bvvar zeta080) * (bvvar ymm11_HLLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHLo2)
             ((bvvar ymm9_HLHLo1) +
              (bvvar zeta080) * (bvvar ymm11_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLHLo2)
             ((bvvar ymm9_HLHLo1) -
              (bvvar zeta080) * (bvvar ymm11_HLHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHHo2)
             ((bvvar ymm9_HLHHo1) +
              (bvvar zeta080) * (bvvar ymm11_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLHHo2)
             ((bvvar ymm9_HLHHo1) -
              (bvvar zeta080) * (bvvar ymm11_HLHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLLo2)
             ((bvvar ymm9_HHLLo1) +
              (bvvar zeta080) * (bvvar ymm11_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHLLo2)
             ((bvvar ymm9_HHLLo1) -
              (bvvar zeta080) * (bvvar ymm11_HHLLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLHo2)
             ((bvvar ymm9_HHLHo1) +
              (bvvar zeta080) * (bvvar ymm11_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHLHo2)
             ((bvvar ymm9_HHLHo1) -
              (bvvar zeta080) * (bvvar ymm11_HHLHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHLo2)
             ((bvvar ymm9_HHHLo1) +
              (bvvar zeta080) * (bvvar ymm11_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHHLo2)
             ((bvvar ymm9_HHHLo1) -
              (bvvar zeta080) * (bvvar ymm11_HHHLo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHHo2)
             ((bvvar ymm9_HHHHo1) +
              (bvvar zeta080) * (bvvar ymm11_HHHHo1) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHHHo2)
             ((bvvar ymm9_HHHHo1) -
              (bvvar zeta080) * (bvvar ymm11_HHHHo1) * (bvconst 900))
             (bvvar q)
    ]
|
  bvTrue
}