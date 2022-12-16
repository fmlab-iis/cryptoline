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
  (in0_0 * z ** 0 + in1_0 * z ** 1 + in2_0 * z ** 2 + in3_0 * z ** 3 + in4_0 * z ** 4 + in5_0 * z ** 5 + in6_0 * z ** 6 + in7_0 * z ** 7 + in8_0 * z ** 8 + in9_0 * z ** 9 + in10_0 * z ** 10 + in11_0 * z ** 11) * x ** 0 +
  (in0_1 * z ** 0 + in1_1 * z ** 1 + in2_1 * z ** 2 + in3_1 * z ** 3 + in4_1 * z ** 4 + in5_1 * z ** 5 + in6_1 * z ** 6 + in7_1 * z ** 7 + in8_1 * z ** 8 + in9_1 * z ** 9 + in10_1 * z ** 10 + in11_1 * z ** 11) * x ** 1 +
  (in0_2 * z ** 0 + in1_2 * z ** 1 + in2_2 * z ** 2 + in3_2 * z ** 3 + in4_2 * z ** 4 + in5_2 * z ** 5 + in6_2 * z ** 6 + in7_2 * z ** 7 + in8_2 * z ** 8 + in9_2 * z ** 9 + in10_2 * z ** 10 + in11_2 * z ** 11) * x ** 2 +
  (in0_3 * z ** 0 + in1_3 * z ** 1 + in2_3 * z ** 2 + in3_3 * z ** 3 + in4_3 * z ** 4 + in5_3 * z ** 5 + in6_3 * z ** 6 + in7_3 * z ** 7 + in8_3 * z ** 8 + in9_3 * z ** 9 + in10_3 * z ** 10 + in11_3 * z ** 11) * x ** 3 +
  (in0_4 * z ** 0 + in1_4 * z ** 1 + in2_4 * z ** 2 + in3_4 * z ** 3 + in4_4 * z ** 4 + in5_4 * z ** 5 + in6_4 * z ** 6 + in7_4 * z ** 7 + in8_4 * z ** 8 + in9_4 * z ** 9 + in10_4 * z ** 10 + in11_4 * z ** 11) * x ** 4 +
  (in0_5 * z ** 0 + in1_5 * z ** 1 + in2_5 * z ** 2 + in3_5 * z ** 3 + in4_5 * z ** 4 + in5_5 * z ** 5 + in6_5 * z ** 6 + in7_5 * z ** 7 + in8_5 * z ** 8 + in9_5 * z ** 9 + in10_5 * z ** 10 + in11_5 * z ** 11) * x ** 5 +
  (in0_6 * z ** 0 + in1_6 * z ** 1 + in2_6 * z ** 2 + in3_6 * z ** 3 + in4_6 * z ** 4 + in5_6 * z ** 5 + in6_6 * z ** 6 + in7_6 * z ** 7 + in8_6 * z ** 8 + in9_6 * z ** 9 + in10_6 * z ** 10 + in11_6 * z ** 11) * x ** 6 +
  (in0_7 * z ** 0 + in1_7 * z ** 1 + in2_7 * z ** 2 + in3_7 * z ** 3 + in4_7 * z ** 4 + in5_7 * z ** 5 + in6_7 * z ** 6 + in7_7 * z ** 7 + in8_7 * z ** 8 + in9_7 * z ** 9 + in10_7 * z ** 10 + in11_7 * z ** 11) * x ** 7 +
  (in0_8 * z ** 0 + in1_8 * z ** 1 + in2_8 * z ** 2 + in3_8 * z ** 3 + in4_8 * z ** 4 + in5_8 * z ** 5 + in6_8 * z ** 6 + in7_8 * z ** 7 + in8_8 * z ** 8 + in9_8 * z ** 9 + in10_8 * z ** 10 + in11_8 * z ** 11) * x ** 8 +
  (in0_9 * z ** 0 + in1_9 * z ** 1 + in2_9 * z ** 2 + in3_9 * z ** 3 + in4_9 * z ** 4 + in5_9 * z ** 5 + in6_9 * z ** 6 + in7_9 * z ** 7 + in8_9 * z ** 8 + in9_9 * z ** 9 + in10_9 * z ** 10 + in11_9 * z ** 11) * x ** 9 +
  (in0_10 * z ** 0 + in1_10 * z ** 1 + in2_10 * z ** 2 + in3_10 * z ** 3 + in4_10 * z ** 4 + in5_10 * z ** 5 + in6_10 * z ** 6 + in7_10 * z ** 7 + in8_10 * z ** 8 + in9_10 * z ** 9 + in10_10 * z ** 10 + in11_10 * z ** 11) * x ** 10 +
  (in0_11 * z ** 0 + in1_11 * z ** 1 + in2_11 * z ** 2 + in3_11 * z ** 3 + in4_11 * z ** 4 + in5_11 * z ** 5 + in6_11 * z ** 6 + in7_11 * z ** 7 + in8_11 * z ** 8 + in9_11 * z ** 9 + in10_11 * z ** 10 + in11_11 * z ** 11) * x ** 11 +
  (in0_12 * z ** 0 + in1_12 * z ** 1 + in2_12 * z ** 2 + in3_12 * z ** 3 + in4_12 * z ** 4 + in5_12 * z ** 5 + in6_12 * z ** 6 + in7_12 * z ** 7 + in8_12 * z ** 8 + in9_12 * z ** 9 + in10_12 * z ** 10 + in11_12 * z ** 11) * x ** 12 +
  (in0_13 * z ** 0 + in1_13 * z ** 1 + in2_13 * z ** 2 + in3_13 * z ** 3 + in4_13 * z ** 4 + in5_13 * z ** 5 + in6_13 * z ** 6 + in7_13 * z ** 7 + in8_13 * z ** 8 + in9_13 * z ** 9 + in10_13 * z ** 10 + in11_13 * z ** 11) * x ** 13 +
  (in0_14 * z ** 0 + in1_14 * z ** 1 + in2_14 * z ** 2 + in3_14 * z ** 3 + in4_14 * z ** 4 + in5_14 * z ** 5 + in6_14 * z ** 6 + in7_14 * z ** 7 + in8_14 * z ** 8 + in9_14 * z ** 9 + in10_14 * z ** 10 + in11_14 * z ** 11) * x ** 14 +
  (in0_15 * z ** 0 + in1_15 * z ** 1 + in2_15 * z ** 2 + in3_15 * z ** 3 + in4_15 * z ** 4 + in5_15 * z ** 5 + in6_15 * z ** 6 + in7_15 * z ** 7 + in8_15 * z ** 8 + in9_15 * z ** 9 + in10_15 * z ** 10 + in11_15 * z ** 11) * x ** 15 +
  (in0_16 * z ** 0 + in1_16 * z ** 1 + in2_16 * z ** 2 + in3_16 * z ** 3 + in4_16 * z ** 4 + in5_16 * z ** 5 + in6_16 * z ** 6 + in7_16 * z ** 7 + in8_16 * z ** 8 + in9_16 * z ** 9 + in10_16 * z ** 10 + in11_16 * z ** 11) * x ** 16 +
  (in0_17 * z ** 0 + in1_17 * z ** 1 + in2_17 * z ** 2 + in3_17 * z ** 3 + in4_17 * z ** 4 + in5_17 * z ** 5 + in6_17 * z ** 6 + in7_17 * z ** 7 + in8_17 * z ** 8 + in9_17 * z ** 9 + in10_17 * z ** 10 + in11_17 * z ** 11) * x ** 17 +
  (in0_18 * z ** 0 + in1_18 * z ** 1 + in2_18 * z ** 2 + in3_18 * z ** 3 + in4_18 * z ** 4 + in5_18 * z ** 5 + in6_18 * z ** 6 + in7_18 * z ** 7 + in8_18 * z ** 8 + in9_18 * z ** 9 + in10_18 * z ** 10 + in11_18 * z ** 11) * x ** 18 +
  (in0_19 * z ** 0 + in1_19 * z ** 1 + in2_19 * z ** 2 + in3_19 * z ** 3 + in4_19 * z ** 4 + in5_19 * z ** 5 + in6_19 * z ** 6 + in7_19 * z ** 7 + in8_19 * z ** 8 + in9_19 * z ** 9 + in10_19 * z ** 10 + in11_19 * z ** 11) * x ** 19 +
  (in0_20 * z ** 0 + in1_20 * z ** 1 + in2_20 * z ** 2 + in3_20 * z ** 3 + in4_20 * z ** 4 + in5_20 * z ** 5 + in6_20 * z ** 6 + in7_20 * z ** 7 + in8_20 * z ** 8 + in9_20 * z ** 9 + in10_20 * z ** 10 + in11_20 * z ** 11) * x ** 20 +
  (in0_21 * z ** 0 + in1_21 * z ** 1 + in2_21 * z ** 2 + in3_21 * z ** 3 + in4_21 * z ** 4 + in5_21 * z ** 5 + in6_21 * z ** 6 + in7_21 * z ** 7 + in8_21 * z ** 8 + in9_21 * z ** 9 + in10_21 * z ** 10 + in11_21 * z ** 11) * x ** 21 +
  (in0_22 * z ** 0 + in1_22 * z ** 1 + in2_22 * z ** 2 + in3_22 * z ** 3 + in4_22 * z ** 4 + in5_22 * z ** 5 + in6_22 * z ** 6 + in7_22 * z ** 7 + in8_22 * z ** 8 + in9_22 * z ** 9 + in10_22 * z ** 10 + in11_22 * z ** 11) * x ** 22 +
  (in0_23 * z ** 0 + in1_23 * z ** 1 + in2_23 * z ** 2 + in3_23 * z ** 3 + in4_23 * z ** 4 + in5_23 * z ** 5 + in6_23 * z ** 6 + in7_23 * z ** 7 + in8_23 * z ** 8 + in9_23 * z ** 9 + in10_23 * z ** 10 + in11_23 * z ** 11) * x ** 23 +
  (in0_24 * z ** 0 + in1_24 * z ** 1 + in2_24 * z ** 2 + in3_24 * z ** 3 + in4_24 * z ** 4 + in5_24 * z ** 5 + in6_24 * z ** 6 + in7_24 * z ** 7 + in8_24 * z ** 8 + in9_24 * z ** 9 + in10_24 * z ** 10 + in11_24 * z ** 11) * x ** 24 +
  (in0_25 * z ** 0 + in1_25 * z ** 1 + in2_25 * z ** 2 + in3_25 * z ** 3 + in4_25 * z ** 4 + in5_25 * z ** 5 + in6_25 * z ** 6 + in7_25 * z ** 7 + in8_25 * z ** 8 + in9_25 * z ** 9 + in10_25 * z ** 10 + in11_25 * z ** 11) * x ** 25 +
  (in0_26 * z ** 0 + in1_26 * z ** 1 + in2_26 * z ** 2 + in3_26 * z ** 3 + in4_26 * z ** 4 + in5_26 * z ** 5 + in6_26 * z ** 6 + in7_26 * z ** 7 + in8_26 * z ** 8 + in9_26 * z ** 9 + in10_26 * z ** 10 + in11_26 * z ** 11) * x ** 26 +
  (in0_27 * z ** 0 + in1_27 * z ** 1 + in2_27 * z ** 2 + in3_27 * z ** 3 + in4_27 * z ** 4 + in5_27 * z ** 5 + in6_27 * z ** 6 + in7_27 * z ** 7 + in8_27 * z ** 8 + in9_27 * z ** 9 + in10_27 * z ** 10 + in11_27 * z ** 11) * x ** 27 +
  (in0_28 * z ** 0 + in1_28 * z ** 1 + in2_28 * z ** 2 + in3_28 * z ** 3 + in4_28 * z ** 4 + in5_28 * z ** 5 + in6_28 * z ** 6 + in7_28 * z ** 7 + in8_28 * z ** 8 + in9_28 * z ** 9 + in10_28 * z ** 10 + in11_28 * z ** 11) * x ** 28 +
  (in0_29 * z ** 0 + in1_29 * z ** 1 + in2_29 * z ** 2 + in3_29 * z ** 3 + in4_29 * z ** 4 + in5_29 * z ** 5 + in6_29 * z ** 6 + in7_29 * z ** 7 + in8_29 * z ** 8 + in9_29 * z ** 9 + in10_29 * z ** 10 + in11_29 * z ** 11) * x ** 29 +
  (in0_30 * z ** 0 + in1_30 * z ** 1 + in2_30 * z ** 2 + in3_30 * z ** 3 + in4_30 * z ** 4 + in5_30 * z ** 5 + in6_30 * z ** 6 + in7_30 * z ** 7 + in8_30 * z ** 8 + in9_30 * z ** 9 + in10_30 * z ** 10 + in11_30 * z ** 11) * x ** 30 +
  (in0_31 * z ** 0 + in1_31 * z ** 1 + in2_31 * z ** 2 + in3_31 * z ** 3 + in4_31 * z ** 4 + in5_31 * z ** 5 + in6_31 * z ** 6 + in7_31 * z ** 7 + in8_31 * z ** 8 + in9_31 * z ** 9 + in10_31 * z ** 10 + in11_31 * z ** 11) * x ** 31 +
  (in0_32 * z ** 0 + in1_32 * z ** 1 + in2_32 * z ** 2 + in3_32 * z ** 3 + in4_32 * z ** 4 + in5_32 * z ** 5 + in6_32 * z ** 6 + in7_32 * z ** 7 + in8_32 * z ** 8 + in9_32 * z ** 9 + in10_32 * z ** 10 + in11_32 * z ** 11) * x ** 32 +
  (in0_33 * z ** 0 + in1_33 * z ** 1 + in2_33 * z ** 2 + in3_33 * z ** 3 + in4_33 * z ** 4 + in5_33 * z ** 5 + in6_33 * z ** 6 + in7_33 * z ** 7 + in8_33 * z ** 8 + in9_33 * z ** 9 + in10_33 * z ** 10 + in11_33 * z ** 11) * x ** 33 +
  (in0_34 * z ** 0 + in1_34 * z ** 1 + in2_34 * z ** 2 + in3_34 * z ** 3 + in4_34 * z ** 4 + in5_34 * z ** 5 + in6_34 * z ** 6 + in7_34 * z ** 7 + in8_34 * z ** 8 + in9_34 * z ** 9 + in10_34 * z ** 10 + in11_34 * z ** 11) * x ** 34 +
  (in0_35 * z ** 0 + in1_35 * z ** 1 + in2_35 * z ** 2 + in3_35 * z ** 3 + in4_35 * z ** 4 + in5_35 * z ** 5 + in6_35 * z ** 6 + in7_35 * z ** 7 + in8_35 * z ** 8 + in9_35 * z ** 9 + in10_35 * z ** 10 + in11_35 * z ** 11) * x ** 35 +
  (in0_36 * z ** 0 + in1_36 * z ** 1 + in2_36 * z ** 2 + in3_36 * z ** 3 + in4_36 * z ** 4 + in5_36 * z ** 5 + in6_36 * z ** 6 + in7_36 * z ** 7 + in8_36 * z ** 8 + in9_36 * z ** 9 + in10_36 * z ** 10 + in11_36 * z ** 11) * x ** 36 +
  (in0_37 * z ** 0 + in1_37 * z ** 1 + in2_37 * z ** 2 + in3_37 * z ** 3 + in4_37 * z ** 4 + in5_37 * z ** 5 + in6_37 * z ** 6 + in7_37 * z ** 7 + in8_37 * z ** 8 + in9_37 * z ** 9 + in10_37 * z ** 10 + in11_37 * z ** 11) * x ** 37 +
  (in0_38 * z ** 0 + in1_38 * z ** 1 + in2_38 * z ** 2 + in3_38 * z ** 3 + in4_38 * z ** 4 + in5_38 * z ** 5 + in6_38 * z ** 6 + in7_38 * z ** 7 + in8_38 * z ** 8 + in9_38 * z ** 9 + in10_38 * z ** 10 + in11_38 * z ** 11) * x ** 38 +
  (in0_39 * z ** 0 + in1_39 * z ** 1 + in2_39 * z ** 2 + in3_39 * z ** 3 + in4_39 * z ** 4 + in5_39 * z ** 5 + in6_39 * z ** 6 + in7_39 * z ** 7 + in8_39 * z ** 8 + in9_39 * z ** 9 + in10_39 * z ** 10 + in11_39 * z ** 11) * x ** 39 +
  (in0_40 * z ** 0 + in1_40 * z ** 1 + in2_40 * z ** 2 + in3_40 * z ** 3 + in4_40 * z ** 4 + in5_40 * z ** 5 + in6_40 * z ** 6 + in7_40 * z ** 7 + in8_40 * z ** 8 + in9_40 * z ** 9 + in10_40 * z ** 10 + in11_40 * z ** 11) * x ** 40 +
  (in0_41 * z ** 0 + in1_41 * z ** 1 + in2_41 * z ** 2 + in3_41 * z ** 3 + in4_41 * z ** 4 + in5_41 * z ** 5 + in6_41 * z ** 6 + in7_41 * z ** 7 + in8_41 * z ** 8 + in9_41 * z ** 9 + in10_41 * z ** 10 + in11_41 * z ** 11) * x ** 41 +
  (in0_42 * z ** 0 + in1_42 * z ** 1 + in2_42 * z ** 2 + in3_42 * z ** 3 + in4_42 * z ** 4 + in5_42 * z ** 5 + in6_42 * z ** 6 + in7_42 * z ** 7 + in8_42 * z ** 8 + in9_42 * z ** 9 + in10_42 * z ** 10 + in11_42 * z ** 11) * x ** 42 +
  (in0_43 * z ** 0 + in1_43 * z ** 1 + in2_43 * z ** 2 + in3_43 * z ** 3 + in4_43 * z ** 4 + in5_43 * z ** 5 + in6_43 * z ** 6 + in7_43 * z ** 7 + in8_43 * z ** 8 + in9_43 * z ** 9 + in10_43 * z ** 10 + in11_43 * z ** 11) * x ** 43 +
  (in0_44 * z ** 0 + in1_44 * z ** 1 + in2_44 * z ** 2 + in3_44 * z ** 3 + in4_44 * z ** 4 + in5_44 * z ** 5 + in6_44 * z ** 6 + in7_44 * z ** 7 + in8_44 * z ** 8 + in9_44 * z ** 9 + in10_44 * z ** 10 + in11_44 * z ** 11) * x ** 44 +
  (in0_45 * z ** 0 + in1_45 * z ** 1 + in2_45 * z ** 2 + in3_45 * z ** 3 + in4_45 * z ** 4 + in5_45 * z ** 5 + in6_45 * z ** 6 + in7_45 * z ** 7 + in8_45 * z ** 8 + in9_45 * z ** 9 + in10_45 * z ** 10 + in11_45 * z ** 11) * x ** 45 +
  (in0_46 * z ** 0 + in1_46 * z ** 1 + in2_46 * z ** 2 + in3_46 * z ** 3 + in4_46 * z ** 4 + in5_46 * z ** 5 + in6_46 * z ** 6 + in7_46 * z ** 7 + in8_46 * z ** 8 + in9_46 * z ** 9 + in10_46 * z ** 10 + in11_46 * z ** 11) * x ** 46 +
  (in0_47 * z ** 0 + in1_47 * z ** 1 + in2_47 * z ** 2 + in3_47 * z ** 3 + in4_47 * z ** 4 + in5_47 * z ** 5 + in6_47 * z ** 6 + in7_47 * z ** 7 + in8_47 * z ** 8 + in9_47 * z ** 9 + in10_47 * z ** 10 + in11_47 * z ** 11) * x ** 47 +
  (in0_48 * z ** 0 + in1_48 * z ** 1 + in2_48 * z ** 2 + in3_48 * z ** 3 + in4_48 * z ** 4 + in5_48 * z ** 5 + in6_48 * z ** 6 + in7_48 * z ** 7 + in8_48 * z ** 8 + in9_48 * z ** 9 + in10_48 * z ** 10 + in11_48 * z ** 11) * x ** 48 +
  (in0_49 * z ** 0 + in1_49 * z ** 1 + in2_49 * z ** 2 + in3_49 * z ** 3 + in4_49 * z ** 4 + in5_49 * z ** 5 + in6_49 * z ** 6 + in7_49 * z ** 7 + in8_49 * z ** 8 + in9_49 * z ** 9 + in10_49 * z ** 10 + in11_49 * z ** 11) * x ** 49 +
  (in0_50 * z ** 0 + in1_50 * z ** 1 + in2_50 * z ** 2 + in3_50 * z ** 3 + in4_50 * z ** 4 + in5_50 * z ** 5 + in6_50 * z ** 6 + in7_50 * z ** 7 + in8_50 * z ** 8 + in9_50 * z ** 9 + in10_50 * z ** 10 + in11_50 * z ** 11) * x ** 50 +
  (in0_51 * z ** 0 + in1_51 * z ** 1 + in2_51 * z ** 2 + in3_51 * z ** 3 + in4_51 * z ** 4 + in5_51 * z ** 5 + in6_51 * z ** 6 + in7_51 * z ** 7 + in8_51 * z ** 8 + in9_51 * z ** 9 + in10_51 * z ** 10 + in11_51 * z ** 11) * x ** 51 +
  (in0_52 * z ** 0 + in1_52 * z ** 1 + in2_52 * z ** 2 + in3_52 * z ** 3 + in4_52 * z ** 4 + in5_52 * z ** 5 + in6_52 * z ** 6 + in7_52 * z ** 7 + in8_52 * z ** 8 + in9_52 * z ** 9 + in10_52 * z ** 10 + in11_52 * z ** 11) * x ** 52 +
  (in0_53 * z ** 0 + in1_53 * z ** 1 + in2_53 * z ** 2 + in3_53 * z ** 3 + in4_53 * z ** 4 + in5_53 * z ** 5 + in6_53 * z ** 6 + in7_53 * z ** 7 + in8_53 * z ** 8 + in9_53 * z ** 9 + in10_53 * z ** 10 + in11_53 * z ** 11) * x ** 53 +
  (in0_54 * z ** 0 + in1_54 * z ** 1 + in2_54 * z ** 2 + in3_54 * z ** 3 + in4_54 * z ** 4 + in5_54 * z ** 5 + in6_54 * z ** 6 + in7_54 * z ** 7 + in8_54 * z ** 8 + in9_54 * z ** 9 + in10_54 * z ** 10 + in11_54 * z ** 11) * x ** 54 +
  (in0_55 * z ** 0 + in1_55 * z ** 1 + in2_55 * z ** 2 + in3_55 * z ** 3 + in4_55 * z ** 4 + in5_55 * z ** 5 + in6_55 * z ** 6 + in7_55 * z ** 7 + in8_55 * z ** 8 + in9_55 * z ** 9 + in10_55 * z ** 10 + in11_55 * z ** 11) * x ** 55 +
  (in0_56 * z ** 0 + in1_56 * z ** 1 + in2_56 * z ** 2 + in3_56 * z ** 3 + in4_56 * z ** 4 + in5_56 * z ** 5 + in6_56 * z ** 6 + in7_56 * z ** 7 + in8_56 * z ** 8 + in9_56 * z ** 9 + in10_56 * z ** 10 + in11_56 * z ** 11) * x ** 56 +
  (in0_57 * z ** 0 + in1_57 * z ** 1 + in2_57 * z ** 2 + in3_57 * z ** 3 + in4_57 * z ** 4 + in5_57 * z ** 5 + in6_57 * z ** 6 + in7_57 * z ** 7 + in8_57 * z ** 8 + in9_57 * z ** 9 + in10_57 * z ** 10 + in11_57 * z ** 11) * x ** 57 +
  (in0_58 * z ** 0 + in1_58 * z ** 1 + in2_58 * z ** 2 + in3_58 * z ** 3 + in4_58 * z ** 4 + in5_58 * z ** 5 + in6_58 * z ** 6 + in7_58 * z ** 7 + in8_58 * z ** 8 + in9_58 * z ** 9 + in10_58 * z ** 10 + in11_58 * z ** 11) * x ** 58 +
  (in0_59 * z ** 0 + in1_59 * z ** 1 + in2_59 * z ** 2 + in3_59 * z ** 3 + in4_59 * z ** 4 + in5_59 * z ** 5 + in6_59 * z ** 6 + in7_59 * z ** 7 + in8_59 * z ** 8 + in9_59 * z ** 9 + in10_59 * z ** 10 + in11_59 * z ** 11) * x ** 59 +
  (in0_60 * z ** 0 + in1_60 * z ** 1 + in2_60 * z ** 2 + in3_60 * z ** 3 + in4_60 * z ** 4 + in5_60 * z ** 5 + in6_60 * z ** 6 + in7_60 * z ** 7 + in8_60 * z ** 8 + in9_60 * z ** 9 + in10_60 * z ** 10 + in11_60 * z ** 11) * x ** 60 +
  (in0_61 * z ** 0 + in1_61 * z ** 1 + in2_61 * z ** 2 + in3_61 * z ** 3 + in4_61 * z ** 4 + in5_61 * z ** 5 + in6_61 * z ** 6 + in7_61 * z ** 7 + in8_61 * z ** 8 + in9_61 * z ** 9 + in10_61 * z ** 10 + in11_61 * z ** 11) * x ** 61 +
  (in0_62 * z ** 0 + in1_62 * z ** 1 + in2_62 * z ** 2 + in3_62 * z ** 3 + in4_62 * z ** 4 + in5_62 * z ** 5 + in6_62 * z ** 6 + in7_62 * z ** 7 + in8_62 * z ** 8 + in9_62 * z ** 9 + in10_62 * z ** 10 + in11_62 * z ** 11) * x ** 62 +
  (in0_63 * z ** 0 + in1_63 * z ** 1 + in2_63 * z ** 2 + in3_63 * z ** 3 + in4_63 * z ** 4 + in5_63 * z ** 5 + in6_63 * z ** 6 + in7_63 * z ** 7 + in8_63 * z ** 8 + in9_63 * z ** 9 + in10_63 * z ** 10 + in11_63 * z ** 11) * x ** 63
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;
(* #jne    0x5555555552e4 <radix_conversions+196>  #! PC = 0x55555555535b *)
#jne    0x5555555552e4 <radix_conversions+196>  #! 0x55555555535b = 0x55555555535b;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;
(* #jne    0x5555555552e4 <radix_conversions+196>  #! PC = 0x55555555535b *)
#jne    0x5555555552e4 <radix_conversions+196>  #! 0x55555555535b = 0x55555555535b;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;
(* #jne    0x5555555552e4 <radix_conversions+196>  #! PC = 0x55555555535b *)
#jne    0x5555555552e4 <radix_conversions+196>  #! 0x55555555535b = 0x55555555535b;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;
(* #jne    0x5555555552e4 <radix_conversions+196>  #! PC = 0x55555555535b *)
#jne    0x5555555552e4 <radix_conversions+196>  #! 0x55555555535b = 0x55555555535b;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* TODO: shift amount *) shl r11d r11d 1;
(* sub    $0x10,%rdi                               #! PC = 0x55555555530d *)
sub rdi rdi 0x10@uint64;
(* mov    %r11d,%ecx                               #! PC = 0x555555555311 *)
mov ecx r11d; vpc cl@uint8 r11d;
(* and    %rax,%r10                                #! PC = 0x555555555314 *)
mul %r10 %r10 %rax;
(* shr    %cl,%r10                                 #! PC = 0x555555555317 *)
(* TODO: shr %r10 %r10 cl *) nop;
(* xor    %r10,%rax                                #! PC = 0x55555555531a *)
adds %dc %rax %rax %r10;
(* and    %rax,%rdx                                #! PC = 0x55555555531d *)
mul %rdx %rdx %rax;
(* shr    %cl,%rdx                                 #! PC = 0x555555555320 *)
(* TODO: shr %rdx %rdx cl *) nop;
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
(* #call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! PC = 0x555555555352 *)
#call   0x555555555380 <_PQCLEAN_MCELIECE348864_AVX_vec_mul_asm>#! 0x555555555352 = 0x555555555352;
(* #! -> SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #! <- SP = 0x7fffffffd828 *)
#! 0x7fffffffd828 = 0x7fffffffd828;
(* #ret                                            #! PC = 0x555555555380 *)
#ret                                            #! 0x555555555380 = 0x555555555380;
(* #jne    0x5555555552e4 <radix_conversions+196>  #! PC = 0x55555555535b *)
#jne    0x5555555552e4 <radix_conversions+196>  #! 0x55555555535b = 0x55555555535b;
(* #! <- SP = 0x7fffffffda98 *)
#! 0x7fffffffda98 = 0x7fffffffda98;
(* #ret                                            #! PC = 0x55555555536e *)
#ret                                            #! 0x55555555536e = 0x55555555536e;

{
  true
  &&
  true
}

