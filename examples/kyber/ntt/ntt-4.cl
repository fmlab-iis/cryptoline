proc main (ymm4_LLLL, ymm4_LLLH, ymm4_LLHL, ymm4_LLHH,
           ymm4_LHLL, ymm4_LHLH, ymm4_LHHL, ymm4_LHHH, 
           ymm4_HLLL, ymm4_HLLH, ymm4_HLHL, ymm4_HLHH,
           ymm4_HHLL, ymm4_HHLH, ymm4_HHHL, ymm4_HHHH, 
           ymm5_LLLL, ymm5_LLLH, ymm5_LLHL, ymm5_LLHH,
           ymm5_LHLL, ymm5_LHLH, ymm5_LHHL, ymm5_LHHH, 
           ymm5_HLLL, ymm5_HLLH, ymm5_HLHL, ymm5_HLHH,
           ymm5_HHLL, ymm5_HHLH, ymm5_HHHL, ymm5_HHHH, 
           ymm6_LLLL, ymm6_LLLH, ymm6_LLHL, ymm6_LLHH,
           ymm6_LHLL, ymm6_LHLH, ymm6_LHHL, ymm6_LHHH, 
           ymm6_HLLL, ymm6_HLLH, ymm6_HLHL, ymm6_HLHH,
           ymm6_HHLL, ymm6_HHLH, ymm6_HHHL, ymm6_HHHH, 
           ymm7_LLLL, ymm7_LLLH, ymm7_LLHL, ymm7_LLHH,
           ymm7_LHLL, ymm7_LHLH, ymm7_LHHL, ymm7_LHHH, 
           ymm7_HLLL, ymm7_HLLH, ymm7_HLHL, ymm7_HLHH,
           ymm7_HHLL, ymm7_HHLH, ymm7_HHHL, ymm7_HHHH, 
           ymm8_LLLL, ymm8_LLLH, ymm8_LLHL, ymm8_LLHH,
           ymm8_LHLL, ymm8_LHLH, ymm8_LHHL, ymm8_LHHH, 
           ymm8_HLLL, ymm8_HLLH, ymm8_HLHL, ymm8_HLHH,
           ymm8_HHLL, ymm8_HHLH, ymm8_HHHL, ymm8_HHHH, 
           ymm9_LLLL, ymm9_LLLH, ymm9_LLHL, ymm9_LLHH,
           ymm9_LHLL, ymm9_LHLH, ymm9_LHHL, ymm9_LHHH, 
           ymm9_HLLL, ymm9_HLLH, ymm9_HLHL, ymm9_HLHH,
           ymm9_HHLL, ymm9_HHLH, ymm9_HHHL, ymm9_HHHH, 
           ymm10_LLLL, ymm10_LLLH, ymm10_LLHL, ymm10_LLHH,
           ymm10_LHLL, ymm10_LHLH, ymm10_LHHL, ymm10_LHHH, 
           ymm10_HLLL, ymm10_HLLH, ymm10_HLHL, ymm10_HLHH,
           ymm10_HHLL, ymm10_HHLH, ymm10_HHHL, ymm10_HHHH, 
           ymm11_LLLL, ymm11_LLLH, ymm11_LLHL, ymm11_LLHH,
           ymm11_LHLL, ymm11_LHLH, ymm11_LHHL, ymm11_LHHH, 
           ymm11_HLLL, ymm11_HLLH, ymm11_HLHL, ymm11_HLHH,
           ymm11_HHLL, ymm11_HHLH, ymm11_HHHL, ymm11_HHHH) =

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

(* # save old-3 *)

bvGhost ymm4_LLLLo3, ymm4_LLLHo3, ymm4_LLHLo3, ymm4_LLHHo3, ymm4_LHLLo3,
        ymm4_LHLHo3, ymm4_LHHLo3, ymm4_LHHHo3, ymm4_HLLLo3, ymm4_HLLHo3,
        ymm4_HLHLo3, ymm4_HLHHo3, ymm4_HHLLo3, ymm4_HHLHo3, ymm4_HHHLo3,
        ymm4_HHHHo3,
        ymm5_LLLLo3, ymm5_LLLHo3, ymm5_LLHLo3, ymm5_LLHHo3, ymm5_LHLLo3,
        ymm5_LHLHo3, ymm5_LHHLo3, ymm5_LHHHo3, ymm5_HLLLo3, ymm5_HLLHo3,
        ymm5_HLHLo3, ymm5_HLHHo3, ymm5_HHLLo3, ymm5_HHLHo3, ymm5_HHHLo3,
        ymm5_HHHHo3,
        ymm6_LLLLo3, ymm6_LLLHo3, ymm6_LLHLo3, ymm6_LLHHo3, ymm6_LHLLo3,
        ymm6_LHLHo3, ymm6_LHHLo3, ymm6_LHHHo3, ymm6_HLLLo3, ymm6_HLLHo3,
        ymm6_HLHLo3, ymm6_HLHHo3, ymm6_HHLLo3, ymm6_HHLHo3, ymm6_HHHLo3,
        ymm6_HHHHo3,
        ymm7_LLLLo3, ymm7_LLLHo3, ymm7_LLHLo3, ymm7_LLHHo3, ymm7_LHLLo3,
        ymm7_LHLHo3, ymm7_LHHLo3, ymm7_LHHHo3, ymm7_HLLLo3, ymm7_HLLHo3,
        ymm7_HLHLo3, ymm7_HLHHo3, ymm7_HHLLo3, ymm7_HHLHo3, ymm7_HHHLo3,
        ymm7_HHHHo3,
        ymm8_LLLLo3, ymm8_LLLHo3, ymm8_LLHLo3, ymm8_LLHHo3, ymm8_LHLLo3,
        ymm8_LHLHo3, ymm8_LHHLo3, ymm8_LHHHo3, ymm8_HLLLo3, ymm8_HLLHo3,
        ymm8_HLHLo3, ymm8_HLHHo3, ymm8_HHLLo3, ymm8_HHLHo3, ymm8_HHHLo3,
        ymm8_HHHHo3,
        ymm9_LLLLo3, ymm9_LLLHo3, ymm9_LLHLo3, ymm9_LLHHo3, ymm9_LHLLo3,
        ymm9_LHLHo3, ymm9_LHHLo3, ymm9_LHHHo3, ymm9_HLLLo3, ymm9_HLLHo3,
        ymm9_HLHLo3, ymm9_HLHHo3, ymm9_HHLLo3, ymm9_HHLHo3, ymm9_HHHLo3,
        ymm9_HHHHo3,
        ymm10_LLLLo3, ymm10_LLLHo3, ymm10_LLHLo3, ymm10_LLHHo3, ymm10_LHLLo3,
        ymm10_LHLHo3, ymm10_LHHLo3, ymm10_LHHHo3, ymm10_HLLLo3, ymm10_HLLHo3,
        ymm10_HLHLo3, ymm10_HLHHo3, ymm10_HHLLo3, ymm10_HHLHo3, ymm10_HHHLo3,
        ymm10_HHHHo3,
        ymm11_LLLLo3, ymm11_LLLHo3, ymm11_LLHLo3, ymm11_LLHHo3, ymm11_LHLLo3,
        ymm11_LHLHo3, ymm11_LHHLo3, ymm11_LHHHo3, ymm11_HLLLo3, ymm11_HLLHo3,
        ymm11_HLHLo3, ymm11_HLHHo3, ymm11_HHLLo3, ymm11_HHLHo3, ymm11_HHHLo3,
        ymm11_HHHHo3 :
  bveands [bveEq (bvvar ymm4_LLLLo3) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo3) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo3) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo3) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo3) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo3) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo3) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo3) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo3) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo3) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo3) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo3) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo3) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo3) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo3) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo3) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo3) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo3) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo3) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo3) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo3) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo3) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo3) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo3) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo3) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo3) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo3) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo3) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo3) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo3) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo3) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo3) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo3) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo3) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo3) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo3) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo3) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo3) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo3) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo3) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo3) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo3) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo3) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo3) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo3) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo3) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo3) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo3) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo3) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo3) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo3) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo3) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo3) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo3) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo3) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo3) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo3) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo3) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo3) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo3) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo3) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo3) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo3) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo3) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo3) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo3) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo3) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo3) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo3) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo3) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo3) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo3) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo3) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo3) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo3) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo3) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo3) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo3) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo3) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo3) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo3) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo3) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo3) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo3) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo3) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo3) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo3) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo3) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo3) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo3) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo3) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo3) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo3) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo3) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo3) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo3) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo3) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo3) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo3) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo3) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo3) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo3) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo3) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo3) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo3) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo3) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo3) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo3) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo3) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo3) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo3) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo3) (bvvar ymm10_HHHH),
           bveEq (bvvar ymm11_LLLLo3) (bvvar ymm11_LLLL),
           bveEq (bvvar ymm11_LLLHo3) (bvvar ymm11_LLLH),
           bveEq (bvvar ymm11_LLHLo3) (bvvar ymm11_LLHL),
           bveEq (bvvar ymm11_LLHHo3) (bvvar ymm11_LLHH),
           bveEq (bvvar ymm11_LHLLo3) (bvvar ymm11_LHLL),
           bveEq (bvvar ymm11_LHLHo3) (bvvar ymm11_LHLH),
           bveEq (bvvar ymm11_LHHLo3) (bvvar ymm11_LHHL),
           bveEq (bvvar ymm11_LHHHo3) (bvvar ymm11_LHHH),
           bveEq (bvvar ymm11_HLLLo3) (bvvar ymm11_HLLL),
           bveEq (bvvar ymm11_HLLHo3) (bvvar ymm11_HLLH),
           bveEq (bvvar ymm11_HLHLo3) (bvvar ymm11_HLHL),
           bveEq (bvvar ymm11_HLHHo3) (bvvar ymm11_HLHH),
           bveEq (bvvar ymm11_HHLLo3) (bvvar ymm11_HHLL),
           bveEq (bvvar ymm11_HHLHo3) (bvvar ymm11_HHLH),
           bveEq (bvvar ymm11_HHHLo3) (bvvar ymm11_HHHL),
           bveEq (bvvar ymm11_HHHHo3) (bvvar ymm11_HHHH)]
  |
    bvTrue;

