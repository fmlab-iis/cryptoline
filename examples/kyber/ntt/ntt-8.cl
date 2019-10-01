proc main (ymm3_LLLL, ymm3_LLLH, ymm3_LLHL, ymm3_LLHH,
           ymm3_LHLL, ymm3_LHLH, ymm3_LHHL, ymm3_LHHH, 
           ymm3_HLLL, ymm3_HLLH, ymm3_HLHL, ymm3_HLHH,
           ymm3_HHLL, ymm3_HHLH, ymm3_HHHL, ymm3_HHHH, 
           ymm4_LLLL, ymm4_LLLH, ymm4_LLHL, ymm4_LLHH,
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
           L0x7fffffffb040_LLLL, L0x7fffffffb040_LLLH, L0x7fffffffb040_LLHL,
           L0x7fffffffb040_LLHH, L0x7fffffffb040_LHLL, L0x7fffffffb040_LHLH,
           L0x7fffffffb040_LHHL, L0x7fffffffb040_LHHH, L0x7fffffffb040_HLLL,
           L0x7fffffffb040_HLLH, L0x7fffffffb040_HLHL, L0x7fffffffb040_HLHH,
           L0x7fffffffb040_HHLL, L0x7fffffffb040_HHLH, L0x7fffffffb040_HHHL,
           L0x7fffffffb040_HHHH,
           L0x7fffffffb060_LLLL, L0x7fffffffb060_LLLH, L0x7fffffffb060_LLHL,
           L0x7fffffffb060_LLHH, L0x7fffffffb060_LHLL, L0x7fffffffb060_LHLH,
           L0x7fffffffb060_LHHL, L0x7fffffffb060_LHHH, L0x7fffffffb060_HLLL,
           L0x7fffffffb060_HLLH, L0x7fffffffb060_HLHL, L0x7fffffffb060_HLHH,
           L0x7fffffffb060_HHLL, L0x7fffffffb060_HHLH, L0x7fffffffb060_HHHL,
           L0x7fffffffb060_HHHH,
           L0x7fffffffb080_LLLL, L0x7fffffffb080_LLLH, L0x7fffffffb080_LLHL,
           L0x7fffffffb080_LLHH, L0x7fffffffb080_LHLL, L0x7fffffffb080_LHLH,
           L0x7fffffffb080_LHHL, L0x7fffffffb080_LHHH, L0x7fffffffb080_HLLL,
           L0x7fffffffb080_HLLH, L0x7fffffffb080_HLHL, L0x7fffffffb080_HLHH,
           L0x7fffffffb080_HHLL, L0x7fffffffb080_HHLH, L0x7fffffffb080_HHHL,
           L0x7fffffffb080_HHHH,
           L0x7fffffffb0a0_LLLL, L0x7fffffffb0a0_LLLH, L0x7fffffffb0a0_LLHL,
           L0x7fffffffb0a0_LLHH, L0x7fffffffb0a0_LHLL, L0x7fffffffb0a0_LHLH,
           L0x7fffffffb0a0_LHHL, L0x7fffffffb0a0_LHHH, L0x7fffffffb0a0_HLLL,
           L0x7fffffffb0a0_HLLH, L0x7fffffffb0a0_HLHL, L0x7fffffffb0a0_HLHH,
           L0x7fffffffb0a0_HHLL, L0x7fffffffb0a0_HHLH, L0x7fffffffb0a0_HHHL,
           L0x7fffffffb0a0_HHHH,
           L0x7fffffffb0c0_LLLL, L0x7fffffffb0c0_LLLH, L0x7fffffffb0c0_LLHL,
           L0x7fffffffb0c0_LLHH, L0x7fffffffb0c0_LHLL, L0x7fffffffb0c0_LHLH,
           L0x7fffffffb0c0_LHHL, L0x7fffffffb0c0_LHHH, L0x7fffffffb0c0_HLLL,
           L0x7fffffffb0c0_HLLH, L0x7fffffffb0c0_HLHL, L0x7fffffffb0c0_HLHH,
           L0x7fffffffb0c0_HHLL, L0x7fffffffb0c0_HHLH, L0x7fffffffb0c0_HHHL,
           L0x7fffffffb0c0_HHHH,
           L0x7fffffffb0e0_LLLL, L0x7fffffffb0e0_LLLH, L0x7fffffffb0e0_LLHL,
           L0x7fffffffb0e0_LLHH, L0x7fffffffb0e0_LHLL, L0x7fffffffb0e0_LHLH,
           L0x7fffffffb0e0_LHHL, L0x7fffffffb0e0_LHHH, L0x7fffffffb0e0_HLLL,
           L0x7fffffffb0e0_HLLH, L0x7fffffffb0e0_HLHL, L0x7fffffffb0e0_HLHH,
           L0x7fffffffb0e0_HHLL, L0x7fffffffb0e0_HHLH, L0x7fffffffb0e0_HHHL,
           L0x7fffffffb0e0_HHHH,
           L0x7fffffffb100_LLLL, L0x7fffffffb100_LLLH, L0x7fffffffb100_LLHL,
           L0x7fffffffb100_LLHH, L0x7fffffffb100_LHLL, L0x7fffffffb100_LHLH,
           L0x7fffffffb100_LHHL, L0x7fffffffb100_LHHH, L0x7fffffffb100_HLLL,
           L0x7fffffffb100_HLLH, L0x7fffffffb100_HLHL, L0x7fffffffb100_HLHH,
           L0x7fffffffb100_HHLL, L0x7fffffffb100_HHLH, L0x7fffffffb100_HHHL,
           L0x7fffffffb100_HHHH,
           L0x7fffffffb120_LLLL, L0x7fffffffb120_LLLH, L0x7fffffffb120_LLHL,
           L0x7fffffffb120_LLHH, L0x7fffffffb120_LHLL, L0x7fffffffb120_LHLH,
           L0x7fffffffb120_LHHL, L0x7fffffffb120_LHHH, L0x7fffffffb120_HLLL,
           L0x7fffffffb120_HLLH, L0x7fffffffb120_HLHL, L0x7fffffffb120_HLHH,
           L0x7fffffffb120_HHLL, L0x7fffffffb120_HHLH, L0x7fffffffb120_HHHL,
           L0x7fffffffb120_HHHH,
           L0x7fffffffb140_LLLL, L0x7fffffffb140_LLLH, L0x7fffffffb140_LLHL,
           L0x7fffffffb140_LLHH, L0x7fffffffb140_LHLL, L0x7fffffffb140_LHLH,
           L0x7fffffffb140_LHHL, L0x7fffffffb140_LHHH, L0x7fffffffb140_HLLL,
           L0x7fffffffb140_HLLH, L0x7fffffffb140_HLHL, L0x7fffffffb140_HLHH,
           L0x7fffffffb140_HHLL, L0x7fffffffb140_HHLH, L0x7fffffffb140_HHHL,
           L0x7fffffffb140_HHHH,
           L0x7fffffffb160_LLLL, L0x7fffffffb160_LLLH, L0x7fffffffb160_LLHL,
           L0x7fffffffb160_LLHH, L0x7fffffffb160_LHLL, L0x7fffffffb160_LHLH,
           L0x7fffffffb160_LHHL, L0x7fffffffb160_LHHH, L0x7fffffffb160_HLLL,
           L0x7fffffffb160_HLLH, L0x7fffffffb160_HLHL, L0x7fffffffb160_HLHH,
           L0x7fffffffb160_HHLL, L0x7fffffffb160_HHLH, L0x7fffffffb160_HHHL,
           L0x7fffffffb160_HHHH,
           L0x7fffffffb180_LLLL, L0x7fffffffb180_LLLH, L0x7fffffffb180_LLHL,
           L0x7fffffffb180_LLHH, L0x7fffffffb180_LHLL, L0x7fffffffb180_LHLH,
           L0x7fffffffb180_LHHL, L0x7fffffffb180_LHHH, L0x7fffffffb180_HLLL,
           L0x7fffffffb180_HLLH, L0x7fffffffb180_HLHL, L0x7fffffffb180_HLHH,
           L0x7fffffffb180_HHLL, L0x7fffffffb180_HHLH, L0x7fffffffb180_HHHL,
           L0x7fffffffb180_HHHH,
           L0x7fffffffb1a0_LLLL, L0x7fffffffb1a0_LLLH, L0x7fffffffb1a0_LLHL,
           L0x7fffffffb1a0_LLHH, L0x7fffffffb1a0_LHLL, L0x7fffffffb1a0_LHLH,
           L0x7fffffffb1a0_LHHL, L0x7fffffffb1a0_LHHH, L0x7fffffffb1a0_HLLL,
           L0x7fffffffb1a0_HLLH, L0x7fffffffb1a0_HLHL, L0x7fffffffb1a0_HLHH,
           L0x7fffffffb1a0_HHLL, L0x7fffffffb1a0_HHLH, L0x7fffffffb1a0_HHHL,
           L0x7fffffffb1a0_HHHH,
           L0x7fffffffb1c0_LLLL, L0x7fffffffb1c0_LLLH, L0x7fffffffb1c0_LLHL,
           L0x7fffffffb1c0_LLHH, L0x7fffffffb1c0_LHLL, L0x7fffffffb1c0_LHLH,
           L0x7fffffffb1c0_LHHL, L0x7fffffffb1c0_LHHH, L0x7fffffffb1c0_HLLL,
           L0x7fffffffb1c0_HLLH, L0x7fffffffb1c0_HLHL, L0x7fffffffb1c0_HLHH,
           L0x7fffffffb1c0_HHLL, L0x7fffffffb1c0_HHLH, L0x7fffffffb1c0_HHHL,
           L0x7fffffffb1c0_HHHH,
           L0x7fffffffb1e0_LLLL, L0x7fffffffb1e0_LLLH, L0x7fffffffb1e0_LLHL,
           L0x7fffffffb1e0_LLHH, L0x7fffffffb1e0_LHLL, L0x7fffffffb1e0_LHLH,
           L0x7fffffffb1e0_LHHL, L0x7fffffffb1e0_LHHH, L0x7fffffffb1e0_HLLL,
           L0x7fffffffb1e0_HLLH, L0x7fffffffb1e0_HLHL, L0x7fffffffb1e0_HLHH,
           L0x7fffffffb1e0_HHLL, L0x7fffffffb1e0_HHLH, L0x7fffffffb1e0_HHHL,
           L0x7fffffffb1e0_HHHH,
           L0x7fffffffb200_LLLL, L0x7fffffffb200_LLLH, L0x7fffffffb200_LLHL,
           L0x7fffffffb200_LLHH, L0x7fffffffb200_LHLL, L0x7fffffffb200_LHLH,
           L0x7fffffffb200_LHHL, L0x7fffffffb200_LHHH, L0x7fffffffb200_HLLL,
           L0x7fffffffb200_HLLH, L0x7fffffffb200_HLHL, L0x7fffffffb200_HLHH,
           L0x7fffffffb200_HHLL, L0x7fffffffb200_HHLH, L0x7fffffffb200_HHHL,
           L0x7fffffffb200_HHHH,
           L0x7fffffffb220_LLLL, L0x7fffffffb220_LLLH, L0x7fffffffb220_LLHL,
           L0x7fffffffb220_LLHH, L0x7fffffffb220_LHLL, L0x7fffffffb220_LHLH,
           L0x7fffffffb220_LHHL, L0x7fffffffb220_LHHH, L0x7fffffffb220_HLLL,
           L0x7fffffffb220_HLLH, L0x7fffffffb220_HLHL, L0x7fffffffb220_HLHH,
           L0x7fffffffb220_HHLL, L0x7fffffffb220_HHLH, L0x7fffffffb220_HHHL,
           L0x7fffffffb220_HHHH) =

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

(* save old-0 *)

