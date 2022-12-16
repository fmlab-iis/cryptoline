(* quine: cv -v -slicing -jobs 24 mcbits-radix-conv/radix_conv_first_iter.vcl
Parsing Cryptoline file:                [OK]            0.174940 seconds
Checking well-formedness:               [OK]            0.075844 seconds
Transforming to SSA form:               [OK]            0.058100 seconds
Normalizing specification:              [OK]            0.092318 seconds
Rewriting assignments:                  [OK]            0.127469 seconds
Verifying program safety:               [OK]            17.011754 seconds
Verifying range assertions:             [OK]            24.352912 seconds
Verifying range specification:          [OK]            0.018401 seconds
Rewriting value-preserved casting:      [OK]            0.016843 seconds
Verifying algebraic assertions:         [OK]            0.027502 seconds
Verifying algebraic specification:      [OK]            185.205029 seconds
Verification result:                    [OK]            227.188795 seconds
*)

proc main (
  bit in0_0, bit in0_1, bit in0_2, bit in0_3, bit in0_4, bit in0_5, bit in0_6, bit in0_7, bit in0_8, bit in0_9, bit in0_10, bit in0_11, bit in0_12, bit in0_13, bit in0_14, bit in0_15, bit in0_16, bit in0_17, bit in0_18, bit in0_19, bit in0_20, bit in0_21, bit in0_22, bit in0_23, bit in0_24, bit in0_25, bit in0_26, bit in0_27, bit in0_28, bit in0_29, bit in0_30, bit in0_31, bit in0_32, bit in0_33, bit in0_34, bit in0_35, bit in0_36, bit in0_37, bit in0_38, bit in0_39, bit in0_40, bit in0_41, bit in0_42, bit in0_43, bit in0_44, bit in0_45, bit in0_46, bit in0_47, bit in0_48, bit in0_49, bit in0_50, bit in0_51, bit in0_52, bit in0_53, bit in0_54, bit in0_55, bit in0_56, bit in0_57, bit in0_58, bit in0_59, bit in0_60, bit in0_61, bit in0_62, bit in0_63,
  bit in1_0, bit in1_1, bit in1_2, bit in1_3, bit in1_4, bit in1_5, bit in1_6, bit in1_7, bit in1_8, bit in1_9, bit in1_10, bit in1_11, bit in1_12, bit in1_13, bit in1_14, bit in1_15, bit in1_16, bit in1_17, bit in1_18, bit in1_19, bit in1_20, bit in1_21, bit in1_22, bit in1_23, bit in1_24, bit in1_25, bit in1_26, bit in1_27, bit in1_28, bit in1_29, bit in1_30, bit in1_31, bit in1_32, bit in1_33, bit in1_34, bit in1_35, bit in1_36, bit in1_37, bit in1_38, bit in1_39, bit in1_40, bit in1_41, bit in1_42, bit in1_43, bit in1_44, bit in1_45, bit in1_46, bit in1_47, bit in1_48, bit in1_49, bit in1_50, bit in1_51, bit in1_52, bit in1_53, bit in1_54, bit in1_55, bit in1_56, bit in1_57, bit in1_58, bit in1_59, bit in1_60, bit in1_61, bit in1_62, bit in1_63,
  bit in2_0, bit in2_1, bit in2_2, bit in2_3, bit in2_4, bit in2_5, bit in2_6, bit in2_7, bit in2_8, bit in2_9, bit in2_10, bit in2_11, bit in2_12, bit in2_13, bit in2_14, bit in2_15, bit in2_16, bit in2_17, bit in2_18, bit in2_19, bit in2_20, bit in2_21, bit in2_22, bit in2_23, bit in2_24, bit in2_25, bit in2_26, bit in2_27, bit in2_28, bit in2_29, bit in2_30, bit in2_31, bit in2_32, bit in2_33, bit in2_34, bit in2_35, bit in2_36, bit in2_37, bit in2_38, bit in2_39, bit in2_40, bit in2_41, bit in2_42, bit in2_43, bit in2_44, bit in2_45, bit in2_46, bit in2_47, bit in2_48, bit in2_49, bit in2_50, bit in2_51, bit in2_52, bit in2_53, bit in2_54, bit in2_55, bit in2_56, bit in2_57, bit in2_58, bit in2_59, bit in2_60, bit in2_61, bit in2_62, bit in2_63,
  bit in3_0, bit in3_1, bit in3_2, bit in3_3, bit in3_4, bit in3_5, bit in3_6, bit in3_7, bit in3_8, bit in3_9, bit in3_10, bit in3_11, bit in3_12, bit in3_13, bit in3_14, bit in3_15, bit in3_16, bit in3_17, bit in3_18, bit in3_19, bit in3_20, bit in3_21, bit in3_22, bit in3_23, bit in3_24, bit in3_25, bit in3_26, bit in3_27, bit in3_28, bit in3_29, bit in3_30, bit in3_31, bit in3_32, bit in3_33, bit in3_34, bit in3_35, bit in3_36, bit in3_37, bit in3_38, bit in3_39, bit in3_40, bit in3_41, bit in3_42, bit in3_43, bit in3_44, bit in3_45, bit in3_46, bit in3_47, bit in3_48, bit in3_49, bit in3_50, bit in3_51, bit in3_52, bit in3_53, bit in3_54, bit in3_55, bit in3_56, bit in3_57, bit in3_58, bit in3_59, bit in3_60, bit in3_61, bit in3_62, bit in3_63,
  bit in4_0, bit in4_1, bit in4_2, bit in4_3, bit in4_4, bit in4_5, bit in4_6, bit in4_7, bit in4_8, bit in4_9, bit in4_10, bit in4_11, bit in4_12, bit in4_13, bit in4_14, bit in4_15, bit in4_16, bit in4_17, bit in4_18, bit in4_19, bit in4_20, bit in4_21, bit in4_22, bit in4_23, bit in4_24, bit in4_25, bit in4_26, bit in4_27, bit in4_28, bit in4_29, bit in4_30, bit in4_31, bit in4_32, bit in4_33, bit in4_34, bit in4_35, bit in4_36, bit in4_37, bit in4_38, bit in4_39, bit in4_40, bit in4_41, bit in4_42, bit in4_43, bit in4_44, bit in4_45, bit in4_46, bit in4_47, bit in4_48, bit in4_49, bit in4_50, bit in4_51, bit in4_52, bit in4_53, bit in4_54, bit in4_55, bit in4_56, bit in4_57, bit in4_58, bit in4_59, bit in4_60, bit in4_61, bit in4_62, bit in4_63,
  bit in5_0, bit in5_1, bit in5_2, bit in5_3, bit in5_4, bit in5_5, bit in5_6, bit in5_7, bit in5_8, bit in5_9, bit in5_10, bit in5_11, bit in5_12, bit in5_13, bit in5_14, bit in5_15, bit in5_16, bit in5_17, bit in5_18, bit in5_19, bit in5_20, bit in5_21, bit in5_22, bit in5_23, bit in5_24, bit in5_25, bit in5_26, bit in5_27, bit in5_28, bit in5_29, bit in5_30, bit in5_31, bit in5_32, bit in5_33, bit in5_34, bit in5_35, bit in5_36, bit in5_37, bit in5_38, bit in5_39, bit in5_40, bit in5_41, bit in5_42, bit in5_43, bit in5_44, bit in5_45, bit in5_46, bit in5_47, bit in5_48, bit in5_49, bit in5_50, bit in5_51, bit in5_52, bit in5_53, bit in5_54, bit in5_55, bit in5_56, bit in5_57, bit in5_58, bit in5_59, bit in5_60, bit in5_61, bit in5_62, bit in5_63,
  bit in6_0, bit in6_1, bit in6_2, bit in6_3, bit in6_4, bit in6_5, bit in6_6, bit in6_7, bit in6_8, bit in6_9, bit in6_10, bit in6_11, bit in6_12, bit in6_13, bit in6_14, bit in6_15, bit in6_16, bit in6_17, bit in6_18, bit in6_19, bit in6_20, bit in6_21, bit in6_22, bit in6_23, bit in6_24, bit in6_25, bit in6_26, bit in6_27, bit in6_28, bit in6_29, bit in6_30, bit in6_31, bit in6_32, bit in6_33, bit in6_34, bit in6_35, bit in6_36, bit in6_37, bit in6_38, bit in6_39, bit in6_40, bit in6_41, bit in6_42, bit in6_43, bit in6_44, bit in6_45, bit in6_46, bit in6_47, bit in6_48, bit in6_49, bit in6_50, bit in6_51, bit in6_52, bit in6_53, bit in6_54, bit in6_55, bit in6_56, bit in6_57, bit in6_58, bit in6_59, bit in6_60, bit in6_61, bit in6_62, bit in6_63,
  bit in7_0, bit in7_1, bit in7_2, bit in7_3, bit in7_4, bit in7_5, bit in7_6, bit in7_7, bit in7_8, bit in7_9, bit in7_10, bit in7_11, bit in7_12, bit in7_13, bit in7_14, bit in7_15, bit in7_16, bit in7_17, bit in7_18, bit in7_19, bit in7_20, bit in7_21, bit in7_22, bit in7_23, bit in7_24, bit in7_25, bit in7_26, bit in7_27, bit in7_28, bit in7_29, bit in7_30, bit in7_31, bit in7_32, bit in7_33, bit in7_34, bit in7_35, bit in7_36, bit in7_37, bit in7_38, bit in7_39, bit in7_40, bit in7_41, bit in7_42, bit in7_43, bit in7_44, bit in7_45, bit in7_46, bit in7_47, bit in7_48, bit in7_49, bit in7_50, bit in7_51, bit in7_52, bit in7_53, bit in7_54, bit in7_55, bit in7_56, bit in7_57, bit in7_58, bit in7_59, bit in7_60, bit in7_61, bit in7_62, bit in7_63,
  bit in8_0, bit in8_1, bit in8_2, bit in8_3, bit in8_4, bit in8_5, bit in8_6, bit in8_7, bit in8_8, bit in8_9, bit in8_10, bit in8_11, bit in8_12, bit in8_13, bit in8_14, bit in8_15, bit in8_16, bit in8_17, bit in8_18, bit in8_19, bit in8_20, bit in8_21, bit in8_22, bit in8_23, bit in8_24, bit in8_25, bit in8_26, bit in8_27, bit in8_28, bit in8_29, bit in8_30, bit in8_31, bit in8_32, bit in8_33, bit in8_34, bit in8_35, bit in8_36, bit in8_37, bit in8_38, bit in8_39, bit in8_40, bit in8_41, bit in8_42, bit in8_43, bit in8_44, bit in8_45, bit in8_46, bit in8_47, bit in8_48, bit in8_49, bit in8_50, bit in8_51, bit in8_52, bit in8_53, bit in8_54, bit in8_55, bit in8_56, bit in8_57, bit in8_58, bit in8_59, bit in8_60, bit in8_61, bit in8_62, bit in8_63,
  bit in9_0, bit in9_1, bit in9_2, bit in9_3, bit in9_4, bit in9_5, bit in9_6, bit in9_7, bit in9_8, bit in9_9, bit in9_10, bit in9_11, bit in9_12, bit in9_13, bit in9_14, bit in9_15, bit in9_16, bit in9_17, bit in9_18, bit in9_19, bit in9_20, bit in9_21, bit in9_22, bit in9_23, bit in9_24, bit in9_25, bit in9_26, bit in9_27, bit in9_28, bit in9_29, bit in9_30, bit in9_31, bit in9_32, bit in9_33, bit in9_34, bit in9_35, bit in9_36, bit in9_37, bit in9_38, bit in9_39, bit in9_40, bit in9_41, bit in9_42, bit in9_43, bit in9_44, bit in9_45, bit in9_46, bit in9_47, bit in9_48, bit in9_49, bit in9_50, bit in9_51, bit in9_52, bit in9_53, bit in9_54, bit in9_55, bit in9_56, bit in9_57, bit in9_58, bit in9_59, bit in9_60, bit in9_61, bit in9_62, bit in9_63,
  bit in10_0, bit in10_1, bit in10_2, bit in10_3, bit in10_4, bit in10_5, bit in10_6, bit in10_7, bit in10_8, bit in10_9, bit in10_10, bit in10_11, bit in10_12, bit in10_13, bit in10_14, bit in10_15, bit in10_16, bit in10_17, bit in10_18, bit in10_19, bit in10_20, bit in10_21, bit in10_22, bit in10_23, bit in10_24, bit in10_25, bit in10_26, bit in10_27, bit in10_28, bit in10_29, bit in10_30, bit in10_31, bit in10_32, bit in10_33, bit in10_34, bit in10_35, bit in10_36, bit in10_37, bit in10_38, bit in10_39, bit in10_40, bit in10_41, bit in10_42, bit in10_43, bit in10_44, bit in10_45, bit in10_46, bit in10_47, bit in10_48, bit in10_49, bit in10_50, bit in10_51, bit in10_52, bit in10_53, bit in10_54, bit in10_55, bit in10_56, bit in10_57, bit in10_58, bit in10_59, bit in10_60, bit in10_61, bit in10_62, bit in10_63,
  bit in11_0, bit in11_1, bit in11_2, bit in11_3, bit in11_4, bit in11_5, bit in11_6, bit in11_7, bit in11_8, bit in11_9, bit in11_10, bit in11_11, bit in11_12, bit in11_13, bit in11_14, bit in11_15, bit in11_16, bit in11_17, bit in11_18, bit in11_19, bit in11_20, bit in11_21, bit in11_22, bit in11_23, bit in11_24, bit in11_25, bit in11_26, bit in11_27, bit in11_28, bit in11_29, bit in11_30, bit in11_31, bit in11_32, bit in11_33, bit in11_34, bit in11_35, bit in11_36, bit in11_37, bit in11_38, bit in11_39, bit in11_40, bit in11_41, bit in11_42, bit in11_43, bit in11_44, bit in11_45, bit in11_46, bit in11_47, bit in11_48, bit in11_49, bit in11_50, bit in11_51, bit in11_52, bit in11_53, bit in11_54, bit in11_55, bit in11_56, bit in11_57, bit in11_58, bit in11_59, bit in11_60, bit in11_61, bit in11_62, bit in11_63
) =
{
  true
  &&
  true
}
(* setup initial values of registers *)
mov rsp 0x7fffffffd830@uint64;
mov rdi 0x7fffffffdaa0@uint64;