(* vmovdqa 0x1e0(%rsi),%ymm12                      #! EA = L0x435d00 *)
bvAssign ymm12_LLLL (bvVar zeta1e0);
bvAssign ymm12_LLLH (bvVar zeta1e0);
bvAssign ymm12_LLHL (bvVar zeta1e0);
bvAssign ymm12_LLHH (bvVar zeta1e0);
bvAssign ymm12_LHLL (bvVar zeta1e0);
bvAssign ymm12_LHLH (bvVar zeta1e0);
bvAssign ymm12_LHHL (bvVar zeta1e0);
bvAssign ymm12_LHHH (bvVar zeta1e0);
bvAssign ymm12_HLLL (bvVar zeta1f0);
bvAssign ymm12_HLLH (bvVar zeta1f0);
bvAssign ymm12_HLHL (bvVar zeta1f0);
bvAssign ymm12_HLHH (bvVar zeta1f0);
bvAssign ymm12_HHLL (bvVar zeta1f0);
bvAssign ymm12_HHLH (bvVar zeta1f0);
bvAssign ymm12_HHHL (bvVar zeta1f0);
bvAssign ymm12_HHHH (bvVar zeta1f0);
(* vmovdqa 0x200(%rsi),%ymm13                      #! EA = L0x435d20 *)
bvAssign ymm13_LLLL (bvVar zeta200);
bvAssign ymm13_LLLH (bvVar zeta200);
bvAssign ymm13_LLHL (bvVar zeta200);
bvAssign ymm13_LLHH (bvVar zeta200);
bvAssign ymm13_LHLL (bvVar zeta200);
bvAssign ymm13_LHLH (bvVar zeta200);
bvAssign ymm13_LHHL (bvVar zeta200);
bvAssign ymm13_LHHH (bvVar zeta200);
bvAssign ymm13_HLLL (bvVar zeta210);
bvAssign ymm13_HLLH (bvVar zeta210);
bvAssign ymm13_HLHL (bvVar zeta210);
bvAssign ymm13_HLHH (bvVar zeta210);
bvAssign ymm13_HHLL (bvVar zeta210);
bvAssign ymm13_HHLH (bvVar zeta210);
bvAssign ymm13_HHHL (bvVar zeta210);
bvAssign ymm13_HHHH (bvVar zeta210);
(* vmovdqa 0x220(%rsi),%ymm14                      #! EA = L0x435d40 *)
bvAssign ymm14_LLLL (bvVar zeta220);
bvAssign ymm14_LLLH (bvVar zeta220);
bvAssign ymm14_LLHL (bvVar zeta220);
bvAssign ymm14_LLHH (bvVar zeta220);
bvAssign ymm14_LHLL (bvVar zeta220);
bvAssign ymm14_LHLH (bvVar zeta220);
bvAssign ymm14_LHHL (bvVar zeta220);
bvAssign ymm14_LHHH (bvVar zeta220);
bvAssign ymm14_HLLL (bvVar zeta230);
bvAssign ymm14_HLLH (bvVar zeta230);
bvAssign ymm14_HLHL (bvVar zeta230);
bvAssign ymm14_HLHH (bvVar zeta230);
bvAssign ymm14_HHLL (bvVar zeta230);
bvAssign ymm14_HHLH (bvVar zeta230);
bvAssign ymm14_HHHL (bvVar zeta230);
bvAssign ymm14_HHHH (bvVar zeta230);
(* vmovdqa 0x240(%rsi),%ymm15                      #! EA = L0x435d60 *)
bvAssign ymm15_LLLL (bvVar zeta240);
bvAssign ymm15_LLLH (bvVar zeta240);
bvAssign ymm15_LLHL (bvVar zeta240);
bvAssign ymm15_LLHH (bvVar zeta240);
bvAssign ymm15_LHLL (bvVar zeta240);
bvAssign ymm15_LHLH (bvVar zeta240);
bvAssign ymm15_LHHL (bvVar zeta240);
bvAssign ymm15_LHHH (bvVar zeta240);
bvAssign ymm15_HLLL (bvVar zeta250);
bvAssign ymm15_HLLH (bvVar zeta250);
bvAssign ymm15_HLHL (bvVar zeta250);
bvAssign ymm15_HLHH (bvVar zeta250);
bvAssign ymm15_HHLL (bvVar zeta250);
bvAssign ymm15_HHLH (bvVar zeta250);
bvAssign ymm15_HHHL (bvVar zeta250);
bvAssign ymm15_HHHH (bvVar zeta250);
(* vperm2i128 $0x2,%ymm4,%ymm5,%ymm3 *)
bvAssign ymm3_LLLL (bvVar ymm4_LLLL);
bvAssign ymm3_LLLH (bvVar ymm4_LLLH);
bvAssign ymm3_LLHL (bvVar ymm4_LLHL);
bvAssign ymm3_LLHH (bvVar ymm4_LLHH);
bvAssign ymm3_LHLL (bvVar ymm4_LHLL);
bvAssign ymm3_LHLH (bvVar ymm4_LHLH);
bvAssign ymm3_LHHL (bvVar ymm4_LHHL);
bvAssign ymm3_LHHH (bvVar ymm4_LHHH);
bvAssign ymm3_HLLL (bvVar ymm5_LLLL);
bvAssign ymm3_HLLH (bvVar ymm5_LLLH);
bvAssign ymm3_HLHL (bvVar ymm5_LLHL);
bvAssign ymm3_HLHH (bvVar ymm5_LLHH);
bvAssign ymm3_HHLL (bvVar ymm5_LHLL);
bvAssign ymm3_HHLH (bvVar ymm5_LHLH);
bvAssign ymm3_HHHL (bvVar ymm5_LHHL);
bvAssign ymm3_HHHH (bvVar ymm5_LHHH);
(* vperm2i128 $0x13,%ymm4,%ymm5,%ymm4 *)
bvAssign ymm4_LLLL (bvVar ymm4_HLLL);
bvAssign ymm4_LLLH (bvVar ymm4_HLLH);
bvAssign ymm4_LLHL (bvVar ymm4_HLHL);
bvAssign ymm4_LLHH (bvVar ymm4_HLHH);
bvAssign ymm4_LHLL (bvVar ymm4_HHLL);
bvAssign ymm4_LHLH (bvVar ymm4_HHLH);
bvAssign ymm4_LHHL (bvVar ymm4_HHHL);
bvAssign ymm4_LHHH (bvVar ymm4_HHHH);
bvAssign ymm4_HLLL (bvVar ymm5_HLLL);
bvAssign ymm4_HLLH (bvVar ymm5_HLLH);
bvAssign ymm4_HLHL (bvVar ymm5_HLHL);
bvAssign ymm4_HLHH (bvVar ymm5_HLHH);
bvAssign ymm4_HHLL (bvVar ymm5_HHLL);
bvAssign ymm4_HHLH (bvVar ymm5_HHLH);
bvAssign ymm4_HHHL (bvVar ymm5_HHHL);
bvAssign ymm4_HHHH (bvVar ymm5_HHHH);
(* vperm2i128 $0x2,%ymm6,%ymm7,%ymm5 *)
bvAssign ymm5_LLLL (bvVar ymm6_LLLL);
bvAssign ymm5_LLLH (bvVar ymm6_LLLH);
bvAssign ymm5_LLHL (bvVar ymm6_LLHL);
bvAssign ymm5_LLHH (bvVar ymm6_LLHH);
bvAssign ymm5_LHLL (bvVar ymm6_LHLL);
bvAssign ymm5_LHLH (bvVar ymm6_LHLH);
bvAssign ymm5_LHHL (bvVar ymm6_LHHL);
bvAssign ymm5_LHHH (bvVar ymm6_LHHH);
bvAssign ymm5_HLLL (bvVar ymm7_LLLL);
bvAssign ymm5_HLLH (bvVar ymm7_LLLH);
bvAssign ymm5_HLHL (bvVar ymm7_LLHL);
bvAssign ymm5_HLHH (bvVar ymm7_LLHH);
bvAssign ymm5_HHLL (bvVar ymm7_LHLL);
bvAssign ymm5_HHLH (bvVar ymm7_LHLH);
bvAssign ymm5_HHHL (bvVar ymm7_LHHL);
bvAssign ymm5_HHHH (bvVar ymm7_LHHH);
(* vperm2i128 $0x13,%ymm6,%ymm7,%ymm6 *)
bvAssign ymm6_LLLL (bvVar ymm6_HLLL);
bvAssign ymm6_LLLH (bvVar ymm6_HLLH);
bvAssign ymm6_LLHL (bvVar ymm6_HLHL);
bvAssign ymm6_LLHH (bvVar ymm6_HLHH);
bvAssign ymm6_LHLL (bvVar ymm6_HHLL);
bvAssign ymm6_LHLH (bvVar ymm6_HHLH);
bvAssign ymm6_LHHL (bvVar ymm6_HHHL);
bvAssign ymm6_LHHH (bvVar ymm6_HHHH);
bvAssign ymm6_HLLL (bvVar ymm7_HLLL);
bvAssign ymm6_HLLH (bvVar ymm7_HLLH);
bvAssign ymm6_HLHL (bvVar ymm7_HLHL);
bvAssign ymm6_HLHH (bvVar ymm7_HLHH);
bvAssign ymm6_HHLL (bvVar ymm7_HHLL);
bvAssign ymm6_HHLH (bvVar ymm7_HHLH);
bvAssign ymm6_HHHL (bvVar ymm7_HHHL);
bvAssign ymm6_HHHH (bvVar ymm7_HHHH);
(* vperm2i128 $0x2,%ymm8,%ymm9,%ymm7 *)
bvAssign ymm7_LLLL (bvVar ymm8_LLLL);
bvAssign ymm7_LLLH (bvVar ymm8_LLLH);
bvAssign ymm7_LLHL (bvVar ymm8_LLHL);
bvAssign ymm7_LLHH (bvVar ymm8_LLHH);
bvAssign ymm7_LHLL (bvVar ymm8_LHLL);
bvAssign ymm7_LHLH (bvVar ymm8_LHLH);
bvAssign ymm7_LHHL (bvVar ymm8_LHHL);
bvAssign ymm7_LHHH (bvVar ymm8_LHHH);
bvAssign ymm7_HLLL (bvVar ymm9_LLLL);
bvAssign ymm7_HLLH (bvVar ymm9_LLLH);
bvAssign ymm7_HLHL (bvVar ymm9_LLHL);
bvAssign ymm7_HLHH (bvVar ymm9_LLHH);
bvAssign ymm7_HHLL (bvVar ymm9_LHLL);
bvAssign ymm7_HHLH (bvVar ymm9_LHLH);
bvAssign ymm7_HHHL (bvVar ymm9_LHHL);
bvAssign ymm7_HHHH (bvVar ymm9_LHHH);
(* vperm2i128 $0x13,%ymm8,%ymm9,%ymm8 *)
bvAssign ymm8_LLLL (bvVar ymm8_HLLL);
bvAssign ymm8_LLLH (bvVar ymm8_HLLH);
bvAssign ymm8_LLHL (bvVar ymm8_HLHL);
bvAssign ymm8_LLHH (bvVar ymm8_HLHH);
bvAssign ymm8_LHLL (bvVar ymm8_HHLL);
bvAssign ymm8_LHLH (bvVar ymm8_HHLH);
bvAssign ymm8_LHHL (bvVar ymm8_HHHL);
bvAssign ymm8_LHHH (bvVar ymm8_HHHH);
bvAssign ymm8_HLLL (bvVar ymm9_HLLL);
bvAssign ymm8_HLLH (bvVar ymm9_HLLH);
bvAssign ymm8_HLHL (bvVar ymm9_HLHL);
bvAssign ymm8_HLHH (bvVar ymm9_HLHH);
bvAssign ymm8_HHLL (bvVar ymm9_HHLL);
bvAssign ymm8_HHLH (bvVar ymm9_HHLH);
bvAssign ymm8_HHHL (bvVar ymm9_HHHL);
bvAssign ymm8_HHHH (bvVar ymm9_HHHH);
(* vperm2i128 $0x2,%ymm10,%ymm11,%ymm9 *)
bvAssign ymm9_LLLL (bvVar ymm10_LLLL);
bvAssign ymm9_LLLH (bvVar ymm10_LLLH);
bvAssign ymm9_LLHL (bvVar ymm10_LLHL);
bvAssign ymm9_LLHH (bvVar ymm10_LLHH);
bvAssign ymm9_LHLL (bvVar ymm10_LHLL);
bvAssign ymm9_LHLH (bvVar ymm10_LHLH);
bvAssign ymm9_LHHL (bvVar ymm10_LHHL);
bvAssign ymm9_LHHH (bvVar ymm10_LHHH);
bvAssign ymm9_HLLL (bvVar ymm11_LLLL);
bvAssign ymm9_HLLH (bvVar ymm11_LLLH);
bvAssign ymm9_HLHL (bvVar ymm11_LLHL);
bvAssign ymm9_HLHH (bvVar ymm11_LLHH);
bvAssign ymm9_HHLL (bvVar ymm11_LHLL);
bvAssign ymm9_HHLH (bvVar ymm11_LHLH);
bvAssign ymm9_HHHL (bvVar ymm11_LHHL);
bvAssign ymm9_HHHH (bvVar ymm11_LHHH);
(* vperm2i128 $0x13,%ymm10,%ymm11,%ymm10 *)
bvAssign ymm10_LLLL (bvVar ymm10_HLLL);
bvAssign ymm10_LLLH (bvVar ymm10_HLLH);
bvAssign ymm10_LLHL (bvVar ymm10_HLHL);
bvAssign ymm10_LLHH (bvVar ymm10_HLHH);
bvAssign ymm10_LHLL (bvVar ymm10_HHLL);
bvAssign ymm10_LHLH (bvVar ymm10_HHLH);
bvAssign ymm10_LHHL (bvVar ymm10_HHHL);
bvAssign ymm10_LHHH (bvVar ymm10_HHHH);
bvAssign ymm10_HLLL (bvVar ymm11_HLLL);
bvAssign ymm10_HLLH (bvVar ymm11_HLLH);
bvAssign ymm10_HLHL (bvVar ymm11_HLHL);
bvAssign ymm10_HLHH (bvVar ymm11_HLHH);
bvAssign ymm10_HHLL (bvVar ymm11_HHLL);
bvAssign ymm10_HHLH (bvVar ymm11_HHLH);
bvAssign ymm10_HHHL (bvVar ymm11_HHHL);
bvAssign ymm10_HHHH (bvVar ymm11_HHHH);
(* vpmullw %ymm12,%ymm4,%ymm11 *)
bvSmulf ymm4_LLLL ymm11_LLLL (bvVar ymm12_LLLL) (bvVar ymm4_LLLL);
bvSmulf ymm4_LLLH ymm11_LLLH (bvVar ymm12_LLLH) (bvVar ymm4_LLLH);
bvSmulf ymm4_LLHL ymm11_LLHL (bvVar ymm12_LLHL) (bvVar ymm4_LLHL);
bvSmulf ymm4_LLHH ymm11_LLHH (bvVar ymm12_LLHH) (bvVar ymm4_LLHH);
bvSmulf ymm4_LHLL ymm11_LHLL (bvVar ymm12_LHLL) (bvVar ymm4_LHLL);
bvSmulf ymm4_LHLH ymm11_LHLH (bvVar ymm12_LHLH) (bvVar ymm4_LHLH);
bvSmulf ymm4_LHHL ymm11_LHHL (bvVar ymm12_LHHL) (bvVar ymm4_LHHL);
bvSmulf ymm4_LHHH ymm11_LHHH (bvVar ymm12_LHHH) (bvVar ymm4_LHHH);
bvSmulf ymm4_HLLL ymm11_HLLL (bvVar ymm12_HLLL) (bvVar ymm4_HLLL);
bvSmulf ymm4_HLLH ymm11_HLLH (bvVar ymm12_HLLH) (bvVar ymm4_HLLH);
bvSmulf ymm4_HLHL ymm11_HLHL (bvVar ymm12_HLHL) (bvVar ymm4_HLHL);
bvSmulf ymm4_HLHH ymm11_HLHH (bvVar ymm12_HLHH) (bvVar ymm4_HLHH);
bvSmulf ymm4_HHLL ymm11_HHLL (bvVar ymm12_HHLL) (bvVar ymm4_HHLL);
bvSmulf ymm4_HHLH ymm11_HHLH (bvVar ymm12_HHLH) (bvVar ymm4_HHLH);
bvSmulf ymm4_HHHL ymm11_HHHL (bvVar ymm12_HHHL) (bvVar ymm4_HHHL);
bvSmulf ymm4_HHHH ymm11_HHHH (bvVar ymm12_HHHH) (bvVar ymm4_HHHH);
(* vpmulhw %ymm12,%ymm4,%ymm4 *)
(* merged with previous vpmullw ymm12, ymm4, ymmX *)
(* vpmullw %ymm13,%ymm6,%ymm12 *)
bvSmulf ymm6_LLLL ymm12_LLLL (bvVar ymm13_LLLL) (bvVar ymm6_LLLL);
bvSmulf ymm6_LLLH ymm12_LLLH (bvVar ymm13_LLLH) (bvVar ymm6_LLLH);
bvSmulf ymm6_LLHL ymm12_LLHL (bvVar ymm13_LLHL) (bvVar ymm6_LLHL);
bvSmulf ymm6_LLHH ymm12_LLHH (bvVar ymm13_LLHH) (bvVar ymm6_LLHH);
bvSmulf ymm6_LHLL ymm12_LHLL (bvVar ymm13_LHLL) (bvVar ymm6_LHLL);
bvSmulf ymm6_LHLH ymm12_LHLH (bvVar ymm13_LHLH) (bvVar ymm6_LHLH);
bvSmulf ymm6_LHHL ymm12_LHHL (bvVar ymm13_LHHL) (bvVar ymm6_LHHL);
bvSmulf ymm6_LHHH ymm12_LHHH (bvVar ymm13_LHHH) (bvVar ymm6_LHHH);
bvSmulf ymm6_HLLL ymm12_HLLL (bvVar ymm13_HLLL) (bvVar ymm6_HLLL);
bvSmulf ymm6_HLLH ymm12_HLLH (bvVar ymm13_HLLH) (bvVar ymm6_HLLH);
bvSmulf ymm6_HLHL ymm12_HLHL (bvVar ymm13_HLHL) (bvVar ymm6_HLHL);
bvSmulf ymm6_HLHH ymm12_HLHH (bvVar ymm13_HLHH) (bvVar ymm6_HLHH);
bvSmulf ymm6_HHLL ymm12_HHLL (bvVar ymm13_HHLL) (bvVar ymm6_HHLL);
bvSmulf ymm6_HHLH ymm12_HHLH (bvVar ymm13_HHLH) (bvVar ymm6_HHLH);
bvSmulf ymm6_HHHL ymm12_HHHL (bvVar ymm13_HHHL) (bvVar ymm6_HHHL);
bvSmulf ymm6_HHHH ymm12_HHHH (bvVar ymm13_HHHH) (bvVar ymm6_HHHH);
(* vpmulhw %ymm13,%ymm6,%ymm6 *)
(* merged with previous vpmullw ymm13, ymm6, ymmX *)
(* vpmullw %ymm14,%ymm8,%ymm13 *)
bvSmulf ymm8_LLLL ymm13_LLLL (bvVar ymm14_LLLL) (bvVar ymm8_LLLL);
bvSmulf ymm8_LLLH ymm13_LLLH (bvVar ymm14_LLLH) (bvVar ymm8_LLLH);
bvSmulf ymm8_LLHL ymm13_LLHL (bvVar ymm14_LLHL) (bvVar ymm8_LLHL);
bvSmulf ymm8_LLHH ymm13_LLHH (bvVar ymm14_LLHH) (bvVar ymm8_LLHH);
bvSmulf ymm8_LHLL ymm13_LHLL (bvVar ymm14_LHLL) (bvVar ymm8_LHLL);
bvSmulf ymm8_LHLH ymm13_LHLH (bvVar ymm14_LHLH) (bvVar ymm8_LHLH);
bvSmulf ymm8_LHHL ymm13_LHHL (bvVar ymm14_LHHL) (bvVar ymm8_LHHL);
bvSmulf ymm8_LHHH ymm13_LHHH (bvVar ymm14_LHHH) (bvVar ymm8_LHHH);
bvSmulf ymm8_HLLL ymm13_HLLL (bvVar ymm14_HLLL) (bvVar ymm8_HLLL);
bvSmulf ymm8_HLLH ymm13_HLLH (bvVar ymm14_HLLH) (bvVar ymm8_HLLH);
bvSmulf ymm8_HLHL ymm13_HLHL (bvVar ymm14_HLHL) (bvVar ymm8_HLHL);
bvSmulf ymm8_HLHH ymm13_HLHH (bvVar ymm14_HLHH) (bvVar ymm8_HLHH);
bvSmulf ymm8_HHLL ymm13_HHLL (bvVar ymm14_HHLL) (bvVar ymm8_HHLL);
bvSmulf ymm8_HHLH ymm13_HHLH (bvVar ymm14_HHLH) (bvVar ymm8_HHLH);
bvSmulf ymm8_HHHL ymm13_HHHL (bvVar ymm14_HHHL) (bvVar ymm8_HHHL);
bvSmulf ymm8_HHHH ymm13_HHHH (bvVar ymm14_HHHH) (bvVar ymm8_HHHH);
(* vpmulhw %ymm14,%ymm8,%ymm8 *)
(* merged with previous vpmullw ymm14, ymm8, ymmX *)
(* vpmullw %ymm15,%ymm10,%ymm14 *)
bvSmulf ymm10_LLLL ymm14_LLLL (bvVar ymm15_LLLL) (bvVar ymm10_LLLL);
bvSmulf ymm10_LLLH ymm14_LLLH (bvVar ymm15_LLLH) (bvVar ymm10_LLLH);
bvSmulf ymm10_LLHL ymm14_LLHL (bvVar ymm15_LLHL) (bvVar ymm10_LLHL);
bvSmulf ymm10_LLHH ymm14_LLHH (bvVar ymm15_LLHH) (bvVar ymm10_LLHH);
bvSmulf ymm10_LHLL ymm14_LHLL (bvVar ymm15_LHLL) (bvVar ymm10_LHLL);
bvSmulf ymm10_LHLH ymm14_LHLH (bvVar ymm15_LHLH) (bvVar ymm10_LHLH);
bvSmulf ymm10_LHHL ymm14_LHHL (bvVar ymm15_LHHL) (bvVar ymm10_LHHL);
bvSmulf ymm10_LHHH ymm14_LHHH (bvVar ymm15_LHHH) (bvVar ymm10_LHHH);
bvSmulf ymm10_HLLL ymm14_HLLL (bvVar ymm15_HLLL) (bvVar ymm10_HLLL);
bvSmulf ymm10_HLLH ymm14_HLLH (bvVar ymm15_HLLH) (bvVar ymm10_HLLH);
bvSmulf ymm10_HLHL ymm14_HLHL (bvVar ymm15_HLHL) (bvVar ymm10_HLHL);
bvSmulf ymm10_HLHH ymm14_HLHH (bvVar ymm15_HLHH) (bvVar ymm10_HLHH);
bvSmulf ymm10_HHLL ymm14_HHLL (bvVar ymm15_HHLL) (bvVar ymm10_HHLL);
bvSmulf ymm10_HHLH ymm14_HHLH (bvVar ymm15_HHLH) (bvVar ymm10_HHLH);
bvSmulf ymm10_HHHL ymm14_HHHL (bvVar ymm15_HHHL) (bvVar ymm10_HHHL);
bvSmulf ymm10_HHHH ymm14_HHHH (bvVar ymm15_HHHH) (bvVar ymm10_HHHH);
(* vpmulhw %ymm15,%ymm10,%ymm10 *)
(* merged with previous vpmullw ymm15, ymm10, ymmX *)
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
(* vpsubw %ymm11,%ymm4,%ymm11 *)
bvSsub ymm11_LLLL (bvVar ymm4_LLLL) (bvVar ymm11_LLLL);
bvSsub ymm11_LLLH (bvVar ymm4_LLLH) (bvVar ymm11_LLLH);
bvSsub ymm11_LLHL (bvVar ymm4_LLHL) (bvVar ymm11_LLHL);
bvSsub ymm11_LLHH (bvVar ymm4_LLHH) (bvVar ymm11_LLHH);
bvSsub ymm11_LHLL (bvVar ymm4_LHLL) (bvVar ymm11_LHLL);
bvSsub ymm11_LHLH (bvVar ymm4_LHLH) (bvVar ymm11_LHLH);
bvSsub ymm11_LHHL (bvVar ymm4_LHHL) (bvVar ymm11_LHHL);
bvSsub ymm11_LHHH (bvVar ymm4_LHHH) (bvVar ymm11_LHHH);
bvSsub ymm11_HLLL (bvVar ymm4_HLLL) (bvVar ymm11_HLLL);
bvSsub ymm11_HLLH (bvVar ymm4_HLLH) (bvVar ymm11_HLLH);
bvSsub ymm11_HLHL (bvVar ymm4_HLHL) (bvVar ymm11_HLHL);
bvSsub ymm11_HLHH (bvVar ymm4_HLHH) (bvVar ymm11_HLHH);
bvSsub ymm11_HHLL (bvVar ymm4_HHLL) (bvVar ymm11_HHLL);
bvSsub ymm11_HHLH (bvVar ymm4_HHLH) (bvVar ymm11_HHLH);
bvSsub ymm11_HHHL (bvVar ymm4_HHHL) (bvVar ymm11_HHHL);
bvSsub ymm11_HHHH (bvVar ymm4_HHHH) (bvVar ymm11_HHHH);
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
(* vpsubw %ymm13,%ymm8,%ymm13 *)
bvSsub ymm13_LLLL (bvVar ymm8_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm13_LLLH (bvVar ymm8_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm13_LLHL (bvVar ymm8_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm13_LLHH (bvVar ymm8_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm13_LHLL (bvVar ymm8_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm13_LHLH (bvVar ymm8_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm13_LHHL (bvVar ymm8_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm13_LHHH (bvVar ymm8_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm13_HLLL (bvVar ymm8_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm13_HLLH (bvVar ymm8_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm13_HLHL (bvVar ymm8_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm13_HLHH (bvVar ymm8_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm13_HHLL (bvVar ymm8_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm13_HHLH (bvVar ymm8_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm13_HHHL (bvVar ymm8_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm13_HHHH (bvVar ymm8_HHHH) (bvVar ymm13_HHHH);
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
(* # END Montgomery reduction *)
# END Montgomery reduction;
(* vpsubw %ymm11,%ymm3,%ymm4 *)
bvSsub ymm4_LLLL (bvVar ymm3_LLLL) (bvVar ymm11_LLLL);
bvSsub ymm4_LLLH (bvVar ymm3_LLLH) (bvVar ymm11_LLLH);
bvSsub ymm4_LLHL (bvVar ymm3_LLHL) (bvVar ymm11_LLHL);
bvSsub ymm4_LLHH (bvVar ymm3_LLHH) (bvVar ymm11_LLHH);
bvSsub ymm4_LHLL (bvVar ymm3_LHLL) (bvVar ymm11_LHLL);
bvSsub ymm4_LHLH (bvVar ymm3_LHLH) (bvVar ymm11_LHLH);
bvSsub ymm4_LHHL (bvVar ymm3_LHHL) (bvVar ymm11_LHHL);
bvSsub ymm4_LHHH (bvVar ymm3_LHHH) (bvVar ymm11_LHHH);
bvSsub ymm4_HLLL (bvVar ymm3_HLLL) (bvVar ymm11_HLLL);
bvSsub ymm4_HLLH (bvVar ymm3_HLLH) (bvVar ymm11_HLLH);
bvSsub ymm4_HLHL (bvVar ymm3_HLHL) (bvVar ymm11_HLHL);
bvSsub ymm4_HLHH (bvVar ymm3_HLHH) (bvVar ymm11_HLHH);
bvSsub ymm4_HHLL (bvVar ymm3_HHLL) (bvVar ymm11_HHLL);
bvSsub ymm4_HHLH (bvVar ymm3_HHLH) (bvVar ymm11_HHLH);
bvSsub ymm4_HHHL (bvVar ymm3_HHHL) (bvVar ymm11_HHHL);
bvSsub ymm4_HHHH (bvVar ymm3_HHHH) (bvVar ymm11_HHHH);
(* vpsubw %ymm12,%ymm5,%ymm6 *)
bvSsub ymm6_LLLL (bvVar ymm5_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm6_LLLH (bvVar ymm5_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm6_LLHL (bvVar ymm5_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm6_LLHH (bvVar ymm5_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm6_LHLL (bvVar ymm5_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm6_LHLH (bvVar ymm5_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm6_LHHL (bvVar ymm5_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm6_LHHH (bvVar ymm5_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm6_HLLL (bvVar ymm5_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm6_HLLH (bvVar ymm5_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm6_HLHL (bvVar ymm5_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm6_HLHH (bvVar ymm5_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm6_HHLL (bvVar ymm5_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm6_HHLH (bvVar ymm5_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm6_HHHL (bvVar ymm5_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm6_HHHH (bvVar ymm5_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm7,%ymm8 *)
bvSsub ymm8_LLLL (bvVar ymm7_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm8_LLLH (bvVar ymm7_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm8_LLHL (bvVar ymm7_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm8_LLHH (bvVar ymm7_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm8_LHLL (bvVar ymm7_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm8_LHLH (bvVar ymm7_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm8_LHHL (bvVar ymm7_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm8_LHHH (bvVar ymm7_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm8_HLLL (bvVar ymm7_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm8_HLLH (bvVar ymm7_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm8_HLHL (bvVar ymm7_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm8_HLHH (bvVar ymm7_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm8_HHLL (bvVar ymm7_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm8_HHLH (bvVar ymm7_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm8_HHHL (bvVar ymm7_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm8_HHHH (bvVar ymm7_HHHH) (bvVar ymm13_HHHH);
(* vpsubw %ymm14,%ymm9,%ymm10 *)
bvSsub ymm10_LLLL (bvVar ymm9_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm10_LLLH (bvVar ymm9_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm10_LLHL (bvVar ymm9_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm10_LLHH (bvVar ymm9_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm10_LHLL (bvVar ymm9_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm10_LHLH (bvVar ymm9_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm10_LHHL (bvVar ymm9_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm10_LHHH (bvVar ymm9_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm10_HLLL (bvVar ymm9_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm10_HLLH (bvVar ymm9_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm10_HLHL (bvVar ymm9_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm10_HLHH (bvVar ymm9_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm10_HHLL (bvVar ymm9_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm10_HHLH (bvVar ymm9_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm10_HHHL (bvVar ymm9_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm10_HHHH (bvVar ymm9_HHHH) (bvVar ymm14_HHHH);
(* vpaddw %ymm11,%ymm3,%ymm3 *)
bvSadd ymm3_LLLL (bvVar ymm11_LLLL) (bvVar ymm3_LLLL);
bvSadd ymm3_LLLH (bvVar ymm11_LLLH) (bvVar ymm3_LLLH);
bvSadd ymm3_LLHL (bvVar ymm11_LLHL) (bvVar ymm3_LLHL);
bvSadd ymm3_LLHH (bvVar ymm11_LLHH) (bvVar ymm3_LLHH);
bvSadd ymm3_LHLL (bvVar ymm11_LHLL) (bvVar ymm3_LHLL);
bvSadd ymm3_LHLH (bvVar ymm11_LHLH) (bvVar ymm3_LHLH);
bvSadd ymm3_LHHL (bvVar ymm11_LHHL) (bvVar ymm3_LHHL);
bvSadd ymm3_LHHH (bvVar ymm11_LHHH) (bvVar ymm3_LHHH);
bvSadd ymm3_HLLL (bvVar ymm11_HLLL) (bvVar ymm3_HLLL);
bvSadd ymm3_HLLH (bvVar ymm11_HLLH) (bvVar ymm3_HLLH);
bvSadd ymm3_HLHL (bvVar ymm11_HLHL) (bvVar ymm3_HLHL);
bvSadd ymm3_HLHH (bvVar ymm11_HLHH) (bvVar ymm3_HLHH);
bvSadd ymm3_HHLL (bvVar ymm11_HHLL) (bvVar ymm3_HHLL);
bvSadd ymm3_HHLH (bvVar ymm11_HHLH) (bvVar ymm3_HHLH);
bvSadd ymm3_HHHL (bvVar ymm11_HHHL) (bvVar ymm3_HHHL);
bvSadd ymm3_HHHH (bvVar ymm11_HHHH) (bvVar ymm3_HHHH);
(* vpaddw %ymm12,%ymm5,%ymm5 *)
bvSadd ymm5_LLLL (bvVar ymm12_LLLL) (bvVar ymm5_LLLL);
bvSadd ymm5_LLLH (bvVar ymm12_LLLH) (bvVar ymm5_LLLH);
bvSadd ymm5_LLHL (bvVar ymm12_LLHL) (bvVar ymm5_LLHL);
bvSadd ymm5_LLHH (bvVar ymm12_LLHH) (bvVar ymm5_LLHH);
bvSadd ymm5_LHLL (bvVar ymm12_LHLL) (bvVar ymm5_LHLL);
bvSadd ymm5_LHLH (bvVar ymm12_LHLH) (bvVar ymm5_LHLH);
bvSadd ymm5_LHHL (bvVar ymm12_LHHL) (bvVar ymm5_LHHL);
bvSadd ymm5_LHHH (bvVar ymm12_LHHH) (bvVar ymm5_LHHH);
bvSadd ymm5_HLLL (bvVar ymm12_HLLL) (bvVar ymm5_HLLL);
bvSadd ymm5_HLLH (bvVar ymm12_HLLH) (bvVar ymm5_HLLH);
bvSadd ymm5_HLHL (bvVar ymm12_HLHL) (bvVar ymm5_HLHL);
bvSadd ymm5_HLHH (bvVar ymm12_HLHH) (bvVar ymm5_HLHH);
bvSadd ymm5_HHLL (bvVar ymm12_HHLL) (bvVar ymm5_HHLL);
bvSadd ymm5_HHLH (bvVar ymm12_HHLH) (bvVar ymm5_HHLH);
bvSadd ymm5_HHHL (bvVar ymm12_HHHL) (bvVar ymm5_HHHL);
bvSadd ymm5_HHHH (bvVar ymm12_HHHH) (bvVar ymm5_HHHH);
(* vpaddw %ymm13,%ymm7,%ymm7 *)
bvSadd ymm7_LLLL (bvVar ymm13_LLLL) (bvVar ymm7_LLLL);
bvSadd ymm7_LLLH (bvVar ymm13_LLLH) (bvVar ymm7_LLLH);
bvSadd ymm7_LLHL (bvVar ymm13_LLHL) (bvVar ymm7_LLHL);
bvSadd ymm7_LLHH (bvVar ymm13_LLHH) (bvVar ymm7_LLHH);
bvSadd ymm7_LHLL (bvVar ymm13_LHLL) (bvVar ymm7_LHLL);
bvSadd ymm7_LHLH (bvVar ymm13_LHLH) (bvVar ymm7_LHLH);
bvSadd ymm7_LHHL (bvVar ymm13_LHHL) (bvVar ymm7_LHHL);
bvSadd ymm7_LHHH (bvVar ymm13_LHHH) (bvVar ymm7_LHHH);
bvSadd ymm7_HLLL (bvVar ymm13_HLLL) (bvVar ymm7_HLLL);
bvSadd ymm7_HLLH (bvVar ymm13_HLLH) (bvVar ymm7_HLLH);
bvSadd ymm7_HLHL (bvVar ymm13_HLHL) (bvVar ymm7_HLHL);
bvSadd ymm7_HLHH (bvVar ymm13_HLHH) (bvVar ymm7_HLHH);
bvSadd ymm7_HHLL (bvVar ymm13_HHLL) (bvVar ymm7_HHLL);
bvSadd ymm7_HHLH (bvVar ymm13_HHLH) (bvVar ymm7_HHLH);
bvSadd ymm7_HHHL (bvVar ymm13_HHHL) (bvVar ymm7_HHHL);
bvSadd ymm7_HHHH (bvVar ymm13_HHHH) (bvVar ymm7_HHHH);
(* vpaddw %ymm14,%ymm9,%ymm9 *)
bvSadd ymm9_LLLL (bvVar ymm14_LLLL) (bvVar ymm9_LLLL);
bvSadd ymm9_LLLH (bvVar ymm14_LLLH) (bvVar ymm9_LLLH);
bvSadd ymm9_LLHL (bvVar ymm14_LLHL) (bvVar ymm9_LLHL);
bvSadd ymm9_LLHH (bvVar ymm14_LLHH) (bvVar ymm9_LLHH);
bvSadd ymm9_LHLL (bvVar ymm14_LHLL) (bvVar ymm9_LHLL);
bvSadd ymm9_LHLH (bvVar ymm14_LHLH) (bvVar ymm9_LHLH);
bvSadd ymm9_LHHL (bvVar ymm14_LHHL) (bvVar ymm9_LHHL);
bvSadd ymm9_LHHH (bvVar ymm14_LHHH) (bvVar ymm9_LHHH);
bvSadd ymm9_HLLL (bvVar ymm14_HLLL) (bvVar ymm9_HLLL);
bvSadd ymm9_HLLH (bvVar ymm14_HLLH) (bvVar ymm9_HLLH);
bvSadd ymm9_HLHL (bvVar ymm14_HLHL) (bvVar ymm9_HLHL);
bvSadd ymm9_HLHH (bvVar ymm14_HLHH) (bvVar ymm9_HLHH);
bvSadd ymm9_HHLL (bvVar ymm14_HHLL) (bvVar ymm9_HHLL);
bvSadd ymm9_HHLH (bvVar ymm14_HHLH) (bvVar ymm9_HHLH);
bvSadd ymm9_HHHL (bvVar ymm14_HHHL) (bvVar ymm9_HHHL);
bvSadd ymm9_HHHH (bvVar ymm14_HHHH) (bvVar ymm9_HHHH);

(* # save old-4 *)

bvGhost ymm3_LLLLo4, ymm3_LLLHo4, ymm3_LLHLo4, ymm3_LLHHo4, ymm3_LHLLo4,
        ymm3_LHLHo4, ymm3_LHHLo4, ymm3_LHHHo4, ymm3_HLLLo4, ymm3_HLLHo4,
        ymm3_HLHLo4, ymm3_HLHHo4, ymm3_HHLLo4, ymm3_HHLHo4, ymm3_HHHLo4,
        ymm3_HHHHo4,
        ymm4_LLLLo4, ymm4_LLLHo4, ymm4_LLHLo4, ymm4_LLHHo4, ymm4_LHLLo4,
        ymm4_LHLHo4, ymm4_LHHLo4, ymm4_LHHHo4, ymm4_HLLLo4, ymm4_HLLHo4,
        ymm4_HLHLo4, ymm4_HLHHo4, ymm4_HHLLo4, ymm4_HHLHo4, ymm4_HHHLo4,
        ymm4_HHHHo4,
        ymm5_LLLLo4, ymm5_LLLHo4, ymm5_LLHLo4, ymm5_LLHHo4, ymm5_LHLLo4,
        ymm5_LHLHo4, ymm5_LHHLo4, ymm5_LHHHo4, ymm5_HLLLo4, ymm5_HLLHo4,
        ymm5_HLHLo4, ymm5_HLHHo4, ymm5_HHLLo4, ymm5_HHLHo4, ymm5_HHHLo4,
        ymm5_HHHHo4,
        ymm6_LLLLo4, ymm6_LLLHo4, ymm6_LLHLo4, ymm6_LLHHo4, ymm6_LHLLo4,
        ymm6_LHLHo4, ymm6_LHHLo4, ymm6_LHHHo4, ymm6_HLLLo4, ymm6_HLLHo4,
        ymm6_HLHLo4, ymm6_HLHHo4, ymm6_HHLLo4, ymm6_HHLHo4, ymm6_HHHLo4,
        ymm6_HHHHo4,
        ymm7_LLLLo4, ymm7_LLLHo4, ymm7_LLHLo4, ymm7_LLHHo4, ymm7_LHLLo4,
        ymm7_LHLHo4, ymm7_LHHLo4, ymm7_LHHHo4, ymm7_HLLLo4, ymm7_HLLHo4,
        ymm7_HLHLo4, ymm7_HLHHo4, ymm7_HHLLo4, ymm7_HHLHo4, ymm7_HHHLo4,
        ymm7_HHHHo4,
        ymm8_LLLLo4, ymm8_LLLHo4, ymm8_LLHLo4, ymm8_LLHHo4, ymm8_LHLLo4,
        ymm8_LHLHo4, ymm8_LHHLo4, ymm8_LHHHo4, ymm8_HLLLo4, ymm8_HLLHo4,
        ymm8_HLHLo4, ymm8_HLHHo4, ymm8_HHLLo4, ymm8_HHLHo4, ymm8_HHHLo4,
        ymm8_HHHHo4,
        ymm9_LLLLo4, ymm9_LLLHo4, ymm9_LLHLo4, ymm9_LLHHo4, ymm9_LHLLo4,
        ymm9_LHLHo4, ymm9_LHHLo4, ymm9_LHHHo4, ymm9_HLLLo4, ymm9_HLLHo4,
        ymm9_HLHLo4, ymm9_HLHHo4, ymm9_HHLLo4, ymm9_HHLHo4, ymm9_HHHLo4,
        ymm9_HHHHo4,
        ymm10_LLLLo4, ymm10_LLLHo4, ymm10_LLHLo4, ymm10_LLHHo4, ymm10_LHLLo4,
        ymm10_LHLHo4, ymm10_LHHLo4, ymm10_LHHHo4, ymm10_HLLLo4, ymm10_HLLHo4,
        ymm10_HLHLo4, ymm10_HLHHo4, ymm10_HHLLo4, ymm10_HHLHo4, ymm10_HHHLo4,
        ymm10_HHHHo4 :
  bveands [bveEq (bvvar ymm3_LLLLo4) (bvvar ymm3_LLLL),
           bveEq (bvvar ymm3_LLLHo4) (bvvar ymm3_LLLH),
           bveEq (bvvar ymm3_LLHLo4) (bvvar ymm3_LLHL),
           bveEq (bvvar ymm3_LLHHo4) (bvvar ymm3_LLHH),
           bveEq (bvvar ymm3_LHLLo4) (bvvar ymm3_LHLL),
           bveEq (bvvar ymm3_LHLHo4) (bvvar ymm3_LHLH),
           bveEq (bvvar ymm3_LHHLo4) (bvvar ymm3_LHHL),
           bveEq (bvvar ymm3_LHHHo4) (bvvar ymm3_LHHH),
           bveEq (bvvar ymm3_HLLLo4) (bvvar ymm3_HLLL),
           bveEq (bvvar ymm3_HLLHo4) (bvvar ymm3_HLLH),
           bveEq (bvvar ymm3_HLHLo4) (bvvar ymm3_HLHL),
           bveEq (bvvar ymm3_HLHHo4) (bvvar ymm3_HLHH),
           bveEq (bvvar ymm3_HHLLo4) (bvvar ymm3_HHLL),
           bveEq (bvvar ymm3_HHLHo4) (bvvar ymm3_HHLH),
           bveEq (bvvar ymm3_HHHLo4) (bvvar ymm3_HHHL),
           bveEq (bvvar ymm3_HHHHo4) (bvvar ymm3_HHHH),
           bveEq (bvvar ymm4_LLLLo4) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo4) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo4) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo4) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo4) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo4) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo4) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo4) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo4) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo4) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo4) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo4) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo4) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo4) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo4) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo4) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo4) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo4) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo4) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo4) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo4) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo4) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo4) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo4) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo4) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo4) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo4) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo4) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo4) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo4) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo4) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo4) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo4) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo4) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo4) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo4) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo4) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo4) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo4) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo4) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo4) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo4) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo4) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo4) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo4) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo4) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo4) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo4) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo4) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo4) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo4) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo4) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo4) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo4) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo4) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo4) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo4) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo4) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo4) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo4) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo4) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo4) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo4) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo4) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo4) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo4) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo4) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo4) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo4) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo4) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo4) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo4) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo4) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo4) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo4) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo4) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo4) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo4) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo4) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo4) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo4) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo4) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo4) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo4) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo4) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo4) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo4) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo4) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo4) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo4) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo4) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo4) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo4) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo4) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo4) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo4) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo4) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo4) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo4) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo4) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo4) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo4) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo4) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo4) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo4) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo4) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo4) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo4) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo4) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo4) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo4) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo4) (bvvar ymm10_HHHH)]
  |
    bvTrue;