bvGhost L0x7fffffffb040_LLLLo, L0x7fffffffb040_LLLHo, L0x7fffffffb040_LLHLo,
        L0x7fffffffb040_LLHHo, L0x7fffffffb040_LHLLo, L0x7fffffffb040_LHLHo,
        L0x7fffffffb040_LHHLo, L0x7fffffffb040_LHHHo, L0x7fffffffb040_HLLLo,
        L0x7fffffffb040_HLLHo, L0x7fffffffb040_HLHLo, L0x7fffffffb040_HLHHo,
        L0x7fffffffb040_HHLLo, L0x7fffffffb040_HHLHo, L0x7fffffffb040_HHHLo,
        L0x7fffffffb040_HHHHo,
        L0x7fffffffb060_LLLLo, L0x7fffffffb060_LLLHo, L0x7fffffffb060_LLHLo,
        L0x7fffffffb060_LLHHo, L0x7fffffffb060_LHLLo, L0x7fffffffb060_LHLHo,
        L0x7fffffffb060_LHHLo, L0x7fffffffb060_LHHHo, L0x7fffffffb060_HLLLo,
        L0x7fffffffb060_HLLHo, L0x7fffffffb060_HLHLo, L0x7fffffffb060_HLHHo,
        L0x7fffffffb060_HHLLo, L0x7fffffffb060_HHLHo, L0x7fffffffb060_HHHLo,
        L0x7fffffffb060_HHHHo,
        L0x7fffffffb080_LLLLo, L0x7fffffffb080_LLLHo, L0x7fffffffb080_LLHLo,
        L0x7fffffffb080_LLHHo, L0x7fffffffb080_LHLLo, L0x7fffffffb080_LHLHo,
        L0x7fffffffb080_LHHLo, L0x7fffffffb080_LHHHo, L0x7fffffffb080_HLLLo,
        L0x7fffffffb080_HLLHo, L0x7fffffffb080_HLHLo, L0x7fffffffb080_HLHHo,
        L0x7fffffffb080_HHLLo, L0x7fffffffb080_HHLHo, L0x7fffffffb080_HHHLo,
        L0x7fffffffb080_HHHHo,
        L0x7fffffffb0a0_LLLLo, L0x7fffffffb0a0_LLLHo, L0x7fffffffb0a0_LLHLo,
        L0x7fffffffb0a0_LLHHo, L0x7fffffffb0a0_LHLLo, L0x7fffffffb0a0_LHLHo,
        L0x7fffffffb0a0_LHHLo, L0x7fffffffb0a0_LHHHo, L0x7fffffffb0a0_HLLLo,
        L0x7fffffffb0a0_HLLHo, L0x7fffffffb0a0_HLHLo, L0x7fffffffb0a0_HLHHo,
        L0x7fffffffb0a0_HHLLo, L0x7fffffffb0a0_HHLHo, L0x7fffffffb0a0_HHHLo,
        L0x7fffffffb0a0_HHHHo,
        L0x7fffffffb0c0_LLLLo, L0x7fffffffb0c0_LLLHo, L0x7fffffffb0c0_LLHLo,
        L0x7fffffffb0c0_LLHHo, L0x7fffffffb0c0_LHLLo, L0x7fffffffb0c0_LHLHo,
        L0x7fffffffb0c0_LHHLo, L0x7fffffffb0c0_LHHHo, L0x7fffffffb0c0_HLLLo,
        L0x7fffffffb0c0_HLLHo, L0x7fffffffb0c0_HLHLo, L0x7fffffffb0c0_HLHHo,
        L0x7fffffffb0c0_HHLLo, L0x7fffffffb0c0_HHLHo, L0x7fffffffb0c0_HHHLo,
        L0x7fffffffb0c0_HHHHo,
        L0x7fffffffb0e0_LLLLo, L0x7fffffffb0e0_LLLHo, L0x7fffffffb0e0_LLHLo,
        L0x7fffffffb0e0_LLHHo, L0x7fffffffb0e0_LHLLo, L0x7fffffffb0e0_LHLHo,
        L0x7fffffffb0e0_LHHLo, L0x7fffffffb0e0_LHHHo, L0x7fffffffb0e0_HLLLo,
        L0x7fffffffb0e0_HLLHo, L0x7fffffffb0e0_HLHLo, L0x7fffffffb0e0_HLHHo,
        L0x7fffffffb0e0_HHLLo, L0x7fffffffb0e0_HHLHo, L0x7fffffffb0e0_HHHLo,
        L0x7fffffffb0e0_HHHHo,
        L0x7fffffffb100_LLLLo, L0x7fffffffb100_LLLHo, L0x7fffffffb100_LLHLo,
        L0x7fffffffb100_LLHHo, L0x7fffffffb100_LHLLo, L0x7fffffffb100_LHLHo,
        L0x7fffffffb100_LHHLo, L0x7fffffffb100_LHHHo, L0x7fffffffb100_HLLLo,
        L0x7fffffffb100_HLLHo, L0x7fffffffb100_HLHLo, L0x7fffffffb100_HLHHo,
        L0x7fffffffb100_HHLLo, L0x7fffffffb100_HHLHo, L0x7fffffffb100_HHHLo,
        L0x7fffffffb100_HHHHo,
        L0x7fffffffb120_LLLLo, L0x7fffffffb120_LLLHo, L0x7fffffffb120_LLHLo,
        L0x7fffffffb120_LLHHo, L0x7fffffffb120_LHLLo, L0x7fffffffb120_LHLHo,
        L0x7fffffffb120_LHHLo, L0x7fffffffb120_LHHHo, L0x7fffffffb120_HLLLo,
        L0x7fffffffb120_HLLHo, L0x7fffffffb120_HLHLo, L0x7fffffffb120_HLHHo,
        L0x7fffffffb120_HHLLo, L0x7fffffffb120_HHLHo, L0x7fffffffb120_HHHLo,
        L0x7fffffffb120_HHHHo,
        L0x7fffffffb140_LLLLo, L0x7fffffffb140_LLLHo, L0x7fffffffb140_LLHLo,
        L0x7fffffffb140_LLHHo, L0x7fffffffb140_LHLLo, L0x7fffffffb140_LHLHo,
        L0x7fffffffb140_LHHLo, L0x7fffffffb140_LHHHo, L0x7fffffffb140_HLLLo,
        L0x7fffffffb140_HLLHo, L0x7fffffffb140_HLHLo, L0x7fffffffb140_HLHHo,
        L0x7fffffffb140_HHLLo, L0x7fffffffb140_HHLHo, L0x7fffffffb140_HHHLo,
        L0x7fffffffb140_HHHHo,
        L0x7fffffffb160_LLLLo, L0x7fffffffb160_LLLHo, L0x7fffffffb160_LLHLo,
        L0x7fffffffb160_LLHHo, L0x7fffffffb160_LHLLo, L0x7fffffffb160_LHLHo,
        L0x7fffffffb160_LHHLo, L0x7fffffffb160_LHHHo, L0x7fffffffb160_HLLLo,
        L0x7fffffffb160_HLLHo, L0x7fffffffb160_HLHLo, L0x7fffffffb160_HLHHo,
        L0x7fffffffb160_HHLLo, L0x7fffffffb160_HHLHo, L0x7fffffffb160_HHHLo,
        L0x7fffffffb160_HHHHo,
        L0x7fffffffb180_LLLLo, L0x7fffffffb180_LLLHo, L0x7fffffffb180_LLHLo,
        L0x7fffffffb180_LLHHo, L0x7fffffffb180_LHLLo, L0x7fffffffb180_LHLHo,
        L0x7fffffffb180_LHHLo, L0x7fffffffb180_LHHHo, L0x7fffffffb180_HLLLo,
        L0x7fffffffb180_HLLHo, L0x7fffffffb180_HLHLo, L0x7fffffffb180_HLHHo,
        L0x7fffffffb180_HHLLo, L0x7fffffffb180_HHLHo, L0x7fffffffb180_HHHLo,
        L0x7fffffffb180_HHHHo,
        L0x7fffffffb1a0_LLLLo, L0x7fffffffb1a0_LLLHo, L0x7fffffffb1a0_LLHLo,
        L0x7fffffffb1a0_LLHHo, L0x7fffffffb1a0_LHLLo, L0x7fffffffb1a0_LHLHo,
        L0x7fffffffb1a0_LHHLo, L0x7fffffffb1a0_LHHHo, L0x7fffffffb1a0_HLLLo,
        L0x7fffffffb1a0_HLLHo, L0x7fffffffb1a0_HLHLo, L0x7fffffffb1a0_HLHHo,
        L0x7fffffffb1a0_HHLLo, L0x7fffffffb1a0_HHLHo, L0x7fffffffb1a0_HHHLo,
        L0x7fffffffb1a0_HHHHo,
        L0x7fffffffb1c0_LLLLo, L0x7fffffffb1c0_LLLHo, L0x7fffffffb1c0_LLHLo,
        L0x7fffffffb1c0_LLHHo, L0x7fffffffb1c0_LHLLo, L0x7fffffffb1c0_LHLHo,
        L0x7fffffffb1c0_LHHLo, L0x7fffffffb1c0_LHHHo, L0x7fffffffb1c0_HLLLo,
        L0x7fffffffb1c0_HLLHo, L0x7fffffffb1c0_HLHLo, L0x7fffffffb1c0_HLHHo,
        L0x7fffffffb1c0_HHLLo, L0x7fffffffb1c0_HHLHo, L0x7fffffffb1c0_HHHLo,
        L0x7fffffffb1c0_HHHHo,
        L0x7fffffffb1e0_LLLLo, L0x7fffffffb1e0_LLLHo, L0x7fffffffb1e0_LLHLo,
        L0x7fffffffb1e0_LLHHo, L0x7fffffffb1e0_LHLLo, L0x7fffffffb1e0_LHLHo,
        L0x7fffffffb1e0_LHHLo, L0x7fffffffb1e0_LHHHo, L0x7fffffffb1e0_HLLLo,
        L0x7fffffffb1e0_HLLHo, L0x7fffffffb1e0_HLHLo, L0x7fffffffb1e0_HLHHo,
        L0x7fffffffb1e0_HHLLo, L0x7fffffffb1e0_HHLHo, L0x7fffffffb1e0_HHHLo,
        L0x7fffffffb1e0_HHHHo,
        L0x7fffffffb200_LLLLo, L0x7fffffffb200_LLLHo, L0x7fffffffb200_LLHLo,
        L0x7fffffffb200_LLHHo, L0x7fffffffb200_LHLLo, L0x7fffffffb200_LHLHo,
        L0x7fffffffb200_LHHLo, L0x7fffffffb200_LHHHo, L0x7fffffffb200_HLLLo,
        L0x7fffffffb200_HLLHo, L0x7fffffffb200_HLHLo, L0x7fffffffb200_HLHHo,
        L0x7fffffffb200_HHLLo, L0x7fffffffb200_HHLHo, L0x7fffffffb200_HHHLo,
        L0x7fffffffb200_HHHHo,
        L0x7fffffffb220_LLLLo, L0x7fffffffb220_LLLHo, L0x7fffffffb220_LLHLo,
        L0x7fffffffb220_LLHHo, L0x7fffffffb220_LHLLo, L0x7fffffffb220_LHLHo,
        L0x7fffffffb220_LHHLo, L0x7fffffffb220_LHHHo, L0x7fffffffb220_HLLLo,
        L0x7fffffffb220_HLLHo, L0x7fffffffb220_HLHLo, L0x7fffffffb220_HLHHo,
        L0x7fffffffb220_HHLLo, L0x7fffffffb220_HHLHo, L0x7fffffffb220_HHHLo,
        L0x7fffffffb220_HHHHo :
  bveands [bveEq (bvvar L0x7fffffffb040_LLLLo) (bvvar L0x7fffffffb040_LLLL),
           bveEq (bvvar L0x7fffffffb040_LLLHo) (bvvar L0x7fffffffb040_LLLH),
           bveEq (bvvar L0x7fffffffb040_LLHLo) (bvvar L0x7fffffffb040_LLHL),
           bveEq (bvvar L0x7fffffffb040_LLHHo) (bvvar L0x7fffffffb040_LLHH),
           bveEq (bvvar L0x7fffffffb040_LHLLo) (bvvar L0x7fffffffb040_LHLL),
           bveEq (bvvar L0x7fffffffb040_LHLHo) (bvvar L0x7fffffffb040_LHLH),
           bveEq (bvvar L0x7fffffffb040_LHHLo) (bvvar L0x7fffffffb040_LHHL),
           bveEq (bvvar L0x7fffffffb040_LHHHo) (bvvar L0x7fffffffb040_LHHH),
           bveEq (bvvar L0x7fffffffb040_HLLLo) (bvvar L0x7fffffffb040_HLLL),
           bveEq (bvvar L0x7fffffffb040_HLLHo) (bvvar L0x7fffffffb040_HLLH),
           bveEq (bvvar L0x7fffffffb040_HLHLo) (bvvar L0x7fffffffb040_HLHL),
           bveEq (bvvar L0x7fffffffb040_HLHHo) (bvvar L0x7fffffffb040_HLHH),
           bveEq (bvvar L0x7fffffffb040_HHLLo) (bvvar L0x7fffffffb040_HHLL),
           bveEq (bvvar L0x7fffffffb040_HHLHo) (bvvar L0x7fffffffb040_HHLH),
           bveEq (bvvar L0x7fffffffb040_HHHLo) (bvvar L0x7fffffffb040_HHHL),
           bveEq (bvvar L0x7fffffffb040_HHHHo) (bvvar L0x7fffffffb040_HHHH),
           bveEq (bvvar L0x7fffffffb060_LLLLo) (bvvar L0x7fffffffb060_LLLL),
           bveEq (bvvar L0x7fffffffb060_LLLHo) (bvvar L0x7fffffffb060_LLLH),
           bveEq (bvvar L0x7fffffffb060_LLHLo) (bvvar L0x7fffffffb060_LLHL),
           bveEq (bvvar L0x7fffffffb060_LLHHo) (bvvar L0x7fffffffb060_LLHH),
           bveEq (bvvar L0x7fffffffb060_LHLLo) (bvvar L0x7fffffffb060_LHLL),
           bveEq (bvvar L0x7fffffffb060_LHLHo) (bvvar L0x7fffffffb060_LHLH),
           bveEq (bvvar L0x7fffffffb060_LHHLo) (bvvar L0x7fffffffb060_LHHL),
           bveEq (bvvar L0x7fffffffb060_LHHHo) (bvvar L0x7fffffffb060_LHHH),
           bveEq (bvvar L0x7fffffffb060_HLLLo) (bvvar L0x7fffffffb060_HLLL),
           bveEq (bvvar L0x7fffffffb060_HLLHo) (bvvar L0x7fffffffb060_HLLH),
           bveEq (bvvar L0x7fffffffb060_HLHLo) (bvvar L0x7fffffffb060_HLHL),
           bveEq (bvvar L0x7fffffffb060_HLHHo) (bvvar L0x7fffffffb060_HLHH),
           bveEq (bvvar L0x7fffffffb060_HHLLo) (bvvar L0x7fffffffb060_HHLL),
           bveEq (bvvar L0x7fffffffb060_HHLHo) (bvvar L0x7fffffffb060_HHLH),
           bveEq (bvvar L0x7fffffffb060_HHHLo) (bvvar L0x7fffffffb060_HHHL),
           bveEq (bvvar L0x7fffffffb060_HHHHo) (bvvar L0x7fffffffb060_HHHH),
           bveEq (bvvar L0x7fffffffb080_LLLLo) (bvvar L0x7fffffffb080_LLLL),
           bveEq (bvvar L0x7fffffffb080_LLLHo) (bvvar L0x7fffffffb080_LLLH),
           bveEq (bvvar L0x7fffffffb080_LLHLo) (bvvar L0x7fffffffb080_LLHL),
           bveEq (bvvar L0x7fffffffb080_LLHHo) (bvvar L0x7fffffffb080_LLHH),
           bveEq (bvvar L0x7fffffffb080_LHLLo) (bvvar L0x7fffffffb080_LHLL),
           bveEq (bvvar L0x7fffffffb080_LHLHo) (bvvar L0x7fffffffb080_LHLH),
           bveEq (bvvar L0x7fffffffb080_LHHLo) (bvvar L0x7fffffffb080_LHHL),
           bveEq (bvvar L0x7fffffffb080_LHHHo) (bvvar L0x7fffffffb080_LHHH),
           bveEq (bvvar L0x7fffffffb080_HLLLo) (bvvar L0x7fffffffb080_HLLL),
           bveEq (bvvar L0x7fffffffb080_HLLHo) (bvvar L0x7fffffffb080_HLLH),
           bveEq (bvvar L0x7fffffffb080_HLHLo) (bvvar L0x7fffffffb080_HLHL),
           bveEq (bvvar L0x7fffffffb080_HLHHo) (bvvar L0x7fffffffb080_HLHH),
           bveEq (bvvar L0x7fffffffb080_HHLLo) (bvvar L0x7fffffffb080_HHLL),
           bveEq (bvvar L0x7fffffffb080_HHLHo) (bvvar L0x7fffffffb080_HHLH),
           bveEq (bvvar L0x7fffffffb080_HHHLo) (bvvar L0x7fffffffb080_HHHL),
           bveEq (bvvar L0x7fffffffb080_HHHHo) (bvvar L0x7fffffffb080_HHHH),
           bveEq (bvvar L0x7fffffffb0a0_LLLLo) (bvvar L0x7fffffffb0a0_LLLL),
           bveEq (bvvar L0x7fffffffb0a0_LLLHo) (bvvar L0x7fffffffb0a0_LLLH),
           bveEq (bvvar L0x7fffffffb0a0_LLHLo) (bvvar L0x7fffffffb0a0_LLHL),
           bveEq (bvvar L0x7fffffffb0a0_LLHHo) (bvvar L0x7fffffffb0a0_LLHH),
           bveEq (bvvar L0x7fffffffb0a0_LHLLo) (bvvar L0x7fffffffb0a0_LHLL),
           bveEq (bvvar L0x7fffffffb0a0_LHLHo) (bvvar L0x7fffffffb0a0_LHLH),
           bveEq (bvvar L0x7fffffffb0a0_LHHLo) (bvvar L0x7fffffffb0a0_LHHL),
           bveEq (bvvar L0x7fffffffb0a0_LHHHo) (bvvar L0x7fffffffb0a0_LHHH),
           bveEq (bvvar L0x7fffffffb0a0_HLLLo) (bvvar L0x7fffffffb0a0_HLLL),
           bveEq (bvvar L0x7fffffffb0a0_HLLHo) (bvvar L0x7fffffffb0a0_HLLH),
           bveEq (bvvar L0x7fffffffb0a0_HLHLo) (bvvar L0x7fffffffb0a0_HLHL),
           bveEq (bvvar L0x7fffffffb0a0_HLHHo) (bvvar L0x7fffffffb0a0_HLHH),
           bveEq (bvvar L0x7fffffffb0a0_HHLLo) (bvvar L0x7fffffffb0a0_HHLL),
           bveEq (bvvar L0x7fffffffb0a0_HHLHo) (bvvar L0x7fffffffb0a0_HHLH),
           bveEq (bvvar L0x7fffffffb0a0_HHHLo) (bvvar L0x7fffffffb0a0_HHHL),
           bveEq (bvvar L0x7fffffffb0a0_HHHHo) (bvvar L0x7fffffffb0a0_HHHH),
           bveEq (bvvar L0x7fffffffb0c0_LLLLo) (bvvar L0x7fffffffb0c0_LLLL),
           bveEq (bvvar L0x7fffffffb0c0_LLLHo) (bvvar L0x7fffffffb0c0_LLLH),
           bveEq (bvvar L0x7fffffffb0c0_LLHLo) (bvvar L0x7fffffffb0c0_LLHL),
           bveEq (bvvar L0x7fffffffb0c0_LLHHo) (bvvar L0x7fffffffb0c0_LLHH),
           bveEq (bvvar L0x7fffffffb0c0_LHLLo) (bvvar L0x7fffffffb0c0_LHLL),
           bveEq (bvvar L0x7fffffffb0c0_LHLHo) (bvvar L0x7fffffffb0c0_LHLH),
           bveEq (bvvar L0x7fffffffb0c0_LHHLo) (bvvar L0x7fffffffb0c0_LHHL),
           bveEq (bvvar L0x7fffffffb0c0_LHHHo) (bvvar L0x7fffffffb0c0_LHHH),
           bveEq (bvvar L0x7fffffffb0c0_HLLLo) (bvvar L0x7fffffffb0c0_HLLL),
           bveEq (bvvar L0x7fffffffb0c0_HLLHo) (bvvar L0x7fffffffb0c0_HLLH),
           bveEq (bvvar L0x7fffffffb0c0_HLHLo) (bvvar L0x7fffffffb0c0_HLHL),
           bveEq (bvvar L0x7fffffffb0c0_HLHHo) (bvvar L0x7fffffffb0c0_HLHH),
           bveEq (bvvar L0x7fffffffb0c0_HHLLo) (bvvar L0x7fffffffb0c0_HHLL),
           bveEq (bvvar L0x7fffffffb0c0_HHLHo) (bvvar L0x7fffffffb0c0_HHLH),
           bveEq (bvvar L0x7fffffffb0c0_HHHLo) (bvvar L0x7fffffffb0c0_HHHL),
           bveEq (bvvar L0x7fffffffb0c0_HHHHo) (bvvar L0x7fffffffb0c0_HHHH),
           bveEq (bvvar L0x7fffffffb0e0_LLLLo) (bvvar L0x7fffffffb0e0_LLLL),
           bveEq (bvvar L0x7fffffffb0e0_LLLHo) (bvvar L0x7fffffffb0e0_LLLH),
           bveEq (bvvar L0x7fffffffb0e0_LLHLo) (bvvar L0x7fffffffb0e0_LLHL),
           bveEq (bvvar L0x7fffffffb0e0_LLHHo) (bvvar L0x7fffffffb0e0_LLHH),
           bveEq (bvvar L0x7fffffffb0e0_LHLLo) (bvvar L0x7fffffffb0e0_LHLL),
           bveEq (bvvar L0x7fffffffb0e0_LHLHo) (bvvar L0x7fffffffb0e0_LHLH),
           bveEq (bvvar L0x7fffffffb0e0_LHHLo) (bvvar L0x7fffffffb0e0_LHHL),
           bveEq (bvvar L0x7fffffffb0e0_LHHHo) (bvvar L0x7fffffffb0e0_LHHH),
           bveEq (bvvar L0x7fffffffb0e0_HLLLo) (bvvar L0x7fffffffb0e0_HLLL),
           bveEq (bvvar L0x7fffffffb0e0_HLLHo) (bvvar L0x7fffffffb0e0_HLLH),
           bveEq (bvvar L0x7fffffffb0e0_HLHLo) (bvvar L0x7fffffffb0e0_HLHL),
           bveEq (bvvar L0x7fffffffb0e0_HLHHo) (bvvar L0x7fffffffb0e0_HLHH),
           bveEq (bvvar L0x7fffffffb0e0_HHLLo) (bvvar L0x7fffffffb0e0_HHLL),
           bveEq (bvvar L0x7fffffffb0e0_HHLHo) (bvvar L0x7fffffffb0e0_HHLH),
           bveEq (bvvar L0x7fffffffb0e0_HHHLo) (bvvar L0x7fffffffb0e0_HHHL),
           bveEq (bvvar L0x7fffffffb0e0_HHHHo) (bvvar L0x7fffffffb0e0_HHHH),
           bveEq (bvvar L0x7fffffffb100_LLLLo) (bvvar L0x7fffffffb100_LLLL),
           bveEq (bvvar L0x7fffffffb100_LLLHo) (bvvar L0x7fffffffb100_LLLH),
           bveEq (bvvar L0x7fffffffb100_LLHLo) (bvvar L0x7fffffffb100_LLHL),
           bveEq (bvvar L0x7fffffffb100_LLHHo) (bvvar L0x7fffffffb100_LLHH),
           bveEq (bvvar L0x7fffffffb100_LHLLo) (bvvar L0x7fffffffb100_LHLL),
           bveEq (bvvar L0x7fffffffb100_LHLHo) (bvvar L0x7fffffffb100_LHLH),
           bveEq (bvvar L0x7fffffffb100_LHHLo) (bvvar L0x7fffffffb100_LHHL),
           bveEq (bvvar L0x7fffffffb100_LHHHo) (bvvar L0x7fffffffb100_LHHH),
           bveEq (bvvar L0x7fffffffb100_HLLLo) (bvvar L0x7fffffffb100_HLLL),
           bveEq (bvvar L0x7fffffffb100_HLLHo) (bvvar L0x7fffffffb100_HLLH),
           bveEq (bvvar L0x7fffffffb100_HLHLo) (bvvar L0x7fffffffb100_HLHL),
           bveEq (bvvar L0x7fffffffb100_HLHHo) (bvvar L0x7fffffffb100_HLHH),
           bveEq (bvvar L0x7fffffffb100_HHLLo) (bvvar L0x7fffffffb100_HHLL),
           bveEq (bvvar L0x7fffffffb100_HHLHo) (bvvar L0x7fffffffb100_HHLH),
           bveEq (bvvar L0x7fffffffb100_HHHLo) (bvvar L0x7fffffffb100_HHHL),
           bveEq (bvvar L0x7fffffffb100_HHHHo) (bvvar L0x7fffffffb100_HHHH),
           bveEq (bvvar L0x7fffffffb120_LLLLo) (bvvar L0x7fffffffb120_LLLL),
           bveEq (bvvar L0x7fffffffb120_LLLHo) (bvvar L0x7fffffffb120_LLLH),
           bveEq (bvvar L0x7fffffffb120_LLHLo) (bvvar L0x7fffffffb120_LLHL),
           bveEq (bvvar L0x7fffffffb120_LLHHo) (bvvar L0x7fffffffb120_LLHH),
           bveEq (bvvar L0x7fffffffb120_LHLLo) (bvvar L0x7fffffffb120_LHLL),
           bveEq (bvvar L0x7fffffffb120_LHLHo) (bvvar L0x7fffffffb120_LHLH),
           bveEq (bvvar L0x7fffffffb120_LHHLo) (bvvar L0x7fffffffb120_LHHL),
           bveEq (bvvar L0x7fffffffb120_LHHHo) (bvvar L0x7fffffffb120_LHHH),
           bveEq (bvvar L0x7fffffffb120_HLLLo) (bvvar L0x7fffffffb120_HLLL),
           bveEq (bvvar L0x7fffffffb120_HLLHo) (bvvar L0x7fffffffb120_HLLH),
           bveEq (bvvar L0x7fffffffb120_HLHLo) (bvvar L0x7fffffffb120_HLHL),
           bveEq (bvvar L0x7fffffffb120_HLHHo) (bvvar L0x7fffffffb120_HLHH),
           bveEq (bvvar L0x7fffffffb120_HHLLo) (bvvar L0x7fffffffb120_HHLL),
           bveEq (bvvar L0x7fffffffb120_HHLHo) (bvvar L0x7fffffffb120_HHLH),
           bveEq (bvvar L0x7fffffffb120_HHHLo) (bvvar L0x7fffffffb120_HHHL),
           bveEq (bvvar L0x7fffffffb120_HHHHo) (bvvar L0x7fffffffb120_HHHH),
           bveEq (bvvar L0x7fffffffb140_LLLLo) (bvvar L0x7fffffffb140_LLLL),
           bveEq (bvvar L0x7fffffffb140_LLLHo) (bvvar L0x7fffffffb140_LLLH),
           bveEq (bvvar L0x7fffffffb140_LLHLo) (bvvar L0x7fffffffb140_LLHL),
           bveEq (bvvar L0x7fffffffb140_LLHHo) (bvvar L0x7fffffffb140_LLHH),
           bveEq (bvvar L0x7fffffffb140_LHLLo) (bvvar L0x7fffffffb140_LHLL),
           bveEq (bvvar L0x7fffffffb140_LHLHo) (bvvar L0x7fffffffb140_LHLH),
           bveEq (bvvar L0x7fffffffb140_LHHLo) (bvvar L0x7fffffffb140_LHHL),
           bveEq (bvvar L0x7fffffffb140_LHHHo) (bvvar L0x7fffffffb140_LHHH),
           bveEq (bvvar L0x7fffffffb140_HLLLo) (bvvar L0x7fffffffb140_HLLL),
           bveEq (bvvar L0x7fffffffb140_HLLHo) (bvvar L0x7fffffffb140_HLLH),
           bveEq (bvvar L0x7fffffffb140_HLHLo) (bvvar L0x7fffffffb140_HLHL),
           bveEq (bvvar L0x7fffffffb140_HLHHo) (bvvar L0x7fffffffb140_HLHH),
           bveEq (bvvar L0x7fffffffb140_HHLLo) (bvvar L0x7fffffffb140_HHLL),
           bveEq (bvvar L0x7fffffffb140_HHLHo) (bvvar L0x7fffffffb140_HHLH),
           bveEq (bvvar L0x7fffffffb140_HHHLo) (bvvar L0x7fffffffb140_HHHL),
           bveEq (bvvar L0x7fffffffb140_HHHHo) (bvvar L0x7fffffffb140_HHHH),
           bveEq (bvvar L0x7fffffffb160_LLLLo) (bvvar L0x7fffffffb160_LLLL),
           bveEq (bvvar L0x7fffffffb160_LLLHo) (bvvar L0x7fffffffb160_LLLH),
           bveEq (bvvar L0x7fffffffb160_LLHLo) (bvvar L0x7fffffffb160_LLHL),
           bveEq (bvvar L0x7fffffffb160_LLHHo) (bvvar L0x7fffffffb160_LLHH),
           bveEq (bvvar L0x7fffffffb160_LHLLo) (bvvar L0x7fffffffb160_LHLL),
           bveEq (bvvar L0x7fffffffb160_LHLHo) (bvvar L0x7fffffffb160_LHLH),
           bveEq (bvvar L0x7fffffffb160_LHHLo) (bvvar L0x7fffffffb160_LHHL),
           bveEq (bvvar L0x7fffffffb160_LHHHo) (bvvar L0x7fffffffb160_LHHH),
           bveEq (bvvar L0x7fffffffb160_HLLLo) (bvvar L0x7fffffffb160_HLLL),
           bveEq (bvvar L0x7fffffffb160_HLLHo) (bvvar L0x7fffffffb160_HLLH),
           bveEq (bvvar L0x7fffffffb160_HLHLo) (bvvar L0x7fffffffb160_HLHL),
           bveEq (bvvar L0x7fffffffb160_HLHHo) (bvvar L0x7fffffffb160_HLHH),
           bveEq (bvvar L0x7fffffffb160_HHLLo) (bvvar L0x7fffffffb160_HHLL),
           bveEq (bvvar L0x7fffffffb160_HHLHo) (bvvar L0x7fffffffb160_HHLH),
           bveEq (bvvar L0x7fffffffb160_HHHLo) (bvvar L0x7fffffffb160_HHHL),
           bveEq (bvvar L0x7fffffffb160_HHHHo) (bvvar L0x7fffffffb160_HHHH),
           bveEq (bvvar L0x7fffffffb180_LLLLo) (bvvar L0x7fffffffb180_LLLL),
           bveEq (bvvar L0x7fffffffb180_LLLHo) (bvvar L0x7fffffffb180_LLLH),
           bveEq (bvvar L0x7fffffffb180_LLHLo) (bvvar L0x7fffffffb180_LLHL),
           bveEq (bvvar L0x7fffffffb180_LLHHo) (bvvar L0x7fffffffb180_LLHH),
           bveEq (bvvar L0x7fffffffb180_LHLLo) (bvvar L0x7fffffffb180_LHLL),
           bveEq (bvvar L0x7fffffffb180_LHLHo) (bvvar L0x7fffffffb180_LHLH),
           bveEq (bvvar L0x7fffffffb180_LHHLo) (bvvar L0x7fffffffb180_LHHL),
           bveEq (bvvar L0x7fffffffb180_LHHHo) (bvvar L0x7fffffffb180_LHHH),
           bveEq (bvvar L0x7fffffffb180_HLLLo) (bvvar L0x7fffffffb180_HLLL),
           bveEq (bvvar L0x7fffffffb180_HLLHo) (bvvar L0x7fffffffb180_HLLH),
           bveEq (bvvar L0x7fffffffb180_HLHLo) (bvvar L0x7fffffffb180_HLHL),
           bveEq (bvvar L0x7fffffffb180_HLHHo) (bvvar L0x7fffffffb180_HLHH),
           bveEq (bvvar L0x7fffffffb180_HHLLo) (bvvar L0x7fffffffb180_HHLL),
           bveEq (bvvar L0x7fffffffb180_HHLHo) (bvvar L0x7fffffffb180_HHLH),
           bveEq (bvvar L0x7fffffffb180_HHHLo) (bvvar L0x7fffffffb180_HHHL),
           bveEq (bvvar L0x7fffffffb180_HHHHo) (bvvar L0x7fffffffb180_HHHH),
           bveEq (bvvar L0x7fffffffb1a0_LLLLo) (bvvar L0x7fffffffb1a0_LLLL),
           bveEq (bvvar L0x7fffffffb1a0_LLLHo) (bvvar L0x7fffffffb1a0_LLLH),
           bveEq (bvvar L0x7fffffffb1a0_LLHLo) (bvvar L0x7fffffffb1a0_LLHL),
           bveEq (bvvar L0x7fffffffb1a0_LLHHo) (bvvar L0x7fffffffb1a0_LLHH),
           bveEq (bvvar L0x7fffffffb1a0_LHLLo) (bvvar L0x7fffffffb1a0_LHLL),
           bveEq (bvvar L0x7fffffffb1a0_LHLHo) (bvvar L0x7fffffffb1a0_LHLH),
           bveEq (bvvar L0x7fffffffb1a0_LHHLo) (bvvar L0x7fffffffb1a0_LHHL),
           bveEq (bvvar L0x7fffffffb1a0_LHHHo) (bvvar L0x7fffffffb1a0_LHHH),
           bveEq (bvvar L0x7fffffffb1a0_HLLLo) (bvvar L0x7fffffffb1a0_HLLL),
           bveEq (bvvar L0x7fffffffb1a0_HLLHo) (bvvar L0x7fffffffb1a0_HLLH),
           bveEq (bvvar L0x7fffffffb1a0_HLHLo) (bvvar L0x7fffffffb1a0_HLHL),
           bveEq (bvvar L0x7fffffffb1a0_HLHHo) (bvvar L0x7fffffffb1a0_HLHH),
           bveEq (bvvar L0x7fffffffb1a0_HHLLo) (bvvar L0x7fffffffb1a0_HHLL),
           bveEq (bvvar L0x7fffffffb1a0_HHLHo) (bvvar L0x7fffffffb1a0_HHLH),
           bveEq (bvvar L0x7fffffffb1a0_HHHLo) (bvvar L0x7fffffffb1a0_HHHL),
           bveEq (bvvar L0x7fffffffb1a0_HHHHo) (bvvar L0x7fffffffb1a0_HHHH),
           bveEq (bvvar L0x7fffffffb1c0_LLLLo) (bvvar L0x7fffffffb1c0_LLLL),
           bveEq (bvvar L0x7fffffffb1c0_LLLHo) (bvvar L0x7fffffffb1c0_LLLH),
           bveEq (bvvar L0x7fffffffb1c0_LLHLo) (bvvar L0x7fffffffb1c0_LLHL),
           bveEq (bvvar L0x7fffffffb1c0_LLHHo) (bvvar L0x7fffffffb1c0_LLHH),
           bveEq (bvvar L0x7fffffffb1c0_LHLLo) (bvvar L0x7fffffffb1c0_LHLL),
           bveEq (bvvar L0x7fffffffb1c0_LHLHo) (bvvar L0x7fffffffb1c0_LHLH),
           bveEq (bvvar L0x7fffffffb1c0_LHHLo) (bvvar L0x7fffffffb1c0_LHHL),
           bveEq (bvvar L0x7fffffffb1c0_LHHHo) (bvvar L0x7fffffffb1c0_LHHH),
           bveEq (bvvar L0x7fffffffb1c0_HLLLo) (bvvar L0x7fffffffb1c0_HLLL),
           bveEq (bvvar L0x7fffffffb1c0_HLLHo) (bvvar L0x7fffffffb1c0_HLLH),
           bveEq (bvvar L0x7fffffffb1c0_HLHLo) (bvvar L0x7fffffffb1c0_HLHL),
           bveEq (bvvar L0x7fffffffb1c0_HLHHo) (bvvar L0x7fffffffb1c0_HLHH),
           bveEq (bvvar L0x7fffffffb1c0_HHLLo) (bvvar L0x7fffffffb1c0_HHLL),
           bveEq (bvvar L0x7fffffffb1c0_HHLHo) (bvvar L0x7fffffffb1c0_HHLH),
           bveEq (bvvar L0x7fffffffb1c0_HHHLo) (bvvar L0x7fffffffb1c0_HHHL),
           bveEq (bvvar L0x7fffffffb1c0_HHHHo) (bvvar L0x7fffffffb1c0_HHHH),
           bveEq (bvvar L0x7fffffffb1e0_LLLLo) (bvvar L0x7fffffffb1e0_LLLL),
           bveEq (bvvar L0x7fffffffb1e0_LLLHo) (bvvar L0x7fffffffb1e0_LLLH),
           bveEq (bvvar L0x7fffffffb1e0_LLHLo) (bvvar L0x7fffffffb1e0_LLHL),
           bveEq (bvvar L0x7fffffffb1e0_LLHHo) (bvvar L0x7fffffffb1e0_LLHH),
           bveEq (bvvar L0x7fffffffb1e0_LHLLo) (bvvar L0x7fffffffb1e0_LHLL),
           bveEq (bvvar L0x7fffffffb1e0_LHLHo) (bvvar L0x7fffffffb1e0_LHLH),
           bveEq (bvvar L0x7fffffffb1e0_LHHLo) (bvvar L0x7fffffffb1e0_LHHL),
           bveEq (bvvar L0x7fffffffb1e0_LHHHo) (bvvar L0x7fffffffb1e0_LHHH),
           bveEq (bvvar L0x7fffffffb1e0_HLLLo) (bvvar L0x7fffffffb1e0_HLLL),
           bveEq (bvvar L0x7fffffffb1e0_HLLHo) (bvvar L0x7fffffffb1e0_HLLH),
           bveEq (bvvar L0x7fffffffb1e0_HLHLo) (bvvar L0x7fffffffb1e0_HLHL),
           bveEq (bvvar L0x7fffffffb1e0_HLHHo) (bvvar L0x7fffffffb1e0_HLHH),
           bveEq (bvvar L0x7fffffffb1e0_HHLLo) (bvvar L0x7fffffffb1e0_HHLL),
           bveEq (bvvar L0x7fffffffb1e0_HHLHo) (bvvar L0x7fffffffb1e0_HHLH),
           bveEq (bvvar L0x7fffffffb1e0_HHHLo) (bvvar L0x7fffffffb1e0_HHHL),
           bveEq (bvvar L0x7fffffffb1e0_HHHHo) (bvvar L0x7fffffffb1e0_HHHH),
           bveEq (bvvar L0x7fffffffb200_LLLLo) (bvvar L0x7fffffffb200_LLLL),
           bveEq (bvvar L0x7fffffffb200_LLLHo) (bvvar L0x7fffffffb200_LLLH),
           bveEq (bvvar L0x7fffffffb200_LLHLo) (bvvar L0x7fffffffb200_LLHL),
           bveEq (bvvar L0x7fffffffb200_LLHHo) (bvvar L0x7fffffffb200_LLHH),
           bveEq (bvvar L0x7fffffffb200_LHLLo) (bvvar L0x7fffffffb200_LHLL),
           bveEq (bvvar L0x7fffffffb200_LHLHo) (bvvar L0x7fffffffb200_LHLH),
           bveEq (bvvar L0x7fffffffb200_LHHLo) (bvvar L0x7fffffffb200_LHHL),
           bveEq (bvvar L0x7fffffffb200_LHHHo) (bvvar L0x7fffffffb200_LHHH),
           bveEq (bvvar L0x7fffffffb200_HLLLo) (bvvar L0x7fffffffb200_HLLL),
           bveEq (bvvar L0x7fffffffb200_HLLHo) (bvvar L0x7fffffffb200_HLLH),
           bveEq (bvvar L0x7fffffffb200_HLHLo) (bvvar L0x7fffffffb200_HLHL),
           bveEq (bvvar L0x7fffffffb200_HLHHo) (bvvar L0x7fffffffb200_HLHH),
           bveEq (bvvar L0x7fffffffb200_HHLLo) (bvvar L0x7fffffffb200_HHLL),
           bveEq (bvvar L0x7fffffffb200_HHLHo) (bvvar L0x7fffffffb200_HHLH),
           bveEq (bvvar L0x7fffffffb200_HHHLo) (bvvar L0x7fffffffb200_HHHL),
           bveEq (bvvar L0x7fffffffb200_HHHHo) (bvvar L0x7fffffffb200_HHHH),
           bveEq (bvvar L0x7fffffffb220_LLLLo) (bvvar L0x7fffffffb220_LLLL),
           bveEq (bvvar L0x7fffffffb220_LLLHo) (bvvar L0x7fffffffb220_LLLH),
           bveEq (bvvar L0x7fffffffb220_LLHLo) (bvvar L0x7fffffffb220_LLHL),
           bveEq (bvvar L0x7fffffffb220_LLHHo) (bvvar L0x7fffffffb220_LLHH),
           bveEq (bvvar L0x7fffffffb220_LHLLo) (bvvar L0x7fffffffb220_LHLL),
           bveEq (bvvar L0x7fffffffb220_LHLHo) (bvvar L0x7fffffffb220_LHLH),
           bveEq (bvvar L0x7fffffffb220_LHHLo) (bvvar L0x7fffffffb220_LHHL),
           bveEq (bvvar L0x7fffffffb220_LHHHo) (bvvar L0x7fffffffb220_LHHH),
           bveEq (bvvar L0x7fffffffb220_HLLLo) (bvvar L0x7fffffffb220_HLLL),
           bveEq (bvvar L0x7fffffffb220_HLLHo) (bvvar L0x7fffffffb220_HLLH),
           bveEq (bvvar L0x7fffffffb220_HLHLo) (bvvar L0x7fffffffb220_HLHL),
           bveEq (bvvar L0x7fffffffb220_HLHHo) (bvvar L0x7fffffffb220_HLHH),
           bveEq (bvvar L0x7fffffffb220_HHLLo) (bvvar L0x7fffffffb220_HHLL),
           bveEq (bvvar L0x7fffffffb220_HHLHo) (bvvar L0x7fffffffb220_HHLH),
           bveEq (bvvar L0x7fffffffb220_HHHLo) (bvvar L0x7fffffffb220_HHHL),
           bveEq (bvvar L0x7fffffffb220_HHHHo) (bvvar L0x7fffffffb220_HHHH)]
  |
    bvTrue;