(* pack input coefficients *)
mov %L0x7fffffffdaa0 [in0_0, in0_1, in0_2, in0_3, in0_4, in0_5, in0_6, in0_7, in0_8, in0_9, in0_10, in0_11, in0_12, in0_13, in0_14, in0_15, in0_16, in0_17, in0_18, in0_19, in0_20, in0_21, in0_22, in0_23, in0_24, in0_25, in0_26, in0_27, in0_28, in0_29, in0_30, in0_31, in0_32, in0_33, in0_34, in0_35, in0_36, in0_37, in0_38, in0_39, in0_40, in0_41, in0_42, in0_43, in0_44, in0_45, in0_46, in0_47, in0_48, in0_49, in0_50, in0_51, in0_52, in0_53, in0_54, in0_55, in0_56, in0_57, in0_58, in0_59, in0_60, in0_61, in0_62, in0_63];
mov %L0x7fffffffdaa8 [in1_0, in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8, in1_9, in1_10, in1_11, in1_12, in1_13, in1_14, in1_15, in1_16, in1_17, in1_18, in1_19, in1_20, in1_21, in1_22, in1_23, in1_24, in1_25, in1_26, in1_27, in1_28, in1_29, in1_30, in1_31, in1_32, in1_33, in1_34, in1_35, in1_36, in1_37, in1_38, in1_39, in1_40, in1_41, in1_42, in1_43, in1_44, in1_45, in1_46, in1_47, in1_48, in1_49, in1_50, in1_51, in1_52, in1_53, in1_54, in1_55, in1_56, in1_57, in1_58, in1_59, in1_60, in1_61, in1_62, in1_63];
mov %L0x7fffffffdab0 [in2_0, in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8, in2_9, in2_10, in2_11, in2_12, in2_13, in2_14, in2_15, in2_16, in2_17, in2_18, in2_19, in2_20, in2_21, in2_22, in2_23, in2_24, in2_25, in2_26, in2_27, in2_28, in2_29, in2_30, in2_31, in2_32, in2_33, in2_34, in2_35, in2_36, in2_37, in2_38, in2_39, in2_40, in2_41, in2_42, in2_43, in2_44, in2_45, in2_46, in2_47, in2_48, in2_49, in2_50, in2_51, in2_52, in2_53, in2_54, in2_55, in2_56, in2_57, in2_58, in2_59, in2_60, in2_61, in2_62, in2_63];
mov %L0x7fffffffdab8 [in3_0, in3_1, in3_2, in3_3, in3_4, in3_5, in3_6, in3_7, in3_8, in3_9, in3_10, in3_11, in3_12, in3_13, in3_14, in3_15, in3_16, in3_17, in3_18, in3_19, in3_20, in3_21, in3_22, in3_23, in3_24, in3_25, in3_26, in3_27, in3_28, in3_29, in3_30, in3_31, in3_32, in3_33, in3_34, in3_35, in3_36, in3_37, in3_38, in3_39, in3_40, in3_41, in3_42, in3_43, in3_44, in3_45, in3_46, in3_47, in3_48, in3_49, in3_50, in3_51, in3_52, in3_53, in3_54, in3_55, in3_56, in3_57, in3_58, in3_59, in3_60, in3_61, in3_62, in3_63];
mov %L0x7fffffffdac0 [in4_0, in4_1, in4_2, in4_3, in4_4, in4_5, in4_6, in4_7, in4_8, in4_9, in4_10, in4_11, in4_12, in4_13, in4_14, in4_15, in4_16, in4_17, in4_18, in4_19, in4_20, in4_21, in4_22, in4_23, in4_24, in4_25, in4_26, in4_27, in4_28, in4_29, in4_30, in4_31, in4_32, in4_33, in4_34, in4_35, in4_36, in4_37, in4_38, in4_39, in4_40, in4_41, in4_42, in4_43, in4_44, in4_45, in4_46, in4_47, in4_48, in4_49, in4_50, in4_51, in4_52, in4_53, in4_54, in4_55, in4_56, in4_57, in4_58, in4_59, in4_60, in4_61, in4_62, in4_63];
mov %L0x7fffffffdac8 [in5_0, in5_1, in5_2, in5_3, in5_4, in5_5, in5_6, in5_7, in5_8, in5_9, in5_10, in5_11, in5_12, in5_13, in5_14, in5_15, in5_16, in5_17, in5_18, in5_19, in5_20, in5_21, in5_22, in5_23, in5_24, in5_25, in5_26, in5_27, in5_28, in5_29, in5_30, in5_31, in5_32, in5_33, in5_34, in5_35, in5_36, in5_37, in5_38, in5_39, in5_40, in5_41, in5_42, in5_43, in5_44, in5_45, in5_46, in5_47, in5_48, in5_49, in5_50, in5_51, in5_52, in5_53, in5_54, in5_55, in5_56, in5_57, in5_58, in5_59, in5_60, in5_61, in5_62, in5_63];
mov %L0x7fffffffdad0 [in6_0, in6_1, in6_2, in6_3, in6_4, in6_5, in6_6, in6_7, in6_8, in6_9, in6_10, in6_11, in6_12, in6_13, in6_14, in6_15, in6_16, in6_17, in6_18, in6_19, in6_20, in6_21, in6_22, in6_23, in6_24, in6_25, in6_26, in6_27, in6_28, in6_29, in6_30, in6_31, in6_32, in6_33, in6_34, in6_35, in6_36, in6_37, in6_38, in6_39, in6_40, in6_41, in6_42, in6_43, in6_44, in6_45, in6_46, in6_47, in6_48, in6_49, in6_50, in6_51, in6_52, in6_53, in6_54, in6_55, in6_56, in6_57, in6_58, in6_59, in6_60, in6_61, in6_62, in6_63];
mov %L0x7fffffffdad8 [in7_0, in7_1, in7_2, in7_3, in7_4, in7_5, in7_6, in7_7, in7_8, in7_9, in7_10, in7_11, in7_12, in7_13, in7_14, in7_15, in7_16, in7_17, in7_18, in7_19, in7_20, in7_21, in7_22, in7_23, in7_24, in7_25, in7_26, in7_27, in7_28, in7_29, in7_30, in7_31, in7_32, in7_33, in7_34, in7_35, in7_36, in7_37, in7_38, in7_39, in7_40, in7_41, in7_42, in7_43, in7_44, in7_45, in7_46, in7_47, in7_48, in7_49, in7_50, in7_51, in7_52, in7_53, in7_54, in7_55, in7_56, in7_57, in7_58, in7_59, in7_60, in7_61, in7_62, in7_63];
mov %L0x7fffffffdae0 [in8_0, in8_1, in8_2, in8_3, in8_4, in8_5, in8_6, in8_7, in8_8, in8_9, in8_10, in8_11, in8_12, in8_13, in8_14, in8_15, in8_16, in8_17, in8_18, in8_19, in8_20, in8_21, in8_22, in8_23, in8_24, in8_25, in8_26, in8_27, in8_28, in8_29, in8_30, in8_31, in8_32, in8_33, in8_34, in8_35, in8_36, in8_37, in8_38, in8_39, in8_40, in8_41, in8_42, in8_43, in8_44, in8_45, in8_46, in8_47, in8_48, in8_49, in8_50, in8_51, in8_52, in8_53, in8_54, in8_55, in8_56, in8_57, in8_58, in8_59, in8_60, in8_61, in8_62, in8_63];
mov %L0x7fffffffdae8 [in9_0, in9_1, in9_2, in9_3, in9_4, in9_5, in9_6, in9_7, in9_8, in9_9, in9_10, in9_11, in9_12, in9_13, in9_14, in9_15, in9_16, in9_17, in9_18, in9_19, in9_20, in9_21, in9_22, in9_23, in9_24, in9_25, in9_26, in9_27, in9_28, in9_29, in9_30, in9_31, in9_32, in9_33, in9_34, in9_35, in9_36, in9_37, in9_38, in9_39, in9_40, in9_41, in9_42, in9_43, in9_44, in9_45, in9_46, in9_47, in9_48, in9_49, in9_50, in9_51, in9_52, in9_53, in9_54, in9_55, in9_56, in9_57, in9_58, in9_59, in9_60, in9_61, in9_62, in9_63];
mov %L0x7fffffffdaf0 [in10_0, in10_1, in10_2, in10_3, in10_4, in10_5, in10_6, in10_7, in10_8, in10_9, in10_10, in10_11, in10_12, in10_13, in10_14, in10_15, in10_16, in10_17, in10_18, in10_19, in10_20, in10_21, in10_22, in10_23, in10_24, in10_25, in10_26, in10_27, in10_28, in10_29, in10_30, in10_31, in10_32, in10_33, in10_34, in10_35, in10_36, in10_37, in10_38, in10_39, in10_40, in10_41, in10_42, in10_43, in10_44, in10_45, in10_46, in10_47, in10_48, in10_49, in10_50, in10_51, in10_52, in10_53, in10_54, in10_55, in10_56, in10_57, in10_58, in10_59, in10_60, in10_61, in10_62, in10_63];
mov %L0x7fffffffdaf8 [in11_0, in11_1, in11_2, in11_3, in11_4, in11_5, in11_6, in11_7, in11_8, in11_9, in11_10, in11_11, in11_12, in11_13, in11_14, in11_15, in11_16, in11_17, in11_18, in11_19, in11_20, in11_21, in11_22, in11_23, in11_24, in11_25, in11_26, in11_27, in11_28, in11_29, in11_30, in11_31, in11_32, in11_33, in11_34, in11_35, in11_36, in11_37, in11_38, in11_39, in11_40, in11_41, in11_42, in11_43, in11_44, in11_45, in11_46, in11_47, in11_48, in11_49, in11_50, in11_51, in11_52, in11_53, in11_54, in11_55, in11_56, in11_57, in11_58, in11_59, in11_60, in11_61, in11_62, in11_63];

