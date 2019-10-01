proc main (ymm3_LLLL, ymm3_LLLH, ymm3_LLHL, ymm3_LLHH, ymm3_LHLL,
           ymm3_LHLH, ymm3_LHHL, ymm3_LHHH, ymm3_HLLL, ymm3_HLLH,
           ymm3_HLHL, ymm3_HLHH, ymm3_HHLL, ymm3_HHLH, ymm3_HHHL,
           ymm3_HHHH,
           ymm4_LLLL, ymm4_LLLH, ymm4_LLHL, ymm4_LLHH, ymm4_LHLL,
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
           ymm10_HHHH) =

{
  bveTrue
  |
  bvrTrue
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

(* # save old-12 *)

bvGhost ymm3_LLLLo12, ymm3_LLLHo12, ymm3_LLHLo12, ymm3_LLHHo12, ymm3_LHLLo12,
        ymm3_LHLHo12, ymm3_LHHLo12, ymm3_LHHHo12, ymm3_HLLLo12, ymm3_HLLHo12,
        ymm3_HLHLo12, ymm3_HLHHo12, ymm3_HHLLo12, ymm3_HHLHo12, ymm3_HHHLo12,
        ymm3_HHHHo12,
        ymm4_LLLLo12, ymm4_LLLHo12, ymm4_LLHLo12, ymm4_LLHHo12, ymm4_LHLLo12,
        ymm4_LHLHo12, ymm4_LHHLo12, ymm4_LHHHo12, ymm4_HLLLo12, ymm4_HLLHo12,
        ymm4_HLHLo12, ymm4_HLHHo12, ymm4_HHLLo12, ymm4_HHLHo12, ymm4_HHHLo12,
        ymm4_HHHHo12,
        ymm5_LLLLo12, ymm5_LLLHo12, ymm5_LLHLo12, ymm5_LLHHo12, ymm5_LHLLo12,
        ymm5_LHLHo12, ymm5_LHHLo12, ymm5_LHHHo12, ymm5_HLLLo12, ymm5_HLLHo12,
        ymm5_HLHLo12, ymm5_HLHHo12, ymm5_HHLLo12, ymm5_HHLHo12, ymm5_HHHLo12,
        ymm5_HHHHo12,
        ymm6_LLLLo12, ymm6_LLLHo12, ymm6_LLHLo12, ymm6_LLHHo12, ymm6_LHLLo12,
        ymm6_LHLHo12, ymm6_LHHLo12, ymm6_LHHHo12, ymm6_HLLLo12, ymm6_HLLHo12,
        ymm6_HLHLo12, ymm6_HLHHo12, ymm6_HHLLo12, ymm6_HHLHo12, ymm6_HHHLo12,
        ymm6_HHHHo12,
        ymm7_LLLLo12, ymm7_LLLHo12, ymm7_LLHLo12, ymm7_LLHHo12, ymm7_LHLLo12,
        ymm7_LHLHo12, ymm7_LHHLo12, ymm7_LHHHo12, ymm7_HLLLo12, ymm7_HLLHo12,
        ymm7_HLHLo12, ymm7_HLHHo12, ymm7_HHLLo12, ymm7_HHLHo12, ymm7_HHHLo12,
        ymm7_HHHHo12,
        ymm8_LLLLo12, ymm8_LLLHo12, ymm8_LLHLo12, ymm8_LLHHo12, ymm8_LHLLo12,
        ymm8_LHLHo12, ymm8_LHHLo12, ymm8_LHHHo12, ymm8_HLLLo12, ymm8_HLLHo12,
        ymm8_HLHLo12, ymm8_HLHHo12, ymm8_HHLLo12, ymm8_HHLHo12, ymm8_HHHLo12,
        ymm8_HHHHo12,
        ymm9_LLLLo12, ymm9_LLLHo12, ymm9_LLHLo12, ymm9_LLHHo12, ymm9_LHLLo12,
        ymm9_LHLHo12, ymm9_LHHLo12, ymm9_LHHHo12, ymm9_HLLLo12, ymm9_HLLHo12,
        ymm9_HLHLo12, ymm9_HLHHo12, ymm9_HHLLo12, ymm9_HHLHo12, ymm9_HHHLo12,
        ymm9_HHHHo12,
        ymm10_LLLLo12, ymm10_LLLHo12, ymm10_LLHLo12, ymm10_LLHHo12, ymm10_LHLLo12,
        ymm10_LHLHo12, ymm10_LHHLo12, ymm10_LHHHo12, ymm10_HLLLo12, ymm10_HLLHo12,
        ymm10_HLHLo12, ymm10_HLHHo12, ymm10_HHLLo12, ymm10_HHLHo12, ymm10_HHHLo12,
        ymm10_HHHHo12 :
  bveands [bveEq (bvvar ymm3_LLLLo12) (bvvar ymm3_LLLL),
           bveEq (bvvar ymm3_LLLHo12) (bvvar ymm3_LLLH),
           bveEq (bvvar ymm3_LLHLo12) (bvvar ymm3_LLHL),
           bveEq (bvvar ymm3_LLHHo12) (bvvar ymm3_LLHH),
           bveEq (bvvar ymm3_LHLLo12) (bvvar ymm3_LHLL),
           bveEq (bvvar ymm3_LHLHo12) (bvvar ymm3_LHLH),
           bveEq (bvvar ymm3_LHHLo12) (bvvar ymm3_LHHL),
           bveEq (bvvar ymm3_LHHHo12) (bvvar ymm3_LHHH),
           bveEq (bvvar ymm3_HLLLo12) (bvvar ymm3_HLLL),
           bveEq (bvvar ymm3_HLLHo12) (bvvar ymm3_HLLH),
           bveEq (bvvar ymm3_HLHLo12) (bvvar ymm3_HLHL),
           bveEq (bvvar ymm3_HLHHo12) (bvvar ymm3_HLHH),
           bveEq (bvvar ymm3_HHLLo12) (bvvar ymm3_HHLL),
           bveEq (bvvar ymm3_HHLHo12) (bvvar ymm3_HHLH),
           bveEq (bvvar ymm3_HHHLo12) (bvvar ymm3_HHHL),
           bveEq (bvvar ymm3_HHHHo12) (bvvar ymm3_HHHH),
           bveEq (bvvar ymm4_LLLLo12) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo12) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo12) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo12) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo12) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo12) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo12) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo12) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo12) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo12) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo12) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo12) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo12) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo12) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo12) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo12) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo12) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo12) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo12) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo12) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo12) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo12) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo12) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo12) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo12) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo12) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo12) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo12) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo12) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo12) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo12) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo12) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo12) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo12) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo12) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo12) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo12) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo12) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo12) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo12) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo12) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo12) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo12) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo12) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo12) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo12) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo12) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo12) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo12) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo12) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo12) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo12) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo12) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo12) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo12) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo12) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo12) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo12) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo12) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo12) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo12) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo12) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo12) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo12) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo12) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo12) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo12) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo12) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo12) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo12) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo12) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo12) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo12) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo12) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo12) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo12) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo12) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo12) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo12) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo12) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo12) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo12) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo12) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo12) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo12) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo12) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo12) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo12) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo12) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo12) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo12) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo12) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo12) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo12) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo12) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo12) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo12) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo12) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo12) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo12) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo12) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo12) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo12) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo12) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo12) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo12) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo12) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo12) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo12) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo12) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo12) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo12) (bvvar ymm10_HHHH)]
  |
    bvTrue;