(* # cuts-4 *)

{
  bveands [
    bveEqMod (bvvar ymm3_LLLLo4)
             ((bvvar ymm4_LLLLo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLLo4)
             ((bvvar ymm4_LLLLo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLLHo4)
             ((bvvar ymm4_LLLHo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLHo4)
             ((bvvar ymm4_LLLHo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLHLo4)
             ((bvvar ymm4_LLHLo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHLo4)
             ((bvvar ymm4_LLHLo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LLHHo4)
             ((bvvar ymm4_LLHHo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHHo4)
             ((bvvar ymm4_LLHHo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHLLo4)
             ((bvvar ymm4_LHLLo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLLo4)
             ((bvvar ymm4_LHLLo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHLHo4)
             ((bvvar ymm4_LHLHo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLHo4)
             ((bvvar ymm4_LHLHo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHHLo4)
             ((bvvar ymm4_LHHLo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHLo4)
             ((bvvar ymm4_LHHLo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_LHHHo4)
             ((bvvar ymm4_LHHHo3) +
              (bvvar zeta1e0) * (bvvar ymm4_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHHo4)
             ((bvvar ymm4_LHHHo3) -
              (bvvar zeta1e0) * (bvvar ymm4_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLLLo4)
             ((bvvar ymm5_LLLLo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLLo4)
             ((bvvar ymm5_LLLLo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLLHo4)
             ((bvvar ymm5_LLLHo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLHo4)
             ((bvvar ymm5_LLLHo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLHLo4)
             ((bvvar ymm5_LLHLo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHLo4)
             ((bvvar ymm5_LLHLo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HLHHo4)
             ((bvvar ymm5_LLHHo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHHo4)
             ((bvvar ymm5_LLHHo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHLLo4)
             ((bvvar ymm5_LHLLo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLLo4)
             ((bvvar ymm5_LHLLo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHLHo4)
             ((bvvar ymm5_LHLHo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLHo4)
             ((bvvar ymm5_LHLHo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHHLo4)
             ((bvvar ymm5_LHHLo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHLo4)
             ((bvvar ymm5_LHHLo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm3_HHHHo4)
             ((bvvar ymm5_LHHHo3) +
              (bvvar zeta1f0) * (bvvar ymm5_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHHo4)
             ((bvvar ymm5_LHHHo3) -
              (bvvar zeta1f0) * (bvvar ymm5_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLLo4)
             ((bvvar ymm6_LLLLo3) +
              (bvvar zeta200) * (bvvar ymm6_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLLo4)
             ((bvvar ymm6_LLLLo3) -
              (bvvar zeta200) * (bvvar ymm6_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLHo4)
             ((bvvar ymm6_LLLHo3) +
              (bvvar zeta200) * (bvvar ymm6_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLHo4)
             ((bvvar ymm6_LLLHo3) -
              (bvvar zeta200) * (bvvar ymm6_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHLo4)
             ((bvvar ymm6_LLHLo3) +
              (bvvar zeta200) * (bvvar ymm6_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHLo4)
             ((bvvar ymm6_LLHLo3) -
              (bvvar zeta200) * (bvvar ymm6_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHHo4)
             ((bvvar ymm6_LLHHo3) +
              (bvvar zeta200) * (bvvar ymm6_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHHo4)
             ((bvvar ymm6_LLHHo3) -
              (bvvar zeta200) * (bvvar ymm6_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLLo4)
             ((bvvar ymm6_LHLLo3) +
              (bvvar zeta200) * (bvvar ymm6_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLLo4)
             ((bvvar ymm6_LHLLo3) -
              (bvvar zeta200) * (bvvar ymm6_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLHo4)
             ((bvvar ymm6_LHLHo3) +
              (bvvar zeta200) * (bvvar ymm6_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLHo4)
             ((bvvar ymm6_LHLHo3) -
              (bvvar zeta200) * (bvvar ymm6_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHLo4)
             ((bvvar ymm6_LHHLo3) +
              (bvvar zeta200) * (bvvar ymm6_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHLo4)
             ((bvvar ymm6_LHHLo3) -
              (bvvar zeta200) * (bvvar ymm6_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHHo4)
             ((bvvar ymm6_LHHHo3) +
              (bvvar zeta200) * (bvvar ymm6_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHHo4)
             ((bvvar ymm6_LHHHo3) -
              (bvvar zeta200) * (bvvar ymm6_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLLo4)
             ((bvvar ymm7_LLLLo3) +
              (bvvar zeta210) * (bvvar ymm7_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLLo4)
             ((bvvar ymm7_LLLLo3) -
              (bvvar zeta210) * (bvvar ymm7_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLHo4)
             ((bvvar ymm7_LLLHo3) +
              (bvvar zeta210) * (bvvar ymm7_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLHo4)
             ((bvvar ymm7_LLLHo3) -
              (bvvar zeta210) * (bvvar ymm7_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHLo4)
             ((bvvar ymm7_LLHLo3) +
              (bvvar zeta210) * (bvvar ymm7_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHLo4)
             ((bvvar ymm7_LLHLo3) -
              (bvvar zeta210) * (bvvar ymm7_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHHo4)
             ((bvvar ymm7_LLHHo3) +
              (bvvar zeta210) * (bvvar ymm7_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHHo4)
             ((bvvar ymm7_LLHHo3) -
              (bvvar zeta210) * (bvvar ymm7_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLLo4)
             ((bvvar ymm7_LHLLo3) +
              (bvvar zeta210) * (bvvar ymm7_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLLo4)
             ((bvvar ymm7_LHLLo3) -
              (bvvar zeta210) * (bvvar ymm7_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLHo4)
             ((bvvar ymm7_LHLHo3) +
              (bvvar zeta210) * (bvvar ymm7_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLHo4)
             ((bvvar ymm7_LHLHo3) -
              (bvvar zeta210) * (bvvar ymm7_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHLo4)
             ((bvvar ymm7_LHHLo3) +
              (bvvar zeta210) * (bvvar ymm7_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHLo4)
             ((bvvar ymm7_LHHLo3) -
              (bvvar zeta210) * (bvvar ymm7_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHHo4)
             ((bvvar ymm7_LHHHo3) +
              (bvvar zeta210) * (bvvar ymm7_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHHo4)
             ((bvvar ymm7_LHHHo3) -
              (bvvar zeta210) * (bvvar ymm7_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLLo4)
             ((bvvar ymm8_LLLLo3) +
              (bvvar zeta220) * (bvvar ymm8_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLLo4)
             ((bvvar ymm8_LLLLo3) -
              (bvvar zeta220) * (bvvar ymm8_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLHo4)
             ((bvvar ymm8_LLLHo3) +
              (bvvar zeta220) * (bvvar ymm8_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLHo4)
             ((bvvar ymm8_LLLHo3) -
              (bvvar zeta220) * (bvvar ymm8_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHLo4)
             ((bvvar ymm8_LLHLo3) +
              (bvvar zeta220) * (bvvar ymm8_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHLo4)
             ((bvvar ymm8_LLHLo3) -
              (bvvar zeta220) * (bvvar ymm8_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHHo4)
             ((bvvar ymm8_LLHHo3) +
              (bvvar zeta220) * (bvvar ymm8_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHHo4)
             ((bvvar ymm8_LLHHo3) -
              (bvvar zeta220) * (bvvar ymm8_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLLo4)
             ((bvvar ymm8_LHLLo3) +
              (bvvar zeta220) * (bvvar ymm8_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLLo4)
             ((bvvar ymm8_LHLLo3) -
              (bvvar zeta220) * (bvvar ymm8_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLHo4)
             ((bvvar ymm8_LHLHo3) +
              (bvvar zeta220) * (bvvar ymm8_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLHo4)
             ((bvvar ymm8_LHLHo3) -
              (bvvar zeta220) * (bvvar ymm8_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHLo4)
             ((bvvar ymm8_LHHLo3) +
              (bvvar zeta220) * (bvvar ymm8_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHLo4)
             ((bvvar ymm8_LHHLo3) -
              (bvvar zeta220) * (bvvar ymm8_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHHo4)
             ((bvvar ymm8_LHHHo3) +
              (bvvar zeta220) * (bvvar ymm8_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHHo4)
             ((bvvar ymm8_LHHHo3) -
              (bvvar zeta220) * (bvvar ymm8_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLLo4)
             ((bvvar ymm9_LLLLo3) +
              (bvvar zeta230) * (bvvar ymm9_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLLo4)
             ((bvvar ymm9_LLLLo3) -
              (bvvar zeta230) * (bvvar ymm9_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLHo4)
             ((bvvar ymm9_LLLHo3) +
              (bvvar zeta230) * (bvvar ymm9_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLHo4)
             ((bvvar ymm9_LLLHo3) -
              (bvvar zeta230) * (bvvar ymm9_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHLo4)
             ((bvvar ymm9_LLHLo3) +
              (bvvar zeta230) * (bvvar ymm9_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHLo4)
             ((bvvar ymm9_LLHLo3) -
              (bvvar zeta230) * (bvvar ymm9_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHHo4)
             ((bvvar ymm9_LLHHo3) +
              (bvvar zeta230) * (bvvar ymm9_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHHo4)
             ((bvvar ymm9_LLHHo3) -
              (bvvar zeta230) * (bvvar ymm9_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLLo4)
             ((bvvar ymm9_LHLLo3) +
              (bvvar zeta230) * (bvvar ymm9_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLLo4)
             ((bvvar ymm9_LHLLo3) -
              (bvvar zeta230) * (bvvar ymm9_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLHo4)
             ((bvvar ymm9_LHLHo3) +
              (bvvar zeta230) * (bvvar ymm9_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLHo4)
             ((bvvar ymm9_LHLHo3) -
              (bvvar zeta230) * (bvvar ymm9_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHLo4)
             ((bvvar ymm9_LHHLo3) +
              (bvvar zeta230) * (bvvar ymm9_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHLo4)
             ((bvvar ymm9_LHHLo3) -
              (bvvar zeta230) * (bvvar ymm9_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHHo4)
             ((bvvar ymm9_LHHHo3) +
              (bvvar zeta230) * (bvvar ymm9_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHHo4)
             ((bvvar ymm9_LHHHo3) -
              (bvvar zeta230) * (bvvar ymm9_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLLo4)
             ((bvvar ymm10_LLLLo3) +
              (bvvar zeta240) * (bvvar ymm10_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLLo4)
             ((bvvar ymm10_LLLLo3) -
              (bvvar zeta240) * (bvvar ymm10_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLHo4)
             ((bvvar ymm10_LLLHo3) +
              (bvvar zeta240) * (bvvar ymm10_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLHo4)
             ((bvvar ymm10_LLLHo3) -
              (bvvar zeta240) * (bvvar ymm10_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHLo4)
             ((bvvar ymm10_LLHLo3) +
              (bvvar zeta240) * (bvvar ymm10_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHLo4)
             ((bvvar ymm10_LLHLo3) -
              (bvvar zeta240) * (bvvar ymm10_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHHo4)
             ((bvvar ymm10_LLHHo3) +
              (bvvar zeta240) * (bvvar ymm10_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHHo4)
             ((bvvar ymm10_LLHHo3) -
              (bvvar zeta240) * (bvvar ymm10_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLLo4)
             ((bvvar ymm10_LHLLo3) +
              (bvvar zeta240) * (bvvar ymm10_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLLo4)
             ((bvvar ymm10_LHLLo3) -
              (bvvar zeta240) * (bvvar ymm10_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLHo4)
             ((bvvar ymm10_LHLHo3) +
              (bvvar zeta240) * (bvvar ymm10_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLHo4)
             ((bvvar ymm10_LHLHo3) -
              (bvvar zeta240) * (bvvar ymm10_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHLo4)
             ((bvvar ymm10_LHHLo3) +
              (bvvar zeta240) * (bvvar ymm10_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHLo4)
             ((bvvar ymm10_LHHLo3) -
              (bvvar zeta240) * (bvvar ymm10_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHHo4)
             ((bvvar ymm10_LHHHo3) +
              (bvvar zeta240) * (bvvar ymm10_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHHo4)
             ((bvvar ymm10_LHHHo3) -
              (bvvar zeta240) * (bvvar ymm10_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLLo4)
             ((bvvar ymm11_LLLLo3) +
              (bvvar zeta250) * (bvvar ymm11_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLLo4)
             ((bvvar ymm11_LLLLo3) -
              (bvvar zeta250) * (bvvar ymm11_HLLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLHo4)
             ((bvvar ymm11_LLLHo3) +
              (bvvar zeta250) * (bvvar ymm11_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLHo4)
             ((bvvar ymm11_LLLHo3) -
              (bvvar zeta250) * (bvvar ymm11_HLLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHLo4)
             ((bvvar ymm11_LLHLo3) +
              (bvvar zeta250) * (bvvar ymm11_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHLo4)
             ((bvvar ymm11_LLHLo3) -
              (bvvar zeta250) * (bvvar ymm11_HLHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHHo4)
             ((bvvar ymm11_LLHHo3) +
              (bvvar zeta250) * (bvvar ymm11_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHHo4)
             ((bvvar ymm11_LLHHo3) -
              (bvvar zeta250) * (bvvar ymm11_HLHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLLo4)
             ((bvvar ymm11_LHLLo3) +
              (bvvar zeta250) * (bvvar ymm11_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLLo4)
             ((bvvar ymm11_LHLLo3) -
              (bvvar zeta250) * (bvvar ymm11_HHLLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLHo4)
             ((bvvar ymm11_LHLHo3) +
              (bvvar zeta250) * (bvvar ymm11_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLHo4)
             ((bvvar ymm11_LHLHo3) -
              (bvvar zeta250) * (bvvar ymm11_HHLHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHLo4)
             ((bvvar ymm11_LHHLo3) +
              (bvvar zeta250) * (bvvar ymm11_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHLo4)
             ((bvvar ymm11_LHHLo3) -
              (bvvar zeta250) * (bvvar ymm11_HHHLo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHHo4)
             ((bvvar ymm11_LHHHo3) +
              (bvvar zeta250) * (bvvar ymm11_HHHHo3) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHHo4)
             ((bvvar ymm11_LHHHo3) -
              (bvvar zeta250) * (bvvar ymm11_HHHHo3) * (bvconst 900))
             (bvvar q)
    ]
|
  bvTrue
}