nondet x@uint12;
nondet z@uint12;
nondet modulus@uint13;

ghost input_poly@uint12: input_poly =
  in0_0 * x**0 + in0_1 * x**1 + in0_2 * x**2 + in0_3 * x**3 +
  in0_4 * x**4 + in0_5 * x**5 + in0_6 * x**6 + in0_7 * x**7 +
  in0_8 * x**8 + in0_9 * x**9 + in0_10 * x**10 + in0_11 * x**11 +
  in0_12 * x**12 + in0_13 * x**13 + in0_14 * x**14 + in0_15 * x**15 +
  in0_16 * x**16 + in0_17 * x**17 + in0_18 * x**18 + in0_19 * x**19 +
  in0_20 * x**20 + in0_21 * x**21 + in0_22 * x**22 + in0_23 * x**23 +
  in0_24 * x**24 + in0_25 * x**25 + in0_26 * x**26 + in0_27 * x**27 +
  in0_28 * x**28 + in0_29 * x**29 + in0_30 * x**30 + in0_31 * x**31 +
  in0_32 * x**32 + in0_33 * x**33 + in0_34 * x**34 + in0_35 * x**35 +
  in0_36 * x**36 + in0_37 * x**37 + in0_38 * x**38 + in0_39 * x**39 +
  in0_40 * x**40 + in0_41 * x**41 + in0_42 * x**42 + in0_43 * x**43 +
  in0_44 * x**44 + in0_45 * x**45 + in0_46 * x**46 + in0_47 * x**47 +
  in0_48 * x**48 + in0_49 * x**49 + in0_50 * x**50 + in0_51 * x**51 +
  in0_52 * x**52 + in0_53 * x**53 + in0_54 * x**54 + in0_55 * x**55 +
  in0_56 * x**56 + in0_57 * x**57 + in0_58 * x**58 + in0_59 * x**59 +
  in0_60 * x**60 + in0_61 * x**61 + in0_62 * x**62 + in0_63 * x**63
&& true;