(* vmovdqa 0x460(%rsi),%ymm12                      #! EA = L0x435f80 *)
bvAssign ymm12_LLLL (bvVar zeta460);
bvAssign ymm12_LLLH (bvVar zeta460);
bvAssign ymm12_LLHL (bvVar zeta464);
bvAssign ymm12_LLHH (bvVar zeta464);
bvAssign ymm12_LHLL (bvVar zeta468);
bvAssign ymm12_LHLH (bvVar zeta468);
bvAssign ymm12_LHHL (bvVar zeta46c);
bvAssign ymm12_LHHH (bvVar zeta46c);
bvAssign ymm12_HLLL (bvVar zeta470);
bvAssign ymm12_HLLH (bvVar zeta470);
bvAssign ymm12_HLHL (bvVar zeta474);
bvAssign ymm12_HLHH (bvVar zeta474);
bvAssign ymm12_HHLL (bvVar zeta478);
bvAssign ymm12_HHLH (bvVar zeta478);
bvAssign ymm12_HHHL (bvVar zeta47c);
bvAssign ymm12_HHHH (bvVar zeta47c);
(* vmovdqa 0x480(%rsi),%ymm13                      #! EA = L0x435fa0 *)
bvAssign ymm13_LLLL (bvVar zeta480);
bvAssign ymm13_LLLH (bvVar zeta480);
bvAssign ymm13_LLHL (bvVar zeta484);
bvAssign ymm13_LLHH (bvVar zeta484);
bvAssign ymm13_LHLL (bvVar zeta488);
bvAssign ymm13_LHLH (bvVar zeta488);
bvAssign ymm13_LHHL (bvVar zeta48c);
bvAssign ymm13_LHHH (bvVar zeta48c);
bvAssign ymm13_HLLL (bvVar zeta490);
bvAssign ymm13_HLLH (bvVar zeta490);
bvAssign ymm13_HLHL (bvVar zeta494);
bvAssign ymm13_HLHH (bvVar zeta494);
bvAssign ymm13_HHLL (bvVar zeta498);
bvAssign ymm13_HHLH (bvVar zeta498);
bvAssign ymm13_HHHL (bvVar zeta49c);
bvAssign ymm13_HHHH (bvVar zeta49c);
(* vmovdqa 0x4a0(%rsi),%ymm14                      #! EA = L0x435fc0 *)
bvAssign ymm14_LLLL (bvVar zeta4a0);
bvAssign ymm14_LLLH (bvVar zeta4a0);
bvAssign ymm14_LLHL (bvVar zeta4a4);
bvAssign ymm14_LLHH (bvVar zeta4a4);
bvAssign ymm14_LHLL (bvVar zeta4a8);
bvAssign ymm14_LHLH (bvVar zeta4a8);
bvAssign ymm14_LHHL (bvVar zeta4ac);
bvAssign ymm14_LHHH (bvVar zeta4ac);
bvAssign ymm14_HLLL (bvVar zeta4b0);
bvAssign ymm14_HLLH (bvVar zeta4b0);
bvAssign ymm14_HLHL (bvVar zeta4b4);
bvAssign ymm14_HLHH (bvVar zeta4b4);
bvAssign ymm14_HHLL (bvVar zeta4b8);
bvAssign ymm14_HHLH (bvVar zeta4b8);
bvAssign ymm14_HHHL (bvVar zeta4bc);
bvAssign ymm14_HHHH (bvVar zeta4bc);
(* vmovdqa 0x4c0(%rsi),%ymm15                      #! EA = L0x435fe0 *)
bvAssign ymm15_LLLL (bvVar zeta4c0);
bvAssign ymm15_LLLH (bvVar zeta4c0);
bvAssign ymm15_LLHL (bvVar zeta4c4);
bvAssign ymm15_LLHH (bvVar zeta4c4);
bvAssign ymm15_LHLL (bvVar zeta4c8);
bvAssign ymm15_LHLH (bvVar zeta4c8);
bvAssign ymm15_LHHL (bvVar zeta4cc);
bvAssign ymm15_LHHH (bvVar zeta4cc);
bvAssign ymm15_HLLL (bvVar zeta4d0);
bvAssign ymm15_HLLH (bvVar zeta4d0);
bvAssign ymm15_HLHL (bvVar zeta4d4);
bvAssign ymm15_HLHH (bvVar zeta4d4);
bvAssign ymm15_HHLL (bvVar zeta4d8);
bvAssign ymm15_HHLH (bvVar zeta4d8);
bvAssign ymm15_HHHL (bvVar zeta4dc);
bvAssign ymm15_HHHH (bvVar zeta4dc);
(* vpmullw %ymm12,%ymm3,%ymm11 *)
bvSmulf ymm3_LLLL ymm11_LLLL (bvVar ymm12_LLLL) (bvVar ymm3_LLLL);
bvSmulf ymm3_LLLH ymm11_LLLH (bvVar ymm12_LLLH) (bvVar ymm3_LLLH);
bvSmulf ymm3_LLHL ymm11_LLHL (bvVar ymm12_LLHL) (bvVar ymm3_LLHL);
bvSmulf ymm3_LLHH ymm11_LLHH (bvVar ymm12_LLHH) (bvVar ymm3_LLHH);
bvSmulf ymm3_LHLL ymm11_LHLL (bvVar ymm12_LHLL) (bvVar ymm3_LHLL);
bvSmulf ymm3_LHLH ymm11_LHLH (bvVar ymm12_LHLH) (bvVar ymm3_LHLH);
bvSmulf ymm3_LHHL ymm11_LHHL (bvVar ymm12_LHHL) (bvVar ymm3_LHHL);
bvSmulf ymm3_LHHH ymm11_LHHH (bvVar ymm12_LHHH) (bvVar ymm3_LHHH);
bvSmulf ymm3_HLLL ymm11_HLLL (bvVar ymm12_HLLL) (bvVar ymm3_HLLL);
bvSmulf ymm3_HLLH ymm11_HLLH (bvVar ymm12_HLLH) (bvVar ymm3_HLLH);
bvSmulf ymm3_HLHL ymm11_HLHL (bvVar ymm12_HLHL) (bvVar ymm3_HLHL);
bvSmulf ymm3_HLHH ymm11_HLHH (bvVar ymm12_HLHH) (bvVar ymm3_HLHH);
bvSmulf ymm3_HHLL ymm11_HHLL (bvVar ymm12_HHLL) (bvVar ymm3_HHLL);
bvSmulf ymm3_HHLH ymm11_HHLH (bvVar ymm12_HHLH) (bvVar ymm3_HHLH);
bvSmulf ymm3_HHHL ymm11_HHHL (bvVar ymm12_HHHL) (bvVar ymm3_HHHL);
bvSmulf ymm3_HHHH ymm11_HHHH (bvVar ymm12_HHHH) (bvVar ymm3_HHHH);
(* vpmulhw %ymm12,%ymm3,%ymm3 *)
(* merged with previous vpmullw ymm12, ymm3, ymmX *)
(* vpmullw %ymm13,%ymm5,%ymm12 *)
bvSmulf ymm5_LLLL ymm12_LLLL (bvVar ymm13_LLLL) (bvVar ymm5_LLLL);
bvSmulf ymm5_LLLH ymm12_LLLH (bvVar ymm13_LLLH) (bvVar ymm5_LLLH);
bvSmulf ymm5_LLHL ymm12_LLHL (bvVar ymm13_LLHL) (bvVar ymm5_LLHL);
bvSmulf ymm5_LLHH ymm12_LLHH (bvVar ymm13_LLHH) (bvVar ymm5_LLHH);
bvSmulf ymm5_LHLL ymm12_LHLL (bvVar ymm13_LHLL) (bvVar ymm5_LHLL);
bvSmulf ymm5_LHLH ymm12_LHLH (bvVar ymm13_LHLH) (bvVar ymm5_LHLH);
bvSmulf ymm5_LHHL ymm12_LHHL (bvVar ymm13_LHHL) (bvVar ymm5_LHHL);
bvSmulf ymm5_LHHH ymm12_LHHH (bvVar ymm13_LHHH) (bvVar ymm5_LHHH);
bvSmulf ymm5_HLLL ymm12_HLLL (bvVar ymm13_HLLL) (bvVar ymm5_HLLL);
bvSmulf ymm5_HLLH ymm12_HLLH (bvVar ymm13_HLLH) (bvVar ymm5_HLLH);
bvSmulf ymm5_HLHL ymm12_HLHL (bvVar ymm13_HLHL) (bvVar ymm5_HLHL);
bvSmulf ymm5_HLHH ymm12_HLHH (bvVar ymm13_HLHH) (bvVar ymm5_HLHH);
bvSmulf ymm5_HHLL ymm12_HHLL (bvVar ymm13_HHLL) (bvVar ymm5_HHLL);
bvSmulf ymm5_HHLH ymm12_HHLH (bvVar ymm13_HHLH) (bvVar ymm5_HHLH);
bvSmulf ymm5_HHHL ymm12_HHHL (bvVar ymm13_HHHL) (bvVar ymm5_HHHL);
bvSmulf ymm5_HHHH ymm12_HHHH (bvVar ymm13_HHHH) (bvVar ymm5_HHHH);
(* vpmulhw %ymm13,%ymm5,%ymm5 *)
(* merged with previous vpmullw ymm13, ymm5, ymmX *)
(* vpmullw %ymm14,%ymm7,%ymm13 *)
bvSmulf ymm7_LLLL ymm13_LLLL (bvVar ymm14_LLLL) (bvVar ymm7_LLLL);
bvSmulf ymm7_LLLH ymm13_LLLH (bvVar ymm14_LLLH) (bvVar ymm7_LLLH);
bvSmulf ymm7_LLHL ymm13_LLHL (bvVar ymm14_LLHL) (bvVar ymm7_LLHL);
bvSmulf ymm7_LLHH ymm13_LLHH (bvVar ymm14_LLHH) (bvVar ymm7_LLHH);
bvSmulf ymm7_LHLL ymm13_LHLL (bvVar ymm14_LHLL) (bvVar ymm7_LHLL);
bvSmulf ymm7_LHLH ymm13_LHLH (bvVar ymm14_LHLH) (bvVar ymm7_LHLH);
bvSmulf ymm7_LHHL ymm13_LHHL (bvVar ymm14_LHHL) (bvVar ymm7_LHHL);
bvSmulf ymm7_LHHH ymm13_LHHH (bvVar ymm14_LHHH) (bvVar ymm7_LHHH);
bvSmulf ymm7_HLLL ymm13_HLLL (bvVar ymm14_HLLL) (bvVar ymm7_HLLL);
bvSmulf ymm7_HLLH ymm13_HLLH (bvVar ymm14_HLLH) (bvVar ymm7_HLLH);
bvSmulf ymm7_HLHL ymm13_HLHL (bvVar ymm14_HLHL) (bvVar ymm7_HLHL);
bvSmulf ymm7_HLHH ymm13_HLHH (bvVar ymm14_HLHH) (bvVar ymm7_HLHH);
bvSmulf ymm7_HHLL ymm13_HHLL (bvVar ymm14_HHLL) (bvVar ymm7_HHLL);
bvSmulf ymm7_HHLH ymm13_HHLH (bvVar ymm14_HHLH) (bvVar ymm7_HHLH);
bvSmulf ymm7_HHHL ymm13_HHHL (bvVar ymm14_HHHL) (bvVar ymm7_HHHL);
bvSmulf ymm7_HHHH ymm13_HHHH (bvVar ymm14_HHHH) (bvVar ymm7_HHHH);
(* vpmulhw %ymm14,%ymm7,%ymm7 *)
(* merged with previous vpmullw ymm14, ymm7, ymmX *)
(* vpmullw %ymm15,%ymm9,%ymm14 *)
bvSmulf ymm9_LLLL ymm14_LLLL (bvVar ymm15_LLLL) (bvVar ymm9_LLLL);
bvSmulf ymm9_LLLH ymm14_LLLH (bvVar ymm15_LLLH) (bvVar ymm9_LLLH);
bvSmulf ymm9_LLHL ymm14_LLHL (bvVar ymm15_LLHL) (bvVar ymm9_LLHL);
bvSmulf ymm9_LLHH ymm14_LLHH (bvVar ymm15_LLHH) (bvVar ymm9_LLHH);
bvSmulf ymm9_LHLL ymm14_LHLL (bvVar ymm15_LHLL) (bvVar ymm9_LHLL);
bvSmulf ymm9_LHLH ymm14_LHLH (bvVar ymm15_LHLH) (bvVar ymm9_LHLH);
bvSmulf ymm9_LHHL ymm14_LHHL (bvVar ymm15_LHHL) (bvVar ymm9_LHHL);
bvSmulf ymm9_LHHH ymm14_LHHH (bvVar ymm15_LHHH) (bvVar ymm9_LHHH);
bvSmulf ymm9_HLLL ymm14_HLLL (bvVar ymm15_HLLL) (bvVar ymm9_HLLL);
bvSmulf ymm9_HLLH ymm14_HLLH (bvVar ymm15_HLLH) (bvVar ymm9_HLLH);
bvSmulf ymm9_HLHL ymm14_HLHL (bvVar ymm15_HLHL) (bvVar ymm9_HLHL);
bvSmulf ymm9_HLHH ymm14_HLHH (bvVar ymm15_HLHH) (bvVar ymm9_HLHH);
bvSmulf ymm9_HHLL ymm14_HHLL (bvVar ymm15_HHLL) (bvVar ymm9_HHLL);
bvSmulf ymm9_HHLH ymm14_HHLH (bvVar ymm15_HHLH) (bvVar ymm9_HHLH);
bvSmulf ymm9_HHHL ymm14_HHHL (bvVar ymm15_HHHL) (bvVar ymm9_HHHL);
bvSmulf ymm9_HHHH ymm14_HHHH (bvVar ymm15_HHHH) (bvVar ymm9_HHHH);
(* vpmulhw %ymm15,%ymm9,%ymm9 *)
(* merged with previous vpmullw ymm15, ymm9, ymmX *)
(* # BEGIN Montgomery reduction *)
# BEGIN Montgomery reduction;
(* vpmullw %ymm0,%ymm11,%ymm11 *)
bvAssign ymm11_LLLL0 (bvVar ymm11_LLLL);
bvSmulf tmp ymm11_LLLL (bvVar qinv) (bvVar ymm11_LLLL);
bvAssign ymm11_LLLH0 (bvVar ymm11_LLLH);
bvSmulf tmp ymm11_LLLH (bvVar qinv) (bvVar ymm11_LLLH);
bvAssign ymm11_LLHL0 (bvVar ymm11_LLHL);
bvSmulf tmp ymm11_LLHL (bvVar qinv) (bvVar ymm11_LLHL);
bvAssign ymm11_LLHH0 (bvVar ymm11_LLHH);
bvSmulf tmp ymm11_LLHH (bvVar qinv) (bvVar ymm11_LLHH);
bvAssign ymm11_LHLL0 (bvVar ymm11_LHLL);
bvSmulf tmp ymm11_LHLL (bvVar qinv) (bvVar ymm11_LHLL);
bvAssign ymm11_LHLH0 (bvVar ymm11_LHLH);
bvSmulf tmp ymm11_LHLH (bvVar qinv) (bvVar ymm11_LHLH);
bvAssign ymm11_LHHL0 (bvVar ymm11_LHHL);
bvSmulf tmp ymm11_LHHL (bvVar qinv) (bvVar ymm11_LHHL);
bvAssign ymm11_LHHH0 (bvVar ymm11_LHHH);
bvSmulf tmp ymm11_LHHH (bvVar qinv) (bvVar ymm11_LHHH);
bvAssign ymm11_HLLL0 (bvVar ymm11_HLLL);
bvSmulf tmp ymm11_HLLL (bvVar qinv) (bvVar ymm11_HLLL);
bvAssign ymm11_HLLH0 (bvVar ymm11_HLLH);
bvSmulf tmp ymm11_HLLH (bvVar qinv) (bvVar ymm11_HLLH);
bvAssign ymm11_HLHL0 (bvVar ymm11_HLHL);
bvSmulf tmp ymm11_HLHL (bvVar qinv) (bvVar ymm11_HLHL);
bvAssign ymm11_HLHH0 (bvVar ymm11_HLHH);
bvSmulf tmp ymm11_HLHH (bvVar qinv) (bvVar ymm11_HLHH);
bvAssign ymm11_HHLL0 (bvVar ymm11_HHLL);
bvSmulf tmp ymm11_HHLL (bvVar qinv) (bvVar ymm11_HHLL);
bvAssign ymm11_HHLH0 (bvVar ymm11_HHLH);
bvSmulf tmp ymm11_HHLH (bvVar qinv) (bvVar ymm11_HHLH);
bvAssign ymm11_HHHL0 (bvVar ymm11_HHHL);
bvSmulf tmp ymm11_HHHL (bvVar qinv) (bvVar ymm11_HHHL);
bvAssign ymm11_HHHH0 (bvVar ymm11_HHHH);
bvSmulf tmp ymm11_HHHH (bvVar qinv) (bvVar ymm11_HHHH);
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
(* vpmulhw %ymm1,%ymm11,%ymm11 *)
bvSmulf ymm11_LLLL tmp (bvVar q) (bvVar ymm11_LLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LLLL0) | bvTrue;
bvSmulf ymm11_LLLH tmp (bvVar q) (bvVar ymm11_LLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LLLH0) | bvTrue;
bvSmulf ymm11_LLHL tmp (bvVar q) (bvVar ymm11_LLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LLHL0) | bvTrue;
bvSmulf ymm11_LLHH tmp (bvVar q) (bvVar ymm11_LLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LLHH0) | bvTrue;
bvSmulf ymm11_LHLL tmp (bvVar q) (bvVar ymm11_LHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LHLL0) | bvTrue;
bvSmulf ymm11_LHLH tmp (bvVar q) (bvVar ymm11_LHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LHLH0) | bvTrue;
bvSmulf ymm11_LHHL tmp (bvVar q) (bvVar ymm11_LHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LHHL0) | bvTrue;
bvSmulf ymm11_LHHH tmp (bvVar q) (bvVar ymm11_LHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_LHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_LHHH0) | bvTrue;
bvSmulf ymm11_HLLL tmp (bvVar q) (bvVar ymm11_HLLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HLLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HLLL0) | bvTrue;
bvSmulf ymm11_HLLH tmp (bvVar q) (bvVar ymm11_HLLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HLLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HLLH0) | bvTrue;
bvSmulf ymm11_HLHL tmp (bvVar q) (bvVar ymm11_HLHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HLHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HLHL0) | bvTrue;
bvSmulf ymm11_HLHH tmp (bvVar q) (bvVar ymm11_HLHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HLHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HLHH0) | bvTrue;
bvSmulf ymm11_HHLL tmp (bvVar q) (bvVar ymm11_HHLL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HHLL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HHLL0) | bvTrue;
bvSmulf ymm11_HHLH tmp (bvVar q) (bvVar ymm11_HHLH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HHLH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HHLH0) | bvTrue;
bvSmulf ymm11_HHHL tmp (bvVar q) (bvVar ymm11_HHHL);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HHHL0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HHHL0) | bvTrue;
bvSmulf ymm11_HHHH tmp (bvVar q) (bvVar ymm11_HHHH);
bvAssert bveEqMod (bvvar tmp) (bvvar ymm11_HHHH0) (bvconst 2^16) | bvTrue;
bvAssume bveEq (bvvar tmp) (bvvar ymm11_HHHH0) | bvTrue;
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
(* vpsubw %ymm11,%ymm3,%ymm11 *)
bvSsub ymm11_LLLL (bvVar ymm3_LLLL) (bvVar ymm11_LLLL);
bvSsub ymm11_LLLH (bvVar ymm3_LLLH) (bvVar ymm11_LLLH);
bvSsub ymm11_LLHL (bvVar ymm3_LLHL) (bvVar ymm11_LLHL);
bvSsub ymm11_LLHH (bvVar ymm3_LLHH) (bvVar ymm11_LLHH);
bvSsub ymm11_LHLL (bvVar ymm3_LHLL) (bvVar ymm11_LHLL);
bvSsub ymm11_LHLH (bvVar ymm3_LHLH) (bvVar ymm11_LHLH);
bvSsub ymm11_LHHL (bvVar ymm3_LHHL) (bvVar ymm11_LHHL);
bvSsub ymm11_LHHH (bvVar ymm3_LHHH) (bvVar ymm11_LHHH);
bvSsub ymm11_HLLL (bvVar ymm3_HLLL) (bvVar ymm11_HLLL);
bvSsub ymm11_HLLH (bvVar ymm3_HLLH) (bvVar ymm11_HLLH);
bvSsub ymm11_HLHL (bvVar ymm3_HLHL) (bvVar ymm11_HLHL);
bvSsub ymm11_HLHH (bvVar ymm3_HLHH) (bvVar ymm11_HLHH);
bvSsub ymm11_HHLL (bvVar ymm3_HHLL) (bvVar ymm11_HHLL);
bvSsub ymm11_HHLH (bvVar ymm3_HHLH) (bvVar ymm11_HHLH);
bvSsub ymm11_HHHL (bvVar ymm3_HHHL) (bvVar ymm11_HHHL);
bvSsub ymm11_HHHH (bvVar ymm3_HHHH) (bvVar ymm11_HHHH);
(* vpsubw %ymm12,%ymm5,%ymm12 *)
bvSsub ymm12_LLLL (bvVar ymm5_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm12_LLLH (bvVar ymm5_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm12_LLHL (bvVar ymm5_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm12_LLHH (bvVar ymm5_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm12_LHLL (bvVar ymm5_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm12_LHLH (bvVar ymm5_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm12_LHHL (bvVar ymm5_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm12_LHHH (bvVar ymm5_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm12_HLLL (bvVar ymm5_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm12_HLLH (bvVar ymm5_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm12_HLHL (bvVar ymm5_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm12_HLHH (bvVar ymm5_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm12_HHLL (bvVar ymm5_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm12_HHLH (bvVar ymm5_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm12_HHHL (bvVar ymm5_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm12_HHHH (bvVar ymm5_HHHH) (bvVar ymm12_HHHH);
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
(* vpsubw %ymm14,%ymm9,%ymm14 *)
bvSsub ymm14_LLLL (bvVar ymm9_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm14_LLLH (bvVar ymm9_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm14_LLHL (bvVar ymm9_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm14_LLHH (bvVar ymm9_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm14_LHLL (bvVar ymm9_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm14_LHLH (bvVar ymm9_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm14_LHHL (bvVar ymm9_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm14_LHHH (bvVar ymm9_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm14_HLLL (bvVar ymm9_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm14_HLLH (bvVar ymm9_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm14_HLHL (bvVar ymm9_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm14_HLHH (bvVar ymm9_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm14_HHLL (bvVar ymm9_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm14_HHLH (bvVar ymm9_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm14_HHHL (bvVar ymm9_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm14_HHHH (bvVar ymm9_HHHH) (bvVar ymm14_HHHH);
(* # END Montgomery reduction *)
# END Montgomery reduction;
(* vpsraw $0xd,%ymm10,%ymm3 *)
bvSplit ymm3_LLLL ymm10_LLLL (bvVar ymm10_LLLL) 13;
bvSplit ymm3_LLLH ymm10_LLLH (bvVar ymm10_LLLH) 13;
bvSplit ymm3_LLHL ymm10_LLHL (bvVar ymm10_LLHL) 13;
bvSplit ymm3_LLHH ymm10_LLHH (bvVar ymm10_LLHH) 13;
bvSplit ymm3_LHLL ymm10_LHLL (bvVar ymm10_LHLL) 13;
bvSplit ymm3_LHLH ymm10_LHLH (bvVar ymm10_LHLH) 13;
bvSplit ymm3_LHHL ymm10_LHHL (bvVar ymm10_LHHL) 13;
bvSplit ymm3_LHHH ymm10_LHHH (bvVar ymm10_LHHH) 13;
bvSplit ymm3_HLLL ymm10_HLLL (bvVar ymm10_HLLL) 13;
bvSplit ymm3_HLLH ymm10_HLLH (bvVar ymm10_HLLH) 13;
bvSplit ymm3_HLHL ymm10_HLHL (bvVar ymm10_HLHL) 13;
bvSplit ymm3_HLHH ymm10_HLHH (bvVar ymm10_HLHH) 13;
bvSplit ymm3_HHLL ymm10_HHLL (bvVar ymm10_HHLL) 13;
bvSplit ymm3_HHLH ymm10_HHLH (bvVar ymm10_HHLH) 13;
bvSplit ymm3_HHHL ymm10_HHHL (bvVar ymm10_HHHL) 13;
bvSplit ymm3_HHHH ymm10_HHHH (bvVar ymm10_HHHH) 13;
(* vpsraw $0xd,%ymm4,%ymm5 *)
bvSplit ymm5_LLLL ymm4_LLLL (bvVar ymm4_LLLL) 13;
bvSplit ymm5_LLLH ymm4_LLLH (bvVar ymm4_LLLH) 13;
bvSplit ymm5_LLHL ymm4_LLHL (bvVar ymm4_LLHL) 13;
bvSplit ymm5_LLHH ymm4_LLHH (bvVar ymm4_LLHH) 13;
bvSplit ymm5_LHLL ymm4_LHLL (bvVar ymm4_LHLL) 13;
bvSplit ymm5_LHLH ymm4_LHLH (bvVar ymm4_LHLH) 13;
bvSplit ymm5_LHHL ymm4_LHHL (bvVar ymm4_LHHL) 13;
bvSplit ymm5_LHHH ymm4_LHHH (bvVar ymm4_LHHH) 13;
bvSplit ymm5_HLLL ymm4_HLLL (bvVar ymm4_HLLL) 13;
bvSplit ymm5_HLLH ymm4_HLLH (bvVar ymm4_HLLH) 13;
bvSplit ymm5_HLHL ymm4_HLHL (bvVar ymm4_HLHL) 13;
bvSplit ymm5_HLHH ymm4_HLHH (bvVar ymm4_HLHH) 13;
bvSplit ymm5_HHLL ymm4_HHLL (bvVar ymm4_HHLL) 13;
bvSplit ymm5_HHLH ymm4_HHLH (bvVar ymm4_HHLH) 13;
bvSplit ymm5_HHHL ymm4_HHHL (bvVar ymm4_HHHL) 13;
bvSplit ymm5_HHHH ymm4_HHHH (bvVar ymm4_HHHH) 13;
(* vpsraw $0xd,%ymm6,%ymm7 *)
bvSplit ymm7_LLLL ymm6_LLLL (bvVar ymm6_LLLL) 13;
bvSplit ymm7_LLLH ymm6_LLLH (bvVar ymm6_LLLH) 13;
bvSplit ymm7_LLHL ymm6_LLHL (bvVar ymm6_LLHL) 13;
bvSplit ymm7_LLHH ymm6_LLHH (bvVar ymm6_LLHH) 13;
bvSplit ymm7_LHLL ymm6_LHLL (bvVar ymm6_LHLL) 13;
bvSplit ymm7_LHLH ymm6_LHLH (bvVar ymm6_LHLH) 13;
bvSplit ymm7_LHHL ymm6_LHHL (bvVar ymm6_LHHL) 13;
bvSplit ymm7_LHHH ymm6_LHHH (bvVar ymm6_LHHH) 13;
bvSplit ymm7_HLLL ymm6_HLLL (bvVar ymm6_HLLL) 13;
bvSplit ymm7_HLLH ymm6_HLLH (bvVar ymm6_HLLH) 13;
bvSplit ymm7_HLHL ymm6_HLHL (bvVar ymm6_HLHL) 13;
bvSplit ymm7_HLHH ymm6_HLHH (bvVar ymm6_HLHH) 13;
bvSplit ymm7_HHLL ymm6_HHLL (bvVar ymm6_HHLL) 13;
bvSplit ymm7_HHLH ymm6_HHLH (bvVar ymm6_HHLH) 13;
bvSplit ymm7_HHHL ymm6_HHHL (bvVar ymm6_HHHL) 13;
bvSplit ymm7_HHHH ymm6_HHHH (bvVar ymm6_HHHH) 13;
(* vpsraw $0xd,%ymm8,%ymm9 *)
bvSplit ymm9_LLLL ymm8_LLLL (bvVar ymm8_LLLL) 13;
bvSplit ymm9_LLLH ymm8_LLLH (bvVar ymm8_LLLH) 13;
bvSplit ymm9_LLHL ymm8_LLHL (bvVar ymm8_LLHL) 13;
bvSplit ymm9_LLHH ymm8_LLHH (bvVar ymm8_LLHH) 13;
bvSplit ymm9_LHLL ymm8_LHLL (bvVar ymm8_LHLL) 13;
bvSplit ymm9_LHLH ymm8_LHLH (bvVar ymm8_LHLH) 13;
bvSplit ymm9_LHHL ymm8_LHHL (bvVar ymm8_LHHL) 13;
bvSplit ymm9_LHHH ymm8_LHHH (bvVar ymm8_LHHH) 13;
bvSplit ymm9_HLLL ymm8_HLLL (bvVar ymm8_HLLL) 13;
bvSplit ymm9_HLLH ymm8_HLLH (bvVar ymm8_HLLH) 13;
bvSplit ymm9_HLHL ymm8_HLHL (bvVar ymm8_HLHL) 13;
bvSplit ymm9_HLHH ymm8_HLHH (bvVar ymm8_HLHH) 13;
bvSplit ymm9_HHLL ymm8_HHLL (bvVar ymm8_HHLL) 13;
bvSplit ymm9_HHLH ymm8_HHLH (bvVar ymm8_HHLH) 13;
bvSplit ymm9_HHHL ymm8_HHHL (bvVar ymm8_HHHL) 13;
bvSplit ymm9_HHHH ymm8_HHHH (bvVar ymm8_HHHH) 13;
(* vpand  %ymm2,%ymm10,%ymm10 *)
(* merged with previous vpsraw imm, ymm10, ymmX *)
(* vpand  %ymm2,%ymm4,%ymm4 *)
(* merged with previous vpsraw imm, ymm4, ymmX *)
(* vpand  %ymm2,%ymm6,%ymm6 *)
(* merged with previous vpsraw imm, ymm6, ymmX *)
(* vpand  %ymm2,%ymm8,%ymm8 *)
(* merged with previous vpsraw imm, ymm8, ymmX *)
(* vpsubw %ymm3,%ymm10,%ymm10 *)
bvSsub ymm10_LLLL (bvVar ymm10_LLLL) (bvVar ymm3_LLLL);
bvSsub ymm10_LLLH (bvVar ymm10_LLLH) (bvVar ymm3_LLLH);
bvSsub ymm10_LLHL (bvVar ymm10_LLHL) (bvVar ymm3_LLHL);
bvSsub ymm10_LLHH (bvVar ymm10_LLHH) (bvVar ymm3_LLHH);
bvSsub ymm10_LHLL (bvVar ymm10_LHLL) (bvVar ymm3_LHLL);
bvSsub ymm10_LHLH (bvVar ymm10_LHLH) (bvVar ymm3_LHLH);
bvSsub ymm10_LHHL (bvVar ymm10_LHHL) (bvVar ymm3_LHHL);
bvSsub ymm10_LHHH (bvVar ymm10_LHHH) (bvVar ymm3_LHHH);
bvSsub ymm10_HLLL (bvVar ymm10_HLLL) (bvVar ymm3_HLLL);
bvSsub ymm10_HLLH (bvVar ymm10_HLLH) (bvVar ymm3_HLLH);
bvSsub ymm10_HLHL (bvVar ymm10_HLHL) (bvVar ymm3_HLHL);
bvSsub ymm10_HLHH (bvVar ymm10_HLHH) (bvVar ymm3_HLHH);
bvSsub ymm10_HHLL (bvVar ymm10_HHLL) (bvVar ymm3_HHLL);
bvSsub ymm10_HHLH (bvVar ymm10_HHLH) (bvVar ymm3_HHLH);
bvSsub ymm10_HHHL (bvVar ymm10_HHHL) (bvVar ymm3_HHHL);
bvSsub ymm10_HHHH (bvVar ymm10_HHHH) (bvVar ymm3_HHHH);
(* vpsubw %ymm5,%ymm4,%ymm4 *)
bvSsub ymm4_LLLL (bvVar ymm4_LLLL) (bvVar ymm5_LLLL);
bvSsub ymm4_LLLH (bvVar ymm4_LLLH) (bvVar ymm5_LLLH);
bvSsub ymm4_LLHL (bvVar ymm4_LLHL) (bvVar ymm5_LLHL);
bvSsub ymm4_LLHH (bvVar ymm4_LLHH) (bvVar ymm5_LLHH);
bvSsub ymm4_LHLL (bvVar ymm4_LHLL) (bvVar ymm5_LHLL);
bvSsub ymm4_LHLH (bvVar ymm4_LHLH) (bvVar ymm5_LHLH);
bvSsub ymm4_LHHL (bvVar ymm4_LHHL) (bvVar ymm5_LHHL);
bvSsub ymm4_LHHH (bvVar ymm4_LHHH) (bvVar ymm5_LHHH);
bvSsub ymm4_HLLL (bvVar ymm4_HLLL) (bvVar ymm5_HLLL);
bvSsub ymm4_HLLH (bvVar ymm4_HLLH) (bvVar ymm5_HLLH);
bvSsub ymm4_HLHL (bvVar ymm4_HLHL) (bvVar ymm5_HLHL);
bvSsub ymm4_HLHH (bvVar ymm4_HLHH) (bvVar ymm5_HLHH);
bvSsub ymm4_HHLL (bvVar ymm4_HHLL) (bvVar ymm5_HHLL);
bvSsub ymm4_HHLH (bvVar ymm4_HHLH) (bvVar ymm5_HHLH);
bvSsub ymm4_HHHL (bvVar ymm4_HHHL) (bvVar ymm5_HHHL);
bvSsub ymm4_HHHH (bvVar ymm4_HHHH) (bvVar ymm5_HHHH);
(* vpsubw %ymm7,%ymm6,%ymm6 *)
bvSsub ymm6_LLLL (bvVar ymm6_LLLL) (bvVar ymm7_LLLL);
bvSsub ymm6_LLLH (bvVar ymm6_LLLH) (bvVar ymm7_LLLH);
bvSsub ymm6_LLHL (bvVar ymm6_LLHL) (bvVar ymm7_LLHL);
bvSsub ymm6_LLHH (bvVar ymm6_LLHH) (bvVar ymm7_LLHH);
bvSsub ymm6_LHLL (bvVar ymm6_LHLL) (bvVar ymm7_LHLL);
bvSsub ymm6_LHLH (bvVar ymm6_LHLH) (bvVar ymm7_LHLH);
bvSsub ymm6_LHHL (bvVar ymm6_LHHL) (bvVar ymm7_LHHL);
bvSsub ymm6_LHHH (bvVar ymm6_LHHH) (bvVar ymm7_LHHH);
bvSsub ymm6_HLLL (bvVar ymm6_HLLL) (bvVar ymm7_HLLL);
bvSsub ymm6_HLLH (bvVar ymm6_HLLH) (bvVar ymm7_HLLH);
bvSsub ymm6_HLHL (bvVar ymm6_HLHL) (bvVar ymm7_HLHL);
bvSsub ymm6_HLHH (bvVar ymm6_HLHH) (bvVar ymm7_HLHH);
bvSsub ymm6_HHLL (bvVar ymm6_HHLL) (bvVar ymm7_HHLL);
bvSsub ymm6_HHLH (bvVar ymm6_HHLH) (bvVar ymm7_HHLH);
bvSsub ymm6_HHHL (bvVar ymm6_HHHL) (bvVar ymm7_HHHL);
bvSsub ymm6_HHHH (bvVar ymm6_HHHH) (bvVar ymm7_HHHH);
(* vpsubw %ymm9,%ymm8,%ymm8 *)
bvSsub ymm8_LLLL (bvVar ymm8_LLLL) (bvVar ymm9_LLLL);
bvSsub ymm8_LLLH (bvVar ymm8_LLLH) (bvVar ymm9_LLLH);
bvSsub ymm8_LLHL (bvVar ymm8_LLHL) (bvVar ymm9_LLHL);
bvSsub ymm8_LLHH (bvVar ymm8_LLHH) (bvVar ymm9_LLHH);
bvSsub ymm8_LHLL (bvVar ymm8_LHLL) (bvVar ymm9_LHLL);
bvSsub ymm8_LHLH (bvVar ymm8_LHLH) (bvVar ymm9_LHLH);
bvSsub ymm8_LHHL (bvVar ymm8_LHHL) (bvVar ymm9_LHHL);
bvSsub ymm8_LHHH (bvVar ymm8_LHHH) (bvVar ymm9_LHHH);
bvSsub ymm8_HLLL (bvVar ymm8_HLLL) (bvVar ymm9_HLLL);
bvSsub ymm8_HLLH (bvVar ymm8_HLLH) (bvVar ymm9_HLLH);
bvSsub ymm8_HLHL (bvVar ymm8_HLHL) (bvVar ymm9_HLHL);
bvSsub ymm8_HLHH (bvVar ymm8_HLHH) (bvVar ymm9_HLHH);
bvSsub ymm8_HHLL (bvVar ymm8_HHLL) (bvVar ymm9_HHLL);
bvSsub ymm8_HHLH (bvVar ymm8_HHLH) (bvVar ymm9_HHLH);
bvSsub ymm8_HHHL (bvVar ymm8_HHHL) (bvVar ymm9_HHHL);
bvSsub ymm8_HHHH (bvVar ymm8_HHHH) (bvVar ymm9_HHHH);
(* vpsllw $0x9,%ymm3,%ymm3 *)
bvSmul ymm3_LLLL (bvVar ymm3_LLLL) (bvConst 512);
bvSmul ymm3_LLLH (bvVar ymm3_LLLH) (bvConst 512);
bvSmul ymm3_LLHL (bvVar ymm3_LLHL) (bvConst 512);
bvSmul ymm3_LLHH (bvVar ymm3_LLHH) (bvConst 512);
bvSmul ymm3_LHLL (bvVar ymm3_LHLL) (bvConst 512);
bvSmul ymm3_LHLH (bvVar ymm3_LHLH) (bvConst 512);
bvSmul ymm3_LHHL (bvVar ymm3_LHHL) (bvConst 512);
bvSmul ymm3_LHHH (bvVar ymm3_LHHH) (bvConst 512);
bvSmul ymm3_HLLL (bvVar ymm3_HLLL) (bvConst 512);
bvSmul ymm3_HLLH (bvVar ymm3_HLLH) (bvConst 512);
bvSmul ymm3_HLHL (bvVar ymm3_HLHL) (bvConst 512);
bvSmul ymm3_HLHH (bvVar ymm3_HLHH) (bvConst 512);
bvSmul ymm3_HHLL (bvVar ymm3_HHLL) (bvConst 512);
bvSmul ymm3_HHLH (bvVar ymm3_HHLH) (bvConst 512);
bvSmul ymm3_HHHL (bvVar ymm3_HHHL) (bvConst 512);
bvSmul ymm3_HHHH (bvVar ymm3_HHHH) (bvConst 512);
(* vpsllw $0x9,%ymm5,%ymm5 *)
bvSmul ymm5_LLLL (bvVar ymm5_LLLL) (bvConst 512);
bvSmul ymm5_LLLH (bvVar ymm5_LLLH) (bvConst 512);
bvSmul ymm5_LLHL (bvVar ymm5_LLHL) (bvConst 512);
bvSmul ymm5_LLHH (bvVar ymm5_LLHH) (bvConst 512);
bvSmul ymm5_LHLL (bvVar ymm5_LHLL) (bvConst 512);
bvSmul ymm5_LHLH (bvVar ymm5_LHLH) (bvConst 512);
bvSmul ymm5_LHHL (bvVar ymm5_LHHL) (bvConst 512);
bvSmul ymm5_LHHH (bvVar ymm5_LHHH) (bvConst 512);
bvSmul ymm5_HLLL (bvVar ymm5_HLLL) (bvConst 512);
bvSmul ymm5_HLLH (bvVar ymm5_HLLH) (bvConst 512);
bvSmul ymm5_HLHL (bvVar ymm5_HLHL) (bvConst 512);
bvSmul ymm5_HLHH (bvVar ymm5_HLHH) (bvConst 512);
bvSmul ymm5_HHLL (bvVar ymm5_HHLL) (bvConst 512);
bvSmul ymm5_HHLH (bvVar ymm5_HHLH) (bvConst 512);
bvSmul ymm5_HHHL (bvVar ymm5_HHHL) (bvConst 512);
bvSmul ymm5_HHHH (bvVar ymm5_HHHH) (bvConst 512);
(* vpsllw $0x9,%ymm7,%ymm7 *)
bvSmul ymm7_LLLL (bvVar ymm7_LLLL) (bvConst 512);
bvSmul ymm7_LLLH (bvVar ymm7_LLLH) (bvConst 512);
bvSmul ymm7_LLHL (bvVar ymm7_LLHL) (bvConst 512);
bvSmul ymm7_LLHH (bvVar ymm7_LLHH) (bvConst 512);
bvSmul ymm7_LHLL (bvVar ymm7_LHLL) (bvConst 512);
bvSmul ymm7_LHLH (bvVar ymm7_LHLH) (bvConst 512);
bvSmul ymm7_LHHL (bvVar ymm7_LHHL) (bvConst 512);
bvSmul ymm7_LHHH (bvVar ymm7_LHHH) (bvConst 512);
bvSmul ymm7_HLLL (bvVar ymm7_HLLL) (bvConst 512);
bvSmul ymm7_HLLH (bvVar ymm7_HLLH) (bvConst 512);
bvSmul ymm7_HLHL (bvVar ymm7_HLHL) (bvConst 512);
bvSmul ymm7_HLHH (bvVar ymm7_HLHH) (bvConst 512);
bvSmul ymm7_HHLL (bvVar ymm7_HHLL) (bvConst 512);
bvSmul ymm7_HHLH (bvVar ymm7_HHLH) (bvConst 512);
bvSmul ymm7_HHHL (bvVar ymm7_HHHL) (bvConst 512);
bvSmul ymm7_HHHH (bvVar ymm7_HHHH) (bvConst 512);
(* vpsllw $0x9,%ymm9,%ymm9 *)
bvSmul ymm9_LLLL (bvVar ymm9_LLLL) (bvConst 512);
bvSmul ymm9_LLLH (bvVar ymm9_LLLH) (bvConst 512);
bvSmul ymm9_LLHL (bvVar ymm9_LLHL) (bvConst 512);
bvSmul ymm9_LLHH (bvVar ymm9_LLHH) (bvConst 512);
bvSmul ymm9_LHLL (bvVar ymm9_LHLL) (bvConst 512);
bvSmul ymm9_LHLH (bvVar ymm9_LHLH) (bvConst 512);
bvSmul ymm9_LHHL (bvVar ymm9_LHHL) (bvConst 512);
bvSmul ymm9_LHHH (bvVar ymm9_LHHH) (bvConst 512);
bvSmul ymm9_HLLL (bvVar ymm9_HLLL) (bvConst 512);
bvSmul ymm9_HLLH (bvVar ymm9_HLLH) (bvConst 512);
bvSmul ymm9_HLHL (bvVar ymm9_HLHL) (bvConst 512);
bvSmul ymm9_HLHH (bvVar ymm9_HLHH) (bvConst 512);
bvSmul ymm9_HHLL (bvVar ymm9_HHLL) (bvConst 512);
bvSmul ymm9_HHLH (bvVar ymm9_HHLH) (bvConst 512);
bvSmul ymm9_HHHL (bvVar ymm9_HHHL) (bvConst 512);
bvSmul ymm9_HHHH (bvVar ymm9_HHHH) (bvConst 512);
(* vpaddw %ymm3,%ymm10,%ymm10 *)
bvSadd ymm10_LLLL (bvVar ymm3_LLLL) (bvVar ymm10_LLLL);
bvSadd ymm10_LLLH (bvVar ymm3_LLLH) (bvVar ymm10_LLLH);
bvSadd ymm10_LLHL (bvVar ymm3_LLHL) (bvVar ymm10_LLHL);
bvSadd ymm10_LLHH (bvVar ymm3_LLHH) (bvVar ymm10_LLHH);
bvSadd ymm10_LHLL (bvVar ymm3_LHLL) (bvVar ymm10_LHLL);
bvSadd ymm10_LHLH (bvVar ymm3_LHLH) (bvVar ymm10_LHLH);
bvSadd ymm10_LHHL (bvVar ymm3_LHHL) (bvVar ymm10_LHHL);
bvSadd ymm10_LHHH (bvVar ymm3_LHHH) (bvVar ymm10_LHHH);
bvSadd ymm10_HLLL (bvVar ymm3_HLLL) (bvVar ymm10_HLLL);
bvSadd ymm10_HLLH (bvVar ymm3_HLLH) (bvVar ymm10_HLLH);
bvSadd ymm10_HLHL (bvVar ymm3_HLHL) (bvVar ymm10_HLHL);
bvSadd ymm10_HLHH (bvVar ymm3_HLHH) (bvVar ymm10_HLHH);
bvSadd ymm10_HHLL (bvVar ymm3_HHLL) (bvVar ymm10_HHLL);
bvSadd ymm10_HHLH (bvVar ymm3_HHLH) (bvVar ymm10_HHLH);
bvSadd ymm10_HHHL (bvVar ymm3_HHHL) (bvVar ymm10_HHHL);
bvSadd ymm10_HHHH (bvVar ymm3_HHHH) (bvVar ymm10_HHHH);
(* vpaddw %ymm5,%ymm4,%ymm4 *)
bvSadd ymm4_LLLL (bvVar ymm5_LLLL) (bvVar ymm4_LLLL);
bvSadd ymm4_LLLH (bvVar ymm5_LLLH) (bvVar ymm4_LLLH);
bvSadd ymm4_LLHL (bvVar ymm5_LLHL) (bvVar ymm4_LLHL);
bvSadd ymm4_LLHH (bvVar ymm5_LLHH) (bvVar ymm4_LLHH);
bvSadd ymm4_LHLL (bvVar ymm5_LHLL) (bvVar ymm4_LHLL);
bvSadd ymm4_LHLH (bvVar ymm5_LHLH) (bvVar ymm4_LHLH);
bvSadd ymm4_LHHL (bvVar ymm5_LHHL) (bvVar ymm4_LHHL);
bvSadd ymm4_LHHH (bvVar ymm5_LHHH) (bvVar ymm4_LHHH);
bvSadd ymm4_HLLL (bvVar ymm5_HLLL) (bvVar ymm4_HLLL);
bvSadd ymm4_HLLH (bvVar ymm5_HLLH) (bvVar ymm4_HLLH);
bvSadd ymm4_HLHL (bvVar ymm5_HLHL) (bvVar ymm4_HLHL);
bvSadd ymm4_HLHH (bvVar ymm5_HLHH) (bvVar ymm4_HLHH);
bvSadd ymm4_HHLL (bvVar ymm5_HHLL) (bvVar ymm4_HHLL);
bvSadd ymm4_HHLH (bvVar ymm5_HHLH) (bvVar ymm4_HHLH);
bvSadd ymm4_HHHL (bvVar ymm5_HHHL) (bvVar ymm4_HHHL);
bvSadd ymm4_HHHH (bvVar ymm5_HHHH) (bvVar ymm4_HHHH);
(* vpaddw %ymm7,%ymm6,%ymm6 *)
bvSadd ymm6_LLLL (bvVar ymm7_LLLL) (bvVar ymm6_LLLL);
bvSadd ymm6_LLLH (bvVar ymm7_LLLH) (bvVar ymm6_LLLH);
bvSadd ymm6_LLHL (bvVar ymm7_LLHL) (bvVar ymm6_LLHL);
bvSadd ymm6_LLHH (bvVar ymm7_LLHH) (bvVar ymm6_LLHH);
bvSadd ymm6_LHLL (bvVar ymm7_LHLL) (bvVar ymm6_LHLL);
bvSadd ymm6_LHLH (bvVar ymm7_LHLH) (bvVar ymm6_LHLH);
bvSadd ymm6_LHHL (bvVar ymm7_LHHL) (bvVar ymm6_LHHL);
bvSadd ymm6_LHHH (bvVar ymm7_LHHH) (bvVar ymm6_LHHH);
bvSadd ymm6_HLLL (bvVar ymm7_HLLL) (bvVar ymm6_HLLL);
bvSadd ymm6_HLLH (bvVar ymm7_HLLH) (bvVar ymm6_HLLH);
bvSadd ymm6_HLHL (bvVar ymm7_HLHL) (bvVar ymm6_HLHL);
bvSadd ymm6_HLHH (bvVar ymm7_HLHH) (bvVar ymm6_HLHH);
bvSadd ymm6_HHLL (bvVar ymm7_HHLL) (bvVar ymm6_HHLL);
bvSadd ymm6_HHLH (bvVar ymm7_HHLH) (bvVar ymm6_HHLH);
bvSadd ymm6_HHHL (bvVar ymm7_HHHL) (bvVar ymm6_HHHL);
bvSadd ymm6_HHHH (bvVar ymm7_HHHH) (bvVar ymm6_HHHH);
(* vpaddw %ymm9,%ymm8,%ymm8 *)
bvSadd ymm8_LLLL (bvVar ymm9_LLLL) (bvVar ymm8_LLLL);
bvSadd ymm8_LLLH (bvVar ymm9_LLLH) (bvVar ymm8_LLLH);
bvSadd ymm8_LLHL (bvVar ymm9_LLHL) (bvVar ymm8_LLHL);
bvSadd ymm8_LLHH (bvVar ymm9_LLHH) (bvVar ymm8_LLHH);
bvSadd ymm8_LHLL (bvVar ymm9_LHLL) (bvVar ymm8_LHLL);
bvSadd ymm8_LHLH (bvVar ymm9_LHLH) (bvVar ymm8_LHLH);
bvSadd ymm8_LHHL (bvVar ymm9_LHHL) (bvVar ymm8_LHHL);
bvSadd ymm8_LHHH (bvVar ymm9_LHHH) (bvVar ymm8_LHHH);
bvSadd ymm8_HLLL (bvVar ymm9_HLLL) (bvVar ymm8_HLLL);
bvSadd ymm8_HLLH (bvVar ymm9_HLLH) (bvVar ymm8_HLLH);
bvSadd ymm8_HLHL (bvVar ymm9_HLHL) (bvVar ymm8_HLHL);
bvSadd ymm8_HLHH (bvVar ymm9_HLHH) (bvVar ymm8_HLHH);
bvSadd ymm8_HHLL (bvVar ymm9_HHLL) (bvVar ymm8_HHLL);
bvSadd ymm8_HHLH (bvVar ymm9_HHLH) (bvVar ymm8_HHLH);
bvSadd ymm8_HHHL (bvVar ymm9_HHHL) (bvVar ymm8_HHHL);
bvSadd ymm8_HHHH (bvVar ymm9_HHHH) (bvVar ymm8_HHHH);
(* vpsubw %ymm11,%ymm10,%ymm3 *)
bvSsub ymm3_LLLL (bvVar ymm10_LLLL) (bvVar ymm11_LLLL);
bvSsub ymm3_LLLH (bvVar ymm10_LLLH) (bvVar ymm11_LLLH);
bvSsub ymm3_LLHL (bvVar ymm10_LLHL) (bvVar ymm11_LLHL);
bvSsub ymm3_LLHH (bvVar ymm10_LLHH) (bvVar ymm11_LLHH);
bvSsub ymm3_LHLL (bvVar ymm10_LHLL) (bvVar ymm11_LHLL);
bvSsub ymm3_LHLH (bvVar ymm10_LHLH) (bvVar ymm11_LHLH);
bvSsub ymm3_LHHL (bvVar ymm10_LHHL) (bvVar ymm11_LHHL);
bvSsub ymm3_LHHH (bvVar ymm10_LHHH) (bvVar ymm11_LHHH);
bvSsub ymm3_HLLL (bvVar ymm10_HLLL) (bvVar ymm11_HLLL);
bvSsub ymm3_HLLH (bvVar ymm10_HLLH) (bvVar ymm11_HLLH);
bvSsub ymm3_HLHL (bvVar ymm10_HLHL) (bvVar ymm11_HLHL);
bvSsub ymm3_HLHH (bvVar ymm10_HLHH) (bvVar ymm11_HLHH);
bvSsub ymm3_HHLL (bvVar ymm10_HHLL) (bvVar ymm11_HHLL);
bvSsub ymm3_HHLH (bvVar ymm10_HHLH) (bvVar ymm11_HHLH);
bvSsub ymm3_HHHL (bvVar ymm10_HHHL) (bvVar ymm11_HHHL);
bvSsub ymm3_HHHH (bvVar ymm10_HHHH) (bvVar ymm11_HHHH);
(* vpsubw %ymm12,%ymm4,%ymm5 *)
bvSsub ymm5_LLLL (bvVar ymm4_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm5_LLLH (bvVar ymm4_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm5_LLHL (bvVar ymm4_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm5_LLHH (bvVar ymm4_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm5_LHLL (bvVar ymm4_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm5_LHLH (bvVar ymm4_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm5_LHHL (bvVar ymm4_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm5_LHHH (bvVar ymm4_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm5_HLLL (bvVar ymm4_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm5_HLLH (bvVar ymm4_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm5_HLHL (bvVar ymm4_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm5_HLHH (bvVar ymm4_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm5_HHLL (bvVar ymm4_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm5_HHLH (bvVar ymm4_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm5_HHHL (bvVar ymm4_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm5_HHHH (bvVar ymm4_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm6,%ymm7 *)
bvSsub ymm7_LLLL (bvVar ymm6_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm7_LLLH (bvVar ymm6_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm7_LLHL (bvVar ymm6_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm7_LLHH (bvVar ymm6_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm7_LHLL (bvVar ymm6_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm7_LHLH (bvVar ymm6_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm7_LHHL (bvVar ymm6_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm7_LHHH (bvVar ymm6_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm7_HLLL (bvVar ymm6_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm7_HLLH (bvVar ymm6_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm7_HLHL (bvVar ymm6_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm7_HLHH (bvVar ymm6_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm7_HHLL (bvVar ymm6_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm7_HHLH (bvVar ymm6_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm7_HHHL (bvVar ymm6_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm7_HHHH (bvVar ymm6_HHHH) (bvVar ymm13_HHHH);
(* vpsubw %ymm14,%ymm8,%ymm9 *)
bvSsub ymm9_LLLL (bvVar ymm8_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm9_LLLH (bvVar ymm8_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm9_LLHL (bvVar ymm8_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm9_LLHH (bvVar ymm8_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm9_LHLL (bvVar ymm8_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm9_LHLH (bvVar ymm8_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm9_LHHL (bvVar ymm8_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm9_LHHH (bvVar ymm8_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm9_HLLL (bvVar ymm8_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm9_HLLH (bvVar ymm8_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm9_HLHL (bvVar ymm8_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm9_HLHH (bvVar ymm8_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm9_HHLL (bvVar ymm8_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm9_HHLH (bvVar ymm8_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm9_HHHL (bvVar ymm8_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm9_HHHH (bvVar ymm8_HHHH) (bvVar ymm14_HHHH);
(* vpaddw %ymm11,%ymm10,%ymm10 *)
bvSadd ymm10_LLLL (bvVar ymm11_LLLL) (bvVar ymm10_LLLL);
bvSadd ymm10_LLLH (bvVar ymm11_LLLH) (bvVar ymm10_LLLH);
bvSadd ymm10_LLHL (bvVar ymm11_LLHL) (bvVar ymm10_LLHL);
bvSadd ymm10_LLHH (bvVar ymm11_LLHH) (bvVar ymm10_LLHH);
bvSadd ymm10_LHLL (bvVar ymm11_LHLL) (bvVar ymm10_LHLL);
bvSadd ymm10_LHLH (bvVar ymm11_LHLH) (bvVar ymm10_LHLH);
bvSadd ymm10_LHHL (bvVar ymm11_LHHL) (bvVar ymm10_LHHL);
bvSadd ymm10_LHHH (bvVar ymm11_LHHH) (bvVar ymm10_LHHH);
bvSadd ymm10_HLLL (bvVar ymm11_HLLL) (bvVar ymm10_HLLL);
bvSadd ymm10_HLLH (bvVar ymm11_HLLH) (bvVar ymm10_HLLH);
bvSadd ymm10_HLHL (bvVar ymm11_HLHL) (bvVar ymm10_HLHL);
bvSadd ymm10_HLHH (bvVar ymm11_HLHH) (bvVar ymm10_HLHH);
bvSadd ymm10_HHLL (bvVar ymm11_HHLL) (bvVar ymm10_HHLL);
bvSadd ymm10_HHLH (bvVar ymm11_HHLH) (bvVar ymm10_HHLH);
bvSadd ymm10_HHHL (bvVar ymm11_HHHL) (bvVar ymm10_HHHL);
bvSadd ymm10_HHHH (bvVar ymm11_HHHH) (bvVar ymm10_HHHH);
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
(* vpaddw %ymm13,%ymm6,%ymm6 *)
bvSadd ymm6_LLLL (bvVar ymm13_LLLL) (bvVar ymm6_LLLL);
bvSadd ymm6_LLLH (bvVar ymm13_LLLH) (bvVar ymm6_LLLH);
bvSadd ymm6_LLHL (bvVar ymm13_LLHL) (bvVar ymm6_LLHL);
bvSadd ymm6_LLHH (bvVar ymm13_LLHH) (bvVar ymm6_LLHH);
bvSadd ymm6_LHLL (bvVar ymm13_LHLL) (bvVar ymm6_LHLL);
bvSadd ymm6_LHLH (bvVar ymm13_LHLH) (bvVar ymm6_LHLH);
bvSadd ymm6_LHHL (bvVar ymm13_LHHL) (bvVar ymm6_LHHL);
bvSadd ymm6_LHHH (bvVar ymm13_LHHH) (bvVar ymm6_LHHH);
bvSadd ymm6_HLLL (bvVar ymm13_HLLL) (bvVar ymm6_HLLL);
bvSadd ymm6_HLLH (bvVar ymm13_HLLH) (bvVar ymm6_HLLH);
bvSadd ymm6_HLHL (bvVar ymm13_HLHL) (bvVar ymm6_HLHL);
bvSadd ymm6_HLHH (bvVar ymm13_HLHH) (bvVar ymm6_HLHH);
bvSadd ymm6_HHLL (bvVar ymm13_HHLL) (bvVar ymm6_HHLL);
bvSadd ymm6_HHLH (bvVar ymm13_HHLH) (bvVar ymm6_HHLH);
bvSadd ymm6_HHHL (bvVar ymm13_HHHL) (bvVar ymm6_HHHL);
bvSadd ymm6_HHHH (bvVar ymm13_HHHH) (bvVar ymm6_HHHH);
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
(* vpshufb %ymm15,%ymm10,%ymm11 *)
bvAssign ymm11_LLLL (bvVar ymm10_LLLH);
bvAssign ymm11_LLLH (bvVar ymm10_LLLL);
bvAssign ymm11_LLHL (bvVar ymm10_LLHH);
bvAssign ymm11_LLHH (bvVar ymm10_LLHL);
bvAssign ymm11_LHLL (bvVar ymm10_LHLH);
bvAssign ymm11_LHLH (bvVar ymm10_LHLL);
bvAssign ymm11_LHHL (bvVar ymm10_LHHH);
bvAssign ymm11_LHHH (bvVar ymm10_LHHL);
bvAssign ymm11_HLLL (bvVar ymm10_HLLH);
bvAssign ymm11_HLLH (bvVar ymm10_HLLL);
bvAssign ymm11_HLHL (bvVar ymm10_HLHH);
bvAssign ymm11_HLHH (bvVar ymm10_HLHL);
bvAssign ymm11_HHLL (bvVar ymm10_HHLH);
bvAssign ymm11_HHLH (bvVar ymm10_HHLL);
bvAssign ymm11_HHHL (bvVar ymm10_HHHH);
bvAssign ymm11_HHHH (bvVar ymm10_HHHL);
(* vpshufb %ymm15,%ymm3,%ymm12 *)
bvAssign ymm12_LLLL (bvVar ymm3_LLLH);
bvAssign ymm12_LLLH (bvVar ymm3_LLLL);
bvAssign ymm12_LLHL (bvVar ymm3_LLHH);
bvAssign ymm12_LLHH (bvVar ymm3_LLHL);
bvAssign ymm12_LHLL (bvVar ymm3_LHLH);
bvAssign ymm12_LHLH (bvVar ymm3_LHLL);
bvAssign ymm12_LHHL (bvVar ymm3_LHHH);
bvAssign ymm12_LHHH (bvVar ymm3_LHHL);
bvAssign ymm12_HLLL (bvVar ymm3_HLLH);
bvAssign ymm12_HLLH (bvVar ymm3_HLLL);
bvAssign ymm12_HLHL (bvVar ymm3_HLHH);
bvAssign ymm12_HLHH (bvVar ymm3_HLHL);
bvAssign ymm12_HHLL (bvVar ymm3_HHLH);
bvAssign ymm12_HHLH (bvVar ymm3_HHLL);
bvAssign ymm12_HHHL (bvVar ymm3_HHHH);
bvAssign ymm12_HHHH (bvVar ymm3_HHHL);
(* vpshufb %ymm15,%ymm4,%ymm13 *)
bvAssign ymm13_LLLL (bvVar ymm4_LLLH);
bvAssign ymm13_LLLH (bvVar ymm4_LLLL);
bvAssign ymm13_LLHL (bvVar ymm4_LLHH);
bvAssign ymm13_LLHH (bvVar ymm4_LLHL);
bvAssign ymm13_LHLL (bvVar ymm4_LHLH);
bvAssign ymm13_LHLH (bvVar ymm4_LHLL);
bvAssign ymm13_LHHL (bvVar ymm4_LHHH);
bvAssign ymm13_LHHH (bvVar ymm4_LHHL);
bvAssign ymm13_HLLL (bvVar ymm4_HLLH);
bvAssign ymm13_HLLH (bvVar ymm4_HLLL);
bvAssign ymm13_HLHL (bvVar ymm4_HLHH);
bvAssign ymm13_HLHH (bvVar ymm4_HLHL);
bvAssign ymm13_HHLL (bvVar ymm4_HHLH);
bvAssign ymm13_HHLH (bvVar ymm4_HHLL);
bvAssign ymm13_HHHL (bvVar ymm4_HHHH);
bvAssign ymm13_HHHH (bvVar ymm4_HHHL);
(* vpshufb %ymm15,%ymm5,%ymm14 *)
bvAssign ymm14_LLLL (bvVar ymm5_LLLH);
bvAssign ymm14_LLLH (bvVar ymm5_LLLL);
bvAssign ymm14_LLHL (bvVar ymm5_LLHH);
bvAssign ymm14_LLHH (bvVar ymm5_LLHL);
bvAssign ymm14_LHLL (bvVar ymm5_LHLH);
bvAssign ymm14_LHLH (bvVar ymm5_LHLL);
bvAssign ymm14_LHHL (bvVar ymm5_LHHH);
bvAssign ymm14_LHHH (bvVar ymm5_LHHL);
bvAssign ymm14_HLLL (bvVar ymm5_HLLH);
bvAssign ymm14_HLLH (bvVar ymm5_HLLL);
bvAssign ymm14_HLHL (bvVar ymm5_HLHH);
bvAssign ymm14_HLHH (bvVar ymm5_HLHL);
bvAssign ymm14_HHLL (bvVar ymm5_HHLH);
bvAssign ymm14_HHLH (bvVar ymm5_HHLL);
bvAssign ymm14_HHHL (bvVar ymm5_HHHH);
bvAssign ymm14_HHHH (bvVar ymm5_HHHL);
(* vpblendw $0x55,%ymm10,%ymm12,%ymm10 *)
bvAssign ymm10_LLLL (bvVar ymm10_LLLL);
bvAssign ymm10_LLLH (bvVar ymm12_LLLH);
bvAssign ymm10_LLHL (bvVar ymm10_LLHL);
bvAssign ymm10_LLHH (bvVar ymm12_LLHH);
bvAssign ymm10_LHLL (bvVar ymm10_LHLL);
bvAssign ymm10_LHLH (bvVar ymm12_LHLH);
bvAssign ymm10_LHHL (bvVar ymm10_LHHL);
bvAssign ymm10_LHHH (bvVar ymm12_LHHH);
bvAssign ymm10_HLLL (bvVar ymm10_HLLL);
bvAssign ymm10_HLLH (bvVar ymm12_HLLH);
bvAssign ymm10_HLHL (bvVar ymm10_HLHL);
bvAssign ymm10_HLHH (bvVar ymm12_HLHH);
bvAssign ymm10_HHLL (bvVar ymm10_HHLL);
bvAssign ymm10_HHLH (bvVar ymm12_HHLH);
bvAssign ymm10_HHHL (bvVar ymm10_HHHL);
bvAssign ymm10_HHHH (bvVar ymm12_HHHH);
(* vpblendw $0xaa,%ymm3,%ymm11,%ymm3 *)
bvAssign ymm3_LLLL (bvVar ymm11_LLLL);
bvAssign ymm3_LLLH (bvVar ymm3_LLLH);
bvAssign ymm3_LLHL (bvVar ymm11_LLHL);
bvAssign ymm3_LLHH (bvVar ymm3_LLHH);
bvAssign ymm3_LHLL (bvVar ymm11_LHLL);
bvAssign ymm3_LHLH (bvVar ymm3_LHLH);
bvAssign ymm3_LHHL (bvVar ymm11_LHHL);
bvAssign ymm3_LHHH (bvVar ymm3_LHHH);
bvAssign ymm3_HLLL (bvVar ymm11_HLLL);
bvAssign ymm3_HLLH (bvVar ymm3_HLLH);
bvAssign ymm3_HLHL (bvVar ymm11_HLHL);
bvAssign ymm3_HLHH (bvVar ymm3_HLHH);
bvAssign ymm3_HHLL (bvVar ymm11_HHLL);
bvAssign ymm3_HHLH (bvVar ymm3_HHLH);
bvAssign ymm3_HHHL (bvVar ymm11_HHHL);
bvAssign ymm3_HHHH (bvVar ymm3_HHHH);
(* vpblendw $0x55,%ymm4,%ymm14,%ymm4 *)
bvAssign ymm4_LLLL (bvVar ymm4_LLLL);
bvAssign ymm4_LLLH (bvVar ymm14_LLLH);
bvAssign ymm4_LLHL (bvVar ymm4_LLHL);
bvAssign ymm4_LLHH (bvVar ymm14_LLHH);
bvAssign ymm4_LHLL (bvVar ymm4_LHLL);
bvAssign ymm4_LHLH (bvVar ymm14_LHLH);
bvAssign ymm4_LHHL (bvVar ymm4_LHHL);
bvAssign ymm4_LHHH (bvVar ymm14_LHHH);
bvAssign ymm4_HLLL (bvVar ymm4_HLLL);
bvAssign ymm4_HLLH (bvVar ymm14_HLLH);
bvAssign ymm4_HLHL (bvVar ymm4_HLHL);
bvAssign ymm4_HLHH (bvVar ymm14_HLHH);
bvAssign ymm4_HHLL (bvVar ymm4_HHLL);
bvAssign ymm4_HHLH (bvVar ymm14_HHLH);
bvAssign ymm4_HHHL (bvVar ymm4_HHHL);
bvAssign ymm4_HHHH (bvVar ymm14_HHHH);
(* vpblendw $0xaa,%ymm5,%ymm13,%ymm5 *)
bvAssign ymm5_LLLL (bvVar ymm13_LLLL);
bvAssign ymm5_LLLH (bvVar ymm5_LLLH);
bvAssign ymm5_LLHL (bvVar ymm13_LLHL);
bvAssign ymm5_LLHH (bvVar ymm5_LLHH);
bvAssign ymm5_LHLL (bvVar ymm13_LHLL);
bvAssign ymm5_LHLH (bvVar ymm5_LHLH);
bvAssign ymm5_LHHL (bvVar ymm13_LHHL);
bvAssign ymm5_LHHH (bvVar ymm5_LHHH);
bvAssign ymm5_HLLL (bvVar ymm13_HLLL);
bvAssign ymm5_HLLH (bvVar ymm5_HLLH);
bvAssign ymm5_HLHL (bvVar ymm13_HLHL);
bvAssign ymm5_HLHH (bvVar ymm5_HLHH);
bvAssign ymm5_HHLL (bvVar ymm13_HHLL);
bvAssign ymm5_HHLH (bvVar ymm5_HHLH);
bvAssign ymm5_HHHL (bvVar ymm13_HHHL);
bvAssign ymm5_HHHH (bvVar ymm5_HHHH);
(* vpshufb %ymm15,%ymm6,%ymm11 *)
bvAssign ymm11_LLLL (bvVar ymm6_LLLH);
bvAssign ymm11_LLLH (bvVar ymm6_LLLL);
bvAssign ymm11_LLHL (bvVar ymm6_LLHH);
bvAssign ymm11_LLHH (bvVar ymm6_LLHL);
bvAssign ymm11_LHLL (bvVar ymm6_LHLH);
bvAssign ymm11_LHLH (bvVar ymm6_LHLL);
bvAssign ymm11_LHHL (bvVar ymm6_LHHH);
bvAssign ymm11_LHHH (bvVar ymm6_LHHL);
bvAssign ymm11_HLLL (bvVar ymm6_HLLH);
bvAssign ymm11_HLLH (bvVar ymm6_HLLL);
bvAssign ymm11_HLHL (bvVar ymm6_HLHH);
bvAssign ymm11_HLHH (bvVar ymm6_HLHL);
bvAssign ymm11_HHLL (bvVar ymm6_HHLH);
bvAssign ymm11_HHLH (bvVar ymm6_HHLL);
bvAssign ymm11_HHHL (bvVar ymm6_HHHH);
bvAssign ymm11_HHHH (bvVar ymm6_HHHL);
(* vpshufb %ymm15,%ymm7,%ymm12 *)
bvAssign ymm12_LLLL (bvVar ymm7_LLLH);
bvAssign ymm12_LLLH (bvVar ymm7_LLLL);
bvAssign ymm12_LLHL (bvVar ymm7_LLHH);
bvAssign ymm12_LLHH (bvVar ymm7_LLHL);
bvAssign ymm12_LHLL (bvVar ymm7_LHLH);
bvAssign ymm12_LHLH (bvVar ymm7_LHLL);
bvAssign ymm12_LHHL (bvVar ymm7_LHHH);
bvAssign ymm12_LHHH (bvVar ymm7_LHHL);
bvAssign ymm12_HLLL (bvVar ymm7_HLLH);
bvAssign ymm12_HLLH (bvVar ymm7_HLLL);
bvAssign ymm12_HLHL (bvVar ymm7_HLHH);
bvAssign ymm12_HLHH (bvVar ymm7_HLHL);
bvAssign ymm12_HHLL (bvVar ymm7_HHLH);
bvAssign ymm12_HHLH (bvVar ymm7_HHLL);
bvAssign ymm12_HHHL (bvVar ymm7_HHHH);
bvAssign ymm12_HHHH (bvVar ymm7_HHHL);
(* vpshufb %ymm15,%ymm8,%ymm13 *)
bvAssign ymm13_LLLL (bvVar ymm8_LLLH);
bvAssign ymm13_LLLH (bvVar ymm8_LLLL);
bvAssign ymm13_LLHL (bvVar ymm8_LLHH);
bvAssign ymm13_LLHH (bvVar ymm8_LLHL);
bvAssign ymm13_LHLL (bvVar ymm8_LHLH);
bvAssign ymm13_LHLH (bvVar ymm8_LHLL);
bvAssign ymm13_LHHL (bvVar ymm8_LHHH);
bvAssign ymm13_LHHH (bvVar ymm8_LHHL);
bvAssign ymm13_HLLL (bvVar ymm8_HLLH);
bvAssign ymm13_HLLH (bvVar ymm8_HLLL);
bvAssign ymm13_HLHL (bvVar ymm8_HLHH);
bvAssign ymm13_HLHH (bvVar ymm8_HLHL);
bvAssign ymm13_HHLL (bvVar ymm8_HHLH);
bvAssign ymm13_HHLH (bvVar ymm8_HHLL);
bvAssign ymm13_HHHL (bvVar ymm8_HHHH);
bvAssign ymm13_HHHH (bvVar ymm8_HHHL);
(* vpshufb %ymm15,%ymm9,%ymm14 *)
bvAssign ymm14_LLLL (bvVar ymm9_LLLH);
bvAssign ymm14_LLLH (bvVar ymm9_LLLL);
bvAssign ymm14_LLHL (bvVar ymm9_LLHH);
bvAssign ymm14_LLHH (bvVar ymm9_LLHL);
bvAssign ymm14_LHLL (bvVar ymm9_LHLH);
bvAssign ymm14_LHLH (bvVar ymm9_LHLL);
bvAssign ymm14_LHHL (bvVar ymm9_LHHH);
bvAssign ymm14_LHHH (bvVar ymm9_LHHL);
bvAssign ymm14_HLLL (bvVar ymm9_HLLH);
bvAssign ymm14_HLLH (bvVar ymm9_HLLL);
bvAssign ymm14_HLHL (bvVar ymm9_HLHH);
bvAssign ymm14_HLHH (bvVar ymm9_HLHL);
bvAssign ymm14_HHLL (bvVar ymm9_HHLH);
bvAssign ymm14_HHLH (bvVar ymm9_HHLL);
bvAssign ymm14_HHHL (bvVar ymm9_HHHH);
bvAssign ymm14_HHHH (bvVar ymm9_HHHL);
(* vpblendw $0x55,%ymm6,%ymm12,%ymm6 *)
bvAssign ymm6_LLLL (bvVar ymm6_LLLL);
bvAssign ymm6_LLLH (bvVar ymm12_LLLH);
bvAssign ymm6_LLHL (bvVar ymm6_LLHL);
bvAssign ymm6_LLHH (bvVar ymm12_LLHH);
bvAssign ymm6_LHLL (bvVar ymm6_LHLL);
bvAssign ymm6_LHLH (bvVar ymm12_LHLH);
bvAssign ymm6_LHHL (bvVar ymm6_LHHL);
bvAssign ymm6_LHHH (bvVar ymm12_LHHH);
bvAssign ymm6_HLLL (bvVar ymm6_HLLL);
bvAssign ymm6_HLLH (bvVar ymm12_HLLH);
bvAssign ymm6_HLHL (bvVar ymm6_HLHL);
bvAssign ymm6_HLHH (bvVar ymm12_HLHH);
bvAssign ymm6_HHLL (bvVar ymm6_HHLL);
bvAssign ymm6_HHLH (bvVar ymm12_HHLH);
bvAssign ymm6_HHHL (bvVar ymm6_HHHL);
bvAssign ymm6_HHHH (bvVar ymm12_HHHH);
(* vpblendw $0xaa,%ymm7,%ymm11,%ymm7 *)
bvAssign ymm7_LLLL (bvVar ymm11_LLLL);
bvAssign ymm7_LLLH (bvVar ymm7_LLLH);
bvAssign ymm7_LLHL (bvVar ymm11_LLHL);
bvAssign ymm7_LLHH (bvVar ymm7_LLHH);
bvAssign ymm7_LHLL (bvVar ymm11_LHLL);
bvAssign ymm7_LHLH (bvVar ymm7_LHLH);
bvAssign ymm7_LHHL (bvVar ymm11_LHHL);
bvAssign ymm7_LHHH (bvVar ymm7_LHHH);
bvAssign ymm7_HLLL (bvVar ymm11_HLLL);
bvAssign ymm7_HLLH (bvVar ymm7_HLLH);
bvAssign ymm7_HLHL (bvVar ymm11_HLHL);
bvAssign ymm7_HLHH (bvVar ymm7_HLHH);
bvAssign ymm7_HHLL (bvVar ymm11_HHLL);
bvAssign ymm7_HHLH (bvVar ymm7_HHLH);
bvAssign ymm7_HHHL (bvVar ymm11_HHHL);
bvAssign ymm7_HHHH (bvVar ymm7_HHHH);
(* vpblendw $0x55,%ymm8,%ymm14,%ymm8 *)
bvAssign ymm8_LLLL (bvVar ymm8_LLLL);
bvAssign ymm8_LLLH (bvVar ymm14_LLLH);
bvAssign ymm8_LLHL (bvVar ymm8_LLHL);
bvAssign ymm8_LLHH (bvVar ymm14_LLHH);
bvAssign ymm8_LHLL (bvVar ymm8_LHLL);
bvAssign ymm8_LHLH (bvVar ymm14_LHLH);
bvAssign ymm8_LHHL (bvVar ymm8_LHHL);
bvAssign ymm8_LHHH (bvVar ymm14_LHHH);
bvAssign ymm8_HLLL (bvVar ymm8_HLLL);
bvAssign ymm8_HLLH (bvVar ymm14_HLLH);
bvAssign ymm8_HLHL (bvVar ymm8_HLHL);
bvAssign ymm8_HLHH (bvVar ymm14_HLHH);
bvAssign ymm8_HHLL (bvVar ymm8_HHLL);
bvAssign ymm8_HHLH (bvVar ymm14_HHLH);
bvAssign ymm8_HHHL (bvVar ymm8_HHHL);
bvAssign ymm8_HHHH (bvVar ymm14_HHHH);
(* vpblendw $0xaa,%ymm9,%ymm13,%ymm9 *)
bvAssign ymm9_LLLL (bvVar ymm13_LLLL);
bvAssign ymm9_LLLH (bvVar ymm9_LLLH);
bvAssign ymm9_LLHL (bvVar ymm13_LLHL);
bvAssign ymm9_LLHH (bvVar ymm9_LLHH);
bvAssign ymm9_LHLL (bvVar ymm13_LHLL);
bvAssign ymm9_LHLH (bvVar ymm9_LHLH);
bvAssign ymm9_LHHL (bvVar ymm13_LHHL);
bvAssign ymm9_LHHH (bvVar ymm9_LHHH);
bvAssign ymm9_HLLL (bvVar ymm13_HLLL);
bvAssign ymm9_HLLH (bvVar ymm9_HLLH);
bvAssign ymm9_HLHL (bvVar ymm13_HLHL);
bvAssign ymm9_HLHH (bvVar ymm9_HLHH);
bvAssign ymm9_HHLL (bvVar ymm13_HHLL);
bvAssign ymm9_HHLH (bvVar ymm9_HHLH);
bvAssign ymm9_HHHL (bvVar ymm13_HHHL);
bvAssign ymm9_HHHH (bvVar ymm9_HHHH);

(* # save old-13 *)

bvGhost ymm3_LLLLo13, ymm3_LLLHo13, ymm3_LLHLo13, ymm3_LLHHo13, ymm3_LHLLo13,
        ymm3_LHLHo13, ymm3_LHHLo13, ymm3_LHHHo13, ymm3_HLLLo13, ymm3_HLLHo13,
        ymm3_HLHLo13, ymm3_HLHHo13, ymm3_HHLLo13, ymm3_HHLHo13, ymm3_HHHLo13,
        ymm3_HHHHo13,
        ymm4_LLLLo13, ymm4_LLLHo13, ymm4_LLHLo13, ymm4_LLHHo13, ymm4_LHLLo13,
        ymm4_LHLHo13, ymm4_LHHLo13, ymm4_LHHHo13, ymm4_HLLLo13, ymm4_HLLHo13,
        ymm4_HLHLo13, ymm4_HLHHo13, ymm4_HHLLo13, ymm4_HHLHo13, ymm4_HHHLo13,
        ymm4_HHHHo13,
        ymm5_LLLLo13, ymm5_LLLHo13, ymm5_LLHLo13, ymm5_LLHHo13, ymm5_LHLLo13,
        ymm5_LHLHo13, ymm5_LHHLo13, ymm5_LHHHo13, ymm5_HLLLo13, ymm5_HLLHo13,
        ymm5_HLHLo13, ymm5_HLHHo13, ymm5_HHLLo13, ymm5_HHLHo13, ymm5_HHHLo13,
        ymm5_HHHHo13,
        ymm6_LLLLo13, ymm6_LLLHo13, ymm6_LLHLo13, ymm6_LLHHo13, ymm6_LHLLo13,
        ymm6_LHLHo13, ymm6_LHHLo13, ymm6_LHHHo13, ymm6_HLLLo13, ymm6_HLLHo13,
        ymm6_HLHLo13, ymm6_HLHHo13, ymm6_HHLLo13, ymm6_HHLHo13, ymm6_HHHLo13,
        ymm6_HHHHo13,
        ymm7_LLLLo13, ymm7_LLLHo13, ymm7_LLHLo13, ymm7_LLHHo13, ymm7_LHLLo13,
        ymm7_LHLHo13, ymm7_LHHLo13, ymm7_LHHHo13, ymm7_HLLLo13, ymm7_HLLHo13,
        ymm7_HLHLo13, ymm7_HLHHo13, ymm7_HHLLo13, ymm7_HHLHo13, ymm7_HHHLo13,
        ymm7_HHHHo13,
        ymm8_LLLLo13, ymm8_LLLHo13, ymm8_LLHLo13, ymm8_LLHHo13, ymm8_LHLLo13,
        ymm8_LHLHo13, ymm8_LHHLo13, ymm8_LHHHo13, ymm8_HLLLo13, ymm8_HLLHo13,
        ymm8_HLHLo13, ymm8_HLHHo13, ymm8_HHLLo13, ymm8_HHLHo13, ymm8_HHHLo13,
        ymm8_HHHHo13,
        ymm9_LLLLo13, ymm9_LLLHo13, ymm9_LLHLo13, ymm9_LLHHo13, ymm9_LHLLo13,
        ymm9_LHLHo13, ymm9_LHHLo13, ymm9_LHHHo13, ymm9_HLLLo13, ymm9_HLLHo13,
        ymm9_HLHLo13, ymm9_HLHHo13, ymm9_HHLLo13, ymm9_HHLHo13, ymm9_HHHLo13,
        ymm9_HHHHo13,
        ymm10_LLLLo13, ymm10_LLLHo13, ymm10_LLHLo13, ymm10_LLHHo13, ymm10_LHLLo13,
        ymm10_LHLHo13, ymm10_LHHLo13, ymm10_LHHHo13, ymm10_HLLLo13, ymm10_HLLHo13,
        ymm10_HLHLo13, ymm10_HLHHo13, ymm10_HHLLo13, ymm10_HHLHo13, ymm10_HHHLo13,
        ymm10_HHHHo13 :
  bveands [bveEq (bvvar ymm3_LLLLo13) (bvvar ymm3_LLLL),
           bveEq (bvvar ymm3_LLLHo13) (bvvar ymm3_LLLH),
           bveEq (bvvar ymm3_LLHLo13) (bvvar ymm3_LLHL),
           bveEq (bvvar ymm3_LLHHo13) (bvvar ymm3_LLHH),
           bveEq (bvvar ymm3_LHLLo13) (bvvar ymm3_LHLL),
           bveEq (bvvar ymm3_LHLHo13) (bvvar ymm3_LHLH),
           bveEq (bvvar ymm3_LHHLo13) (bvvar ymm3_LHHL),
           bveEq (bvvar ymm3_LHHHo13) (bvvar ymm3_LHHH),
           bveEq (bvvar ymm3_HLLLo13) (bvvar ymm3_HLLL),
           bveEq (bvvar ymm3_HLLHo13) (bvvar ymm3_HLLH),
           bveEq (bvvar ymm3_HLHLo13) (bvvar ymm3_HLHL),
           bveEq (bvvar ymm3_HLHHo13) (bvvar ymm3_HLHH),
           bveEq (bvvar ymm3_HHLLo13) (bvvar ymm3_HHLL),
           bveEq (bvvar ymm3_HHLHo13) (bvvar ymm3_HHLH),
           bveEq (bvvar ymm3_HHHLo13) (bvvar ymm3_HHHL),
           bveEq (bvvar ymm3_HHHHo13) (bvvar ymm3_HHHH),
           bveEq (bvvar ymm4_LLLLo13) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo13) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo13) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo13) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo13) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo13) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo13) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo13) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo13) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo13) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo13) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo13) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo13) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo13) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo13) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo13) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo13) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo13) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo13) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo13) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo13) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo13) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo13) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo13) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo13) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo13) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo13) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo13) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo13) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo13) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo13) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo13) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo13) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo13) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo13) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo13) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo13) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo13) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo13) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo13) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo13) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo13) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo13) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo13) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo13) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo13) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo13) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo13) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo13) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo13) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo13) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo13) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo13) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo13) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo13) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo13) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo13) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo13) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo13) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo13) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo13) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo13) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo13) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo13) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo13) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo13) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo13) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo13) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo13) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo13) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo13) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo13) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo13) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo13) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo13) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo13) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo13) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo13) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo13) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo13) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo13) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo13) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo13) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo13) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo13) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo13) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo13) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo13) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo13) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo13) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo13) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo13) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo13) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo13) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo13) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo13) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo13) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo13) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo13) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo13) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo13) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo13) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo13) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo13) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo13) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo13) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo13) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo13) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo13) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo13) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo13) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo13) (bvvar ymm10_HHHH)]
  |
    bvTrue;