(* vpunpcklwd %ymm3,%ymm10,%ymm12 *)
bvAssign ymm12_LLLL (bvVar ymm10_LLLL);
bvAssign ymm12_LLLH (bvVar ymm3_LLLL);
bvAssign ymm12_LLHL (bvVar ymm10_LLLH);
bvAssign ymm12_LLHH (bvVar ymm3_LLLH);
bvAssign ymm12_LHLL (bvVar ymm10_LLHL);
bvAssign ymm12_LHLH (bvVar ymm3_LLHL);
bvAssign ymm12_LHHL (bvVar ymm10_LLHH);
bvAssign ymm12_LHHH (bvVar ymm3_LLHH);
bvAssign ymm12_HLLL (bvVar ymm10_HLLL);
bvAssign ymm12_HLLH (bvVar ymm3_HLLL);
bvAssign ymm12_HLHL (bvVar ymm10_HLLH);
bvAssign ymm12_HLHH (bvVar ymm3_HLLH);
bvAssign ymm12_HHLL (bvVar ymm10_HLHL);
bvAssign ymm12_HHLH (bvVar ymm3_HLHL);
bvAssign ymm12_HHHL (bvVar ymm10_HLHH);
bvAssign ymm12_HHHH (bvVar ymm3_HLHH);
(* vpunpckhwd %ymm3,%ymm10,%ymm13 *)
bvAssign ymm13_LLLL (bvVar ymm10_LHLL);
bvAssign ymm13_LLLH (bvVar ymm3_LHLL);
bvAssign ymm13_LLHL (bvVar ymm10_LHLH);
bvAssign ymm13_LLHH (bvVar ymm3_LHLH);
bvAssign ymm13_LHLL (bvVar ymm10_LHHL);
bvAssign ymm13_LHLH (bvVar ymm3_LHHL);
bvAssign ymm13_LHHL (bvVar ymm10_LHHH);
bvAssign ymm13_LHHH (bvVar ymm3_LHHH);
bvAssign ymm13_HLLL (bvVar ymm10_HHLL);
bvAssign ymm13_HLLH (bvVar ymm3_HHLL);
bvAssign ymm13_HLHL (bvVar ymm10_HHLH);
bvAssign ymm13_HLHH (bvVar ymm3_HHLH);
bvAssign ymm13_HHLL (bvVar ymm10_HHHL);
bvAssign ymm13_HHLH (bvVar ymm3_HHHL);
bvAssign ymm13_HHHL (bvVar ymm10_HHHH);
bvAssign ymm13_HHHH (bvVar ymm3_HHHH);
(* vpunpcklwd %ymm5,%ymm4,%ymm14 *)
bvAssign ymm14_LLLL (bvVar ymm4_LLLL);
bvAssign ymm14_LLLH (bvVar ymm5_LLLL);
bvAssign ymm14_LLHL (bvVar ymm4_LLLH);
bvAssign ymm14_LLHH (bvVar ymm5_LLLH);
bvAssign ymm14_LHLL (bvVar ymm4_LLHL);
bvAssign ymm14_LHLH (bvVar ymm5_LLHL);
bvAssign ymm14_LHHL (bvVar ymm4_LLHH);
bvAssign ymm14_LHHH (bvVar ymm5_LLHH);
bvAssign ymm14_HLLL (bvVar ymm4_HLLL);
bvAssign ymm14_HLLH (bvVar ymm5_HLLL);
bvAssign ymm14_HLHL (bvVar ymm4_HLLH);
bvAssign ymm14_HLHH (bvVar ymm5_HLLH);
bvAssign ymm14_HHLL (bvVar ymm4_HLHL);
bvAssign ymm14_HHLH (bvVar ymm5_HLHL);
bvAssign ymm14_HHHL (bvVar ymm4_HLHH);
bvAssign ymm14_HHHH (bvVar ymm5_HLHH);
(* vpunpckhwd %ymm5,%ymm4,%ymm15 *)
bvAssign ymm15_LLLL (bvVar ymm4_LHLL);
bvAssign ymm15_LLLH (bvVar ymm5_LHLL);
bvAssign ymm15_LLHL (bvVar ymm4_LHLH);
bvAssign ymm15_LLHH (bvVar ymm5_LHLH);
bvAssign ymm15_LHLL (bvVar ymm4_LHHL);
bvAssign ymm15_LHLH (bvVar ymm5_LHHL);
bvAssign ymm15_LHHL (bvVar ymm4_LHHH);
bvAssign ymm15_LHHH (bvVar ymm5_LHHH);
bvAssign ymm15_HLLL (bvVar ymm4_HHLL);
bvAssign ymm15_HLLH (bvVar ymm5_HHLL);
bvAssign ymm15_HLHL (bvVar ymm4_HHLH);
bvAssign ymm15_HLHH (bvVar ymm5_HHLH);
bvAssign ymm15_HHLL (bvVar ymm4_HHHL);
bvAssign ymm15_HHLH (bvVar ymm5_HHHL);
bvAssign ymm15_HHHL (bvVar ymm4_HHHH);
bvAssign ymm15_HHHH (bvVar ymm5_HHHH);
(* vpunpcklwd %ymm7,%ymm6,%ymm3 *)
bvAssign ymm3_LLLL (bvVar ymm6_LLLL);
bvAssign ymm3_LLLH (bvVar ymm7_LLLL);
bvAssign ymm3_LLHL (bvVar ymm6_LLLH);
bvAssign ymm3_LLHH (bvVar ymm7_LLLH);
bvAssign ymm3_LHLL (bvVar ymm6_LLHL);
bvAssign ymm3_LHLH (bvVar ymm7_LLHL);
bvAssign ymm3_LHHL (bvVar ymm6_LLHH);
bvAssign ymm3_LHHH (bvVar ymm7_LLHH);
bvAssign ymm3_HLLL (bvVar ymm6_HLLL);
bvAssign ymm3_HLLH (bvVar ymm7_HLLL);
bvAssign ymm3_HLHL (bvVar ymm6_HLLH);
bvAssign ymm3_HLHH (bvVar ymm7_HLLH);
bvAssign ymm3_HHLL (bvVar ymm6_HLHL);
bvAssign ymm3_HHLH (bvVar ymm7_HLHL);
bvAssign ymm3_HHHL (bvVar ymm6_HLHH);
bvAssign ymm3_HHHH (bvVar ymm7_HLHH);
(* vpunpckhwd %ymm7,%ymm6,%ymm4 *)
bvAssign ymm4_LLLL (bvVar ymm6_LHLL);
bvAssign ymm4_LLLH (bvVar ymm7_LHLL);
bvAssign ymm4_LLHL (bvVar ymm6_LHLH);
bvAssign ymm4_LLHH (bvVar ymm7_LHLH);
bvAssign ymm4_LHLL (bvVar ymm6_LHHL);
bvAssign ymm4_LHLH (bvVar ymm7_LHHL);
bvAssign ymm4_LHHL (bvVar ymm6_LHHH);
bvAssign ymm4_LHHH (bvVar ymm7_LHHH);
bvAssign ymm4_HLLL (bvVar ymm6_HHLL);
bvAssign ymm4_HLLH (bvVar ymm7_HHLL);
bvAssign ymm4_HLHL (bvVar ymm6_HHLH);
bvAssign ymm4_HLHH (bvVar ymm7_HHLH);
bvAssign ymm4_HHLL (bvVar ymm6_HHHL);
bvAssign ymm4_HHLH (bvVar ymm7_HHHL);
bvAssign ymm4_HHHL (bvVar ymm6_HHHH);
bvAssign ymm4_HHHH (bvVar ymm7_HHHH);
(* vpunpcklwd %ymm9,%ymm8,%ymm5 *)
bvAssign ymm5_LLLL (bvVar ymm8_LLLL);
bvAssign ymm5_LLLH (bvVar ymm9_LLLL);
bvAssign ymm5_LLHL (bvVar ymm8_LLLH);
bvAssign ymm5_LLHH (bvVar ymm9_LLLH);
bvAssign ymm5_LHLL (bvVar ymm8_LLHL);
bvAssign ymm5_LHLH (bvVar ymm9_LLHL);
bvAssign ymm5_LHHL (bvVar ymm8_LLHH);
bvAssign ymm5_LHHH (bvVar ymm9_LLHH);
bvAssign ymm5_HLLL (bvVar ymm8_HLLL);
bvAssign ymm5_HLLH (bvVar ymm9_HLLL);
bvAssign ymm5_HLHL (bvVar ymm8_HLLH);
bvAssign ymm5_HLHH (bvVar ymm9_HLLH);
bvAssign ymm5_HHLL (bvVar ymm8_HLHL);
bvAssign ymm5_HHLH (bvVar ymm9_HLHL);
bvAssign ymm5_HHHL (bvVar ymm8_HLHH);
bvAssign ymm5_HHHH (bvVar ymm9_HLHH);
(* vpunpckhwd %ymm9,%ymm8,%ymm6 *)
bvAssign ymm6_LLLL (bvVar ymm8_LHLL);
bvAssign ymm6_LLLH (bvVar ymm9_LHLL);
bvAssign ymm6_LLHL (bvVar ymm8_LHLH);
bvAssign ymm6_LLHH (bvVar ymm9_LHLH);
bvAssign ymm6_LHLL (bvVar ymm8_LHHL);
bvAssign ymm6_LHLH (bvVar ymm9_LHHL);
bvAssign ymm6_LHHL (bvVar ymm8_LHHH);
bvAssign ymm6_LHHH (bvVar ymm9_LHHH);
bvAssign ymm6_HLLL (bvVar ymm8_HHLL);
bvAssign ymm6_HLLH (bvVar ymm9_HHLL);
bvAssign ymm6_HLHL (bvVar ymm8_HHLH);
bvAssign ymm6_HLHH (bvVar ymm9_HHLH);
bvAssign ymm6_HHLL (bvVar ymm8_HHHL);
bvAssign ymm6_HHLH (bvVar ymm9_HHHL);
bvAssign ymm6_HHHL (bvVar ymm8_HHHH);
bvAssign ymm6_HHHH (bvVar ymm9_HHHH);
(* vperm2i128 $0x20,%ymm13,%ymm12,%ymm11 *)
bvAssign ymm11_LLLL (bvVar ymm12_LLLL);
bvAssign ymm11_LLLH (bvVar ymm12_LLLH);
bvAssign ymm11_LLHL (bvVar ymm12_LLHL);
bvAssign ymm11_LLHH (bvVar ymm12_LLHH);
bvAssign ymm11_LHLL (bvVar ymm12_LHLL);
bvAssign ymm11_LHLH (bvVar ymm12_LHLH);
bvAssign ymm11_LHHL (bvVar ymm12_LHHL);
bvAssign ymm11_LHHH (bvVar ymm12_LHHH);
bvAssign ymm11_HLLL (bvVar ymm13_LLLL);
bvAssign ymm11_HLLH (bvVar ymm13_LLLH);
bvAssign ymm11_HLHL (bvVar ymm13_LLHL);
bvAssign ymm11_HLHH (bvVar ymm13_LLHH);
bvAssign ymm11_HHLL (bvVar ymm13_LHLL);
bvAssign ymm11_HHLH (bvVar ymm13_LHLH);
bvAssign ymm11_HHHL (bvVar ymm13_LHHL);
bvAssign ymm11_HHHH (bvVar ymm13_LHHH);
(* vperm2i128 $0x31,%ymm13,%ymm12,%ymm12 *)
bvAssign ymm12_LLLL (bvVar ymm12_HLLL);
bvAssign ymm12_LLLH (bvVar ymm12_HLLH);
bvAssign ymm12_LLHL (bvVar ymm12_HLHL);
bvAssign ymm12_LLHH (bvVar ymm12_HLHH);
bvAssign ymm12_LHLL (bvVar ymm12_HHLL);
bvAssign ymm12_LHLH (bvVar ymm12_HHLH);
bvAssign ymm12_LHHL (bvVar ymm12_HHHL);
bvAssign ymm12_LHHH (bvVar ymm12_HHHH);
bvAssign ymm12_HLLL (bvVar ymm13_HLLL);
bvAssign ymm12_HLLH (bvVar ymm13_HLLH);
bvAssign ymm12_HLHL (bvVar ymm13_HLHL);
bvAssign ymm12_HLHH (bvVar ymm13_HLHH);
bvAssign ymm12_HHLL (bvVar ymm13_HHLL);
bvAssign ymm12_HHLH (bvVar ymm13_HHLH);
bvAssign ymm12_HHHL (bvVar ymm13_HHHL);
bvAssign ymm12_HHHH (bvVar ymm13_HHHH);
(* vperm2i128 $0x20,%ymm15,%ymm14,%ymm13 *)
bvAssign ymm13_LLLL (bvVar ymm14_LLLL);
bvAssign ymm13_LLLH (bvVar ymm14_LLLH);
bvAssign ymm13_LLHL (bvVar ymm14_LLHL);
bvAssign ymm13_LLHH (bvVar ymm14_LLHH);
bvAssign ymm13_LHLL (bvVar ymm14_LHLL);
bvAssign ymm13_LHLH (bvVar ymm14_LHLH);
bvAssign ymm13_LHHL (bvVar ymm14_LHHL);
bvAssign ymm13_LHHH (bvVar ymm14_LHHH);
bvAssign ymm13_HLLL (bvVar ymm15_LLLL);
bvAssign ymm13_HLLH (bvVar ymm15_LLLH);
bvAssign ymm13_HLHL (bvVar ymm15_LLHL);
bvAssign ymm13_HLHH (bvVar ymm15_LLHH);
bvAssign ymm13_HHLL (bvVar ymm15_LHLL);
bvAssign ymm13_HHLH (bvVar ymm15_LHLH);
bvAssign ymm13_HHHL (bvVar ymm15_LHHL);
bvAssign ymm13_HHHH (bvVar ymm15_LHHH);
(* vperm2i128 $0x31,%ymm15,%ymm14,%ymm14 *)
bvAssign ymm14_LLLL (bvVar ymm14_HLLL);
bvAssign ymm14_LLLH (bvVar ymm14_HLLH);
bvAssign ymm14_LLHL (bvVar ymm14_HLHL);
bvAssign ymm14_LLHH (bvVar ymm14_HLHH);
bvAssign ymm14_LHLL (bvVar ymm14_HHLL);
bvAssign ymm14_LHLH (bvVar ymm14_HHLH);
bvAssign ymm14_LHHL (bvVar ymm14_HHHL);
bvAssign ymm14_LHHH (bvVar ymm14_HHHH);
bvAssign ymm14_HLLL (bvVar ymm15_HLLL);
bvAssign ymm14_HLLH (bvVar ymm15_HLLH);
bvAssign ymm14_HLHL (bvVar ymm15_HLHL);
bvAssign ymm14_HLHH (bvVar ymm15_HLHH);
bvAssign ymm14_HHLL (bvVar ymm15_HHLL);
bvAssign ymm14_HHLH (bvVar ymm15_HHLH);
bvAssign ymm14_HHHL (bvVar ymm15_HHHL);
bvAssign ymm14_HHHH (bvVar ymm15_HHHH);
(* vperm2i128 $0x20,%ymm4,%ymm3,%ymm15 *)
bvAssign ymm15_LLLL (bvVar ymm3_LLLL);
bvAssign ymm15_LLLH (bvVar ymm3_LLLH);
bvAssign ymm15_LLHL (bvVar ymm3_LLHL);
bvAssign ymm15_LLHH (bvVar ymm3_LLHH);
bvAssign ymm15_LHLL (bvVar ymm3_LHLL);
bvAssign ymm15_LHLH (bvVar ymm3_LHLH);
bvAssign ymm15_LHHL (bvVar ymm3_LHHL);
bvAssign ymm15_LHHH (bvVar ymm3_LHHH);
bvAssign ymm15_HLLL (bvVar ymm4_LLLL);
bvAssign ymm15_HLLH (bvVar ymm4_LLLH);
bvAssign ymm15_HLHL (bvVar ymm4_LLHL);
bvAssign ymm15_HLHH (bvVar ymm4_LLHH);
bvAssign ymm15_HHLL (bvVar ymm4_LHLL);
bvAssign ymm15_HHLH (bvVar ymm4_LHLH);
bvAssign ymm15_HHHL (bvVar ymm4_LHHL);
bvAssign ymm15_HHHH (bvVar ymm4_LHHH);
(* vperm2i128 $0x31,%ymm4,%ymm3,%ymm3 *)
bvAssign ymm3_LLLL (bvVar ymm3_HLLL);
bvAssign ymm3_LLLH (bvVar ymm3_HLLH);
bvAssign ymm3_LLHL (bvVar ymm3_HLHL);
bvAssign ymm3_LLHH (bvVar ymm3_HLHH);
bvAssign ymm3_LHLL (bvVar ymm3_HHLL);
bvAssign ymm3_LHLH (bvVar ymm3_HHLH);
bvAssign ymm3_LHHL (bvVar ymm3_HHHL);
bvAssign ymm3_LHHH (bvVar ymm3_HHHH);
bvAssign ymm3_HLLL (bvVar ymm4_HLLL);
bvAssign ymm3_HLLH (bvVar ymm4_HLLH);
bvAssign ymm3_HLHL (bvVar ymm4_HLHL);
bvAssign ymm3_HLHH (bvVar ymm4_HLHH);
bvAssign ymm3_HHLL (bvVar ymm4_HHLL);
bvAssign ymm3_HHLH (bvVar ymm4_HHLH);
bvAssign ymm3_HHHL (bvVar ymm4_HHHL);
bvAssign ymm3_HHHH (bvVar ymm4_HHHH);
(* vperm2i128 $0x20,%ymm6,%ymm5,%ymm4 *)
bvAssign ymm4_LLLL (bvVar ymm5_LLLL);
bvAssign ymm4_LLLH (bvVar ymm5_LLLH);
bvAssign ymm4_LLHL (bvVar ymm5_LLHL);
bvAssign ymm4_LLHH (bvVar ymm5_LLHH);
bvAssign ymm4_LHLL (bvVar ymm5_LHLL);
bvAssign ymm4_LHLH (bvVar ymm5_LHLH);
bvAssign ymm4_LHHL (bvVar ymm5_LHHL);
bvAssign ymm4_LHHH (bvVar ymm5_LHHH);
bvAssign ymm4_HLLL (bvVar ymm6_LLLL);
bvAssign ymm4_HLLH (bvVar ymm6_LLLH);
bvAssign ymm4_HLHL (bvVar ymm6_LLHL);
bvAssign ymm4_HLHH (bvVar ymm6_LLHH);
bvAssign ymm4_HHLL (bvVar ymm6_LHLL);
bvAssign ymm4_HHLH (bvVar ymm6_LHLH);
bvAssign ymm4_HHHL (bvVar ymm6_LHHL);
bvAssign ymm4_HHHH (bvVar ymm6_LHHH);
(* vperm2i128 $0x31,%ymm6,%ymm5,%ymm5 *)
bvAssign ymm5_LLLL (bvVar ymm5_HLLL);
bvAssign ymm5_LLLH (bvVar ymm5_HLLH);
bvAssign ymm5_LLHL (bvVar ymm5_HLHL);
bvAssign ymm5_LLHH (bvVar ymm5_HLHH);
bvAssign ymm5_LHLL (bvVar ymm5_HHLL);
bvAssign ymm5_LHLH (bvVar ymm5_HHLH);
bvAssign ymm5_LHHL (bvVar ymm5_HHHL);
bvAssign ymm5_LHHH (bvVar ymm5_HHHH);
bvAssign ymm5_HLLL (bvVar ymm6_HLLL);
bvAssign ymm5_HLLH (bvVar ymm6_HLLH);
bvAssign ymm5_HLHL (bvVar ymm6_HLHL);
bvAssign ymm5_HLHH (bvVar ymm6_HLHH);
bvAssign ymm5_HHLL (bvVar ymm6_HHLL);
bvAssign ymm5_HHLH (bvVar ymm6_HHLH);
bvAssign ymm5_HHHL (bvVar ymm6_HHHL);
bvAssign ymm5_HHHH (bvVar ymm6_HHHH);
(* vmovdqa %ymm11,(%rdi)                           #! EA = L0x7fffffffb040 *)
bvAssign L0x7fffffffb040_LLLL (bvVar ymm11_LLLL);
bvAssign L0x7fffffffb040_LLLH (bvVar ymm11_LLLH);
bvAssign L0x7fffffffb040_LLHL (bvVar ymm11_LLHL);
bvAssign L0x7fffffffb040_LLHH (bvVar ymm11_LLHH);
bvAssign L0x7fffffffb040_LHLL (bvVar ymm11_LHLL);
bvAssign L0x7fffffffb040_LHLH (bvVar ymm11_LHLH);
bvAssign L0x7fffffffb040_LHHL (bvVar ymm11_LHHL);
bvAssign L0x7fffffffb040_LHHH (bvVar ymm11_LHHH);
bvAssign L0x7fffffffb040_HLLL (bvVar ymm11_HLLL);
bvAssign L0x7fffffffb040_HLLH (bvVar ymm11_HLLH);
bvAssign L0x7fffffffb040_HLHL (bvVar ymm11_HLHL);
bvAssign L0x7fffffffb040_HLHH (bvVar ymm11_HLHH);
bvAssign L0x7fffffffb040_HHLL (bvVar ymm11_HHLL);
bvAssign L0x7fffffffb040_HHLH (bvVar ymm11_HHLH);
bvAssign L0x7fffffffb040_HHHL (bvVar ymm11_HHHL);
bvAssign L0x7fffffffb040_HHHH (bvVar ymm11_HHHH);
(* vmovdqa %ymm12,0x20(%rdi)                       #! EA = L0x7fffffffb060 *)
bvAssign L0x7fffffffb060_LLLL (bvVar ymm12_LLLL);
bvAssign L0x7fffffffb060_LLLH (bvVar ymm12_LLLH);
bvAssign L0x7fffffffb060_LLHL (bvVar ymm12_LLHL);
bvAssign L0x7fffffffb060_LLHH (bvVar ymm12_LLHH);
bvAssign L0x7fffffffb060_LHLL (bvVar ymm12_LHLL);
bvAssign L0x7fffffffb060_LHLH (bvVar ymm12_LHLH);
bvAssign L0x7fffffffb060_LHHL (bvVar ymm12_LHHL);
bvAssign L0x7fffffffb060_LHHH (bvVar ymm12_LHHH);
bvAssign L0x7fffffffb060_HLLL (bvVar ymm12_HLLL);
bvAssign L0x7fffffffb060_HLLH (bvVar ymm12_HLLH);
bvAssign L0x7fffffffb060_HLHL (bvVar ymm12_HLHL);
bvAssign L0x7fffffffb060_HLHH (bvVar ymm12_HLHH);
bvAssign L0x7fffffffb060_HHLL (bvVar ymm12_HHLL);
bvAssign L0x7fffffffb060_HHLH (bvVar ymm12_HHLH);
bvAssign L0x7fffffffb060_HHHL (bvVar ymm12_HHHL);
bvAssign L0x7fffffffb060_HHHH (bvVar ymm12_HHHH);
(* vmovdqa %ymm13,0x40(%rdi)                       #! EA = L0x7fffffffb080 *)
bvAssign L0x7fffffffb080_LLLL (bvVar ymm13_LLLL);
bvAssign L0x7fffffffb080_LLLH (bvVar ymm13_LLLH);
bvAssign L0x7fffffffb080_LLHL (bvVar ymm13_LLHL);
bvAssign L0x7fffffffb080_LLHH (bvVar ymm13_LLHH);
bvAssign L0x7fffffffb080_LHLL (bvVar ymm13_LHLL);
bvAssign L0x7fffffffb080_LHLH (bvVar ymm13_LHLH);
bvAssign L0x7fffffffb080_LHHL (bvVar ymm13_LHHL);
bvAssign L0x7fffffffb080_LHHH (bvVar ymm13_LHHH);
bvAssign L0x7fffffffb080_HLLL (bvVar ymm13_HLLL);
bvAssign L0x7fffffffb080_HLLH (bvVar ymm13_HLLH);
bvAssign L0x7fffffffb080_HLHL (bvVar ymm13_HLHL);
bvAssign L0x7fffffffb080_HLHH (bvVar ymm13_HLHH);
bvAssign L0x7fffffffb080_HHLL (bvVar ymm13_HHLL);
bvAssign L0x7fffffffb080_HHLH (bvVar ymm13_HHLH);
bvAssign L0x7fffffffb080_HHHL (bvVar ymm13_HHHL);
bvAssign L0x7fffffffb080_HHHH (bvVar ymm13_HHHH);
(* vmovdqa %ymm14,0x60(%rdi)                       #! EA = L0x7fffffffb0a0 *)
bvAssign L0x7fffffffb0a0_LLLL (bvVar ymm14_LLLL);
bvAssign L0x7fffffffb0a0_LLLH (bvVar ymm14_LLLH);
bvAssign L0x7fffffffb0a0_LLHL (bvVar ymm14_LLHL);
bvAssign L0x7fffffffb0a0_LLHH (bvVar ymm14_LLHH);
bvAssign L0x7fffffffb0a0_LHLL (bvVar ymm14_LHLL);
bvAssign L0x7fffffffb0a0_LHLH (bvVar ymm14_LHLH);
bvAssign L0x7fffffffb0a0_LHHL (bvVar ymm14_LHHL);
bvAssign L0x7fffffffb0a0_LHHH (bvVar ymm14_LHHH);
bvAssign L0x7fffffffb0a0_HLLL (bvVar ymm14_HLLL);
bvAssign L0x7fffffffb0a0_HLLH (bvVar ymm14_HLLH);
bvAssign L0x7fffffffb0a0_HLHL (bvVar ymm14_HLHL);
bvAssign L0x7fffffffb0a0_HLHH (bvVar ymm14_HLHH);
bvAssign L0x7fffffffb0a0_HHLL (bvVar ymm14_HHLL);
bvAssign L0x7fffffffb0a0_HHLH (bvVar ymm14_HHLH);
bvAssign L0x7fffffffb0a0_HHHL (bvVar ymm14_HHHL);
bvAssign L0x7fffffffb0a0_HHHH (bvVar ymm14_HHHH);
(* vmovdqa %ymm15,0x80(%rdi)                       #! EA = L0x7fffffffb0c0 *)
bvAssign L0x7fffffffb0c0_LLLL (bvVar ymm15_LLLL);
bvAssign L0x7fffffffb0c0_LLLH (bvVar ymm15_LLLH);
bvAssign L0x7fffffffb0c0_LLHL (bvVar ymm15_LLHL);
bvAssign L0x7fffffffb0c0_LLHH (bvVar ymm15_LLHH);
bvAssign L0x7fffffffb0c0_LHLL (bvVar ymm15_LHLL);
bvAssign L0x7fffffffb0c0_LHLH (bvVar ymm15_LHLH);
bvAssign L0x7fffffffb0c0_LHHL (bvVar ymm15_LHHL);
bvAssign L0x7fffffffb0c0_LHHH (bvVar ymm15_LHHH);
bvAssign L0x7fffffffb0c0_HLLL (bvVar ymm15_HLLL);
bvAssign L0x7fffffffb0c0_HLLH (bvVar ymm15_HLLH);
bvAssign L0x7fffffffb0c0_HLHL (bvVar ymm15_HLHL);
bvAssign L0x7fffffffb0c0_HLHH (bvVar ymm15_HLHH);
bvAssign L0x7fffffffb0c0_HHLL (bvVar ymm15_HHLL);
bvAssign L0x7fffffffb0c0_HHLH (bvVar ymm15_HHLH);
bvAssign L0x7fffffffb0c0_HHHL (bvVar ymm15_HHHL);
bvAssign L0x7fffffffb0c0_HHHH (bvVar ymm15_HHHH);
(* vmovdqa %ymm3,0xa0(%rdi)                        #! EA = L0x7fffffffb0e0 *)
bvAssign L0x7fffffffb0e0_LLLL (bvVar ymm3_LLLL);
bvAssign L0x7fffffffb0e0_LLLH (bvVar ymm3_LLLH);
bvAssign L0x7fffffffb0e0_LLHL (bvVar ymm3_LLHL);
bvAssign L0x7fffffffb0e0_LLHH (bvVar ymm3_LLHH);
bvAssign L0x7fffffffb0e0_LHLL (bvVar ymm3_LHLL);
bvAssign L0x7fffffffb0e0_LHLH (bvVar ymm3_LHLH);
bvAssign L0x7fffffffb0e0_LHHL (bvVar ymm3_LHHL);
bvAssign L0x7fffffffb0e0_LHHH (bvVar ymm3_LHHH);
bvAssign L0x7fffffffb0e0_HLLL (bvVar ymm3_HLLL);
bvAssign L0x7fffffffb0e0_HLLH (bvVar ymm3_HLLH);
bvAssign L0x7fffffffb0e0_HLHL (bvVar ymm3_HLHL);
bvAssign L0x7fffffffb0e0_HLHH (bvVar ymm3_HLHH);
bvAssign L0x7fffffffb0e0_HHLL (bvVar ymm3_HHLL);
bvAssign L0x7fffffffb0e0_HHLH (bvVar ymm3_HHLH);
bvAssign L0x7fffffffb0e0_HHHL (bvVar ymm3_HHHL);
bvAssign L0x7fffffffb0e0_HHHH (bvVar ymm3_HHHH);
(* vmovdqa %ymm4,0xc0(%rdi)                        #! EA = L0x7fffffffb100 *)
bvAssign L0x7fffffffb100_LLLL (bvVar ymm4_LLLL);
bvAssign L0x7fffffffb100_LLLH (bvVar ymm4_LLLH);
bvAssign L0x7fffffffb100_LLHL (bvVar ymm4_LLHL);
bvAssign L0x7fffffffb100_LLHH (bvVar ymm4_LLHH);
bvAssign L0x7fffffffb100_LHLL (bvVar ymm4_LHLL);
bvAssign L0x7fffffffb100_LHLH (bvVar ymm4_LHLH);
bvAssign L0x7fffffffb100_LHHL (bvVar ymm4_LHHL);
bvAssign L0x7fffffffb100_LHHH (bvVar ymm4_LHHH);
bvAssign L0x7fffffffb100_HLLL (bvVar ymm4_HLLL);
bvAssign L0x7fffffffb100_HLLH (bvVar ymm4_HLLH);
bvAssign L0x7fffffffb100_HLHL (bvVar ymm4_HLHL);
bvAssign L0x7fffffffb100_HLHH (bvVar ymm4_HLHH);
bvAssign L0x7fffffffb100_HHLL (bvVar ymm4_HHLL);
bvAssign L0x7fffffffb100_HHLH (bvVar ymm4_HHLH);
bvAssign L0x7fffffffb100_HHHL (bvVar ymm4_HHHL);
bvAssign L0x7fffffffb100_HHHH (bvVar ymm4_HHHH);
(* vmovdqa %ymm5,0xe0(%rdi)                        #! EA = L0x7fffffffb120 *)
bvAssign L0x7fffffffb120_LLLL (bvVar ymm5_LLLL);
bvAssign L0x7fffffffb120_LLLH (bvVar ymm5_LLLH);
bvAssign L0x7fffffffb120_LLHL (bvVar ymm5_LLHL);
bvAssign L0x7fffffffb120_LLHH (bvVar ymm5_LLHH);
bvAssign L0x7fffffffb120_LHLL (bvVar ymm5_LHLL);
bvAssign L0x7fffffffb120_LHLH (bvVar ymm5_LHLH);
bvAssign L0x7fffffffb120_LHHL (bvVar ymm5_LHHL);
bvAssign L0x7fffffffb120_LHHH (bvVar ymm5_LHHH);
bvAssign L0x7fffffffb120_HLLL (bvVar ymm5_HLLL);
bvAssign L0x7fffffffb120_HLLH (bvVar ymm5_HLLH);
bvAssign L0x7fffffffb120_HLHL (bvVar ymm5_HLHL);
bvAssign L0x7fffffffb120_HLHH (bvVar ymm5_HLHH);
bvAssign L0x7fffffffb120_HHLL (bvVar ymm5_HHLL);
bvAssign L0x7fffffffb120_HHLH (bvVar ymm5_HHLH);
bvAssign L0x7fffffffb120_HHHL (bvVar ymm5_HHHL);
bvAssign L0x7fffffffb120_HHHH (bvVar ymm5_HHHH);
(* vmovdqa 0x40(%rsi),%ymm3                        #! EA = L0x435b60 *)
bvAssign ymm3_LLLL (bvVar zeta040);
bvAssign ymm3_LLLH (bvVar zeta040);
bvAssign ymm3_LLHL (bvVar zeta040);
bvAssign ymm3_LLHH (bvVar zeta040);
bvAssign ymm3_LHLL (bvVar zeta040);
bvAssign ymm3_LHLH (bvVar zeta040);
bvAssign ymm3_LHHL (bvVar zeta040);
bvAssign ymm3_LHHH (bvVar zeta040);
bvAssign ymm3_HLLL (bvVar zeta040);
bvAssign ymm3_HLLH (bvVar zeta040);
bvAssign ymm3_HLHL (bvVar zeta040);
bvAssign ymm3_HLHH (bvVar zeta040);
bvAssign ymm3_HHLL (bvVar zeta040);
bvAssign ymm3_HHLH (bvVar zeta040);
bvAssign ymm3_HHHL (bvVar zeta040);
bvAssign ymm3_HHHH (bvVar zeta040);
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb140 *)
bvAssign ymm4_LLLL (bvVar L0x7fffffffb140_LLLL);
bvAssign ymm4_LLLH (bvVar L0x7fffffffb140_LLLH);
bvAssign ymm4_LLHL (bvVar L0x7fffffffb140_LLHL);
bvAssign ymm4_LLHH (bvVar L0x7fffffffb140_LLHH);
bvAssign ymm4_LHLL (bvVar L0x7fffffffb140_LHLL);
bvAssign ymm4_LHLH (bvVar L0x7fffffffb140_LHLH);
bvAssign ymm4_LHHL (bvVar L0x7fffffffb140_LHHL);
bvAssign ymm4_LHHH (bvVar L0x7fffffffb140_LHHH);
bvAssign ymm4_HLLL (bvVar L0x7fffffffb140_HLLL);
bvAssign ymm4_HLLH (bvVar L0x7fffffffb140_HLLH);
bvAssign ymm4_HLHL (bvVar L0x7fffffffb140_HLHL);
bvAssign ymm4_HLHH (bvVar L0x7fffffffb140_HLHH);
bvAssign ymm4_HHLL (bvVar L0x7fffffffb140_HHLL);
bvAssign ymm4_HHLH (bvVar L0x7fffffffb140_HHLH);
bvAssign ymm4_HHHL (bvVar L0x7fffffffb140_HHHL);
bvAssign ymm4_HHHH (bvVar L0x7fffffffb140_HHHH);
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb160 *)
bvAssign ymm5_LLLL (bvVar L0x7fffffffb160_LLLL);
bvAssign ymm5_LLLH (bvVar L0x7fffffffb160_LLLH);
bvAssign ymm5_LLHL (bvVar L0x7fffffffb160_LLHL);
bvAssign ymm5_LLHH (bvVar L0x7fffffffb160_LLHH);
bvAssign ymm5_LHLL (bvVar L0x7fffffffb160_LHLL);
bvAssign ymm5_LHLH (bvVar L0x7fffffffb160_LHLH);
bvAssign ymm5_LHHL (bvVar L0x7fffffffb160_LHHL);
bvAssign ymm5_LHHH (bvVar L0x7fffffffb160_LHHH);
bvAssign ymm5_HLLL (bvVar L0x7fffffffb160_HLLL);
bvAssign ymm5_HLLH (bvVar L0x7fffffffb160_HLLH);
bvAssign ymm5_HLHL (bvVar L0x7fffffffb160_HLHL);
bvAssign ymm5_HLHH (bvVar L0x7fffffffb160_HLHH);
bvAssign ymm5_HHLL (bvVar L0x7fffffffb160_HHLL);
bvAssign ymm5_HHLH (bvVar L0x7fffffffb160_HHLH);
bvAssign ymm5_HHHL (bvVar L0x7fffffffb160_HHHL);
bvAssign ymm5_HHHH (bvVar L0x7fffffffb160_HHHH);
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb180 *)
bvAssign ymm6_LLLL (bvVar L0x7fffffffb180_LLLL);
bvAssign ymm6_LLLH (bvVar L0x7fffffffb180_LLLH);
bvAssign ymm6_LLHL (bvVar L0x7fffffffb180_LLHL);
bvAssign ymm6_LLHH (bvVar L0x7fffffffb180_LLHH);
bvAssign ymm6_LHLL (bvVar L0x7fffffffb180_LHLL);
bvAssign ymm6_LHLH (bvVar L0x7fffffffb180_LHLH);
bvAssign ymm6_LHHL (bvVar L0x7fffffffb180_LHHL);
bvAssign ymm6_LHHH (bvVar L0x7fffffffb180_LHHH);
bvAssign ymm6_HLLL (bvVar L0x7fffffffb180_HLLL);
bvAssign ymm6_HLLH (bvVar L0x7fffffffb180_HLLH);
bvAssign ymm6_HLHL (bvVar L0x7fffffffb180_HLHL);
bvAssign ymm6_HLHH (bvVar L0x7fffffffb180_HLHH);
bvAssign ymm6_HHLL (bvVar L0x7fffffffb180_HHLL);
bvAssign ymm6_HHLH (bvVar L0x7fffffffb180_HHLH);
bvAssign ymm6_HHHL (bvVar L0x7fffffffb180_HHHL);
bvAssign ymm6_HHHH (bvVar L0x7fffffffb180_HHHH);
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb1a0 *)
bvAssign ymm7_LLLL (bvVar L0x7fffffffb1a0_LLLL);
bvAssign ymm7_LLLH (bvVar L0x7fffffffb1a0_LLLH);
bvAssign ymm7_LLHL (bvVar L0x7fffffffb1a0_LLHL);
bvAssign ymm7_LLHH (bvVar L0x7fffffffb1a0_LLHH);
bvAssign ymm7_LHLL (bvVar L0x7fffffffb1a0_LHLL);
bvAssign ymm7_LHLH (bvVar L0x7fffffffb1a0_LHLH);
bvAssign ymm7_LHHL (bvVar L0x7fffffffb1a0_LHHL);
bvAssign ymm7_LHHH (bvVar L0x7fffffffb1a0_LHHH);
bvAssign ymm7_HLLL (bvVar L0x7fffffffb1a0_HLLL);
bvAssign ymm7_HLLH (bvVar L0x7fffffffb1a0_HLLH);
bvAssign ymm7_HLHL (bvVar L0x7fffffffb1a0_HLHL);
bvAssign ymm7_HLHH (bvVar L0x7fffffffb1a0_HLHH);
bvAssign ymm7_HHLL (bvVar L0x7fffffffb1a0_HHLL);
bvAssign ymm7_HHLH (bvVar L0x7fffffffb1a0_HHLH);
bvAssign ymm7_HHHL (bvVar L0x7fffffffb1a0_HHHL);
bvAssign ymm7_HHHH (bvVar L0x7fffffffb1a0_HHHH);
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb1c0 *)
bvAssign ymm8_LLLL (bvVar L0x7fffffffb1c0_LLLL);
bvAssign ymm8_LLLH (bvVar L0x7fffffffb1c0_LLLH);
bvAssign ymm8_LLHL (bvVar L0x7fffffffb1c0_LLHL);
bvAssign ymm8_LLHH (bvVar L0x7fffffffb1c0_LLHH);
bvAssign ymm8_LHLL (bvVar L0x7fffffffb1c0_LHLL);
bvAssign ymm8_LHLH (bvVar L0x7fffffffb1c0_LHLH);
bvAssign ymm8_LHHL (bvVar L0x7fffffffb1c0_LHHL);
bvAssign ymm8_LHHH (bvVar L0x7fffffffb1c0_LHHH);
bvAssign ymm8_HLLL (bvVar L0x7fffffffb1c0_HLLL);
bvAssign ymm8_HLLH (bvVar L0x7fffffffb1c0_HLLH);
bvAssign ymm8_HLHL (bvVar L0x7fffffffb1c0_HLHL);
bvAssign ymm8_HLHH (bvVar L0x7fffffffb1c0_HLHH);
bvAssign ymm8_HHLL (bvVar L0x7fffffffb1c0_HHLL);
bvAssign ymm8_HHLH (bvVar L0x7fffffffb1c0_HHLH);
bvAssign ymm8_HHHL (bvVar L0x7fffffffb1c0_HHHL);
bvAssign ymm8_HHHH (bvVar L0x7fffffffb1c0_HHHH);
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb1e0 *)
bvAssign ymm9_LLLL (bvVar L0x7fffffffb1e0_LLLL);
bvAssign ymm9_LLLH (bvVar L0x7fffffffb1e0_LLLH);
bvAssign ymm9_LLHL (bvVar L0x7fffffffb1e0_LLHL);
bvAssign ymm9_LLHH (bvVar L0x7fffffffb1e0_LLHH);
bvAssign ymm9_LHLL (bvVar L0x7fffffffb1e0_LHLL);
bvAssign ymm9_LHLH (bvVar L0x7fffffffb1e0_LHLH);
bvAssign ymm9_LHHL (bvVar L0x7fffffffb1e0_LHHL);
bvAssign ymm9_LHHH (bvVar L0x7fffffffb1e0_LHHH);
bvAssign ymm9_HLLL (bvVar L0x7fffffffb1e0_HLLL);
bvAssign ymm9_HLLH (bvVar L0x7fffffffb1e0_HLLH);
bvAssign ymm9_HLHL (bvVar L0x7fffffffb1e0_HLHL);
bvAssign ymm9_HLHH (bvVar L0x7fffffffb1e0_HLHH);
bvAssign ymm9_HHLL (bvVar L0x7fffffffb1e0_HHLL);
bvAssign ymm9_HHLH (bvVar L0x7fffffffb1e0_HHLH);
bvAssign ymm9_HHHL (bvVar L0x7fffffffb1e0_HHHL);
bvAssign ymm9_HHHH (bvVar L0x7fffffffb1e0_HHHH);
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb200 *)
bvAssign ymm10_LLLL (bvVar L0x7fffffffb200_LLLL);
bvAssign ymm10_LLLH (bvVar L0x7fffffffb200_LLLH);
bvAssign ymm10_LLHL (bvVar L0x7fffffffb200_LLHL);
bvAssign ymm10_LLHH (bvVar L0x7fffffffb200_LLHH);
bvAssign ymm10_LHLL (bvVar L0x7fffffffb200_LHLL);
bvAssign ymm10_LHLH (bvVar L0x7fffffffb200_LHLH);
bvAssign ymm10_LHHL (bvVar L0x7fffffffb200_LHHL);
bvAssign ymm10_LHHH (bvVar L0x7fffffffb200_LHHH);
bvAssign ymm10_HLLL (bvVar L0x7fffffffb200_HLLL);
bvAssign ymm10_HLLH (bvVar L0x7fffffffb200_HLLH);
bvAssign ymm10_HLHL (bvVar L0x7fffffffb200_HLHL);
bvAssign ymm10_HLHH (bvVar L0x7fffffffb200_HLHH);
bvAssign ymm10_HHLL (bvVar L0x7fffffffb200_HHLL);
bvAssign ymm10_HHLH (bvVar L0x7fffffffb200_HHLH);
bvAssign ymm10_HHHL (bvVar L0x7fffffffb200_HHHL);
bvAssign ymm10_HHHH (bvVar L0x7fffffffb200_HHHH);
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb220 *)
bvAssign ymm11_LLLL (bvVar L0x7fffffffb220_LLLL);
bvAssign ymm11_LLLH (bvVar L0x7fffffffb220_LLLH);
bvAssign ymm11_LLHL (bvVar L0x7fffffffb220_LLHL);
bvAssign ymm11_LLHH (bvVar L0x7fffffffb220_LLHH);
bvAssign ymm11_LHLL (bvVar L0x7fffffffb220_LHLL);
bvAssign ymm11_LHLH (bvVar L0x7fffffffb220_LHLH);
bvAssign ymm11_LHHL (bvVar L0x7fffffffb220_LHHL);
bvAssign ymm11_LHHH (bvVar L0x7fffffffb220_LHHH);
bvAssign ymm11_HLLL (bvVar L0x7fffffffb220_HLLL);
bvAssign ymm11_HLLH (bvVar L0x7fffffffb220_HLLH);
bvAssign ymm11_HLHL (bvVar L0x7fffffffb220_HLHL);
bvAssign ymm11_HLHH (bvVar L0x7fffffffb220_HLHH);
bvAssign ymm11_HHLL (bvVar L0x7fffffffb220_HHLL);
bvAssign ymm11_HHLH (bvVar L0x7fffffffb220_HHLH);
bvAssign ymm11_HHHL (bvVar L0x7fffffffb220_HHHL);
bvAssign ymm11_HHHH (bvVar L0x7fffffffb220_HHHH);
(* vpmullw %ymm3,%ymm8,%ymm12 *)
bvSmulf ymm8_LLLL ymm12_LLLL (bvVar ymm3_LLLL) (bvVar ymm8_LLLL);
bvSmulf ymm8_LLLH ymm12_LLLH (bvVar ymm3_LLLH) (bvVar ymm8_LLLH);
bvSmulf ymm8_LLHL ymm12_LLHL (bvVar ymm3_LLHL) (bvVar ymm8_LLHL);
bvSmulf ymm8_LLHH ymm12_LLHH (bvVar ymm3_LLHH) (bvVar ymm8_LLHH);
bvSmulf ymm8_LHLL ymm12_LHLL (bvVar ymm3_LHLL) (bvVar ymm8_LHLL);
bvSmulf ymm8_LHLH ymm12_LHLH (bvVar ymm3_LHLH) (bvVar ymm8_LHLH);
bvSmulf ymm8_LHHL ymm12_LHHL (bvVar ymm3_LHHL) (bvVar ymm8_LHHL);
bvSmulf ymm8_LHHH ymm12_LHHH (bvVar ymm3_LHHH) (bvVar ymm8_LHHH);
bvSmulf ymm8_HLLL ymm12_HLLL (bvVar ymm3_HLLL) (bvVar ymm8_HLLL);
bvSmulf ymm8_HLLH ymm12_HLLH (bvVar ymm3_HLLH) (bvVar ymm8_HLLH);
bvSmulf ymm8_HLHL ymm12_HLHL (bvVar ymm3_HLHL) (bvVar ymm8_HLHL);
bvSmulf ymm8_HLHH ymm12_HLHH (bvVar ymm3_HLHH) (bvVar ymm8_HLHH);
bvSmulf ymm8_HHLL ymm12_HHLL (bvVar ymm3_HHLL) (bvVar ymm8_HHLL);
bvSmulf ymm8_HHLH ymm12_HHLH (bvVar ymm3_HHLH) (bvVar ymm8_HHLH);
bvSmulf ymm8_HHHL ymm12_HHHL (bvVar ymm3_HHHL) (bvVar ymm8_HHHL);
bvSmulf ymm8_HHHH ymm12_HHHH (bvVar ymm3_HHHH) (bvVar ymm8_HHHH);
(* vpmulhw %ymm3,%ymm8,%ymm8 *)
(* merged with previous vpmullw ymm3, ymm8, ymmX *)
(* vpmullw %ymm3,%ymm9,%ymm13 *)
bvSmulf ymm9_LLLL ymm13_LLLL (bvVar ymm3_LLLL) (bvVar ymm9_LLLL);
bvSmulf ymm9_LLLH ymm13_LLLH (bvVar ymm3_LLLH) (bvVar ymm9_LLLH);
bvSmulf ymm9_LLHL ymm13_LLHL (bvVar ymm3_LLHL) (bvVar ymm9_LLHL);
bvSmulf ymm9_LLHH ymm13_LLHH (bvVar ymm3_LLHH) (bvVar ymm9_LLHH);
bvSmulf ymm9_LHLL ymm13_LHLL (bvVar ymm3_LHLL) (bvVar ymm9_LHLL);
bvSmulf ymm9_LHLH ymm13_LHLH (bvVar ymm3_LHLH) (bvVar ymm9_LHLH);
bvSmulf ymm9_LHHL ymm13_LHHL (bvVar ymm3_LHHL) (bvVar ymm9_LHHL);
bvSmulf ymm9_LHHH ymm13_LHHH (bvVar ymm3_LHHH) (bvVar ymm9_LHHH);
bvSmulf ymm9_HLLL ymm13_HLLL (bvVar ymm3_HLLL) (bvVar ymm9_HLLL);
bvSmulf ymm9_HLLH ymm13_HLLH (bvVar ymm3_HLLH) (bvVar ymm9_HLLH);
bvSmulf ymm9_HLHL ymm13_HLHL (bvVar ymm3_HLHL) (bvVar ymm9_HLHL);
bvSmulf ymm9_HLHH ymm13_HLHH (bvVar ymm3_HLHH) (bvVar ymm9_HLHH);
bvSmulf ymm9_HHLL ymm13_HHLL (bvVar ymm3_HHLL) (bvVar ymm9_HHLL);
bvSmulf ymm9_HHLH ymm13_HHLH (bvVar ymm3_HHLH) (bvVar ymm9_HHLH);
bvSmulf ymm9_HHHL ymm13_HHHL (bvVar ymm3_HHHL) (bvVar ymm9_HHHL);
bvSmulf ymm9_HHHH ymm13_HHHH (bvVar ymm3_HHHH) (bvVar ymm9_HHHH);
(* vpmulhw %ymm3,%ymm9,%ymm9 *)
(* merged with previous vpmullw ymm3, ymm9, ymmX *)
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
(* # BEGIN Montgomery reduction *)
# BEGIN Montgomery reduction;
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
(* vpsubw %ymm12,%ymm8,%ymm12 *)
bvSsub ymm12_LLLL (bvVar ymm8_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm12_LLLH (bvVar ymm8_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm12_LLHL (bvVar ymm8_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm12_LLHH (bvVar ymm8_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm12_LHLL (bvVar ymm8_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm12_LHLH (bvVar ymm8_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm12_LHHL (bvVar ymm8_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm12_LHHH (bvVar ymm8_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm12_HLLL (bvVar ymm8_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm12_HLLH (bvVar ymm8_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm12_HLHL (bvVar ymm8_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm12_HLHH (bvVar ymm8_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm12_HHLL (bvVar ymm8_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm12_HHLH (bvVar ymm8_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm12_HHHL (bvVar ymm8_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm12_HHHH (bvVar ymm8_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm9,%ymm13 *)
bvSsub ymm13_LLLL (bvVar ymm9_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm13_LLLH (bvVar ymm9_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm13_LLHL (bvVar ymm9_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm13_LLHH (bvVar ymm9_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm13_LHLL (bvVar ymm9_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm13_LHLH (bvVar ymm9_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm13_LHHL (bvVar ymm9_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm13_LHHH (bvVar ymm9_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm13_HLLL (bvVar ymm9_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm13_HLLH (bvVar ymm9_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm13_HLHL (bvVar ymm9_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm13_HLHH (bvVar ymm9_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm13_HHLL (bvVar ymm9_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm13_HHLH (bvVar ymm9_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm13_HHHL (bvVar ymm9_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm13_HHHH (bvVar ymm9_HHHH) (bvVar ymm13_HHHH);
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
(* vpsubw %ymm12,%ymm4,%ymm8 *)
bvSsub ymm8_LLLL (bvVar ymm4_LLLL) (bvVar ymm12_LLLL);
bvSsub ymm8_LLLH (bvVar ymm4_LLLH) (bvVar ymm12_LLLH);
bvSsub ymm8_LLHL (bvVar ymm4_LLHL) (bvVar ymm12_LLHL);
bvSsub ymm8_LLHH (bvVar ymm4_LLHH) (bvVar ymm12_LLHH);
bvSsub ymm8_LHLL (bvVar ymm4_LHLL) (bvVar ymm12_LHLL);
bvSsub ymm8_LHLH (bvVar ymm4_LHLH) (bvVar ymm12_LHLH);
bvSsub ymm8_LHHL (bvVar ymm4_LHHL) (bvVar ymm12_LHHL);
bvSsub ymm8_LHHH (bvVar ymm4_LHHH) (bvVar ymm12_LHHH);
bvSsub ymm8_HLLL (bvVar ymm4_HLLL) (bvVar ymm12_HLLL);
bvSsub ymm8_HLLH (bvVar ymm4_HLLH) (bvVar ymm12_HLLH);
bvSsub ymm8_HLHL (bvVar ymm4_HLHL) (bvVar ymm12_HLHL);
bvSsub ymm8_HLHH (bvVar ymm4_HLHH) (bvVar ymm12_HLHH);
bvSsub ymm8_HHLL (bvVar ymm4_HHLL) (bvVar ymm12_HHLL);
bvSsub ymm8_HHLH (bvVar ymm4_HHLH) (bvVar ymm12_HHLH);
bvSsub ymm8_HHHL (bvVar ymm4_HHHL) (bvVar ymm12_HHHL);
bvSsub ymm8_HHHH (bvVar ymm4_HHHH) (bvVar ymm12_HHHH);
(* vpsubw %ymm13,%ymm5,%ymm9 *)
bvSsub ymm9_LLLL (bvVar ymm5_LLLL) (bvVar ymm13_LLLL);
bvSsub ymm9_LLLH (bvVar ymm5_LLLH) (bvVar ymm13_LLLH);
bvSsub ymm9_LLHL (bvVar ymm5_LLHL) (bvVar ymm13_LLHL);
bvSsub ymm9_LLHH (bvVar ymm5_LLHH) (bvVar ymm13_LLHH);
bvSsub ymm9_LHLL (bvVar ymm5_LHLL) (bvVar ymm13_LHLL);
bvSsub ymm9_LHLH (bvVar ymm5_LHLH) (bvVar ymm13_LHLH);
bvSsub ymm9_LHHL (bvVar ymm5_LHHL) (bvVar ymm13_LHHL);
bvSsub ymm9_LHHH (bvVar ymm5_LHHH) (bvVar ymm13_LHHH);
bvSsub ymm9_HLLL (bvVar ymm5_HLLL) (bvVar ymm13_HLLL);
bvSsub ymm9_HLLH (bvVar ymm5_HLLH) (bvVar ymm13_HLLH);
bvSsub ymm9_HLHL (bvVar ymm5_HLHL) (bvVar ymm13_HLHL);
bvSsub ymm9_HLHH (bvVar ymm5_HLHH) (bvVar ymm13_HLHH);
bvSsub ymm9_HHLL (bvVar ymm5_HHLL) (bvVar ymm13_HHLL);
bvSsub ymm9_HHLH (bvVar ymm5_HHLH) (bvVar ymm13_HHLH);
bvSsub ymm9_HHHL (bvVar ymm5_HHHL) (bvVar ymm13_HHHL);
bvSsub ymm9_HHHH (bvVar ymm5_HHHH) (bvVar ymm13_HHHH);
(* vpsubw %ymm14,%ymm6,%ymm10 *)
bvSsub ymm10_LLLL (bvVar ymm6_LLLL) (bvVar ymm14_LLLL);
bvSsub ymm10_LLLH (bvVar ymm6_LLLH) (bvVar ymm14_LLLH);
bvSsub ymm10_LLHL (bvVar ymm6_LLHL) (bvVar ymm14_LLHL);
bvSsub ymm10_LLHH (bvVar ymm6_LLHH) (bvVar ymm14_LLHH);
bvSsub ymm10_LHLL (bvVar ymm6_LHLL) (bvVar ymm14_LHLL);
bvSsub ymm10_LHLH (bvVar ymm6_LHLH) (bvVar ymm14_LHLH);
bvSsub ymm10_LHHL (bvVar ymm6_LHHL) (bvVar ymm14_LHHL);
bvSsub ymm10_LHHH (bvVar ymm6_LHHH) (bvVar ymm14_LHHH);
bvSsub ymm10_HLLL (bvVar ymm6_HLLL) (bvVar ymm14_HLLL);
bvSsub ymm10_HLLH (bvVar ymm6_HLLH) (bvVar ymm14_HLLH);
bvSsub ymm10_HLHL (bvVar ymm6_HLHL) (bvVar ymm14_HLHL);
bvSsub ymm10_HLHH (bvVar ymm6_HLHH) (bvVar ymm14_HLHH);
bvSsub ymm10_HHLL (bvVar ymm6_HHLL) (bvVar ymm14_HHLL);
bvSsub ymm10_HHLH (bvVar ymm6_HHLH) (bvVar ymm14_HHLH);
bvSsub ymm10_HHHL (bvVar ymm6_HHHL) (bvVar ymm14_HHHL);
bvSsub ymm10_HHHH (bvVar ymm6_HHHH) (bvVar ymm14_HHHH);
(* vpsubw %ymm15,%ymm7,%ymm11 *)
bvSsub ymm11_LLLL (bvVar ymm7_LLLL) (bvVar ymm15_LLLL);
bvSsub ymm11_LLLH (bvVar ymm7_LLLH) (bvVar ymm15_LLLH);
bvSsub ymm11_LLHL (bvVar ymm7_LLHL) (bvVar ymm15_LLHL);
bvSsub ymm11_LLHH (bvVar ymm7_LLHH) (bvVar ymm15_LLHH);
bvSsub ymm11_LHLL (bvVar ymm7_LHLL) (bvVar ymm15_LHLL);
bvSsub ymm11_LHLH (bvVar ymm7_LHLH) (bvVar ymm15_LHLH);
bvSsub ymm11_LHHL (bvVar ymm7_LHHL) (bvVar ymm15_LHHL);
bvSsub ymm11_LHHH (bvVar ymm7_LHHH) (bvVar ymm15_LHHH);
bvSsub ymm11_HLLL (bvVar ymm7_HLLL) (bvVar ymm15_HLLL);
bvSsub ymm11_HLLH (bvVar ymm7_HLLH) (bvVar ymm15_HLLH);
bvSsub ymm11_HLHL (bvVar ymm7_HLHL) (bvVar ymm15_HLHL);
bvSsub ymm11_HLHH (bvVar ymm7_HLHH) (bvVar ymm15_HLHH);
bvSsub ymm11_HHLL (bvVar ymm7_HHLL) (bvVar ymm15_HHLL);
bvSsub ymm11_HHLH (bvVar ymm7_HHLH) (bvVar ymm15_HHLH);
bvSsub ymm11_HHHL (bvVar ymm7_HHHL) (bvVar ymm15_HHHL);
bvSsub ymm11_HHHH (bvVar ymm7_HHHH) (bvVar ymm15_HHHH);
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
(* vpaddw %ymm14,%ymm6,%ymm6 *)
bvSadd ymm6_LLLL (bvVar ymm14_LLLL) (bvVar ymm6_LLLL);
bvSadd ymm6_LLLH (bvVar ymm14_LLLH) (bvVar ymm6_LLLH);
bvSadd ymm6_LLHL (bvVar ymm14_LLHL) (bvVar ymm6_LLHL);
bvSadd ymm6_LLHH (bvVar ymm14_LLHH) (bvVar ymm6_LLHH);
bvSadd ymm6_LHLL (bvVar ymm14_LHLL) (bvVar ymm6_LHLL);
bvSadd ymm6_LHLH (bvVar ymm14_LHLH) (bvVar ymm6_LHLH);
bvSadd ymm6_LHHL (bvVar ymm14_LHHL) (bvVar ymm6_LHHL);
bvSadd ymm6_LHHH (bvVar ymm14_LHHH) (bvVar ymm6_LHHH);
bvSadd ymm6_HLLL (bvVar ymm14_HLLL) (bvVar ymm6_HLLL);
bvSadd ymm6_HLLH (bvVar ymm14_HLLH) (bvVar ymm6_HLLH);
bvSadd ymm6_HLHL (bvVar ymm14_HLHL) (bvVar ymm6_HLHL);
bvSadd ymm6_HLHH (bvVar ymm14_HLHH) (bvVar ymm6_HLHH);
bvSadd ymm6_HHLL (bvVar ymm14_HHLL) (bvVar ymm6_HHLL);
bvSadd ymm6_HHLH (bvVar ymm14_HHLH) (bvVar ymm6_HHLH);
bvSadd ymm6_HHHL (bvVar ymm14_HHHL) (bvVar ymm6_HHHL);
bvSadd ymm6_HHHH (bvVar ymm14_HHHH) (bvVar ymm6_HHHH);
(* vpaddw %ymm15,%ymm7,%ymm7 *)
bvSadd ymm7_LLLL (bvVar ymm15_LLLL) (bvVar ymm7_LLLL);
bvSadd ymm7_LLLH (bvVar ymm15_LLLH) (bvVar ymm7_LLLH);
bvSadd ymm7_LLHL (bvVar ymm15_LLHL) (bvVar ymm7_LLHL);
bvSadd ymm7_LLHH (bvVar ymm15_LLHH) (bvVar ymm7_LLHH);
bvSadd ymm7_LHLL (bvVar ymm15_LHLL) (bvVar ymm7_LHLL);
bvSadd ymm7_LHLH (bvVar ymm15_LHLH) (bvVar ymm7_LHLH);
bvSadd ymm7_LHHL (bvVar ymm15_LHHL) (bvVar ymm7_LHHL);
bvSadd ymm7_LHHH (bvVar ymm15_LHHH) (bvVar ymm7_LHHH);
bvSadd ymm7_HLLL (bvVar ymm15_HLLL) (bvVar ymm7_HLLL);
bvSadd ymm7_HLLH (bvVar ymm15_HLLH) (bvVar ymm7_HLLH);
bvSadd ymm7_HLHL (bvVar ymm15_HLHL) (bvVar ymm7_HLHL);
bvSadd ymm7_HLHH (bvVar ymm15_HLHH) (bvVar ymm7_HLHH);
bvSadd ymm7_HHLL (bvVar ymm15_HHLL) (bvVar ymm7_HHLL);
bvSadd ymm7_HHLH (bvVar ymm15_HHLH) (bvVar ymm7_HHLH);
bvSadd ymm7_HHHL (bvVar ymm15_HHHL) (bvVar ymm7_HHHL);
bvSadd ymm7_HHHH (bvVar ymm15_HHHH) (bvVar ymm7_HHHH);

(* # save old-8 *)

bvGhost ymm4_LLLLo8, ymm4_LLLHo8, ymm4_LLHLo8, ymm4_LLHHo8, ymm4_LHLLo8,
        ymm4_LHLHo8, ymm4_LHHLo8, ymm4_LHHHo8, ymm4_HLLLo8, ymm4_HLLHo8,
        ymm4_HLHLo8, ymm4_HLHHo8, ymm4_HHLLo8, ymm4_HHLHo8, ymm4_HHHLo8,
        ymm4_HHHHo8,
        ymm5_LLLLo8, ymm5_LLLHo8, ymm5_LLHLo8, ymm5_LLHHo8, ymm5_LHLLo8,
        ymm5_LHLHo8, ymm5_LHHLo8, ymm5_LHHHo8, ymm5_HLLLo8, ymm5_HLLHo8,
        ymm5_HLHLo8, ymm5_HLHHo8, ymm5_HHLLo8, ymm5_HHLHo8, ymm5_HHHLo8,
        ymm5_HHHHo8,
        ymm6_LLLLo8, ymm6_LLLHo8, ymm6_LLHLo8, ymm6_LLHHo8, ymm6_LHLLo8,
        ymm6_LHLHo8, ymm6_LHHLo8, ymm6_LHHHo8, ymm6_HLLLo8, ymm6_HLLHo8,
        ymm6_HLHLo8, ymm6_HLHHo8, ymm6_HHLLo8, ymm6_HHLHo8, ymm6_HHHLo8,
        ymm6_HHHHo8,
        ymm7_LLLLo8, ymm7_LLLHo8, ymm7_LLHLo8, ymm7_LLHHo8, ymm7_LHLLo8,
        ymm7_LHLHo8, ymm7_LHHLo8, ymm7_LHHHo8, ymm7_HLLLo8, ymm7_HLLHo8,
        ymm7_HLHLo8, ymm7_HLHHo8, ymm7_HHLLo8, ymm7_HHLHo8, ymm7_HHHLo8,
        ymm7_HHHHo8,
        ymm8_LLLLo8, ymm8_LLLHo8, ymm8_LLHLo8, ymm8_LLHHo8, ymm8_LHLLo8,
        ymm8_LHLHo8, ymm8_LHHLo8, ymm8_LHHHo8, ymm8_HLLLo8, ymm8_HLLHo8,
        ymm8_HLHLo8, ymm8_HLHHo8, ymm8_HHLLo8, ymm8_HHLHo8, ymm8_HHHLo8,
        ymm8_HHHHo8,
        ymm9_LLLLo8, ymm9_LLLHo8, ymm9_LLHLo8, ymm9_LLHHo8, ymm9_LHLLo8,
        ymm9_LHLHo8, ymm9_LHHLo8, ymm9_LHHHo8, ymm9_HLLLo8, ymm9_HLLHo8,
        ymm9_HLHLo8, ymm9_HLHHo8, ymm9_HHLLo8, ymm9_HHLHo8, ymm9_HHHLo8,
        ymm9_HHHHo8,
        ymm10_LLLLo8, ymm10_LLLHo8, ymm10_LLHLo8, ymm10_LLHHo8, ymm10_LHLLo8,
        ymm10_LHLHo8, ymm10_LHHLo8, ymm10_LHHHo8, ymm10_HLLLo8, ymm10_HLLHo8,
        ymm10_HLHLo8, ymm10_HLHHo8, ymm10_HHLLo8, ymm10_HHLHo8, ymm10_HHHLo8,
        ymm10_HHHHo8,
        ymm11_LLLLo8, ymm11_LLLHo8, ymm11_LLHLo8, ymm11_LLHHo8, ymm11_LHLLo8,
        ymm11_LHLHo8, ymm11_LHHLo8, ymm11_LHHHo8, ymm11_HLLLo8, ymm11_HLLHo8,
        ymm11_HLHLo8, ymm11_HLHHo8, ymm11_HHLLo8, ymm11_HHLHo8, ymm11_HHHLo8,
        ymm11_HHHHo8 :
  bveands [bveEq (bvvar ymm4_LLLLo8) (bvvar ymm4_LLLL),
           bveEq (bvvar ymm4_LLLHo8) (bvvar ymm4_LLLH),
           bveEq (bvvar ymm4_LLHLo8) (bvvar ymm4_LLHL),
           bveEq (bvvar ymm4_LLHHo8) (bvvar ymm4_LLHH),
           bveEq (bvvar ymm4_LHLLo8) (bvvar ymm4_LHLL),
           bveEq (bvvar ymm4_LHLHo8) (bvvar ymm4_LHLH),
           bveEq (bvvar ymm4_LHHLo8) (bvvar ymm4_LHHL),
           bveEq (bvvar ymm4_LHHHo8) (bvvar ymm4_LHHH),
           bveEq (bvvar ymm4_HLLLo8) (bvvar ymm4_HLLL),
           bveEq (bvvar ymm4_HLLHo8) (bvvar ymm4_HLLH),
           bveEq (bvvar ymm4_HLHLo8) (bvvar ymm4_HLHL),
           bveEq (bvvar ymm4_HLHHo8) (bvvar ymm4_HLHH),
           bveEq (bvvar ymm4_HHLLo8) (bvvar ymm4_HHLL),
           bveEq (bvvar ymm4_HHLHo8) (bvvar ymm4_HHLH),
           bveEq (bvvar ymm4_HHHLo8) (bvvar ymm4_HHHL),
           bveEq (bvvar ymm4_HHHHo8) (bvvar ymm4_HHHH),
           bveEq (bvvar ymm5_LLLLo8) (bvvar ymm5_LLLL),
           bveEq (bvvar ymm5_LLLHo8) (bvvar ymm5_LLLH),
           bveEq (bvvar ymm5_LLHLo8) (bvvar ymm5_LLHL),
           bveEq (bvvar ymm5_LLHHo8) (bvvar ymm5_LLHH),
           bveEq (bvvar ymm5_LHLLo8) (bvvar ymm5_LHLL),
           bveEq (bvvar ymm5_LHLHo8) (bvvar ymm5_LHLH),
           bveEq (bvvar ymm5_LHHLo8) (bvvar ymm5_LHHL),
           bveEq (bvvar ymm5_LHHHo8) (bvvar ymm5_LHHH),
           bveEq (bvvar ymm5_HLLLo8) (bvvar ymm5_HLLL),
           bveEq (bvvar ymm5_HLLHo8) (bvvar ymm5_HLLH),
           bveEq (bvvar ymm5_HLHLo8) (bvvar ymm5_HLHL),
           bveEq (bvvar ymm5_HLHHo8) (bvvar ymm5_HLHH),
           bveEq (bvvar ymm5_HHLLo8) (bvvar ymm5_HHLL),
           bveEq (bvvar ymm5_HHLHo8) (bvvar ymm5_HHLH),
           bveEq (bvvar ymm5_HHHLo8) (bvvar ymm5_HHHL),
           bveEq (bvvar ymm5_HHHHo8) (bvvar ymm5_HHHH),
           bveEq (bvvar ymm6_LLLLo8) (bvvar ymm6_LLLL),
           bveEq (bvvar ymm6_LLLHo8) (bvvar ymm6_LLLH),
           bveEq (bvvar ymm6_LLHLo8) (bvvar ymm6_LLHL),
           bveEq (bvvar ymm6_LLHHo8) (bvvar ymm6_LLHH),
           bveEq (bvvar ymm6_LHLLo8) (bvvar ymm6_LHLL),
           bveEq (bvvar ymm6_LHLHo8) (bvvar ymm6_LHLH),
           bveEq (bvvar ymm6_LHHLo8) (bvvar ymm6_LHHL),
           bveEq (bvvar ymm6_LHHHo8) (bvvar ymm6_LHHH),
           bveEq (bvvar ymm6_HLLLo8) (bvvar ymm6_HLLL),
           bveEq (bvvar ymm6_HLLHo8) (bvvar ymm6_HLLH),
           bveEq (bvvar ymm6_HLHLo8) (bvvar ymm6_HLHL),
           bveEq (bvvar ymm6_HLHHo8) (bvvar ymm6_HLHH),
           bveEq (bvvar ymm6_HHLLo8) (bvvar ymm6_HHLL),
           bveEq (bvvar ymm6_HHLHo8) (bvvar ymm6_HHLH),
           bveEq (bvvar ymm6_HHHLo8) (bvvar ymm6_HHHL),
           bveEq (bvvar ymm6_HHHHo8) (bvvar ymm6_HHHH),
           bveEq (bvvar ymm7_LLLLo8) (bvvar ymm7_LLLL),
           bveEq (bvvar ymm7_LLLHo8) (bvvar ymm7_LLLH),
           bveEq (bvvar ymm7_LLHLo8) (bvvar ymm7_LLHL),
           bveEq (bvvar ymm7_LLHHo8) (bvvar ymm7_LLHH),
           bveEq (bvvar ymm7_LHLLo8) (bvvar ymm7_LHLL),
           bveEq (bvvar ymm7_LHLHo8) (bvvar ymm7_LHLH),
           bveEq (bvvar ymm7_LHHLo8) (bvvar ymm7_LHHL),
           bveEq (bvvar ymm7_LHHHo8) (bvvar ymm7_LHHH),
           bveEq (bvvar ymm7_HLLLo8) (bvvar ymm7_HLLL),
           bveEq (bvvar ymm7_HLLHo8) (bvvar ymm7_HLLH),
           bveEq (bvvar ymm7_HLHLo8) (bvvar ymm7_HLHL),
           bveEq (bvvar ymm7_HLHHo8) (bvvar ymm7_HLHH),
           bveEq (bvvar ymm7_HHLLo8) (bvvar ymm7_HHLL),
           bveEq (bvvar ymm7_HHLHo8) (bvvar ymm7_HHLH),
           bveEq (bvvar ymm7_HHHLo8) (bvvar ymm7_HHHL),
           bveEq (bvvar ymm7_HHHHo8) (bvvar ymm7_HHHH),
           bveEq (bvvar ymm8_LLLLo8) (bvvar ymm8_LLLL),
           bveEq (bvvar ymm8_LLLHo8) (bvvar ymm8_LLLH),
           bveEq (bvvar ymm8_LLHLo8) (bvvar ymm8_LLHL),
           bveEq (bvvar ymm8_LLHHo8) (bvvar ymm8_LLHH),
           bveEq (bvvar ymm8_LHLLo8) (bvvar ymm8_LHLL),
           bveEq (bvvar ymm8_LHLHo8) (bvvar ymm8_LHLH),
           bveEq (bvvar ymm8_LHHLo8) (bvvar ymm8_LHHL),
           bveEq (bvvar ymm8_LHHHo8) (bvvar ymm8_LHHH),
           bveEq (bvvar ymm8_HLLLo8) (bvvar ymm8_HLLL),
           bveEq (bvvar ymm8_HLLHo8) (bvvar ymm8_HLLH),
           bveEq (bvvar ymm8_HLHLo8) (bvvar ymm8_HLHL),
           bveEq (bvvar ymm8_HLHHo8) (bvvar ymm8_HLHH),
           bveEq (bvvar ymm8_HHLLo8) (bvvar ymm8_HHLL),
           bveEq (bvvar ymm8_HHLHo8) (bvvar ymm8_HHLH),
           bveEq (bvvar ymm8_HHHLo8) (bvvar ymm8_HHHL),
           bveEq (bvvar ymm8_HHHHo8) (bvvar ymm8_HHHH),
           bveEq (bvvar ymm9_LLLLo8) (bvvar ymm9_LLLL),
           bveEq (bvvar ymm9_LLLHo8) (bvvar ymm9_LLLH),
           bveEq (bvvar ymm9_LLHLo8) (bvvar ymm9_LLHL),
           bveEq (bvvar ymm9_LLHHo8) (bvvar ymm9_LLHH),
           bveEq (bvvar ymm9_LHLLo8) (bvvar ymm9_LHLL),
           bveEq (bvvar ymm9_LHLHo8) (bvvar ymm9_LHLH),
           bveEq (bvvar ymm9_LHHLo8) (bvvar ymm9_LHHL),
           bveEq (bvvar ymm9_LHHHo8) (bvvar ymm9_LHHH),
           bveEq (bvvar ymm9_HLLLo8) (bvvar ymm9_HLLL),
           bveEq (bvvar ymm9_HLLHo8) (bvvar ymm9_HLLH),
           bveEq (bvvar ymm9_HLHLo8) (bvvar ymm9_HLHL),
           bveEq (bvvar ymm9_HLHHo8) (bvvar ymm9_HLHH),
           bveEq (bvvar ymm9_HHLLo8) (bvvar ymm9_HHLL),
           bveEq (bvvar ymm9_HHLHo8) (bvvar ymm9_HHLH),
           bveEq (bvvar ymm9_HHHLo8) (bvvar ymm9_HHHL),
           bveEq (bvvar ymm9_HHHHo8) (bvvar ymm9_HHHH),
           bveEq (bvvar ymm10_LLLLo8) (bvvar ymm10_LLLL),
           bveEq (bvvar ymm10_LLLHo8) (bvvar ymm10_LLLH),
           bveEq (bvvar ymm10_LLHLo8) (bvvar ymm10_LLHL),
           bveEq (bvvar ymm10_LLHHo8) (bvvar ymm10_LLHH),
           bveEq (bvvar ymm10_LHLLo8) (bvvar ymm10_LHLL),
           bveEq (bvvar ymm10_LHLHo8) (bvvar ymm10_LHLH),
           bveEq (bvvar ymm10_LHHLo8) (bvvar ymm10_LHHL),
           bveEq (bvvar ymm10_LHHHo8) (bvvar ymm10_LHHH),
           bveEq (bvvar ymm10_HLLLo8) (bvvar ymm10_HLLL),
           bveEq (bvvar ymm10_HLLHo8) (bvvar ymm10_HLLH),
           bveEq (bvvar ymm10_HLHLo8) (bvvar ymm10_HLHL),
           bveEq (bvvar ymm10_HLHHo8) (bvvar ymm10_HLHH),
           bveEq (bvvar ymm10_HHLLo8) (bvvar ymm10_HHLL),
           bveEq (bvvar ymm10_HHLHo8) (bvvar ymm10_HHLH),
           bveEq (bvvar ymm10_HHHLo8) (bvvar ymm10_HHHL),
           bveEq (bvvar ymm10_HHHHo8) (bvvar ymm10_HHHH),
           bveEq (bvvar ymm11_LLLLo8) (bvvar ymm11_LLLL),
           bveEq (bvvar ymm11_LLLHo8) (bvvar ymm11_LLLH),
           bveEq (bvvar ymm11_LLHLo8) (bvvar ymm11_LLHL),
           bveEq (bvvar ymm11_LLHHo8) (bvvar ymm11_LLHH),
           bveEq (bvvar ymm11_LHLLo8) (bvvar ymm11_LHLL),
           bveEq (bvvar ymm11_LHLHo8) (bvvar ymm11_LHLH),
           bveEq (bvvar ymm11_LHHLo8) (bvvar ymm11_LHHL),
           bveEq (bvvar ymm11_LHHHo8) (bvvar ymm11_LHHH),
           bveEq (bvvar ymm11_HLLLo8) (bvvar ymm11_HLLL),
           bveEq (bvvar ymm11_HLLHo8) (bvvar ymm11_HLLH),
           bveEq (bvvar ymm11_HLHLo8) (bvvar ymm11_HLHL),
           bveEq (bvvar ymm11_HLHHo8) (bvvar ymm11_HLHH),
           bveEq (bvvar ymm11_HHLLo8) (bvvar ymm11_HHLL),
           bveEq (bvvar ymm11_HHLHo8) (bvvar ymm11_HHLH),
           bveEq (bvvar ymm11_HHHLo8) (bvvar ymm11_HHHL),
           bveEq (bvvar ymm11_HHHHo8) (bvvar ymm11_HHHH)]
  |
    bvTrue;

(* # cuts-8 *)

{
  bveands [
    bveEqMod (bvvar ymm4_LLLLo8)
             ((bvvar L0x7fffffffb140_LLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLLo8)
             ((bvvar L0x7fffffffb140_LLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLLHo8)
             ((bvvar L0x7fffffffb140_LLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLLHo8)
             ((bvvar L0x7fffffffb140_LLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHLo8)
             ((bvvar L0x7fffffffb140_LLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHLo8)
             ((bvvar L0x7fffffffb140_LLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LLHHo8)
             ((bvvar L0x7fffffffb140_LLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LLHHo8)
             ((bvvar L0x7fffffffb140_LLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLLo8)
             ((bvvar L0x7fffffffb140_LHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLLo8)
             ((bvvar L0x7fffffffb140_LHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHLHo8)
             ((bvvar L0x7fffffffb140_LHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHLHo8)
             ((bvvar L0x7fffffffb140_LHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHLo8)
             ((bvvar L0x7fffffffb140_LHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHLo8)
             ((bvvar L0x7fffffffb140_LHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_LHHHo8)
             ((bvvar L0x7fffffffb140_LHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_LHHHo8)
             ((bvvar L0x7fffffffb140_LHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLLo8)
             ((bvvar L0x7fffffffb140_HLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLLo8)
             ((bvvar L0x7fffffffb140_HLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLLHo8)
             ((bvvar L0x7fffffffb140_HLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLLHo8)
             ((bvvar L0x7fffffffb140_HLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHLo8)
             ((bvvar L0x7fffffffb140_HLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHLo8)
             ((bvvar L0x7fffffffb140_HLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HLHHo8)
             ((bvvar L0x7fffffffb140_HLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HLHHo8)
             ((bvvar L0x7fffffffb140_HLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLLo8)
             ((bvvar L0x7fffffffb140_HHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLLo8)
             ((bvvar L0x7fffffffb140_HHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHLHo8)
             ((bvvar L0x7fffffffb140_HHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHLHo8)
             ((bvvar L0x7fffffffb140_HHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHLo8)
             ((bvvar L0x7fffffffb140_HHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHLo8)
             ((bvvar L0x7fffffffb140_HHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm4_HHHHo8)
             ((bvvar L0x7fffffffb140_HHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm8_HHHHo8)
             ((bvvar L0x7fffffffb140_HHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1c0_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLLo8)
             ((bvvar L0x7fffffffb160_LLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLLo8)
             ((bvvar L0x7fffffffb160_LLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLLHo8)
             ((bvvar L0x7fffffffb160_LLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLLHo8)
             ((bvvar L0x7fffffffb160_LLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHLo8)
             ((bvvar L0x7fffffffb160_LLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHLo8)
             ((bvvar L0x7fffffffb160_LLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LLHHo8)
             ((bvvar L0x7fffffffb160_LLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LLHHo8)
             ((bvvar L0x7fffffffb160_LLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLLo8)
             ((bvvar L0x7fffffffb160_LHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLLo8)
             ((bvvar L0x7fffffffb160_LHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHLHo8)
             ((bvvar L0x7fffffffb160_LHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHLHo8)
             ((bvvar L0x7fffffffb160_LHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHLo8)
             ((bvvar L0x7fffffffb160_LHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHLo8)
             ((bvvar L0x7fffffffb160_LHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_LHHHo8)
             ((bvvar L0x7fffffffb160_LHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_LHHHo8)
             ((bvvar L0x7fffffffb160_LHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLLo8)
             ((bvvar L0x7fffffffb160_HLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLLo8)
             ((bvvar L0x7fffffffb160_HLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLLHo8)
             ((bvvar L0x7fffffffb160_HLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLLHo8)
             ((bvvar L0x7fffffffb160_HLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHLo8)
             ((bvvar L0x7fffffffb160_HLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHLo8)
             ((bvvar L0x7fffffffb160_HLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HLHHo8)
             ((bvvar L0x7fffffffb160_HLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HLHHo8)
             ((bvvar L0x7fffffffb160_HLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLLo8)
             ((bvvar L0x7fffffffb160_HHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLLo8)
             ((bvvar L0x7fffffffb160_HHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHLHo8)
             ((bvvar L0x7fffffffb160_HHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHLHo8)
             ((bvvar L0x7fffffffb160_HHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHLo8)
             ((bvvar L0x7fffffffb160_HHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHLo8)
             ((bvvar L0x7fffffffb160_HHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm5_HHHHo8)
             ((bvvar L0x7fffffffb160_HHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm9_HHHHo8)
             ((bvvar L0x7fffffffb160_HHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb1e0_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLLo8)
             ((bvvar L0x7fffffffb180_LLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLLo8)
             ((bvvar L0x7fffffffb180_LLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLLHo8)
             ((bvvar L0x7fffffffb180_LLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLLHo8)
             ((bvvar L0x7fffffffb180_LLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHLo8)
             ((bvvar L0x7fffffffb180_LLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHLo8)
             ((bvvar L0x7fffffffb180_LLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LLHHo8)
             ((bvvar L0x7fffffffb180_LLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LLHHo8)
             ((bvvar L0x7fffffffb180_LLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLLo8)
             ((bvvar L0x7fffffffb180_LHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLLo8)
             ((bvvar L0x7fffffffb180_LHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHLHo8)
             ((bvvar L0x7fffffffb180_LHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHLHo8)
             ((bvvar L0x7fffffffb180_LHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHLo8)
             ((bvvar L0x7fffffffb180_LHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHLo8)
             ((bvvar L0x7fffffffb180_LHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_LHHHo8)
             ((bvvar L0x7fffffffb180_LHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_LHHHo8)
             ((bvvar L0x7fffffffb180_LHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLLo8)
             ((bvvar L0x7fffffffb180_HLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLLo8)
             ((bvvar L0x7fffffffb180_HLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLLHo8)
             ((bvvar L0x7fffffffb180_HLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLLHo8)
             ((bvvar L0x7fffffffb180_HLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHLo8)
             ((bvvar L0x7fffffffb180_HLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHLo8)
             ((bvvar L0x7fffffffb180_HLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HLHHo8)
             ((bvvar L0x7fffffffb180_HLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HLHHo8)
             ((bvvar L0x7fffffffb180_HLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLLo8)
             ((bvvar L0x7fffffffb180_HHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLLo8)
             ((bvvar L0x7fffffffb180_HHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHLHo8)
             ((bvvar L0x7fffffffb180_HHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHLHo8)
             ((bvvar L0x7fffffffb180_HHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHLo8)
             ((bvvar L0x7fffffffb180_HHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHLo8)
             ((bvvar L0x7fffffffb180_HHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm6_HHHHo8)
             ((bvvar L0x7fffffffb180_HHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm10_HHHHo8)
             ((bvvar L0x7fffffffb180_HHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb200_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLLo8)
             ((bvvar L0x7fffffffb1a0_LLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLLLo8)
             ((bvvar L0x7fffffffb1a0_LLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLLHo8)
             ((bvvar L0x7fffffffb1a0_LLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLLHo8)
             ((bvvar L0x7fffffffb1a0_LLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHLo8)
             ((bvvar L0x7fffffffb1a0_LLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLHLo8)
             ((bvvar L0x7fffffffb1a0_LLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LLHHo8)
             ((bvvar L0x7fffffffb1a0_LLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LLHHo8)
             ((bvvar L0x7fffffffb1a0_LLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLLo8)
             ((bvvar L0x7fffffffb1a0_LHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHLLo8)
             ((bvvar L0x7fffffffb1a0_LHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHLHo8)
             ((bvvar L0x7fffffffb1a0_LHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHLHo8)
             ((bvvar L0x7fffffffb1a0_LHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHLo8)
             ((bvvar L0x7fffffffb1a0_LHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHHLo8)
             ((bvvar L0x7fffffffb1a0_LHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_LHHHo8)
             ((bvvar L0x7fffffffb1a0_LHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_LHHHo8)
             ((bvvar L0x7fffffffb1a0_LHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_LHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLLo8)
             ((bvvar L0x7fffffffb1a0_HLLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLLLo8)
             ((bvvar L0x7fffffffb1a0_HLLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLLHo8)
             ((bvvar L0x7fffffffb1a0_HLLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLLHo8)
             ((bvvar L0x7fffffffb1a0_HLLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHLo8)
             ((bvvar L0x7fffffffb1a0_HLHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLHLo8)
             ((bvvar L0x7fffffffb1a0_HLHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HLHHo8)
             ((bvvar L0x7fffffffb1a0_HLHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HLHHo8)
             ((bvvar L0x7fffffffb1a0_HLHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HLHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLLo8)
             ((bvvar L0x7fffffffb1a0_HHLLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHLLo8)
             ((bvvar L0x7fffffffb1a0_HHLLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHLLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHLHo8)
             ((bvvar L0x7fffffffb1a0_HHLHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHLHo8)
             ((bvvar L0x7fffffffb1a0_HHLHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHLHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHLo8)
             ((bvvar L0x7fffffffb1a0_HHHLo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHHLo8)
             ((bvvar L0x7fffffffb1a0_HHHLo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHHLo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm7_HHHHo8)
             ((bvvar L0x7fffffffb1a0_HHHHo) +
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHHHo) * (bvconst 900))
             (bvvar q),
    bveEqMod (bvvar ymm11_HHHHo8)
             ((bvvar L0x7fffffffb1a0_HHHHo) -
              (bvvar zeta040) * (bvvar L0x7fffffffb220_HHHHo) * (bvconst 900))
             (bvvar q)
    ]
|
  bvTrue
}