(* mask #0: 0x8888888888888888 *)
mov %rax [0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit];
(* mask #1: 0x0000ffff00000000 *)
mov %r12 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mask #2: 0x8888888888888888 *)
mov %L0x7fffffffd830 [0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit];
(* mask #3: 0x4444444444444444 *)
mov %L0x7fffffffd838 [0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit, 0@bit, 0@bit, 1@bit, 0@bit];
(* mask #4: 0xc0c0c0c0c0c0c0c0 *)
mov %L0x7fffffffd840 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit];
(* mask #5: 0x3030303030303030 *)
mov %L0x7fffffffd848 [0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 0@bit, 0@bit];
(* mask #6: 0xf000f000f000f000 *)
mov %L0x7fffffffd850 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit];
(* mask #7: 0x0f000f000f000f00 *)
mov %L0x7fffffffd858 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mask #8: 0xff000000ff000000 *)
mov %L0x7fffffffd860 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit];
(* mask #9: 0x00ff000000ff0000 *)
mov %L0x7fffffffd868 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mask #10: 0xffff000000000000 *)
mov %L0x7fffffffd870 [0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit, 1@bit];


(* #! -> SP = 0x7fffffffda98 *)
#! 0x7fffffffda98 = 0x7fffffffda98;
(* mov    %rdi,%r15                                #! PC = 0x555555555229 *)
mov r15 rdi;
(* mov    $0x3c,%ecx                               #! PC = 0x55555555522c *)
vpc ecx@uint32 0x3c@uint8; mov cl 0x3c@uint8;
(* xor    %ebp,%ebp                                #! PC = 0x555555555250 *)
mov ebp 0@sint32;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd830; PC = 0x55555555525a *)
mov %L0x7fffffffd830 %rax;
(* mov    %rsp,%r14                                #! PC = 0x555555555263 *)
mov r14 rsp;
(* mov    %r15,%r9                                 #! PC = 0x5555555552e4 *)
mov r9 r15;
(* mov    $0x1,%r8d                                #! PC = 0x5555555552e7 *)
mov r8d 0x1@uint32;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdaa0; Value = 0x0000000000000002; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdaa0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdaa0; PC = 0x555555555330 *)
mov %L0x7fffffffdaa0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdaa8; Value = 0x0000000000000002; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdaa8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdaa8; PC = 0x555555555330 *)
mov %L0x7fffffffdaa8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdab0; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdab0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdab0; PC = 0x555555555330 *)
mov %L0x7fffffffdab0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdab8; Value = 0x0000000000000002; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdab8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdab8; PC = 0x555555555330 *)
mov %L0x7fffffffdab8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdac0; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdac0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdac0; PC = 0x555555555330 *)
mov %L0x7fffffffdac0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdac8; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdac8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdac8; PC = 0x555555555330 *)
mov %L0x7fffffffdac8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdad0; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdad0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdad0; PC = 0x555555555330 *)
mov %L0x7fffffffdad0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdad8; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdad8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdad8; PC = 0x555555555330 *)
mov %L0x7fffffffdad8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdae0; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdae0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdae0; PC = 0x555555555330 *)
mov %L0x7fffffffdae0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdae8; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdae8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdae8; PC = 0x555555555330 *)
mov %L0x7fffffffdae8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdaf0; Value = 0x0000000000000000; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdaf0;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdaf0; PC = 0x555555555330 *)
mov %L0x7fffffffdaf0 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* mov    (%r9),%rax                               #! EA = L0x7fffffffdaf8; Value = 0x0000000000000002; PC = 0x5555555552f0 *)
mov %rax %L0x7fffffffdaf8;
(* mov    %r14,%rdi                                #! PC = 0x5555555552f3 *)
mov rdi r14;
(* mov    %r12,%rdx                                #! PC = 0x5555555552f6 *)
mov %rdx %r12;
(* mov    $0x4,%esi                                #! PC = 0x5555555552f9 *)
mov esi 0x4@sint32;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd870; Value = 0xffff000000000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd870;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 4@8;
shl r11d r11d 4;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 16 *)
assert true && cl = 16@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 16 *)
assert true && cl = 16@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd868; Value = 0x00ff000000ff0000; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd868;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd860; Value = 0xff000000ff000000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd860;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 3@8;
shl r11d r11d 3;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 8 *)
assert true && cl = 8@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 8 *)
assert true && cl = 8@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd858; Value = 0x0f000f000f000f00; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd858;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0xf000f000f000f000; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd850;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 2@8;
shl r11d r11d 2;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 4 *)
assert true && cl = 4@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 4 *)
assert true && cl = 4@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd848; Value = 0x3030303030303030; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd848;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd840; Value = 0xc0c0c0c0c0c0c0c0; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd840;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 1@8;
shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 2 *)
assert true && cl = 2@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 2 *)
assert true && cl = 2@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd838; Value = 0x4444444444444444; PC = 0x55555555532a *)
mov %rdx %L0x7fffffffd838;
(* #jmp    0x5555555552fe <radix_conversions+222>  #! PC = 0x55555555532e *)
#jmp    0x5555555552fe <radix_conversions+222>  #! 0x55555555532e = 0x55555555532e;
(* mov    %esi,%ecx                                #! PC = 0x5555555552fe *)
mov ecx esi; vpc cl@uint8 esi;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffd830; Value = 0x8888888888888888; PC = 0x555555555300 *)
mov %r10 %L0x7fffffffd830;
(* mov    %r8d,%r11d                               #! PC = 0x555555555304 *)
mov r11d r8d;
(* sub    $0x1,%esi                                #! PC = 0x555555555307 *)
sub esi esi 0x1@sint32;
(* shl    %cl,%r11d                                #! PC = 0x55555555530a *)
assert true && cl = 0@8;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* shr r10 for 1 *)
assert true && cl = 1@8;
mov [r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63] %r10;
mov %r10 [r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, r10_8, r10_9, r10_10, r10_11, r10_12, r10_13, r10_14, r10_15, r10_16, r10_17, r10_18, r10_19, r10_20, r10_21, r10_22, r10_23, r10_24, r10_25, r10_26, r10_27, r10_28, r10_29, r10_30, r10_31, r10_32, r10_33, r10_34, r10_35, r10_36, r10_37, r10_38, r10_39, r10_40, r10_41, r10_42, r10_43, r10_44, r10_45, r10_46, r10_47, r10_48, r10_49, r10_50, r10_51, r10_52, r10_53, r10_54, r10_55, r10_56, r10_57, r10_58, r10_59, r10_60, r10_61, r10_62, r10_63, 0@bit];
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* shr rdx for 1 *)
assert true && cl = 1@8;
mov [rdx_0, rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63] %rdx;
mov %rdx [rdx_1, rdx_2, rdx_3, rdx_4, rdx_5, rdx_6, rdx_7, rdx_8, rdx_9, rdx_10, rdx_11, rdx_12, rdx_13, rdx_14, rdx_15, rdx_16, rdx_17, rdx_18, rdx_19, rdx_20, rdx_21, rdx_22, rdx_23, rdx_24, rdx_25, rdx_26, rdx_27, rdx_28, rdx_29, rdx_30, rdx_31, rdx_32, rdx_33, rdx_34, rdx_35, rdx_36, rdx_37, rdx_38, rdx_39, rdx_40, rdx_41, rdx_42, rdx_43, rdx_44, rdx_45, rdx_46, rdx_47, rdx_48, rdx_49, rdx_50, rdx_51, rdx_52, rdx_53, rdx_54, rdx_55, rdx_56, rdx_57, rdx_58, rdx_59, rdx_60, rdx_61, rdx_62, rdx_63, 0@bit];
(* xor    %rdx,%rax                                #! PC = 0x555555555323 *)
adds %dc %rax %rax %rdx;
(* #jl     0x555555555330 <radix_conversions+272>  #! PC = 0x555555555328 *)
#jl     0x555555555330 <radix_conversions+272>  #! 0x555555555328 = 0x555555555328;
(* mov    %rax,(%r9)                               #! EA = L0x7fffffffdaf8; PC = 0x555555555330 *)
mov %L0x7fffffffdaf8 %rax;
(* add    $0x8,%r9                                 #! PC = 0x555555555333 *)
add r9 r9 0x8@uint64;
(* #jne    0x5555555552f0 <radix_conversions+208>  #! PC = 0x55555555533a *)
#jne    0x5555555552f0 <radix_conversions+208>  #! 0x55555555533a = 0x55555555533a;
(* add    $0x1,%rbp                                #! PC = 0x555555555347 *)
add ebp ebp 0x1@sint32;

mov [out0_0, out0_1, out0_2, out0_3, out0_4, out0_5, out0_6, out0_7, out0_8, out0_9, out0_10, out0_11, out0_12, out0_13, out0_14, out0_15, out0_16, out0_17, out0_18, out0_19, out0_20, out0_21, out0_22, out0_23, out0_24, out0_25, out0_26, out0_27, out0_28, out0_29, out0_30, out0_31, out0_32, out0_33, out0_34, out0_35, out0_36, out0_37, out0_38, out0_39, out0_40, out0_41, out0_42, out0_43, out0_44, out0_45, out0_46, out0_47, out0_48, out0_49, out0_50, out0_51, out0_52, out0_53, out0_54, out0_55, out0_56, out0_57, out0_58, out0_59, out0_60, out0_61, out0_62, out0_63] %L0x7fffffffdaa0;
mov [out1_0, out1_1, out1_2, out1_3, out1_4, out1_5, out1_6, out1_7, out1_8, out1_9, out1_10, out1_11, out1_12, out1_13, out1_14, out1_15, out1_16, out1_17, out1_18, out1_19, out1_20, out1_21, out1_22, out1_23, out1_24, out1_25, out1_26, out1_27, out1_28, out1_29, out1_30, out1_31, out1_32, out1_33, out1_34, out1_35, out1_36, out1_37, out1_38, out1_39, out1_40, out1_41, out1_42, out1_43, out1_44, out1_45, out1_46, out1_47, out1_48, out1_49, out1_50, out1_51, out1_52, out1_53, out1_54, out1_55, out1_56, out1_57, out1_58, out1_59, out1_60, out1_61, out1_62, out1_63] %L0x7fffffffdaa8;
mov [out2_0, out2_1, out2_2, out2_3, out2_4, out2_5, out2_6, out2_7, out2_8, out2_9, out2_10, out2_11, out2_12, out2_13, out2_14, out2_15, out2_16, out2_17, out2_18, out2_19, out2_20, out2_21, out2_22, out2_23, out2_24, out2_25, out2_26, out2_27, out2_28, out2_29, out2_30, out2_31, out2_32, out2_33, out2_34, out2_35, out2_36, out2_37, out2_38, out2_39, out2_40, out2_41, out2_42, out2_43, out2_44, out2_45, out2_46, out2_47, out2_48, out2_49, out2_50, out2_51, out2_52, out2_53, out2_54, out2_55, out2_56, out2_57, out2_58, out2_59, out2_60, out2_61, out2_62, out2_63] %L0x7fffffffdab0;
mov [out3_0, out3_1, out3_2, out3_3, out3_4, out3_5, out3_6, out3_7, out3_8, out3_9, out3_10, out3_11, out3_12, out3_13, out3_14, out3_15, out3_16, out3_17, out3_18, out3_19, out3_20, out3_21, out3_22, out3_23, out3_24, out3_25, out3_26, out3_27, out3_28, out3_29, out3_30, out3_31, out3_32, out3_33, out3_34, out3_35, out3_36, out3_37, out3_38, out3_39, out3_40, out3_41, out3_42, out3_43, out3_44, out3_45, out3_46, out3_47, out3_48, out3_49, out3_50, out3_51, out3_52, out3_53, out3_54, out3_55, out3_56, out3_57, out3_58, out3_59, out3_60, out3_61, out3_62, out3_63] %L0x7fffffffdab8;
mov [out4_0, out4_1, out4_2, out4_3, out4_4, out4_5, out4_6, out4_7, out4_8, out4_9, out4_10, out4_11, out4_12, out4_13, out4_14, out4_15, out4_16, out4_17, out4_18, out4_19, out4_20, out4_21, out4_22, out4_23, out4_24, out4_25, out4_26, out4_27, out4_28, out4_29, out4_30, out4_31, out4_32, out4_33, out4_34, out4_35, out4_36, out4_37, out4_38, out4_39, out4_40, out4_41, out4_42, out4_43, out4_44, out4_45, out4_46, out4_47, out4_48, out4_49, out4_50, out4_51, out4_52, out4_53, out4_54, out4_55, out4_56, out4_57, out4_58, out4_59, out4_60, out4_61, out4_62, out4_63] %L0x7fffffffdac0;
mov [out5_0, out5_1, out5_2, out5_3, out5_4, out5_5, out5_6, out5_7, out5_8, out5_9, out5_10, out5_11, out5_12, out5_13, out5_14, out5_15, out5_16, out5_17, out5_18, out5_19, out5_20, out5_21, out5_22, out5_23, out5_24, out5_25, out5_26, out5_27, out5_28, out5_29, out5_30, out5_31, out5_32, out5_33, out5_34, out5_35, out5_36, out5_37, out5_38, out5_39, out5_40, out5_41, out5_42, out5_43, out5_44, out5_45, out5_46, out5_47, out5_48, out5_49, out5_50, out5_51, out5_52, out5_53, out5_54, out5_55, out5_56, out5_57, out5_58, out5_59, out5_60, out5_61, out5_62, out5_63] %L0x7fffffffdac8;
mov [out6_0, out6_1, out6_2, out6_3, out6_4, out6_5, out6_6, out6_7, out6_8, out6_9, out6_10, out6_11, out6_12, out6_13, out6_14, out6_15, out6_16, out6_17, out6_18, out6_19, out6_20, out6_21, out6_22, out6_23, out6_24, out6_25, out6_26, out6_27, out6_28, out6_29, out6_30, out6_31, out6_32, out6_33, out6_34, out6_35, out6_36, out6_37, out6_38, out6_39, out6_40, out6_41, out6_42, out6_43, out6_44, out6_45, out6_46, out6_47, out6_48, out6_49, out6_50, out6_51, out6_52, out6_53, out6_54, out6_55, out6_56, out6_57, out6_58, out6_59, out6_60, out6_61, out6_62, out6_63] %L0x7fffffffdad0;
mov [out7_0, out7_1, out7_2, out7_3, out7_4, out7_5, out7_6, out7_7, out7_8, out7_9, out7_10, out7_11, out7_12, out7_13, out7_14, out7_15, out7_16, out7_17, out7_18, out7_19, out7_20, out7_21, out7_22, out7_23, out7_24, out7_25, out7_26, out7_27, out7_28, out7_29, out7_30, out7_31, out7_32, out7_33, out7_34, out7_35, out7_36, out7_37, out7_38, out7_39, out7_40, out7_41, out7_42, out7_43, out7_44, out7_45, out7_46, out7_47, out7_48, out7_49, out7_50, out7_51, out7_52, out7_53, out7_54, out7_55, out7_56, out7_57, out7_58, out7_59, out7_60, out7_61, out7_62, out7_63] %L0x7fffffffdad8;
mov [out8_0, out8_1, out8_2, out8_3, out8_4, out8_5, out8_6, out8_7, out8_8, out8_9, out8_10, out8_11, out8_12, out8_13, out8_14, out8_15, out8_16, out8_17, out8_18, out8_19, out8_20, out8_21, out8_22, out8_23, out8_24, out8_25, out8_26, out8_27, out8_28, out8_29, out8_30, out8_31, out8_32, out8_33, out8_34, out8_35, out8_36, out8_37, out8_38, out8_39, out8_40, out8_41, out8_42, out8_43, out8_44, out8_45, out8_46, out8_47, out8_48, out8_49, out8_50, out8_51, out8_52, out8_53, out8_54, out8_55, out8_56, out8_57, out8_58, out8_59, out8_60, out8_61, out8_62, out8_63] %L0x7fffffffdae0;
mov [out9_0, out9_1, out9_2, out9_3, out9_4, out9_5, out9_6, out9_7, out9_8, out9_9, out9_10, out9_11, out9_12, out9_13, out9_14, out9_15, out9_16, out9_17, out9_18, out9_19, out9_20, out9_21, out9_22, out9_23, out9_24, out9_25, out9_26, out9_27, out9_28, out9_29, out9_30, out9_31, out9_32, out9_33, out9_34, out9_35, out9_36, out9_37, out9_38, out9_39, out9_40, out9_41, out9_42, out9_43, out9_44, out9_45, out9_46, out9_47, out9_48, out9_49, out9_50, out9_51, out9_52, out9_53, out9_54, out9_55, out9_56, out9_57, out9_58, out9_59, out9_60, out9_61, out9_62, out9_63] %L0x7fffffffdae8;
mov [out10_0, out10_1, out10_2, out10_3, out10_4, out10_5, out10_6, out10_7, out10_8, out10_9, out10_10, out10_11, out10_12, out10_13, out10_14, out10_15, out10_16, out10_17, out10_18, out10_19, out10_20, out10_21, out10_22, out10_23, out10_24, out10_25, out10_26, out10_27, out10_28, out10_29, out10_30, out10_31, out10_32, out10_33, out10_34, out10_35, out10_36, out10_37, out10_38, out10_39, out10_40, out10_41, out10_42, out10_43, out10_44, out10_45, out10_46, out10_47, out10_48, out10_49, out10_50, out10_51, out10_52, out10_53, out10_54, out10_55, out10_56, out10_57, out10_58, out10_59, out10_60, out10_61, out10_62, out10_63] %L0x7fffffffdaf0;
mov [out11_0, out11_1, out11_2, out11_3, out11_4, out11_5, out11_6, out11_7, out11_8, out11_9, out11_10, out11_11, out11_12, out11_13, out11_14, out11_15, out11_16, out11_17, out11_18, out11_19, out11_20, out11_21, out11_22, out11_23, out11_24, out11_25, out11_26, out11_27, out11_28, out11_29, out11_30, out11_31, out11_32, out11_33, out11_34, out11_35, out11_36, out11_37, out11_38, out11_39, out11_40, out11_41, out11_42, out11_43, out11_44, out11_45, out11_46, out11_47, out11_48, out11_49, out11_50, out11_51, out11_52, out11_53, out11_54, out11_55, out11_56, out11_57, out11_58, out11_59, out11_60, out11_61, out11_62, out11_63] %L0x7fffffffdaf8;

ghost cvrted0_0@uint12: cvrted0_0 = out0_0 && true; ghost cvrted0_1@uint12: cvrted0_1 = out0_1 && true;
ghost cvrted0_2@uint12: cvrted0_2 = out0_2 && true; ghost cvrted0_3@uint12: cvrted0_3 = out0_3 && true;
ghost cvrted0_4@uint12: cvrted0_4 = out0_4 && true; ghost cvrted0_5@uint12: cvrted0_5 = out0_5 && true;
ghost cvrted0_6@uint12: cvrted0_6 = out0_6 && true; ghost cvrted0_7@uint12: cvrted0_7 = out0_7 && true;
ghost cvrted0_8@uint12: cvrted0_8 = out0_8 && true; ghost cvrted0_9@uint12: cvrted0_9 = out0_9 && true;
ghost cvrted0_10@uint12: cvrted0_10 = out0_10 && true; ghost cvrted0_11@uint12: cvrted0_11 = out0_11 && true;
ghost cvrted0_12@uint12: cvrted0_12 = out0_12 && true; ghost cvrted0_13@uint12: cvrted0_13 = out0_13 && true;
ghost cvrted0_14@uint12: cvrted0_14 = out0_14 && true; ghost cvrted0_15@uint12: cvrted0_15 = out0_15 && true;
ghost cvrted0_16@uint12: cvrted0_16 = out0_16 && true; ghost cvrted0_17@uint12: cvrted0_17 = out0_17 && true;
ghost cvrted0_18@uint12: cvrted0_18 = out0_18 && true; ghost cvrted0_19@uint12: cvrted0_19 = out0_19 && true;
ghost cvrted0_20@uint12: cvrted0_20 = out0_20 && true; ghost cvrted0_21@uint12: cvrted0_21 = out0_21 && true;
ghost cvrted0_22@uint12: cvrted0_22 = out0_22 && true; ghost cvrted0_23@uint12: cvrted0_23 = out0_23 && true;
ghost cvrted0_24@uint12: cvrted0_24 = out0_24 && true; ghost cvrted0_25@uint12: cvrted0_25 = out0_25 && true;
ghost cvrted0_26@uint12: cvrted0_26 = out0_26 && true; ghost cvrted0_27@uint12: cvrted0_27 = out0_27 && true;
ghost cvrted0_28@uint12: cvrted0_28 = out0_28 && true; ghost cvrted0_29@uint12: cvrted0_29 = out0_29 && true;
ghost cvrted0_30@uint12: cvrted0_30 = out0_30 && true; ghost cvrted0_31@uint12: cvrted0_31 = out0_31 && true;
ghost cvrted0_32@uint12: cvrted0_32 = out0_32 && true; ghost cvrted0_33@uint12: cvrted0_33 = out0_33 && true;
ghost cvrted0_34@uint12: cvrted0_34 = out0_34 && true; ghost cvrted0_35@uint12: cvrted0_35 = out0_35 && true;
ghost cvrted0_36@uint12: cvrted0_36 = out0_36 && true; ghost cvrted0_37@uint12: cvrted0_37 = out0_37 && true;
ghost cvrted0_38@uint12: cvrted0_38 = out0_38 && true; ghost cvrted0_39@uint12: cvrted0_39 = out0_39 && true;
ghost cvrted0_40@uint12: cvrted0_40 = out0_40 && true; ghost cvrted0_41@uint12: cvrted0_41 = out0_41 && true;
ghost cvrted0_42@uint12: cvrted0_42 = out0_42 && true; ghost cvrted0_43@uint12: cvrted0_43 = out0_43 && true;
ghost cvrted0_44@uint12: cvrted0_44 = out0_44 && true; ghost cvrted0_45@uint12: cvrted0_45 = out0_45 && true;
ghost cvrted0_46@uint12: cvrted0_46 = out0_46 && true; ghost cvrted0_47@uint12: cvrted0_47 = out0_47 && true;
ghost cvrted0_48@uint12: cvrted0_48 = out0_48 && true; ghost cvrted0_49@uint12: cvrted0_49 = out0_49 && true;
ghost cvrted0_50@uint12: cvrted0_50 = out0_50 && true; ghost cvrted0_51@uint12: cvrted0_51 = out0_51 && true;
ghost cvrted0_52@uint12: cvrted0_52 = out0_52 && true; ghost cvrted0_53@uint12: cvrted0_53 = out0_53 && true;
ghost cvrted0_54@uint12: cvrted0_54 = out0_54 && true; ghost cvrted0_55@uint12: cvrted0_55 = out0_55 && true;
ghost cvrted0_56@uint12: cvrted0_56 = out0_56 && true; ghost cvrted0_57@uint12: cvrted0_57 = out0_57 && true;
ghost cvrted0_58@uint12: cvrted0_58 = out0_58 && true; ghost cvrted0_59@uint12: cvrted0_59 = out0_59 && true;
ghost cvrted0_60@uint12: cvrted0_60 = out0_60 && true; ghost cvrted0_61@uint12: cvrted0_61 = out0_61 && true;
ghost cvrted0_62@uint12: cvrted0_62 = out0_62 && true; ghost cvrted0_63@uint12: cvrted0_63 = out0_63 && true;

ghost radix_converted@uint12: radix_converted =
  (cvrted0_0 + x * cvrted0_1) * (x ** 2 + x) ** 0 +
  (cvrted0_2 + x * cvrted0_3) * (x ** 2 + x) ** 1 +
  (cvrted0_4 + x * cvrted0_5) * (x ** 2 + x) ** 2 +
  (cvrted0_6 + x * cvrted0_7) * (x ** 2 + x) ** 3 +
  (cvrted0_8 + x * cvrted0_9) * (x ** 2 + x) ** 4 +
  (cvrted0_10 + x * cvrted0_11) * (x ** 2 + x) ** 5 +
  (cvrted0_12 + x * cvrted0_13) * (x ** 2 + x) ** 6 +
  (cvrted0_14 + x * cvrted0_15) * (x ** 2 + x) ** 7 +
  (cvrted0_16 + x * cvrted0_17) * (x ** 2 + x) ** 8 +
  (cvrted0_18 + x * cvrted0_19) * (x ** 2 + x) ** 9 +
  (cvrted0_20 + x * cvrted0_21) * (x ** 2 + x) ** 10 +
  (cvrted0_22 + x * cvrted0_23) * (x ** 2 + x) ** 11 +
  (cvrted0_24 + x * cvrted0_25) * (x ** 2 + x) ** 12 +
  (cvrted0_26 + x * cvrted0_27) * (x ** 2 + x) ** 13 +
  (cvrted0_28 + x * cvrted0_29) * (x ** 2 + x) ** 14 +
  (cvrted0_30 + x * cvrted0_31) * (x ** 2 + x) ** 15 +
  (cvrted0_32 + x * cvrted0_33) * (x ** 2 + x) ** 16 +
  (cvrted0_34 + x * cvrted0_35) * (x ** 2 + x) ** 17 +
  (cvrted0_36 + x * cvrted0_37) * (x ** 2 + x) ** 18 +
  (cvrted0_38 + x * cvrted0_39) * (x ** 2 + x) ** 19 +
  (cvrted0_40 + x * cvrted0_41) * (x ** 2 + x) ** 20 +
  (cvrted0_42 + x * cvrted0_43) * (x ** 2 + x) ** 21 +
  (cvrted0_44 + x * cvrted0_45) * (x ** 2 + x) ** 22 +
  (cvrted0_46 + x * cvrted0_47) * (x ** 2 + x) ** 23 +
  (cvrted0_48 + x * cvrted0_49) * (x ** 2 + x) ** 24 +
  (cvrted0_50 + x * cvrted0_51) * (x ** 2 + x) ** 25 +
  (cvrted0_52 + x * cvrted0_53) * (x ** 2 + x) ** 26 +
  (cvrted0_54 + x * cvrted0_55) * (x ** 2 + x) ** 27 +
  (cvrted0_56 + x * cvrted0_57) * (x ** 2 + x) ** 28 +
  (cvrted0_58 + x * cvrted0_59) * (x ** 2 + x) ** 29 +
  (cvrted0_60 + x * cvrted0_61) * (x ** 2 + x) ** 30 +
  (cvrted0_62 + x * cvrted0_63) * (x ** 2 + x) ** 31
  && true;

ecut eqmod input_poly radix_converted 2;

(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;

assume modulus = z ** 12 + z ** 3 + 1 && true;

nondet res0_0@bit; nondet res0_1@bit; nondet res0_2@bit; nondet res0_3@bit;
nondet res0_4@bit; nondet res0_5@bit; nondet res0_6@bit; nondet res0_7@bit;
nondet res0_8@bit; nondet res0_9@bit; nondet res0_10@bit; nondet res0_11@bit;
nondet res0_12@bit; nondet res0_13@bit; nondet res0_14@bit; nondet res0_15@bit;
nondet res0_16@bit; nondet res0_17@bit; nondet res0_18@bit; nondet res0_19@bit;
nondet res0_20@bit; nondet res0_21@bit; nondet res0_22@bit; nondet res0_23@bit;
nondet res0_24@bit; nondet res0_25@bit; nondet res0_26@bit; nondet res0_27@bit;
nondet res0_28@bit; nondet res0_29@bit; nondet res0_30@bit; nondet res0_31@bit;
nondet res0_32@bit; nondet res0_33@bit; nondet res0_34@bit; nondet res0_35@bit;
nondet res0_36@bit; nondet res0_37@bit; nondet res0_38@bit; nondet res0_39@bit;
nondet res0_40@bit; nondet res0_41@bit; nondet res0_42@bit; nondet res0_43@bit;
nondet res0_44@bit; nondet res0_45@bit; nondet res0_46@bit; nondet res0_47@bit;
nondet res0_48@bit; nondet res0_49@bit; nondet res0_50@bit; nondet res0_51@bit;
nondet res0_52@bit; nondet res0_53@bit; nondet res0_54@bit; nondet res0_55@bit;
nondet res0_56@bit; nondet res0_57@bit; nondet res0_58@bit; nondet res0_59@bit;
nondet res0_60@bit; nondet res0_61@bit; nondet res0_62@bit; nondet res0_63@bit;

assume and [
  eqmod res0_0 (cvrted0_0 * ((* 0  0 *) 1)) [2, modulus],
  eqmod res0_1 (cvrted0_1 * ((* 0  1 *) 1)) [2, modulus],
  eqmod res0_2 (cvrted0_2 * ((* 0  2 *) z**2 + z)) [2, modulus],
  eqmod res0_3 (cvrted0_3 * ((* 0  3 *) z**2 + z)) [2, modulus],
  eqmod res0_4 (cvrted0_4 * ((* 0  4 *) z**4 + z**2)) [2, modulus],
  eqmod res0_5 (cvrted0_5 * ((* 0  5 *) z**4 + z**2)) [2, modulus],
  eqmod res0_6 (cvrted0_6 * ((* 0  6 *) z**6 + z**5 + z**4 + z**3)) [2, modulus],
  eqmod res0_7 (cvrted0_7 * ((* 0  7 *) z**6 + z**5 + z**4 + z**3)) [2, modulus],
  eqmod res0_8 (cvrted0_8 * ((* 0  8 *) z**8 + z**4)) [2, modulus],
  eqmod res0_9 (cvrted0_9 * ((* 0  9 *) z**8 + z**4)) [2, modulus],
  eqmod res0_10 (cvrted0_10 * ((* 0 10 *) z**10 + z**9 + z**6 + z**5)) [2, modulus],
  eqmod res0_11 (cvrted0_11 * ((* 0 11 *) z**10 + z**9 + z**6 + z**5)) [2, modulus],
  eqmod res0_12 (cvrted0_12 * ((* 0 12 *) z**10 + z**8 + z**6 + z**3 + 1)) [2, modulus],
  eqmod res0_13 (cvrted0_13 * ((* 0 13 *) z**10 + z**8 + z**6 + z**3 + 1)) [2, modulus],
  eqmod res0_14 (cvrted0_14 * ((* 0 14 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**5 + z**4 + z**3 + z**2 + z + 1)) [2, modulus],
  eqmod res0_15 (cvrted0_15 * ((* 0 15 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**5 + z**4 + z**3 + z**2 + z + 1)) [2, modulus],
  eqmod res0_16 (cvrted0_16 * ((* 0 16 *) z**8 + z**7 + z**4)) [2, modulus],
  eqmod res0_17 (cvrted0_17 * ((* 0 17 *) z**8 + z**7 + z**4)) [2, modulus],
  eqmod res0_18 (cvrted0_18 * ((* 0 18 *) z**10 + z**8 + z**6 + z**5)) [2, modulus],
  eqmod res0_19 (cvrted0_19 * ((* 0 19 *) z**10 + z**8 + z**6 + z**5)) [2, modulus],
  eqmod res0_20 (cvrted0_20 * ((* 0 20 *) z**11 + z**10 + z**9 + z**8 + z**6 + z**3 + 1)) [2, modulus],
  eqmod res0_21 (cvrted0_21 * ((* 0 21 *) z**11 + z**10 + z**9 + z**8 + z**6 + z**3 + 1)) [2, modulus],
  eqmod res0_22 (cvrted0_22 * ((* 0 22 *) z**9 + z**8 + z**7 + z**5 + z**2)) [2, modulus],
  eqmod res0_23 (cvrted0_23 * ((* 0 23 *) z**9 + z**8 + z**7 + z**5 + z**2)) [2, modulus],
  eqmod res0_24 (cvrted0_24 * ((* 0 24 *) z**11 + z**8 + z**7 + z**6 + z**4 + z**3)) [2, modulus],
  eqmod res0_25 (cvrted0_25 * ((* 0 25 *) z**11 + z**8 + z**7 + z**6 + z**4 + z**3)) [2, modulus],
  eqmod res0_26 (cvrted0_26 * ((* 0 26 *) z**10 + z**7 + z**6 + z**3 + z + 1)) [2, modulus],
  eqmod res0_27 (cvrted0_27 * ((* 0 27 *) z**10 + z**7 + z**6 + z**3 + z + 1)) [2, modulus],
  eqmod res0_28 (cvrted0_28 * ((* 0 28 *) z**11 + z**9 + z**7 + z**5 + z**4 + z + 1)) [2, modulus],
  eqmod res0_29 (cvrted0_29 * ((* 0 29 *) z**11 + z**9 + z**7 + z**5 + z**4 + z + 1)) [2, modulus],
  eqmod res0_30 (cvrted0_30 * ((* 0 30 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**5 + z**4 + 1)) [2, modulus],
  eqmod res0_31 (cvrted0_31 * ((* 0 31 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**5 + z**4 + 1)) [2, modulus],
  eqmod res0_32 (cvrted0_32 * ((* 0 32 *) z**8 + z**7 + z**5 + z**4 + z**2)) [2, modulus],
  eqmod res0_33 (cvrted0_33 * ((* 0 33 *) z**8 + z**7 + z**5 + z**4 + z**2)) [2, modulus],
  eqmod res0_34 (cvrted0_34 * ((* 0 34 *) z**10 + z**8 + z**7 + z**5 + z**4 + z**3)) [2, modulus],
  eqmod res0_35 (cvrted0_35 * ((* 0 35 *) z**10 + z**8 + z**7 + z**5 + z**4 + z**3)) [2, modulus],
  eqmod res0_36 (cvrted0_36 * ((* 0 36 *) z**11 + z**10 + z**8 + z**7 + z**4 + z**3 + 1)) [2, modulus],
  eqmod res0_37 (cvrted0_37 * ((* 0 37 *) z**11 + z**10 + z**8 + z**7 + z**4 + z**3 + 1)) [2, modulus],
  eqmod res0_38 (cvrted0_38 * ((* 0 38 *) z**11 + z**10 + z**8 + z**6 + z**2)) [2, modulus],
  eqmod res0_39 (cvrted0_39 * ((* 0 39 *) z**11 + z**10 + z**8 + z**6 + z**2)) [2, modulus],
  eqmod res0_40 (cvrted0_40 * ((* 0 40 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**3 + z)) [2, modulus],
  eqmod res0_41 (cvrted0_41 * ((* 0 41 *) z**11 + z**10 + z**9 + z**8 + z**7 + z**3 + z)) [2, modulus],
  eqmod res0_42 (cvrted0_42 * ((* 0 42 *) z**8 + z**5 + z**3 + z**2 + z)) [2, modulus],
  eqmod res0_43 (cvrted0_43 * ((* 0 43 *) z**8 + z**5 + z**3 + z**2 + z)) [2, modulus],
  eqmod res0_44 (cvrted0_44 * ((* 0 44 *) z**10 + z**9 + z**7 + z**6 + z**5 + z**2)) [2, modulus],
  eqmod res0_45 (cvrted0_45 * ((* 0 45 *) z**10 + z**9 + z**7 + z**6 + z**5 + z**2)) [2, modulus],
  eqmod res0_46 (cvrted0_46 * ((* 0 46 *) z**10 + z**9 + z**6 + z**4 + 1)) [2, modulus],
  eqmod res0_47 (cvrted0_47 * ((* 0 47 *) z**10 + z**9 + z**6 + z**4 + 1)) [2, modulus],
  eqmod res0_48 (cvrted0_48 * ((* 0 48 *) z**10 + z**8 + z**7 + z**6 + z**5 + z**3 + z**2 + z + 1)) [2, modulus],
  eqmod res0_49 (cvrted0_49 * ((* 0 49 *) z**10 + z**8 + z**7 + z**6 + z**5 + z**3 + z**2 + z + 1)) [2, modulus],
  eqmod res0_50 (cvrted0_50 * ((* 0 50 *) z**11 + z**10 + z**6 + z**5 + z**3 + z + 1)) [2, modulus],
  eqmod res0_51 (cvrted0_51 * ((* 0 51 *) z**11 + z**10 + z**6 + z**5 + z**3 + z + 1)) [2, modulus],
  eqmod res0_52 (cvrted0_52 * ((* 0 52 *) z**11 + z**8 + z**6 + z**5 + z**3)) [2, modulus],
  eqmod res0_53 (cvrted0_53 * ((* 0 53 *) z**11 + z**8 + z**6 + z**5 + z**3)) [2, modulus],
  eqmod res0_54 (cvrted0_54 * ((* 0 54 *) z**10 + z**9 + z**8 + z**6 + z**5 + z**3 + z + 1)) [2, modulus],
  eqmod res0_55 (cvrted0_55 * ((* 0 55 *) z**10 + z**9 + z**8 + z**6 + z**5 + z**3 + z + 1)) [2, modulus],
  eqmod res0_56 (cvrted0_56 * ((* 0 56 *) z**9 + z**8 + z**6 + z**5 + z**4 + z + 1)) [2, modulus],
  eqmod res0_57 (cvrted0_57 * ((* 0 57 *) z**9 + z**8 + z**6 + z**5 + z**4 + z + 1)) [2, modulus],
  eqmod res0_58 (cvrted0_58 * ((* 0 58 *) z**11 + z**9 + z**8 + z**5 + z**3 + z)) [2, modulus],
  eqmod res0_59 (cvrted0_59 * ((* 0 59 *) z**11 + z**9 + z**8 + z**5 + z**3 + z)) [2, modulus],
  eqmod res0_60 (cvrted0_60 * ((* 0 60 *) z**11 + z**9 + z**7 + z**6 + z**5 + z**2 + z + 1)) [2, modulus],
  eqmod res0_61 (cvrted0_61 * ((* 0 61 *) z**11 + z**9 + z**7 + z**6 + z**5 + z**2 + z + 1)) [2, modulus],
  eqmod res0_62 (cvrted0_62 * ((* 0 62 *) z**11 + z**10 + z**9 + z**6 + z**3 + 1)) [2, modulus],
  eqmod res0_63 (cvrted0_63 * ((* 0 63 *) z**11 + z**10 + z**9 + z**6 + z**3 + 1)) [2, modulus]
] && true;

ghost result_poly@uint12: result_poly =
  (res0_0 + x * res0_1) * (x ** 2 + x) ** 0 +
  (res0_2 + x * res0_3) * (x ** 2 + x) ** 1 +
  (res0_4 + x * res0_5) * (x ** 2 + x) ** 2 +
  (res0_6 + x * res0_7) * (x ** 2 + x) ** 3 +
  (res0_8 + x * res0_9) * (x ** 2 + x) ** 4 +
  (res0_10 + x * res0_11) * (x ** 2 + x) ** 5 +
  (res0_12 + x * res0_13) * (x ** 2 + x) ** 6 +
  (res0_14 + x * res0_15) * (x ** 2 + x) ** 7 +
  (res0_16 + x * res0_17) * (x ** 2 + x) ** 8 +
  (res0_18 + x * res0_19) * (x ** 2 + x) ** 9 +
  (res0_20 + x * res0_21) * (x ** 2 + x) ** 10 +
  (res0_22 + x * res0_23) * (x ** 2 + x) ** 11 +
  (res0_24 + x * res0_25) * (x ** 2 + x) ** 12 +
  (res0_26 + x * res0_27) * (x ** 2 + x) ** 13 +
  (res0_28 + x * res0_29) * (x ** 2 + x) ** 14 +
  (res0_30 + x * res0_31) * (x ** 2 + x) ** 15 +
  (res0_32 + x * res0_33) * (x ** 2 + x) ** 16 +
  (res0_34 + x * res0_35) * (x ** 2 + x) ** 17 +
  (res0_36 + x * res0_37) * (x ** 2 + x) ** 18 +
  (res0_38 + x * res0_39) * (x ** 2 + x) ** 19 +
  (res0_40 + x * res0_41) * (x ** 2 + x) ** 20 +
  (res0_42 + x * res0_43) * (x ** 2 + x) ** 21 +
  (res0_44 + x * res0_45) * (x ** 2 + x) ** 22 +
  (res0_46 + x * res0_47) * (x ** 2 + x) ** 23 +
  (res0_48 + x * res0_49) * (x ** 2 + x) ** 24 +
  (res0_50 + x * res0_51) * (x ** 2 + x) ** 25 +
  (res0_52 + x * res0_53) * (x ** 2 + x) ** 26 +
  (res0_54 + x * res0_55) * (x ** 2 + x) ** 27 +
  (res0_56 + x * res0_57) * (x ** 2 + x) ** 28 +
  (res0_58 + x * res0_59) * (x ** 2 + x) ** 29 +
  (res0_60 + x * res0_61) * (x ** 2 + x) ** 30 +
  (res0_62 + x * res0_63) * (x ** 2 + x) ** 31
  && true;

ghost t@bit: t = (z ** 2 + z) * (x ** 2 + x) && true;

{
  eqmod (
    (cvrted0_0 + x * cvrted0_1) * t ** 0 +
    (cvrted0_2 + x * cvrted0_3) * t ** 1 +
    (cvrted0_4 + x * cvrted0_5) * t ** 2 +
    (cvrted0_6 + x * cvrted0_7) * t ** 3 +
    (cvrted0_8 + x * cvrted0_9) * t ** 4 +
    (cvrted0_10 + x * cvrted0_11) * t ** 5 +
    (cvrted0_12 + x * cvrted0_13) * t ** 6 +
    (cvrted0_14 + x * cvrted0_15) * t ** 7 +
    (cvrted0_16 + x * cvrted0_17) * t ** 8 +
    (cvrted0_18 + x * cvrted0_19) * t ** 9 +
    (cvrted0_20 + x * cvrted0_21) * t ** 10 +
    (cvrted0_22 + x * cvrted0_23) * t ** 11 +
    (cvrted0_24 + x * cvrted0_25) * t ** 12 +
    (cvrted0_26 + x * cvrted0_27) * t ** 13 +
    (cvrted0_28 + x * cvrted0_29) * t ** 14 +
    (cvrted0_30 + x * cvrted0_31) * t ** 15 +
    (cvrted0_32 + x * cvrted0_33) * t ** 16 +
    (cvrted0_34 + x * cvrted0_35) * t ** 17 +
    (cvrted0_36 + x * cvrted0_37) * t ** 18 +
    (cvrted0_38 + x * cvrted0_39) * t ** 19 +
    (cvrted0_40 + x * cvrted0_41) * t ** 20 +
    (cvrted0_42 + x * cvrted0_43) * t ** 21 +
    (cvrted0_44 + x * cvrted0_45) * t ** 22 +
    (cvrted0_46 + x * cvrted0_47) * t ** 23 +
    (cvrted0_48 + x * cvrted0_49) * t ** 24 +
    (cvrted0_50 + x * cvrted0_51) * t ** 25 +
    (cvrted0_52 + x * cvrted0_53) * t ** 26 +
    (cvrted0_54 + x * cvrted0_55) * t ** 27 +
    (cvrted0_56 + x * cvrted0_57) * t ** 28 +
    (cvrted0_58 + x * cvrted0_59) * t ** 29 +
    (cvrted0_60 + x * cvrted0_61) * t ** 30 +
    (cvrted0_62 + x * cvrted0_63) * t ** 31
  ) result_poly [2, modulus]
  &&
  true
}