(* # cuts-13 *)

{
  bveands [
    bveEqMod (bvvar ymm10_LLLLo13)
             ((bvvar ymm10_LLLLo12) +
              (bvvar zeta460) * (bvvar ymm3_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLLLo13)
             ((bvvar ymm10_LLLHo12) +
              (bvvar zeta460) * (bvvar ymm3_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLHo13)
             ((bvvar ymm10_LLLLo12) -
              (bvvar zeta460) * (bvvar ymm3_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLLHo13)
             ((bvvar ymm10_LLLHo12) -
              (bvvar zeta460) * (bvvar ymm3_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHLo13)
             ((bvvar ymm10_LLHLo12) +
              (bvvar zeta464) * (bvvar ymm3_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLHLo13)
             ((bvvar ymm10_LLHHo12) +
              (bvvar zeta464) * (bvvar ymm3_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHHo13)
             ((bvvar ymm10_LLHLo12) -
              (bvvar zeta464) * (bvvar ymm3_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLHHo13)
             ((bvvar ymm10_LLHHo12) -
              (bvvar zeta464) * (bvvar ymm3_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLLo13)
             ((bvvar ymm10_LHLLo12) +
              (bvvar zeta468) * (bvvar ymm3_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHLLo13)
             ((bvvar ymm10_LHLHo12) +
              (bvvar zeta468) * (bvvar ymm3_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLHo13)
             ((bvvar ymm10_LHLLo12) -
              (bvvar zeta468) * (bvvar ymm3_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHLHo13)
             ((bvvar ymm10_LHLHo12) -
              (bvvar zeta468) * (bvvar ymm3_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHLo13)
             ((bvvar ymm10_LHHLo12) +
              (bvvar zeta46c) * (bvvar ymm3_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHHLo13)
             ((bvvar ymm10_LHHHo12) +
              (bvvar zeta46c) * (bvvar ymm3_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHHo13)
             ((bvvar ymm10_LHHLo12) -
              (bvvar zeta46c) * (bvvar ymm3_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHHHo13)
             ((bvvar ymm10_LHHHo12) -
              (bvvar zeta46c) * (bvvar ymm3_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLLo13)
             ((bvvar ymm10_HLLLo12) +
              (bvvar zeta470) * (bvvar ymm3_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLLLo13)
             ((bvvar ymm10_HLLHo12) +
              (bvvar zeta470) * (bvvar ymm3_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLHo13)
             ((bvvar ymm10_HLLLo12) -
              (bvvar zeta470) * (bvvar ymm3_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLLHo13)
             ((bvvar ymm10_HLLHo12) -
              (bvvar zeta470) * (bvvar ymm3_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHLo13)
             ((bvvar ymm10_HLHLo12) +
              (bvvar zeta474) * (bvvar ymm3_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLHLo13)
             ((bvvar ymm10_HLHHo12) +
              (bvvar zeta474) * (bvvar ymm3_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHHo13)
             ((bvvar ymm10_HLHLo12) -
              (bvvar zeta474) * (bvvar ymm3_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLHHo13)
             ((bvvar ymm10_HLHHo12) -
              (bvvar zeta474) * (bvvar ymm3_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLLo13)
             ((bvvar ymm10_HHLLo12) +
              (bvvar zeta478) * (bvvar ymm3_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHLLo13)
             ((bvvar ymm10_HHLHo12) +
              (bvvar zeta478) * (bvvar ymm3_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLHo13)
             ((bvvar ymm10_HHLLo12) -
              (bvvar zeta478) * (bvvar ymm3_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHLHo13)
             ((bvvar ymm10_HHLHo12) -
              (bvvar zeta478) * (bvvar ymm3_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHLo13)
             ((bvvar ymm10_HHHLo12) +
              (bvvar zeta47c) * (bvvar ymm3_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHHLo13)
             ((bvvar ymm10_HHHHo12) +
              (bvvar zeta47c) * (bvvar ymm3_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHHo13)
             ((bvvar ymm10_HHHLo12) -
              (bvvar zeta47c) * (bvvar ymm3_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHHHo13)
             ((bvvar ymm10_HHHHo12) -
              (bvvar zeta47c) * (bvvar ymm3_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLLo13)
             ((bvvar ymm4_LLLLo12) +
              (bvvar zeta480) * (bvvar ymm5_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLLo13)
             ((bvvar ymm4_LLLHo12) +
              (bvvar zeta480) * (bvvar ymm5_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLHo13)
             ((bvvar ymm4_LLLLo12) -
              (bvvar zeta480) * (bvvar ymm5_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLHo13)
             ((bvvar ymm4_LLLHo12) -
              (bvvar zeta480) * (bvvar ymm5_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHLo13)
             ((bvvar ymm4_LLHLo12) +
              (bvvar zeta484) * (bvvar ymm5_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHLo13)
             ((bvvar ymm4_LLHHo12) +
              (bvvar zeta484) * (bvvar ymm5_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHHo13)
             ((bvvar ymm4_LLHLo12) -
              (bvvar zeta484) * (bvvar ymm5_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHHo13)
             ((bvvar ymm4_LLHHo12) -
              (bvvar zeta484) * (bvvar ymm5_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLLo13)
             ((bvvar ymm4_LHLLo12) +
              (bvvar zeta488) * (bvvar ymm5_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLLo13)
             ((bvvar ymm4_LHLHo12) +
              (bvvar zeta488) * (bvvar ymm5_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLHo13)
             ((bvvar ymm4_LHLLo12) -
              (bvvar zeta488) * (bvvar ymm5_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLHo13)
             ((bvvar ymm4_LHLHo12) -
              (bvvar zeta488) * (bvvar ymm5_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHLo13)
             ((bvvar ymm4_LHHLo12) +
              (bvvar zeta48c) * (bvvar ymm5_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHLo13)
             ((bvvar ymm4_LHHHo12) +
              (bvvar zeta48c) * (bvvar ymm5_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHHo13)
             ((bvvar ymm4_LHHLo12) -
              (bvvar zeta48c) * (bvvar ymm5_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHHo13)
             ((bvvar ymm4_LHHHo12) -
              (bvvar zeta48c) * (bvvar ymm5_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLLo13)
             ((bvvar ymm4_HLLLo12) +
              (bvvar zeta490) * (bvvar ymm5_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLLo13)
             ((bvvar ymm4_HLLHo12) +
              (bvvar zeta490) * (bvvar ymm5_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLHo13)
             ((bvvar ymm4_HLLLo12) -
              (bvvar zeta490) * (bvvar ymm5_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLHo13)
             ((bvvar ymm4_HLLHo12) -
              (bvvar zeta490) * (bvvar ymm5_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHLo13)
             ((bvvar ymm4_HLHLo12) +
              (bvvar zeta494) * (bvvar ymm5_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHLo13)
             ((bvvar ymm4_HLHHo12) +
              (bvvar zeta494) * (bvvar ymm5_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHHo13)
             ((bvvar ymm4_HLHLo12) -
              (bvvar zeta494) * (bvvar ymm5_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHHo13)
             ((bvvar ymm4_HLHHo12) -
              (bvvar zeta494) * (bvvar ymm5_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLLo13)
             ((bvvar ymm4_HHLLo12) +
              (bvvar zeta498) * (bvvar ymm5_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLLo13)
             ((bvvar ymm4_HHLHo12) +
              (bvvar zeta498) * (bvvar ymm5_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLHo13)
             ((bvvar ymm4_HHLLo12) -
              (bvvar zeta498) * (bvvar ymm5_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLHo13)
             ((bvvar ymm4_HHLHo12) -
              (bvvar zeta498) * (bvvar ymm5_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHLo13)
             ((bvvar ymm4_HHHLo12) +
              (bvvar zeta49c) * (bvvar ymm5_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHLo13)
             ((bvvar ymm4_HHHHo12) +
              (bvvar zeta49c) * (bvvar ymm5_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHHo13)
             ((bvvar ymm4_HHHLo12) -
              (bvvar zeta49c) * (bvvar ymm5_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHHo13)
             ((bvvar ymm4_HHHHo12) -
              (bvvar zeta49c) * (bvvar ymm5_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLLo13)
             ((bvvar ymm6_LLLLo12) +
              (bvvar zeta4a0) * (bvvar ymm7_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLLo13)
             ((bvvar ymm6_LLLHo12) +
              (bvvar zeta4a0) * (bvvar ymm7_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLHo13)
             ((bvvar ymm6_LLLLo12) -
              (bvvar zeta4a0) * (bvvar ymm7_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLHo13)
             ((bvvar ymm6_LLLHo12) -
              (bvvar zeta4a0) * (bvvar ymm7_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHLo13)
             ((bvvar ymm6_LLHLo12) +
              (bvvar zeta4a4) * (bvvar ymm7_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHLo13)
             ((bvvar ymm6_LLHHo12) +
              (bvvar zeta4a4) * (bvvar ymm7_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHHo13)
             ((bvvar ymm6_LLHLo12) -
              (bvvar zeta4a4) * (bvvar ymm7_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHHo13)
             ((bvvar ymm6_LLHHo12) -
              (bvvar zeta4a4) * (bvvar ymm7_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLLo13)
             ((bvvar ymm6_LHLLo12) +
              (bvvar zeta4a8) * (bvvar ymm7_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLLo13)
             ((bvvar ymm6_LHLHo12) +
              (bvvar zeta4a8) * (bvvar ymm7_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLHo13)
             ((bvvar ymm6_LHLLo12) -
              (bvvar zeta4a8) * (bvvar ymm7_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLHo13)
             ((bvvar ymm6_LHLHo12) -
              (bvvar zeta4a8) * (bvvar ymm7_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHLo13)
             ((bvvar ymm6_LHHLo12) +
              (bvvar zeta4ac) * (bvvar ymm7_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHLo13)
             ((bvvar ymm6_LHHHo12) +
              (bvvar zeta4ac) * (bvvar ymm7_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHHo13)
             ((bvvar ymm6_LHHLo12) -
              (bvvar zeta4ac) * (bvvar ymm7_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHHo13)
             ((bvvar ymm6_LHHHo12) -
              (bvvar zeta4ac) * (bvvar ymm7_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLLo13)
             ((bvvar ymm6_HLLLo12) +
              (bvvar zeta4b0) * (bvvar ymm7_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLLo13)
             ((bvvar ymm6_HLLHo12) +
              (bvvar zeta4b0) * (bvvar ymm7_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLHo13)
             ((bvvar ymm6_HLLLo12) -
              (bvvar zeta4b0) * (bvvar ymm7_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLHo13)
             ((bvvar ymm6_HLLHo12) -
              (bvvar zeta4b0) * (bvvar ymm7_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHLo13)
             ((bvvar ymm6_HLHLo12) +
              (bvvar zeta4b4) * (bvvar ymm7_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHLo13)
             ((bvvar ymm6_HLHHo12) +
              (bvvar zeta4b4) * (bvvar ymm7_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHHo13)
             ((bvvar ymm6_HLHLo12) -
              (bvvar zeta4b4) * (bvvar ymm7_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHHo13)
             ((bvvar ymm6_HLHHo12) -
              (bvvar zeta4b4) * (bvvar ymm7_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLLo13)
             ((bvvar ymm6_HHLLo12) +
              (bvvar zeta4b8) * (bvvar ymm7_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLLo13)
             ((bvvar ymm6_HHLHo12) +
              (bvvar zeta4b8) * (bvvar ymm7_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLHo13)
             ((bvvar ymm6_HHLLo12) -
              (bvvar zeta4b8) * (bvvar ymm7_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLHo13)
             ((bvvar ymm6_HHLHo12) -
              (bvvar zeta4b8) * (bvvar ymm7_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHLo13)
             ((bvvar ymm6_HHHLo12) +
              (bvvar zeta4bc) * (bvvar ymm7_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHLo13)
             ((bvvar ymm6_HHHHo12) +
              (bvvar zeta4bc) * (bvvar ymm7_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHHo13)
             ((bvvar ymm6_HHHLo12) -
              (bvvar zeta4bc) * (bvvar ymm7_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHHo13)
             ((bvvar ymm6_HHHHo12) -
              (bvvar zeta4bc) * (bvvar ymm7_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLLo13)
             ((bvvar ymm8_LLLLo12) +
              (bvvar zeta4c0) * (bvvar ymm9_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLLo13)
             ((bvvar ymm8_LLLHo12) +
              (bvvar zeta4c0) * (bvvar ymm9_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLHo13)
             ((bvvar ymm8_LLLLo12) -
              (bvvar zeta4c0) * (bvvar ymm9_LLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLHo13)
             ((bvvar ymm8_LLLHo12) -
              (bvvar zeta4c0) * (bvvar ymm9_LLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHLo13)
             ((bvvar ymm8_LLHLo12) +
              (bvvar zeta4c4) * (bvvar ymm9_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHLo13)
             ((bvvar ymm8_LLHHo12) +
              (bvvar zeta4c4) * (bvvar ymm9_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHHo13)
             ((bvvar ymm8_LLHLo12) -
              (bvvar zeta4c4) * (bvvar ymm9_LLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHHo13)
             ((bvvar ymm8_LLHHo12) -
              (bvvar zeta4c4) * (bvvar ymm9_LLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLLo13)
             ((bvvar ymm8_LHLLo12) +
              (bvvar zeta4c8) * (bvvar ymm9_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLLo13)
             ((bvvar ymm8_LHLHo12) +
              (bvvar zeta4c8) * (bvvar ymm9_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLHo13)
             ((bvvar ymm8_LHLLo12) -
              (bvvar zeta4c8) * (bvvar ymm9_LHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLHo13)
             ((bvvar ymm8_LHLHo12) -
              (bvvar zeta4c8) * (bvvar ymm9_LHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHLo13)
             ((bvvar ymm8_LHHLo12) +
              (bvvar zeta4cc) * (bvvar ymm9_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHLo13)
             ((bvvar ymm8_LHHHo12) +
              (bvvar zeta4cc) * (bvvar ymm9_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHHo13)
             ((bvvar ymm8_LHHLo12) -
              (bvvar zeta4cc) * (bvvar ymm9_LHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHHo13)
             ((bvvar ymm8_LHHHo12) -
              (bvvar zeta4cc) * (bvvar ymm9_LHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLLo13)
             ((bvvar ymm8_HLLLo12) +
              (bvvar zeta4d0) * (bvvar ymm9_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLLo13)
             ((bvvar ymm8_HLLHo12) +
              (bvvar zeta4d0) * (bvvar ymm9_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLHo13)
             ((bvvar ymm8_HLLLo12) -
              (bvvar zeta4d0) * (bvvar ymm9_HLLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLHo13)
             ((bvvar ymm8_HLLHo12) -
              (bvvar zeta4d0) * (bvvar ymm9_HLLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHLo13)
             ((bvvar ymm8_HLHLo12) +
              (bvvar zeta4d4) * (bvvar ymm9_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHLo13)
             ((bvvar ymm8_HLHHo12) +
              (bvvar zeta4d4) * (bvvar ymm9_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHHo13)
             ((bvvar ymm8_HLHLo12) -
              (bvvar zeta4d4) * (bvvar ymm9_HLHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHHo13)
             ((bvvar ymm8_HLHHo12) -
              (bvvar zeta4d4) * (bvvar ymm9_HLHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLLo13)
             ((bvvar ymm8_HHLLo12) +
              (bvvar zeta4d8) * (bvvar ymm9_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLLo13)
             ((bvvar ymm8_HHLHo12) +
              (bvvar zeta4d8) * (bvvar ymm9_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLHo13)
             ((bvvar ymm8_HHLLo12) -
              (bvvar zeta4d8) * (bvvar ymm9_HHLLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLHo13)
             ((bvvar ymm8_HHLHo12) -
              (bvvar zeta4d8) * (bvvar ymm9_HHLHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHLo13)
             ((bvvar ymm8_HHHLo12) +
              (bvvar zeta4dc) * (bvvar ymm9_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHLo13)
             ((bvvar ymm8_HHHHo12) +
              (bvvar zeta4dc) * (bvvar ymm9_HHHHo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHHo13)
             ((bvvar ymm8_HHHLo12) -
              (bvvar zeta4dc) * (bvvar ymm9_HHHLo12) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHHo13)
             ((bvvar ymm8_HHHHo12) -
              (bvvar zeta4dc) * (bvvar ymm9_HHHHo12) * (bvconst 900))
             (bvvar q)
    ]
|
  bvTrue
}