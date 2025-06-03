// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 26 22:37:43 2020
// Host        : WIN-2001010039 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim s_curve_core_sim_model.v
// Design      : s_curve_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s6csga225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* FORCE_STOP = "3'b100" *) (* INIT_VELOCITY = "48'b000000000000000000000010000110001101111010101100" *) (* PYRAMID_SYM_CMPS = "4'b0010" *) 
(* STATE_ACCEL = "3'b000" *) (* STATE_CRUISE = "3'b001" *) (* STATE_DECEL = "3'b010" *) 
(* STATE_IDLE = "3'b101" *) (* STATE_STOP = "3'b011" *) 
(* NotValidForBitStream *)
module s_curve_core
   (sys_clk,
    sys_rst_n,
    start_s,
    AIM_SPEED,
    AA_ACCELERATION_CLK,
    AA_ACCELERATION2_CLK,
    TARGET_POS,
    theory_dec_len,
    force_stop,
    output_counter,
    pulse,
    pulse_sent_done);
  input sys_clk;
  input sys_rst_n;
  input start_s;
  input [15:0]AIM_SPEED;
  input [31:0]AA_ACCELERATION_CLK;
  input [31:0]AA_ACCELERATION2_CLK;
  input [19:0]TARGET_POS;
  input [15:0]theory_dec_len;
  input force_stop;
  output [19:0]output_counter;
  output pulse;
  output pulse_sent_done;

  wire [31:0]AA_ACCELERATION2_CLK;
  wire [31:0]AA_ACCELERATION_CLK;
  wire [15:0]AIM_SPEED;
  wire [39:0]AIM_SPEED_reg;
  wire \AIM_SPEED_reg[39]_i_1_n_0 ;
  wire \AIM_SPEED_reg_reg_n_0_[0] ;
  wire \AIM_SPEED_reg_reg_n_0_[10] ;
  wire \AIM_SPEED_reg_reg_n_0_[11] ;
  wire \AIM_SPEED_reg_reg_n_0_[12] ;
  wire \AIM_SPEED_reg_reg_n_0_[13] ;
  wire \AIM_SPEED_reg_reg_n_0_[14] ;
  wire \AIM_SPEED_reg_reg_n_0_[15] ;
  wire \AIM_SPEED_reg_reg_n_0_[16] ;
  wire \AIM_SPEED_reg_reg_n_0_[17] ;
  wire \AIM_SPEED_reg_reg_n_0_[18] ;
  wire \AIM_SPEED_reg_reg_n_0_[19] ;
  wire \AIM_SPEED_reg_reg_n_0_[1] ;
  wire \AIM_SPEED_reg_reg_n_0_[20] ;
  wire \AIM_SPEED_reg_reg_n_0_[21] ;
  wire \AIM_SPEED_reg_reg_n_0_[22] ;
  wire \AIM_SPEED_reg_reg_n_0_[23] ;
  wire \AIM_SPEED_reg_reg_n_0_[24] ;
  wire \AIM_SPEED_reg_reg_n_0_[25] ;
  wire \AIM_SPEED_reg_reg_n_0_[26] ;
  wire \AIM_SPEED_reg_reg_n_0_[27] ;
  wire \AIM_SPEED_reg_reg_n_0_[28] ;
  wire \AIM_SPEED_reg_reg_n_0_[29] ;
  wire \AIM_SPEED_reg_reg_n_0_[2] ;
  wire \AIM_SPEED_reg_reg_n_0_[30] ;
  wire \AIM_SPEED_reg_reg_n_0_[31] ;
  wire \AIM_SPEED_reg_reg_n_0_[32] ;
  wire \AIM_SPEED_reg_reg_n_0_[33] ;
  wire \AIM_SPEED_reg_reg_n_0_[34] ;
  wire \AIM_SPEED_reg_reg_n_0_[35] ;
  wire \AIM_SPEED_reg_reg_n_0_[36] ;
  wire \AIM_SPEED_reg_reg_n_0_[37] ;
  wire \AIM_SPEED_reg_reg_n_0_[38] ;
  wire \AIM_SPEED_reg_reg_n_0_[39] ;
  wire \AIM_SPEED_reg_reg_n_0_[3] ;
  wire \AIM_SPEED_reg_reg_n_0_[4] ;
  wire \AIM_SPEED_reg_reg_n_0_[5] ;
  wire \AIM_SPEED_reg_reg_n_0_[6] ;
  wire \AIM_SPEED_reg_reg_n_0_[7] ;
  wire \AIM_SPEED_reg_reg_n_0_[8] ;
  wire \AIM_SPEED_reg_reg_n_0_[9] ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_rep_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_rep_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_rep_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_100_n_0 ;
  wire \FSM_sequential_state[2]_i_101_n_0 ;
  wire \FSM_sequential_state[2]_i_102_n_0 ;
  wire \FSM_sequential_state[2]_i_103_n_0 ;
  wire \FSM_sequential_state[2]_i_104_n_0 ;
  wire \FSM_sequential_state[2]_i_105_n_0 ;
  wire \FSM_sequential_state[2]_i_106_n_0 ;
  wire \FSM_sequential_state[2]_i_107_n_0 ;
  wire \FSM_sequential_state[2]_i_108_n_0 ;
  wire \FSM_sequential_state[2]_i_109_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_110_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_16_n_0 ;
  wire \FSM_sequential_state[2]_i_18_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_20_n_0 ;
  wire \FSM_sequential_state[2]_i_21_n_0 ;
  wire \FSM_sequential_state[2]_i_22_n_0 ;
  wire \FSM_sequential_state[2]_i_23_n_0 ;
  wire \FSM_sequential_state[2]_i_25_n_0 ;
  wire \FSM_sequential_state[2]_i_26_n_0 ;
  wire \FSM_sequential_state[2]_i_27_n_0 ;
  wire \FSM_sequential_state[2]_i_28_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_30_n_0 ;
  wire \FSM_sequential_state[2]_i_31_n_0 ;
  wire \FSM_sequential_state[2]_i_32_n_0 ;
  wire \FSM_sequential_state[2]_i_33_n_0 ;
  wire \FSM_sequential_state[2]_i_34_n_0 ;
  wire \FSM_sequential_state[2]_i_35_n_0 ;
  wire \FSM_sequential_state[2]_i_36_n_0 ;
  wire \FSM_sequential_state[2]_i_37_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_40_n_0 ;
  wire \FSM_sequential_state[2]_i_41_n_0 ;
  wire \FSM_sequential_state[2]_i_42_n_0 ;
  wire \FSM_sequential_state[2]_i_43_n_0 ;
  wire \FSM_sequential_state[2]_i_44_n_0 ;
  wire \FSM_sequential_state[2]_i_45_n_0 ;
  wire \FSM_sequential_state[2]_i_46_n_0 ;
  wire \FSM_sequential_state[2]_i_47_n_0 ;
  wire \FSM_sequential_state[2]_i_49_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_50_n_0 ;
  wire \FSM_sequential_state[2]_i_51_n_0 ;
  wire \FSM_sequential_state[2]_i_52_n_0 ;
  wire \FSM_sequential_state[2]_i_53_n_0 ;
  wire \FSM_sequential_state[2]_i_54_n_0 ;
  wire \FSM_sequential_state[2]_i_55_n_0 ;
  wire \FSM_sequential_state[2]_i_56_n_0 ;
  wire \FSM_sequential_state[2]_i_59_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_60_n_0 ;
  wire \FSM_sequential_state[2]_i_61_n_0 ;
  wire \FSM_sequential_state[2]_i_62_n_0 ;
  wire \FSM_sequential_state[2]_i_63_n_0 ;
  wire \FSM_sequential_state[2]_i_64_n_0 ;
  wire \FSM_sequential_state[2]_i_65_n_0 ;
  wire \FSM_sequential_state[2]_i_66_n_0 ;
  wire \FSM_sequential_state[2]_i_67_n_0 ;
  wire \FSM_sequential_state[2]_i_68_n_0 ;
  wire \FSM_sequential_state[2]_i_69_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_70_n_0 ;
  wire \FSM_sequential_state[2]_i_73_n_0 ;
  wire \FSM_sequential_state[2]_i_74_n_0 ;
  wire \FSM_sequential_state[2]_i_75_n_0 ;
  wire \FSM_sequential_state[2]_i_78_n_0 ;
  wire \FSM_sequential_state[2]_i_79_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_80_n_0 ;
  wire \FSM_sequential_state[2]_i_81_n_0 ;
  wire \FSM_sequential_state[2]_i_82_n_0 ;
  wire \FSM_sequential_state[2]_i_83_n_0 ;
  wire \FSM_sequential_state[2]_i_84_n_0 ;
  wire \FSM_sequential_state[2]_i_85_n_0 ;
  wire \FSM_sequential_state[2]_i_88_n_0 ;
  wire \FSM_sequential_state[2]_i_89_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_90_n_0 ;
  wire \FSM_sequential_state[2]_i_91_n_0 ;
  wire \FSM_sequential_state[2]_i_92_n_0 ;
  wire \FSM_sequential_state[2]_i_93_n_0 ;
  wire \FSM_sequential_state[2]_i_94_n_0 ;
  wire \FSM_sequential_state[2]_i_95_n_0 ;
  wire \FSM_sequential_state[2]_i_96_n_0 ;
  wire \FSM_sequential_state[2]_i_97_n_0 ;
  wire \FSM_sequential_state[2]_i_98_n_0 ;
  wire \FSM_sequential_state[2]_i_99_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_rep_n_0 ;
  wire \FSM_sequential_state_reg[1]_rep__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_rep_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_17_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_17_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_19_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_19_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_19_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_19_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_24_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_24_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_24_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_24_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_29_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_29_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_29_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_29_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_38_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_38_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_38_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_39_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_39_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_39_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_39_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_48_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_48_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_48_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_57_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_57_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_57_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_57_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_58_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_58_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_58_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_58_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_71_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_71_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_71_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_71_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_72_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_72_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_72_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_72_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_76_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_76_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_76_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_76_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_77_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_77_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_77_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_77_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_86_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_86_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_86_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_86_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_87_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_87_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_87_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_87_n_3 ;
  wire [19:0]TARGET_POS;
  wire [19:0]acc_lenth;
  wire \acc_lenth[19]_i_1_n_0 ;
  wire \acc_lenth_reg_n_0_[0] ;
  wire \acc_lenth_reg_n_0_[10] ;
  wire \acc_lenth_reg_n_0_[11] ;
  wire \acc_lenth_reg_n_0_[12] ;
  wire \acc_lenth_reg_n_0_[13] ;
  wire \acc_lenth_reg_n_0_[14] ;
  wire \acc_lenth_reg_n_0_[15] ;
  wire \acc_lenth_reg_n_0_[16] ;
  wire \acc_lenth_reg_n_0_[17] ;
  wire \acc_lenth_reg_n_0_[18] ;
  wire \acc_lenth_reg_n_0_[19] ;
  wire \acc_lenth_reg_n_0_[1] ;
  wire \acc_lenth_reg_n_0_[2] ;
  wire \acc_lenth_reg_n_0_[3] ;
  wire \acc_lenth_reg_n_0_[4] ;
  wire \acc_lenth_reg_n_0_[5] ;
  wire \acc_lenth_reg_n_0_[6] ;
  wire \acc_lenth_reg_n_0_[7] ;
  wire \acc_lenth_reg_n_0_[8] ;
  wire \acc_lenth_reg_n_0_[9] ;
  wire [43:0]acceleration;
  wire acceleration0;
  wire acceleration1;
  wire acceleration2;
  wire [19:0]acceleration31_out;
  wire \acceleration[11]_i_10_n_0 ;
  wire \acceleration[11]_i_11_n_0 ;
  wire \acceleration[11]_i_4_n_0 ;
  wire \acceleration[11]_i_5_n_0 ;
  wire \acceleration[11]_i_6_n_0 ;
  wire \acceleration[11]_i_7_n_0 ;
  wire \acceleration[11]_i_8_n_0 ;
  wire \acceleration[11]_i_9_n_0 ;
  wire \acceleration[15]_i_10_n_0 ;
  wire \acceleration[15]_i_11_n_0 ;
  wire \acceleration[15]_i_4_n_0 ;
  wire \acceleration[15]_i_5_n_0 ;
  wire \acceleration[15]_i_6_n_0 ;
  wire \acceleration[15]_i_7_n_0 ;
  wire \acceleration[15]_i_8_n_0 ;
  wire \acceleration[15]_i_9_n_0 ;
  wire \acceleration[19]_i_10_n_0 ;
  wire \acceleration[19]_i_11_n_0 ;
  wire \acceleration[19]_i_4_n_0 ;
  wire \acceleration[19]_i_5_n_0 ;
  wire \acceleration[19]_i_6_n_0 ;
  wire \acceleration[19]_i_7_n_0 ;
  wire \acceleration[19]_i_8_n_0 ;
  wire \acceleration[19]_i_9_n_0 ;
  wire \acceleration[23]_i_10_n_0 ;
  wire \acceleration[23]_i_11_n_0 ;
  wire \acceleration[23]_i_4_n_0 ;
  wire \acceleration[23]_i_5_n_0 ;
  wire \acceleration[23]_i_6_n_0 ;
  wire \acceleration[23]_i_7_n_0 ;
  wire \acceleration[23]_i_8_n_0 ;
  wire \acceleration[23]_i_9_n_0 ;
  wire \acceleration[27]_i_10_n_0 ;
  wire \acceleration[27]_i_11_n_0 ;
  wire \acceleration[27]_i_4_n_0 ;
  wire \acceleration[27]_i_5_n_0 ;
  wire \acceleration[27]_i_6_n_0 ;
  wire \acceleration[27]_i_7_n_0 ;
  wire \acceleration[27]_i_8_n_0 ;
  wire \acceleration[27]_i_9_n_0 ;
  wire \acceleration[31]_i_10_n_0 ;
  wire \acceleration[31]_i_11_n_0 ;
  wire \acceleration[31]_i_4_n_0 ;
  wire \acceleration[31]_i_5_n_0 ;
  wire \acceleration[31]_i_6_n_0 ;
  wire \acceleration[31]_i_7_n_0 ;
  wire \acceleration[31]_i_8_n_0 ;
  wire \acceleration[31]_i_9_n_0 ;
  wire \acceleration[35]_i_100_n_0 ;
  wire \acceleration[35]_i_101_n_0 ;
  wire \acceleration[35]_i_10_n_0 ;
  wire \acceleration[35]_i_11_n_0 ;
  wire \acceleration[35]_i_12_n_0 ;
  wire \acceleration[35]_i_13_n_0 ;
  wire \acceleration[35]_i_15_n_0 ;
  wire \acceleration[35]_i_16_n_0 ;
  wire \acceleration[35]_i_17_n_0 ;
  wire \acceleration[35]_i_18_n_0 ;
  wire \acceleration[35]_i_19_n_0 ;
  wire \acceleration[35]_i_20_n_0 ;
  wire \acceleration[35]_i_21_n_0 ;
  wire \acceleration[35]_i_22_n_0 ;
  wire \acceleration[35]_i_24_n_0 ;
  wire \acceleration[35]_i_25_n_0 ;
  wire \acceleration[35]_i_26_n_0 ;
  wire \acceleration[35]_i_27_n_0 ;
  wire \acceleration[35]_i_28_n_0 ;
  wire \acceleration[35]_i_29_n_0 ;
  wire \acceleration[35]_i_30_n_0 ;
  wire \acceleration[35]_i_31_n_0 ;
  wire \acceleration[35]_i_33_n_0 ;
  wire \acceleration[35]_i_34_n_0 ;
  wire \acceleration[35]_i_35_n_0 ;
  wire \acceleration[35]_i_36_n_0 ;
  wire \acceleration[35]_i_37_n_0 ;
  wire \acceleration[35]_i_38_n_0 ;
  wire \acceleration[35]_i_39_n_0 ;
  wire \acceleration[35]_i_40_n_0 ;
  wire \acceleration[35]_i_42_n_0 ;
  wire \acceleration[35]_i_43_n_0 ;
  wire \acceleration[35]_i_44_n_0 ;
  wire \acceleration[35]_i_45_n_0 ;
  wire \acceleration[35]_i_46_n_0 ;
  wire \acceleration[35]_i_47_n_0 ;
  wire \acceleration[35]_i_48_n_0 ;
  wire \acceleration[35]_i_49_n_0 ;
  wire \acceleration[35]_i_51_n_0 ;
  wire \acceleration[35]_i_52_n_0 ;
  wire \acceleration[35]_i_53_n_0 ;
  wire \acceleration[35]_i_54_n_0 ;
  wire \acceleration[35]_i_55_n_0 ;
  wire \acceleration[35]_i_56_n_0 ;
  wire \acceleration[35]_i_57_n_0 ;
  wire \acceleration[35]_i_58_n_0 ;
  wire \acceleration[35]_i_5_n_0 ;
  wire \acceleration[35]_i_60_n_0 ;
  wire \acceleration[35]_i_61_n_0 ;
  wire \acceleration[35]_i_62_n_0 ;
  wire \acceleration[35]_i_63_n_0 ;
  wire \acceleration[35]_i_64_n_0 ;
  wire \acceleration[35]_i_65_n_0 ;
  wire \acceleration[35]_i_66_n_0 ;
  wire \acceleration[35]_i_67_n_0 ;
  wire \acceleration[35]_i_69_n_0 ;
  wire \acceleration[35]_i_6_n_0 ;
  wire \acceleration[35]_i_70_n_0 ;
  wire \acceleration[35]_i_71_n_0 ;
  wire \acceleration[35]_i_72_n_0 ;
  wire \acceleration[35]_i_73_n_0 ;
  wire \acceleration[35]_i_74_n_0 ;
  wire \acceleration[35]_i_75_n_0 ;
  wire \acceleration[35]_i_76_n_0 ;
  wire \acceleration[35]_i_78_n_0 ;
  wire \acceleration[35]_i_79_n_0 ;
  wire \acceleration[35]_i_7_n_0 ;
  wire \acceleration[35]_i_80_n_0 ;
  wire \acceleration[35]_i_81_n_0 ;
  wire \acceleration[35]_i_82_n_0 ;
  wire \acceleration[35]_i_83_n_0 ;
  wire \acceleration[35]_i_84_n_0 ;
  wire \acceleration[35]_i_85_n_0 ;
  wire \acceleration[35]_i_86_n_0 ;
  wire \acceleration[35]_i_87_n_0 ;
  wire \acceleration[35]_i_88_n_0 ;
  wire \acceleration[35]_i_89_n_0 ;
  wire \acceleration[35]_i_8_n_0 ;
  wire \acceleration[35]_i_90_n_0 ;
  wire \acceleration[35]_i_91_n_0 ;
  wire \acceleration[35]_i_92_n_0 ;
  wire \acceleration[35]_i_93_n_0 ;
  wire \acceleration[35]_i_94_n_0 ;
  wire \acceleration[35]_i_95_n_0 ;
  wire \acceleration[35]_i_96_n_0 ;
  wire \acceleration[35]_i_97_n_0 ;
  wire \acceleration[35]_i_98_n_0 ;
  wire \acceleration[35]_i_99_n_0 ;
  wire \acceleration[39]_i_10_n_0 ;
  wire \acceleration[39]_i_11_n_0 ;
  wire \acceleration[39]_i_4_n_0 ;
  wire \acceleration[39]_i_5_n_0 ;
  wire \acceleration[39]_i_6_n_0 ;
  wire \acceleration[39]_i_7_n_0 ;
  wire \acceleration[39]_i_8_n_0 ;
  wire \acceleration[39]_i_9_n_0 ;
  wire \acceleration[3]_i_10_n_0 ;
  wire \acceleration[3]_i_11_n_0 ;
  wire \acceleration[3]_i_12_n_0 ;
  wire \acceleration[3]_i_13_n_0 ;
  wire \acceleration[3]_i_4_n_0 ;
  wire \acceleration[3]_i_5_n_0 ;
  wire \acceleration[3]_i_6_n_0 ;
  wire \acceleration[3]_i_7_n_0 ;
  wire \acceleration[3]_i_8_n_0 ;
  wire \acceleration[43]_i_10_n_0 ;
  wire \acceleration[43]_i_11_n_0 ;
  wire \acceleration[43]_i_12_n_0 ;
  wire \acceleration[43]_i_13_n_0 ;
  wire \acceleration[43]_i_14_n_0 ;
  wire \acceleration[43]_i_1_n_0 ;
  wire \acceleration[43]_i_4_n_0 ;
  wire \acceleration[43]_i_6_n_0 ;
  wire \acceleration[43]_i_7_n_0 ;
  wire \acceleration[43]_i_8_n_0 ;
  wire \acceleration[43]_i_9_n_0 ;
  wire \acceleration[7]_i_10_n_0 ;
  wire \acceleration[7]_i_11_n_0 ;
  wire \acceleration[7]_i_4_n_0 ;
  wire \acceleration[7]_i_5_n_0 ;
  wire \acceleration[7]_i_6_n_0 ;
  wire \acceleration[7]_i_7_n_0 ;
  wire \acceleration[7]_i_8_n_0 ;
  wire \acceleration[7]_i_9_n_0 ;
  wire \acceleration_reg[11]_i_2_n_0 ;
  wire \acceleration_reg[11]_i_2_n_1 ;
  wire \acceleration_reg[11]_i_2_n_2 ;
  wire \acceleration_reg[11]_i_2_n_3 ;
  wire \acceleration_reg[11]_i_2_n_4 ;
  wire \acceleration_reg[11]_i_2_n_5 ;
  wire \acceleration_reg[11]_i_2_n_6 ;
  wire \acceleration_reg[11]_i_2_n_7 ;
  wire \acceleration_reg[11]_i_3_n_0 ;
  wire \acceleration_reg[11]_i_3_n_1 ;
  wire \acceleration_reg[11]_i_3_n_2 ;
  wire \acceleration_reg[11]_i_3_n_3 ;
  wire \acceleration_reg[11]_i_3_n_4 ;
  wire \acceleration_reg[11]_i_3_n_5 ;
  wire \acceleration_reg[11]_i_3_n_6 ;
  wire \acceleration_reg[11]_i_3_n_7 ;
  wire \acceleration_reg[15]_i_2_n_0 ;
  wire \acceleration_reg[15]_i_2_n_1 ;
  wire \acceleration_reg[15]_i_2_n_2 ;
  wire \acceleration_reg[15]_i_2_n_3 ;
  wire \acceleration_reg[15]_i_2_n_4 ;
  wire \acceleration_reg[15]_i_2_n_5 ;
  wire \acceleration_reg[15]_i_2_n_6 ;
  wire \acceleration_reg[15]_i_2_n_7 ;
  wire \acceleration_reg[15]_i_3_n_0 ;
  wire \acceleration_reg[15]_i_3_n_1 ;
  wire \acceleration_reg[15]_i_3_n_2 ;
  wire \acceleration_reg[15]_i_3_n_3 ;
  wire \acceleration_reg[15]_i_3_n_4 ;
  wire \acceleration_reg[15]_i_3_n_5 ;
  wire \acceleration_reg[15]_i_3_n_6 ;
  wire \acceleration_reg[15]_i_3_n_7 ;
  wire \acceleration_reg[19]_i_2_n_0 ;
  wire \acceleration_reg[19]_i_2_n_1 ;
  wire \acceleration_reg[19]_i_2_n_2 ;
  wire \acceleration_reg[19]_i_2_n_3 ;
  wire \acceleration_reg[19]_i_2_n_4 ;
  wire \acceleration_reg[19]_i_2_n_5 ;
  wire \acceleration_reg[19]_i_2_n_6 ;
  wire \acceleration_reg[19]_i_2_n_7 ;
  wire \acceleration_reg[19]_i_3_n_0 ;
  wire \acceleration_reg[19]_i_3_n_1 ;
  wire \acceleration_reg[19]_i_3_n_2 ;
  wire \acceleration_reg[19]_i_3_n_3 ;
  wire \acceleration_reg[19]_i_3_n_4 ;
  wire \acceleration_reg[19]_i_3_n_5 ;
  wire \acceleration_reg[19]_i_3_n_6 ;
  wire \acceleration_reg[19]_i_3_n_7 ;
  wire \acceleration_reg[23]_i_2_n_0 ;
  wire \acceleration_reg[23]_i_2_n_1 ;
  wire \acceleration_reg[23]_i_2_n_2 ;
  wire \acceleration_reg[23]_i_2_n_3 ;
  wire \acceleration_reg[23]_i_2_n_4 ;
  wire \acceleration_reg[23]_i_2_n_5 ;
  wire \acceleration_reg[23]_i_2_n_6 ;
  wire \acceleration_reg[23]_i_2_n_7 ;
  wire \acceleration_reg[23]_i_3_n_0 ;
  wire \acceleration_reg[23]_i_3_n_1 ;
  wire \acceleration_reg[23]_i_3_n_2 ;
  wire \acceleration_reg[23]_i_3_n_3 ;
  wire \acceleration_reg[23]_i_3_n_4 ;
  wire \acceleration_reg[23]_i_3_n_5 ;
  wire \acceleration_reg[23]_i_3_n_6 ;
  wire \acceleration_reg[23]_i_3_n_7 ;
  wire \acceleration_reg[27]_i_2_n_0 ;
  wire \acceleration_reg[27]_i_2_n_1 ;
  wire \acceleration_reg[27]_i_2_n_2 ;
  wire \acceleration_reg[27]_i_2_n_3 ;
  wire \acceleration_reg[27]_i_2_n_4 ;
  wire \acceleration_reg[27]_i_2_n_5 ;
  wire \acceleration_reg[27]_i_2_n_6 ;
  wire \acceleration_reg[27]_i_2_n_7 ;
  wire \acceleration_reg[27]_i_3_n_0 ;
  wire \acceleration_reg[27]_i_3_n_1 ;
  wire \acceleration_reg[27]_i_3_n_2 ;
  wire \acceleration_reg[27]_i_3_n_3 ;
  wire \acceleration_reg[27]_i_3_n_4 ;
  wire \acceleration_reg[27]_i_3_n_5 ;
  wire \acceleration_reg[27]_i_3_n_6 ;
  wire \acceleration_reg[27]_i_3_n_7 ;
  wire \acceleration_reg[31]_i_2_n_0 ;
  wire \acceleration_reg[31]_i_2_n_1 ;
  wire \acceleration_reg[31]_i_2_n_2 ;
  wire \acceleration_reg[31]_i_2_n_3 ;
  wire \acceleration_reg[31]_i_2_n_4 ;
  wire \acceleration_reg[31]_i_2_n_5 ;
  wire \acceleration_reg[31]_i_2_n_6 ;
  wire \acceleration_reg[31]_i_2_n_7 ;
  wire \acceleration_reg[31]_i_3_n_0 ;
  wire \acceleration_reg[31]_i_3_n_1 ;
  wire \acceleration_reg[31]_i_3_n_2 ;
  wire \acceleration_reg[31]_i_3_n_3 ;
  wire \acceleration_reg[31]_i_3_n_4 ;
  wire \acceleration_reg[31]_i_3_n_5 ;
  wire \acceleration_reg[31]_i_3_n_6 ;
  wire \acceleration_reg[31]_i_3_n_7 ;
  wire \acceleration_reg[35]_i_14_n_0 ;
  wire \acceleration_reg[35]_i_14_n_1 ;
  wire \acceleration_reg[35]_i_14_n_2 ;
  wire \acceleration_reg[35]_i_14_n_3 ;
  wire \acceleration_reg[35]_i_23_n_0 ;
  wire \acceleration_reg[35]_i_23_n_1 ;
  wire \acceleration_reg[35]_i_23_n_2 ;
  wire \acceleration_reg[35]_i_23_n_3 ;
  wire \acceleration_reg[35]_i_2_n_0 ;
  wire \acceleration_reg[35]_i_2_n_1 ;
  wire \acceleration_reg[35]_i_2_n_2 ;
  wire \acceleration_reg[35]_i_2_n_3 ;
  wire \acceleration_reg[35]_i_2_n_4 ;
  wire \acceleration_reg[35]_i_2_n_5 ;
  wire \acceleration_reg[35]_i_2_n_6 ;
  wire \acceleration_reg[35]_i_2_n_7 ;
  wire \acceleration_reg[35]_i_32_n_0 ;
  wire \acceleration_reg[35]_i_32_n_1 ;
  wire \acceleration_reg[35]_i_32_n_2 ;
  wire \acceleration_reg[35]_i_32_n_3 ;
  wire \acceleration_reg[35]_i_3_n_0 ;
  wire \acceleration_reg[35]_i_3_n_1 ;
  wire \acceleration_reg[35]_i_3_n_2 ;
  wire \acceleration_reg[35]_i_3_n_3 ;
  wire \acceleration_reg[35]_i_3_n_4 ;
  wire \acceleration_reg[35]_i_3_n_5 ;
  wire \acceleration_reg[35]_i_3_n_6 ;
  wire \acceleration_reg[35]_i_3_n_7 ;
  wire \acceleration_reg[35]_i_41_n_0 ;
  wire \acceleration_reg[35]_i_41_n_1 ;
  wire \acceleration_reg[35]_i_41_n_2 ;
  wire \acceleration_reg[35]_i_41_n_3 ;
  wire \acceleration_reg[35]_i_4_n_0 ;
  wire \acceleration_reg[35]_i_4_n_1 ;
  wire \acceleration_reg[35]_i_4_n_2 ;
  wire \acceleration_reg[35]_i_4_n_3 ;
  wire \acceleration_reg[35]_i_50_n_0 ;
  wire \acceleration_reg[35]_i_50_n_1 ;
  wire \acceleration_reg[35]_i_50_n_2 ;
  wire \acceleration_reg[35]_i_50_n_3 ;
  wire \acceleration_reg[35]_i_59_n_0 ;
  wire \acceleration_reg[35]_i_59_n_1 ;
  wire \acceleration_reg[35]_i_59_n_2 ;
  wire \acceleration_reg[35]_i_59_n_3 ;
  wire \acceleration_reg[35]_i_68_n_0 ;
  wire \acceleration_reg[35]_i_68_n_1 ;
  wire \acceleration_reg[35]_i_68_n_2 ;
  wire \acceleration_reg[35]_i_68_n_3 ;
  wire \acceleration_reg[35]_i_77_n_0 ;
  wire \acceleration_reg[35]_i_77_n_1 ;
  wire \acceleration_reg[35]_i_77_n_2 ;
  wire \acceleration_reg[35]_i_77_n_3 ;
  wire \acceleration_reg[35]_i_9_n_0 ;
  wire \acceleration_reg[35]_i_9_n_1 ;
  wire \acceleration_reg[35]_i_9_n_2 ;
  wire \acceleration_reg[35]_i_9_n_3 ;
  wire \acceleration_reg[39]_i_2_n_0 ;
  wire \acceleration_reg[39]_i_2_n_1 ;
  wire \acceleration_reg[39]_i_2_n_2 ;
  wire \acceleration_reg[39]_i_2_n_3 ;
  wire \acceleration_reg[39]_i_2_n_4 ;
  wire \acceleration_reg[39]_i_2_n_5 ;
  wire \acceleration_reg[39]_i_2_n_6 ;
  wire \acceleration_reg[39]_i_2_n_7 ;
  wire \acceleration_reg[39]_i_3_n_0 ;
  wire \acceleration_reg[39]_i_3_n_1 ;
  wire \acceleration_reg[39]_i_3_n_2 ;
  wire \acceleration_reg[39]_i_3_n_3 ;
  wire \acceleration_reg[39]_i_3_n_4 ;
  wire \acceleration_reg[39]_i_3_n_5 ;
  wire \acceleration_reg[39]_i_3_n_6 ;
  wire \acceleration_reg[39]_i_3_n_7 ;
  wire \acceleration_reg[3]_i_2_n_0 ;
  wire \acceleration_reg[3]_i_2_n_1 ;
  wire \acceleration_reg[3]_i_2_n_2 ;
  wire \acceleration_reg[3]_i_2_n_3 ;
  wire \acceleration_reg[3]_i_2_n_4 ;
  wire \acceleration_reg[3]_i_2_n_5 ;
  wire \acceleration_reg[3]_i_2_n_6 ;
  wire \acceleration_reg[3]_i_2_n_7 ;
  wire \acceleration_reg[3]_i_3_n_0 ;
  wire \acceleration_reg[3]_i_3_n_1 ;
  wire \acceleration_reg[3]_i_3_n_2 ;
  wire \acceleration_reg[3]_i_3_n_3 ;
  wire \acceleration_reg[3]_i_3_n_4 ;
  wire \acceleration_reg[3]_i_3_n_5 ;
  wire \acceleration_reg[3]_i_3_n_6 ;
  wire \acceleration_reg[3]_i_3_n_7 ;
  wire \acceleration_reg[43]_i_3_n_1 ;
  wire \acceleration_reg[43]_i_3_n_2 ;
  wire \acceleration_reg[43]_i_3_n_3 ;
  wire \acceleration_reg[43]_i_3_n_4 ;
  wire \acceleration_reg[43]_i_3_n_5 ;
  wire \acceleration_reg[43]_i_3_n_6 ;
  wire \acceleration_reg[43]_i_3_n_7 ;
  wire \acceleration_reg[43]_i_5_n_1 ;
  wire \acceleration_reg[43]_i_5_n_2 ;
  wire \acceleration_reg[43]_i_5_n_3 ;
  wire \acceleration_reg[43]_i_5_n_4 ;
  wire \acceleration_reg[43]_i_5_n_5 ;
  wire \acceleration_reg[43]_i_5_n_6 ;
  wire \acceleration_reg[43]_i_5_n_7 ;
  wire \acceleration_reg[7]_i_2_n_0 ;
  wire \acceleration_reg[7]_i_2_n_1 ;
  wire \acceleration_reg[7]_i_2_n_2 ;
  wire \acceleration_reg[7]_i_2_n_3 ;
  wire \acceleration_reg[7]_i_2_n_4 ;
  wire \acceleration_reg[7]_i_2_n_5 ;
  wire \acceleration_reg[7]_i_2_n_6 ;
  wire \acceleration_reg[7]_i_2_n_7 ;
  wire \acceleration_reg[7]_i_3_n_0 ;
  wire \acceleration_reg[7]_i_3_n_1 ;
  wire \acceleration_reg[7]_i_3_n_2 ;
  wire \acceleration_reg[7]_i_3_n_3 ;
  wire \acceleration_reg[7]_i_3_n_4 ;
  wire \acceleration_reg[7]_i_3_n_5 ;
  wire \acceleration_reg[7]_i_3_n_6 ;
  wire \acceleration_reg[7]_i_3_n_7 ;
  wire \acceleration_reg_n_0_[0] ;
  wire \acceleration_reg_n_0_[10] ;
  wire \acceleration_reg_n_0_[11] ;
  wire \acceleration_reg_n_0_[12] ;
  wire \acceleration_reg_n_0_[13] ;
  wire \acceleration_reg_n_0_[14] ;
  wire \acceleration_reg_n_0_[15] ;
  wire \acceleration_reg_n_0_[16] ;
  wire \acceleration_reg_n_0_[17] ;
  wire \acceleration_reg_n_0_[18] ;
  wire \acceleration_reg_n_0_[19] ;
  wire \acceleration_reg_n_0_[1] ;
  wire \acceleration_reg_n_0_[20] ;
  wire \acceleration_reg_n_0_[21] ;
  wire \acceleration_reg_n_0_[22] ;
  wire \acceleration_reg_n_0_[23] ;
  wire \acceleration_reg_n_0_[24] ;
  wire \acceleration_reg_n_0_[25] ;
  wire \acceleration_reg_n_0_[26] ;
  wire \acceleration_reg_n_0_[27] ;
  wire \acceleration_reg_n_0_[28] ;
  wire \acceleration_reg_n_0_[29] ;
  wire \acceleration_reg_n_0_[2] ;
  wire \acceleration_reg_n_0_[30] ;
  wire \acceleration_reg_n_0_[31] ;
  wire \acceleration_reg_n_0_[32] ;
  wire \acceleration_reg_n_0_[33] ;
  wire \acceleration_reg_n_0_[34] ;
  wire \acceleration_reg_n_0_[35] ;
  wire \acceleration_reg_n_0_[36] ;
  wire \acceleration_reg_n_0_[37] ;
  wire \acceleration_reg_n_0_[38] ;
  wire \acceleration_reg_n_0_[39] ;
  wire \acceleration_reg_n_0_[3] ;
  wire \acceleration_reg_n_0_[40] ;
  wire \acceleration_reg_n_0_[41] ;
  wire \acceleration_reg_n_0_[42] ;
  wire \acceleration_reg_n_0_[43] ;
  wire \acceleration_reg_n_0_[4] ;
  wire \acceleration_reg_n_0_[5] ;
  wire \acceleration_reg_n_0_[6] ;
  wire \acceleration_reg_n_0_[7] ;
  wire \acceleration_reg_n_0_[8] ;
  wire \acceleration_reg_n_0_[9] ;
  wire acceleration_remain;
  wire \acceleration_remain[11]_i_2_n_0 ;
  wire \acceleration_remain[11]_i_3_n_0 ;
  wire \acceleration_remain[11]_i_4_n_0 ;
  wire \acceleration_remain[11]_i_5_n_0 ;
  wire \acceleration_remain[11]_i_6_n_0 ;
  wire \acceleration_remain[11]_i_7_n_0 ;
  wire \acceleration_remain[11]_i_8_n_0 ;
  wire \acceleration_remain[11]_i_9_n_0 ;
  wire \acceleration_remain[15]_i_2_n_0 ;
  wire \acceleration_remain[15]_i_3_n_0 ;
  wire \acceleration_remain[15]_i_4_n_0 ;
  wire \acceleration_remain[15]_i_5_n_0 ;
  wire \acceleration_remain[15]_i_6_n_0 ;
  wire \acceleration_remain[15]_i_7_n_0 ;
  wire \acceleration_remain[15]_i_8_n_0 ;
  wire \acceleration_remain[15]_i_9_n_0 ;
  wire \acceleration_remain[19]_i_3_n_0 ;
  wire \acceleration_remain[19]_i_4_n_0 ;
  wire \acceleration_remain[19]_i_5_n_0 ;
  wire \acceleration_remain[19]_i_6_n_0 ;
  wire \acceleration_remain[19]_i_7_n_0 ;
  wire \acceleration_remain[19]_i_8_n_0 ;
  wire \acceleration_remain[19]_i_9_n_0 ;
  wire \acceleration_remain[3]_i_2_n_0 ;
  wire \acceleration_remain[3]_i_3_n_0 ;
  wire \acceleration_remain[3]_i_4_n_0 ;
  wire \acceleration_remain[3]_i_5_n_0 ;
  wire \acceleration_remain[3]_i_6_n_0 ;
  wire \acceleration_remain[3]_i_7_n_0 ;
  wire \acceleration_remain[3]_i_8_n_0 ;
  wire \acceleration_remain[3]_i_9_n_0 ;
  wire \acceleration_remain[7]_i_2_n_0 ;
  wire \acceleration_remain[7]_i_3_n_0 ;
  wire \acceleration_remain[7]_i_4_n_0 ;
  wire \acceleration_remain[7]_i_5_n_0 ;
  wire \acceleration_remain[7]_i_6_n_0 ;
  wire \acceleration_remain[7]_i_7_n_0 ;
  wire \acceleration_remain[7]_i_8_n_0 ;
  wire \acceleration_remain[7]_i_9_n_0 ;
  wire \acceleration_remain_reg[11]_i_1_n_0 ;
  wire \acceleration_remain_reg[11]_i_1_n_1 ;
  wire \acceleration_remain_reg[11]_i_1_n_2 ;
  wire \acceleration_remain_reg[11]_i_1_n_3 ;
  wire \acceleration_remain_reg[11]_i_1_n_4 ;
  wire \acceleration_remain_reg[11]_i_1_n_5 ;
  wire \acceleration_remain_reg[11]_i_1_n_6 ;
  wire \acceleration_remain_reg[11]_i_1_n_7 ;
  wire \acceleration_remain_reg[15]_i_1_n_0 ;
  wire \acceleration_remain_reg[15]_i_1_n_1 ;
  wire \acceleration_remain_reg[15]_i_1_n_2 ;
  wire \acceleration_remain_reg[15]_i_1_n_3 ;
  wire \acceleration_remain_reg[15]_i_1_n_4 ;
  wire \acceleration_remain_reg[15]_i_1_n_5 ;
  wire \acceleration_remain_reg[15]_i_1_n_6 ;
  wire \acceleration_remain_reg[15]_i_1_n_7 ;
  wire \acceleration_remain_reg[19]_i_2_n_1 ;
  wire \acceleration_remain_reg[19]_i_2_n_2 ;
  wire \acceleration_remain_reg[19]_i_2_n_3 ;
  wire \acceleration_remain_reg[19]_i_2_n_4 ;
  wire \acceleration_remain_reg[19]_i_2_n_5 ;
  wire \acceleration_remain_reg[19]_i_2_n_6 ;
  wire \acceleration_remain_reg[19]_i_2_n_7 ;
  wire \acceleration_remain_reg[3]_i_1_n_0 ;
  wire \acceleration_remain_reg[3]_i_1_n_1 ;
  wire \acceleration_remain_reg[3]_i_1_n_2 ;
  wire \acceleration_remain_reg[3]_i_1_n_3 ;
  wire \acceleration_remain_reg[3]_i_1_n_4 ;
  wire \acceleration_remain_reg[3]_i_1_n_5 ;
  wire \acceleration_remain_reg[3]_i_1_n_6 ;
  wire \acceleration_remain_reg[3]_i_1_n_7 ;
  wire \acceleration_remain_reg[7]_i_1_n_0 ;
  wire \acceleration_remain_reg[7]_i_1_n_1 ;
  wire \acceleration_remain_reg[7]_i_1_n_2 ;
  wire \acceleration_remain_reg[7]_i_1_n_3 ;
  wire \acceleration_remain_reg[7]_i_1_n_4 ;
  wire \acceleration_remain_reg[7]_i_1_n_5 ;
  wire \acceleration_remain_reg[7]_i_1_n_6 ;
  wire \acceleration_remain_reg[7]_i_1_n_7 ;
  wire \acceleration_remain_reg_n_0_[0] ;
  wire \acceleration_remain_reg_n_0_[10] ;
  wire \acceleration_remain_reg_n_0_[11] ;
  wire \acceleration_remain_reg_n_0_[12] ;
  wire \acceleration_remain_reg_n_0_[13] ;
  wire \acceleration_remain_reg_n_0_[14] ;
  wire \acceleration_remain_reg_n_0_[15] ;
  wire \acceleration_remain_reg_n_0_[16] ;
  wire \acceleration_remain_reg_n_0_[17] ;
  wire \acceleration_remain_reg_n_0_[18] ;
  wire \acceleration_remain_reg_n_0_[19] ;
  wire \acceleration_remain_reg_n_0_[1] ;
  wire \acceleration_remain_reg_n_0_[2] ;
  wire \acceleration_remain_reg_n_0_[3] ;
  wire \acceleration_remain_reg_n_0_[4] ;
  wire \acceleration_remain_reg_n_0_[5] ;
  wire \acceleration_remain_reg_n_0_[6] ;
  wire \acceleration_remain_reg_n_0_[7] ;
  wire \acceleration_remain_reg_n_0_[8] ;
  wire \acceleration_remain_reg_n_0_[9] ;
  wire [19:1]data0;
  wire forceStopflg;
  wire forceStopflg_reg_n_0;
  wire force_stop;
  wire [39:0]in4;
  wire [19:0]output_counter;
  wire \output_counter[0]_i_1_n_0 ;
  wire \output_counter[10]_i_1_n_0 ;
  wire \output_counter[11]_i_1_n_0 ;
  wire \output_counter[12]_i_1_n_0 ;
  wire \output_counter[13]_i_1_n_0 ;
  wire \output_counter[14]_i_1_n_0 ;
  wire \output_counter[15]_i_1_n_0 ;
  wire \output_counter[16]_i_1_n_0 ;
  wire \output_counter[17]_i_1_n_0 ;
  wire \output_counter[18]_i_1_n_0 ;
  wire \output_counter[18]_i_2_n_0 ;
  wire \output_counter[19]_i_10_n_0 ;
  wire \output_counter[19]_i_15_n_0 ;
  wire \output_counter[19]_i_17_n_0 ;
  wire \output_counter[19]_i_18_n_0 ;
  wire \output_counter[19]_i_1_n_0 ;
  wire \output_counter[19]_i_20_n_0 ;
  wire \output_counter[19]_i_21_n_0 ;
  wire \output_counter[19]_i_22_n_0 ;
  wire \output_counter[19]_i_23_n_0 ;
  wire \output_counter[19]_i_24_n_0 ;
  wire \output_counter[19]_i_25_n_0 ;
  wire \output_counter[19]_i_26_n_0 ;
  wire \output_counter[19]_i_27_n_0 ;
  wire \output_counter[19]_i_29_n_0 ;
  wire \output_counter[19]_i_2_n_0 ;
  wire \output_counter[19]_i_30_n_0 ;
  wire \output_counter[19]_i_31_n_0 ;
  wire \output_counter[19]_i_32_n_0 ;
  wire \output_counter[19]_i_33_n_0 ;
  wire \output_counter[19]_i_34_n_0 ;
  wire \output_counter[19]_i_35_n_0 ;
  wire \output_counter[19]_i_36_n_0 ;
  wire \output_counter[19]_i_37_n_0 ;
  wire \output_counter[19]_i_38_n_0 ;
  wire \output_counter[19]_i_39_n_0 ;
  wire \output_counter[19]_i_3_n_0 ;
  wire \output_counter[19]_i_40_n_0 ;
  wire \output_counter[19]_i_41_n_0 ;
  wire \output_counter[19]_i_4_n_0 ;
  wire \output_counter[19]_i_5_n_0 ;
  wire \output_counter[19]_i_6_n_0 ;
  wire \output_counter[19]_i_7_n_0 ;
  wire \output_counter[19]_i_8_n_0 ;
  wire \output_counter[19]_i_9_n_0 ;
  wire \output_counter[1]_i_1_n_0 ;
  wire \output_counter[2]_i_1_n_0 ;
  wire \output_counter[3]_i_1_n_0 ;
  wire \output_counter[4]_i_1_n_0 ;
  wire \output_counter[5]_i_1_n_0 ;
  wire \output_counter[6]_i_1_n_0 ;
  wire \output_counter[7]_i_1_n_0 ;
  wire \output_counter[8]_i_1_n_0 ;
  wire \output_counter[9]_i_1_n_0 ;
  wire \output_counter_reg[12]_i_2_n_0 ;
  wire \output_counter_reg[12]_i_2_n_1 ;
  wire \output_counter_reg[12]_i_2_n_2 ;
  wire \output_counter_reg[12]_i_2_n_3 ;
  wire \output_counter_reg[16]_i_2_n_0 ;
  wire \output_counter_reg[16]_i_2_n_1 ;
  wire \output_counter_reg[16]_i_2_n_2 ;
  wire \output_counter_reg[16]_i_2_n_3 ;
  wire \output_counter_reg[19]_i_11_n_2 ;
  wire \output_counter_reg[19]_i_11_n_3 ;
  wire \output_counter_reg[19]_i_12_n_0 ;
  wire \output_counter_reg[19]_i_12_n_1 ;
  wire \output_counter_reg[19]_i_12_n_2 ;
  wire \output_counter_reg[19]_i_12_n_3 ;
  wire \output_counter_reg[19]_i_12_n_4 ;
  wire \output_counter_reg[19]_i_12_n_5 ;
  wire \output_counter_reg[19]_i_12_n_6 ;
  wire \output_counter_reg[19]_i_12_n_7 ;
  wire \output_counter_reg[19]_i_13_n_3 ;
  wire \output_counter_reg[19]_i_14_n_0 ;
  wire \output_counter_reg[19]_i_14_n_1 ;
  wire \output_counter_reg[19]_i_14_n_2 ;
  wire \output_counter_reg[19]_i_14_n_3 ;
  wire \output_counter_reg[19]_i_14_n_4 ;
  wire \output_counter_reg[19]_i_14_n_5 ;
  wire \output_counter_reg[19]_i_14_n_6 ;
  wire \output_counter_reg[19]_i_14_n_7 ;
  wire \output_counter_reg[19]_i_16_n_0 ;
  wire \output_counter_reg[19]_i_16_n_1 ;
  wire \output_counter_reg[19]_i_16_n_2 ;
  wire \output_counter_reg[19]_i_16_n_3 ;
  wire \output_counter_reg[19]_i_16_n_4 ;
  wire \output_counter_reg[19]_i_16_n_5 ;
  wire \output_counter_reg[19]_i_16_n_6 ;
  wire \output_counter_reg[19]_i_16_n_7 ;
  wire \output_counter_reg[19]_i_19_n_0 ;
  wire \output_counter_reg[19]_i_19_n_1 ;
  wire \output_counter_reg[19]_i_19_n_2 ;
  wire \output_counter_reg[19]_i_19_n_3 ;
  wire \output_counter_reg[19]_i_19_n_4 ;
  wire \output_counter_reg[19]_i_19_n_5 ;
  wire \output_counter_reg[19]_i_19_n_6 ;
  wire \output_counter_reg[19]_i_19_n_7 ;
  wire \output_counter_reg[19]_i_28_n_0 ;
  wire \output_counter_reg[19]_i_28_n_1 ;
  wire \output_counter_reg[19]_i_28_n_2 ;
  wire \output_counter_reg[19]_i_28_n_3 ;
  wire \output_counter_reg[19]_i_28_n_4 ;
  wire \output_counter_reg[19]_i_28_n_5 ;
  wire \output_counter_reg[19]_i_28_n_6 ;
  wire \output_counter_reg[19]_i_28_n_7 ;
  wire \output_counter_reg[4]_i_2_n_0 ;
  wire \output_counter_reg[4]_i_2_n_1 ;
  wire \output_counter_reg[4]_i_2_n_2 ;
  wire \output_counter_reg[4]_i_2_n_3 ;
  wire \output_counter_reg[8]_i_2_n_0 ;
  wire \output_counter_reg[8]_i_2_n_1 ;
  wire \output_counter_reg[8]_i_2_n_2 ;
  wire \output_counter_reg[8]_i_2_n_3 ;
  wire p_1_in;
  wire pos1;
  wire [40:20]pos2;
  wire \pos[0]_i_10_n_0 ;
  wire \pos[0]_i_14_n_0 ;
  wire \pos[0]_i_15_n_0 ;
  wire \pos[0]_i_16_n_0 ;
  wire \pos[0]_i_17_n_0 ;
  wire \pos[0]_i_19_n_0 ;
  wire \pos[0]_i_1_n_0 ;
  wire \pos[0]_i_20_n_0 ;
  wire \pos[0]_i_21_n_0 ;
  wire \pos[0]_i_22_n_0 ;
  wire \pos[0]_i_24_n_0 ;
  wire \pos[0]_i_25_n_0 ;
  wire \pos[0]_i_26_n_0 ;
  wire \pos[0]_i_27_n_0 ;
  wire \pos[0]_i_29_n_0 ;
  wire \pos[0]_i_30_n_0 ;
  wire \pos[0]_i_31_n_0 ;
  wire \pos[0]_i_32_n_0 ;
  wire \pos[0]_i_33_n_0 ;
  wire \pos[0]_i_34_n_0 ;
  wire \pos[0]_i_35_n_0 ;
  wire \pos[0]_i_36_n_0 ;
  wire \pos[0]_i_3_n_0 ;
  wire \pos[0]_i_4_n_0 ;
  wire \pos[0]_i_5_n_0 ;
  wire \pos[0]_i_6_n_0 ;
  wire \pos[0]_i_7_n_0 ;
  wire \pos[0]_i_8_n_0 ;
  wire \pos[0]_i_9_n_0 ;
  wire \pos[12]_i_2_n_0 ;
  wire \pos[12]_i_3_n_0 ;
  wire \pos[12]_i_4_n_0 ;
  wire \pos[12]_i_5_n_0 ;
  wire \pos[12]_i_6_n_0 ;
  wire \pos[12]_i_7_n_0 ;
  wire \pos[12]_i_8_n_0 ;
  wire \pos[12]_i_9_n_0 ;
  wire \pos[16]_i_2_n_0 ;
  wire \pos[16]_i_3_n_0 ;
  wire \pos[16]_i_4_n_0 ;
  wire \pos[16]_i_5_n_0 ;
  wire \pos[16]_i_6_n_0 ;
  wire \pos[16]_i_7_n_0 ;
  wire \pos[16]_i_8_n_0 ;
  wire \pos[16]_i_9_n_0 ;
  wire \pos[20]_i_2_n_0 ;
  wire \pos[20]_i_3_n_0 ;
  wire \pos[20]_i_4_n_0 ;
  wire \pos[20]_i_5_n_0 ;
  wire \pos[20]_i_6_n_0 ;
  wire \pos[24]_i_2_n_0 ;
  wire \pos[24]_i_3_n_0 ;
  wire \pos[24]_i_4_n_0 ;
  wire \pos[24]_i_5_n_0 ;
  wire \pos[28]_i_2_n_0 ;
  wire \pos[28]_i_3_n_0 ;
  wire \pos[28]_i_4_n_0 ;
  wire \pos[28]_i_5_n_0 ;
  wire \pos[32]_i_2_n_0 ;
  wire \pos[32]_i_3_n_0 ;
  wire \pos[32]_i_4_n_0 ;
  wire \pos[32]_i_5_n_0 ;
  wire \pos[36]_i_2_n_0 ;
  wire \pos[36]_i_3_n_0 ;
  wire \pos[36]_i_4_n_0 ;
  wire \pos[36]_i_5_n_0 ;
  wire \pos[40]_i_2_n_0 ;
  wire \pos[40]_i_3_n_0 ;
  wire \pos[40]_i_4_n_0 ;
  wire \pos[40]_i_5_n_0 ;
  wire \pos[4]_i_2_n_0 ;
  wire \pos[4]_i_3_n_0 ;
  wire \pos[4]_i_4_n_0 ;
  wire \pos[4]_i_5_n_0 ;
  wire \pos[4]_i_6_n_0 ;
  wire \pos[4]_i_7_n_0 ;
  wire \pos[4]_i_8_n_0 ;
  wire \pos[4]_i_9_n_0 ;
  wire \pos[8]_i_2_n_0 ;
  wire \pos[8]_i_3_n_0 ;
  wire \pos[8]_i_4_n_0 ;
  wire \pos[8]_i_5_n_0 ;
  wire \pos[8]_i_6_n_0 ;
  wire \pos[8]_i_7_n_0 ;
  wire \pos[8]_i_8_n_0 ;
  wire \pos[8]_i_9_n_0 ;
  wire [43:24]pos_pre;
  wire \pos_pre[24]_i_1_n_0 ;
  wire \pos_pre[25]_i_1_n_0 ;
  wire \pos_pre[26]_i_1_n_0 ;
  wire \pos_pre[27]_i_1_n_0 ;
  wire \pos_pre[28]_i_1_n_0 ;
  wire \pos_pre[29]_i_1_n_0 ;
  wire \pos_pre[30]_i_1_n_0 ;
  wire \pos_pre[31]_i_1_n_0 ;
  wire \pos_pre[32]_i_1_n_0 ;
  wire \pos_pre[33]_i_1_n_0 ;
  wire \pos_pre[34]_i_1_n_0 ;
  wire \pos_pre[35]_i_1_n_0 ;
  wire \pos_pre[36]_i_1_n_0 ;
  wire \pos_pre[37]_i_1_n_0 ;
  wire \pos_pre[38]_i_1_n_0 ;
  wire \pos_pre[39]_i_1_n_0 ;
  wire \pos_pre[40]_i_1_n_0 ;
  wire \pos_pre[41]_i_1_n_0 ;
  wire \pos_pre[42]_i_1_n_0 ;
  wire \pos_pre[43]_i_1_n_0 ;
  wire [43:24]pos_reg;
  wire \pos_reg[0]_i_11_n_0 ;
  wire \pos_reg[0]_i_11_n_1 ;
  wire \pos_reg[0]_i_11_n_2 ;
  wire \pos_reg[0]_i_11_n_3 ;
  wire \pos_reg[0]_i_12_n_0 ;
  wire \pos_reg[0]_i_12_n_1 ;
  wire \pos_reg[0]_i_12_n_2 ;
  wire \pos_reg[0]_i_12_n_3 ;
  wire \pos_reg[0]_i_13_n_0 ;
  wire \pos_reg[0]_i_13_n_1 ;
  wire \pos_reg[0]_i_13_n_2 ;
  wire \pos_reg[0]_i_13_n_3 ;
  wire \pos_reg[0]_i_18_n_0 ;
  wire \pos_reg[0]_i_18_n_1 ;
  wire \pos_reg[0]_i_18_n_2 ;
  wire \pos_reg[0]_i_18_n_3 ;
  wire \pos_reg[0]_i_23_n_0 ;
  wire \pos_reg[0]_i_23_n_1 ;
  wire \pos_reg[0]_i_23_n_2 ;
  wire \pos_reg[0]_i_23_n_3 ;
  wire \pos_reg[0]_i_28_n_0 ;
  wire \pos_reg[0]_i_28_n_1 ;
  wire \pos_reg[0]_i_28_n_2 ;
  wire \pos_reg[0]_i_28_n_3 ;
  wire \pos_reg[0]_i_2_n_0 ;
  wire \pos_reg[0]_i_2_n_1 ;
  wire \pos_reg[0]_i_2_n_2 ;
  wire \pos_reg[0]_i_2_n_3 ;
  wire \pos_reg[0]_i_2_n_4 ;
  wire \pos_reg[0]_i_2_n_5 ;
  wire \pos_reg[0]_i_2_n_6 ;
  wire \pos_reg[0]_i_2_n_7 ;
  wire \pos_reg[12]_i_10_n_0 ;
  wire \pos_reg[12]_i_10_n_1 ;
  wire \pos_reg[12]_i_10_n_2 ;
  wire \pos_reg[12]_i_10_n_3 ;
  wire \pos_reg[12]_i_1_n_0 ;
  wire \pos_reg[12]_i_1_n_1 ;
  wire \pos_reg[12]_i_1_n_2 ;
  wire \pos_reg[12]_i_1_n_3 ;
  wire \pos_reg[12]_i_1_n_4 ;
  wire \pos_reg[12]_i_1_n_5 ;
  wire \pos_reg[12]_i_1_n_6 ;
  wire \pos_reg[12]_i_1_n_7 ;
  wire \pos_reg[16]_i_10_n_0 ;
  wire \pos_reg[16]_i_10_n_1 ;
  wire \pos_reg[16]_i_10_n_2 ;
  wire \pos_reg[16]_i_10_n_3 ;
  wire \pos_reg[16]_i_1_n_0 ;
  wire \pos_reg[16]_i_1_n_1 ;
  wire \pos_reg[16]_i_1_n_2 ;
  wire \pos_reg[16]_i_1_n_3 ;
  wire \pos_reg[16]_i_1_n_4 ;
  wire \pos_reg[16]_i_1_n_5 ;
  wire \pos_reg[16]_i_1_n_6 ;
  wire \pos_reg[16]_i_1_n_7 ;
  wire \pos_reg[20]_i_1_n_0 ;
  wire \pos_reg[20]_i_1_n_1 ;
  wire \pos_reg[20]_i_1_n_2 ;
  wire \pos_reg[20]_i_1_n_3 ;
  wire \pos_reg[20]_i_1_n_4 ;
  wire \pos_reg[20]_i_1_n_5 ;
  wire \pos_reg[20]_i_1_n_6 ;
  wire \pos_reg[20]_i_1_n_7 ;
  wire \pos_reg[24]_i_1_n_0 ;
  wire \pos_reg[24]_i_1_n_1 ;
  wire \pos_reg[24]_i_1_n_2 ;
  wire \pos_reg[24]_i_1_n_3 ;
  wire \pos_reg[24]_i_1_n_4 ;
  wire \pos_reg[24]_i_1_n_5 ;
  wire \pos_reg[24]_i_1_n_6 ;
  wire \pos_reg[24]_i_1_n_7 ;
  wire \pos_reg[28]_i_1_n_0 ;
  wire \pos_reg[28]_i_1_n_1 ;
  wire \pos_reg[28]_i_1_n_2 ;
  wire \pos_reg[28]_i_1_n_3 ;
  wire \pos_reg[28]_i_1_n_4 ;
  wire \pos_reg[28]_i_1_n_5 ;
  wire \pos_reg[28]_i_1_n_6 ;
  wire \pos_reg[28]_i_1_n_7 ;
  wire \pos_reg[32]_i_1_n_0 ;
  wire \pos_reg[32]_i_1_n_1 ;
  wire \pos_reg[32]_i_1_n_2 ;
  wire \pos_reg[32]_i_1_n_3 ;
  wire \pos_reg[32]_i_1_n_4 ;
  wire \pos_reg[32]_i_1_n_5 ;
  wire \pos_reg[32]_i_1_n_6 ;
  wire \pos_reg[32]_i_1_n_7 ;
  wire \pos_reg[36]_i_1_n_0 ;
  wire \pos_reg[36]_i_1_n_1 ;
  wire \pos_reg[36]_i_1_n_2 ;
  wire \pos_reg[36]_i_1_n_3 ;
  wire \pos_reg[36]_i_1_n_4 ;
  wire \pos_reg[36]_i_1_n_5 ;
  wire \pos_reg[36]_i_1_n_6 ;
  wire \pos_reg[36]_i_1_n_7 ;
  wire \pos_reg[40]_i_1_n_1 ;
  wire \pos_reg[40]_i_1_n_2 ;
  wire \pos_reg[40]_i_1_n_3 ;
  wire \pos_reg[40]_i_1_n_4 ;
  wire \pos_reg[40]_i_1_n_5 ;
  wire \pos_reg[40]_i_1_n_6 ;
  wire \pos_reg[40]_i_1_n_7 ;
  wire \pos_reg[4]_i_10_n_0 ;
  wire \pos_reg[4]_i_10_n_1 ;
  wire \pos_reg[4]_i_10_n_2 ;
  wire \pos_reg[4]_i_10_n_3 ;
  wire \pos_reg[4]_i_1_n_0 ;
  wire \pos_reg[4]_i_1_n_1 ;
  wire \pos_reg[4]_i_1_n_2 ;
  wire \pos_reg[4]_i_1_n_3 ;
  wire \pos_reg[4]_i_1_n_4 ;
  wire \pos_reg[4]_i_1_n_5 ;
  wire \pos_reg[4]_i_1_n_6 ;
  wire \pos_reg[4]_i_1_n_7 ;
  wire \pos_reg[8]_i_10_n_0 ;
  wire \pos_reg[8]_i_10_n_1 ;
  wire \pos_reg[8]_i_10_n_2 ;
  wire \pos_reg[8]_i_10_n_3 ;
  wire \pos_reg[8]_i_1_n_0 ;
  wire \pos_reg[8]_i_1_n_1 ;
  wire \pos_reg[8]_i_1_n_2 ;
  wire \pos_reg[8]_i_1_n_3 ;
  wire \pos_reg[8]_i_1_n_4 ;
  wire \pos_reg[8]_i_1_n_5 ;
  wire \pos_reg[8]_i_1_n_6 ;
  wire \pos_reg[8]_i_1_n_7 ;
  wire \pos_reg_n_0_[0] ;
  wire \pos_reg_n_0_[10] ;
  wire \pos_reg_n_0_[11] ;
  wire \pos_reg_n_0_[12] ;
  wire \pos_reg_n_0_[13] ;
  wire \pos_reg_n_0_[14] ;
  wire \pos_reg_n_0_[15] ;
  wire \pos_reg_n_0_[16] ;
  wire \pos_reg_n_0_[17] ;
  wire \pos_reg_n_0_[18] ;
  wire \pos_reg_n_0_[19] ;
  wire \pos_reg_n_0_[1] ;
  wire \pos_reg_n_0_[20] ;
  wire \pos_reg_n_0_[21] ;
  wire \pos_reg_n_0_[22] ;
  wire \pos_reg_n_0_[23] ;
  wire \pos_reg_n_0_[2] ;
  wire \pos_reg_n_0_[3] ;
  wire \pos_reg_n_0_[4] ;
  wire \pos_reg_n_0_[5] ;
  wire \pos_reg_n_0_[6] ;
  wire \pos_reg_n_0_[7] ;
  wire \pos_reg_n_0_[8] ;
  wire \pos_reg_n_0_[9] ;
  wire pulse;
  wire pulse_i_1_n_0;
  wire pulse_i_2_n_0;
  wire pulse_sent_done;
  wire pulse_sent_done_i_10_n_0;
  wire pulse_sent_done_i_11_n_0;
  wire pulse_sent_done_i_12_n_0;
  wire pulse_sent_done_i_13_n_0;
  wire pulse_sent_done_i_14_n_0;
  wire pulse_sent_done_i_15_n_0;
  wire pulse_sent_done_i_16_n_0;
  wire pulse_sent_done_i_17_n_0;
  wire pulse_sent_done_i_18_n_0;
  wire pulse_sent_done_i_19_n_0;
  wire pulse_sent_done_i_1_n_0;
  wire pulse_sent_done_i_20_n_0;
  wire pulse_sent_done_i_21_n_0;
  wire pulse_sent_done_i_22_n_0;
  wire pulse_sent_done_i_23_n_0;
  wire pulse_sent_done_i_24_n_0;
  wire pulse_sent_done_i_25_n_0;
  wire pulse_sent_done_i_2_n_0;
  wire pulse_sent_done_i_5_n_0;
  wire pulse_sent_done_i_6_n_0;
  wire pulse_sent_done_i_7_n_0;
  wire pulse_sent_done_i_8_n_0;
  wire pulse_sent_done_reg_i_3_n_3;
  wire pulse_sent_done_reg_i_4_n_0;
  wire pulse_sent_done_reg_i_4_n_1;
  wire pulse_sent_done_reg_i_4_n_2;
  wire pulse_sent_done_reg_i_4_n_3;
  wire pulse_sent_done_reg_i_9_n_0;
  wire pulse_sent_done_reg_i_9_n_1;
  wire pulse_sent_done_reg_i_9_n_2;
  wire pulse_sent_done_reg_i_9_n_3;
  wire start_s;
  wire [2:0]state;
  wire [18:0]state1;
  wire state10_in;
  wire [19:0]state10_out;
  wire sys_clk;
  wire sys_rst_n;
  wire [15:0]theory_dec_len;
  wire [39:0]velocity0;
  wire [43:20]velocity2;
  wire \velocity[0]_i_1_n_0 ;
  wire \velocity[10]_i_1_n_0 ;
  wire \velocity[11]_i_10_n_0 ;
  wire \velocity[11]_i_11_n_0 ;
  wire \velocity[11]_i_1_n_0 ;
  wire \velocity[11]_i_4_n_0 ;
  wire \velocity[11]_i_5_n_0 ;
  wire \velocity[11]_i_6_n_0 ;
  wire \velocity[11]_i_7_n_0 ;
  wire \velocity[11]_i_8_n_0 ;
  wire \velocity[11]_i_9_n_0 ;
  wire \velocity[12]_i_1_n_0 ;
  wire \velocity[13]_i_1_n_0 ;
  wire \velocity[14]_i_1_n_0 ;
  wire \velocity[15]_i_10_n_0 ;
  wire \velocity[15]_i_11_n_0 ;
  wire \velocity[15]_i_1_n_0 ;
  wire \velocity[15]_i_4_n_0 ;
  wire \velocity[15]_i_5_n_0 ;
  wire \velocity[15]_i_6_n_0 ;
  wire \velocity[15]_i_7_n_0 ;
  wire \velocity[15]_i_8_n_0 ;
  wire \velocity[15]_i_9_n_0 ;
  wire \velocity[16]_i_1_n_0 ;
  wire \velocity[17]_i_1_n_0 ;
  wire \velocity[18]_i_1_n_0 ;
  wire \velocity[19]_i_10_n_0 ;
  wire \velocity[19]_i_11_n_0 ;
  wire \velocity[19]_i_1_n_0 ;
  wire \velocity[19]_i_4_n_0 ;
  wire \velocity[19]_i_5_n_0 ;
  wire \velocity[19]_i_6_n_0 ;
  wire \velocity[19]_i_7_n_0 ;
  wire \velocity[19]_i_8_n_0 ;
  wire \velocity[19]_i_9_n_0 ;
  wire \velocity[1]_i_1_n_0 ;
  wire \velocity[20]_i_1_n_0 ;
  wire \velocity[21]_i_1_n_0 ;
  wire \velocity[22]_i_1_n_0 ;
  wire \velocity[23]_i_10_n_0 ;
  wire \velocity[23]_i_11_n_0 ;
  wire \velocity[23]_i_1_n_0 ;
  wire \velocity[23]_i_4_n_0 ;
  wire \velocity[23]_i_5_n_0 ;
  wire \velocity[23]_i_6_n_0 ;
  wire \velocity[23]_i_7_n_0 ;
  wire \velocity[23]_i_8_n_0 ;
  wire \velocity[23]_i_9_n_0 ;
  wire \velocity[24]_i_1_n_0 ;
  wire \velocity[25]_i_1_n_0 ;
  wire \velocity[26]_i_1_n_0 ;
  wire \velocity[27]_i_1_n_0 ;
  wire \velocity[27]_i_4_n_0 ;
  wire \velocity[27]_i_5_n_0 ;
  wire \velocity[27]_i_6_n_0 ;
  wire \velocity[27]_i_7_n_0 ;
  wire \velocity[28]_i_1_n_0 ;
  wire \velocity[29]_i_1_n_0 ;
  wire \velocity[2]_i_1_n_0 ;
  wire \velocity[30]_i_1_n_0 ;
  wire \velocity[31]_i_1_n_0 ;
  wire \velocity[31]_i_4_n_0 ;
  wire \velocity[31]_i_5_n_0 ;
  wire \velocity[31]_i_6_n_0 ;
  wire \velocity[31]_i_7_n_0 ;
  wire \velocity[32]_i_1_n_0 ;
  wire \velocity[33]_i_1_n_0 ;
  wire \velocity[34]_i_1_n_0 ;
  wire \velocity[35]_i_1_n_0 ;
  wire \velocity[35]_i_4_n_0 ;
  wire \velocity[35]_i_5_n_0 ;
  wire \velocity[35]_i_6_n_0 ;
  wire \velocity[35]_i_7_n_0 ;
  wire \velocity[36]_i_1_n_0 ;
  wire \velocity[37]_i_1_n_0 ;
  wire \velocity[38]_i_1_n_0 ;
  wire \velocity[39]_i_100_n_0 ;
  wire \velocity[39]_i_101_n_0 ;
  wire \velocity[39]_i_102_n_0 ;
  wire \velocity[39]_i_103_n_0 ;
  wire \velocity[39]_i_104_n_0 ;
  wire \velocity[39]_i_105_n_0 ;
  wire \velocity[39]_i_11_n_0 ;
  wire \velocity[39]_i_12_n_0 ;
  wire \velocity[39]_i_13_n_0 ;
  wire \velocity[39]_i_15_n_0 ;
  wire \velocity[39]_i_16_n_0 ;
  wire \velocity[39]_i_17_n_0 ;
  wire \velocity[39]_i_18_n_0 ;
  wire \velocity[39]_i_19_n_0 ;
  wire \velocity[39]_i_1_n_0 ;
  wire \velocity[39]_i_20_n_0 ;
  wire \velocity[39]_i_21_n_0 ;
  wire \velocity[39]_i_22_n_0 ;
  wire \velocity[39]_i_23_n_0 ;
  wire \velocity[39]_i_26_n_0 ;
  wire \velocity[39]_i_27_n_0 ;
  wire \velocity[39]_i_28_n_0 ;
  wire \velocity[39]_i_29_n_0 ;
  wire \velocity[39]_i_2_n_0 ;
  wire \velocity[39]_i_30_n_0 ;
  wire \velocity[39]_i_31_n_0 ;
  wire \velocity[39]_i_32_n_0 ;
  wire \velocity[39]_i_33_n_0 ;
  wire \velocity[39]_i_34_n_0 ;
  wire \velocity[39]_i_35_n_0 ;
  wire \velocity[39]_i_37_n_0 ;
  wire \velocity[39]_i_38_n_0 ;
  wire \velocity[39]_i_39_n_0 ;
  wire \velocity[39]_i_3_n_0 ;
  wire \velocity[39]_i_41_n_0 ;
  wire \velocity[39]_i_42_n_0 ;
  wire \velocity[39]_i_43_n_0 ;
  wire \velocity[39]_i_44_n_0 ;
  wire \velocity[39]_i_45_n_0 ;
  wire \velocity[39]_i_46_n_0 ;
  wire \velocity[39]_i_47_n_0 ;
  wire \velocity[39]_i_48_n_0 ;
  wire \velocity[39]_i_49_n_0 ;
  wire \velocity[39]_i_50_n_0 ;
  wire \velocity[39]_i_51_n_0 ;
  wire \velocity[39]_i_52_n_0 ;
  wire \velocity[39]_i_53_n_0 ;
  wire \velocity[39]_i_54_n_0 ;
  wire \velocity[39]_i_56_n_0 ;
  wire \velocity[39]_i_57_n_0 ;
  wire \velocity[39]_i_58_n_0 ;
  wire \velocity[39]_i_59_n_0 ;
  wire \velocity[39]_i_5_n_0 ;
  wire \velocity[39]_i_61_n_0 ;
  wire \velocity[39]_i_62_n_0 ;
  wire \velocity[39]_i_63_n_0 ;
  wire \velocity[39]_i_64_n_0 ;
  wire \velocity[39]_i_65_n_0 ;
  wire \velocity[39]_i_66_n_0 ;
  wire \velocity[39]_i_67_n_0 ;
  wire \velocity[39]_i_68_n_0 ;
  wire \velocity[39]_i_6_n_0 ;
  wire \velocity[39]_i_70_n_0 ;
  wire \velocity[39]_i_71_n_0 ;
  wire \velocity[39]_i_72_n_0 ;
  wire \velocity[39]_i_73_n_0 ;
  wire \velocity[39]_i_74_n_0 ;
  wire \velocity[39]_i_75_n_0 ;
  wire \velocity[39]_i_76_n_0 ;
  wire \velocity[39]_i_77_n_0 ;
  wire \velocity[39]_i_78_n_0 ;
  wire \velocity[39]_i_79_n_0 ;
  wire \velocity[39]_i_7_n_0 ;
  wire \velocity[39]_i_80_n_0 ;
  wire \velocity[39]_i_81_n_0 ;
  wire \velocity[39]_i_84_n_0 ;
  wire \velocity[39]_i_85_n_0 ;
  wire \velocity[39]_i_86_n_0 ;
  wire \velocity[39]_i_87_n_0 ;
  wire \velocity[39]_i_90_n_0 ;
  wire \velocity[39]_i_91_n_0 ;
  wire \velocity[39]_i_92_n_0 ;
  wire \velocity[39]_i_93_n_0 ;
  wire \velocity[39]_i_94_n_0 ;
  wire \velocity[39]_i_95_n_0 ;
  wire \velocity[39]_i_96_n_0 ;
  wire \velocity[39]_i_97_n_0 ;
  wire \velocity[39]_i_98_n_0 ;
  wire \velocity[39]_i_99_n_0 ;
  wire \velocity[39]_i_9_n_0 ;
  wire \velocity[3]_i_10_n_0 ;
  wire \velocity[3]_i_11_n_0 ;
  wire \velocity[3]_i_15_n_0 ;
  wire \velocity[3]_i_16_n_0 ;
  wire \velocity[3]_i_17_n_0 ;
  wire \velocity[3]_i_18_n_0 ;
  wire \velocity[3]_i_1_n_0 ;
  wire \velocity[3]_i_20_n_0 ;
  wire \velocity[3]_i_21_n_0 ;
  wire \velocity[3]_i_22_n_0 ;
  wire \velocity[3]_i_23_n_0 ;
  wire \velocity[3]_i_25_n_0 ;
  wire \velocity[3]_i_26_n_0 ;
  wire \velocity[3]_i_27_n_0 ;
  wire \velocity[3]_i_28_n_0 ;
  wire \velocity[3]_i_30_n_0 ;
  wire \velocity[3]_i_31_n_0 ;
  wire \velocity[3]_i_32_n_0 ;
  wire \velocity[3]_i_33_n_0 ;
  wire \velocity[3]_i_34_n_0 ;
  wire \velocity[3]_i_35_n_0 ;
  wire \velocity[3]_i_36_n_0 ;
  wire \velocity[3]_i_37_n_0 ;
  wire \velocity[3]_i_4_n_0 ;
  wire \velocity[3]_i_5_n_0 ;
  wire \velocity[3]_i_6_n_0 ;
  wire \velocity[3]_i_7_n_0 ;
  wire \velocity[3]_i_8_n_0 ;
  wire \velocity[3]_i_9_n_0 ;
  wire \velocity[4]_i_1_n_0 ;
  wire \velocity[5]_i_1_n_0 ;
  wire \velocity[6]_i_1_n_0 ;
  wire \velocity[7]_i_10_n_0 ;
  wire \velocity[7]_i_11_n_0 ;
  wire \velocity[7]_i_1_n_0 ;
  wire \velocity[7]_i_4_n_0 ;
  wire \velocity[7]_i_5_n_0 ;
  wire \velocity[7]_i_6_n_0 ;
  wire \velocity[7]_i_7_n_0 ;
  wire \velocity[7]_i_8_n_0 ;
  wire \velocity[7]_i_9_n_0 ;
  wire \velocity[8]_i_1_n_0 ;
  wire \velocity[9]_i_1_n_0 ;
  wire \velocity_reg[11]_i_12_n_0 ;
  wire \velocity_reg[11]_i_12_n_1 ;
  wire \velocity_reg[11]_i_12_n_2 ;
  wire \velocity_reg[11]_i_12_n_3 ;
  wire \velocity_reg[11]_i_2_n_0 ;
  wire \velocity_reg[11]_i_2_n_1 ;
  wire \velocity_reg[11]_i_2_n_2 ;
  wire \velocity_reg[11]_i_2_n_3 ;
  wire \velocity_reg[11]_i_3_n_0 ;
  wire \velocity_reg[11]_i_3_n_1 ;
  wire \velocity_reg[11]_i_3_n_2 ;
  wire \velocity_reg[11]_i_3_n_3 ;
  wire \velocity_reg[15]_i_12_n_0 ;
  wire \velocity_reg[15]_i_12_n_1 ;
  wire \velocity_reg[15]_i_12_n_2 ;
  wire \velocity_reg[15]_i_12_n_3 ;
  wire \velocity_reg[15]_i_2_n_0 ;
  wire \velocity_reg[15]_i_2_n_1 ;
  wire \velocity_reg[15]_i_2_n_2 ;
  wire \velocity_reg[15]_i_2_n_3 ;
  wire \velocity_reg[15]_i_3_n_0 ;
  wire \velocity_reg[15]_i_3_n_1 ;
  wire \velocity_reg[15]_i_3_n_2 ;
  wire \velocity_reg[15]_i_3_n_3 ;
  wire \velocity_reg[19]_i_12_n_0 ;
  wire \velocity_reg[19]_i_12_n_1 ;
  wire \velocity_reg[19]_i_12_n_2 ;
  wire \velocity_reg[19]_i_12_n_3 ;
  wire \velocity_reg[19]_i_2_n_0 ;
  wire \velocity_reg[19]_i_2_n_1 ;
  wire \velocity_reg[19]_i_2_n_2 ;
  wire \velocity_reg[19]_i_2_n_3 ;
  wire \velocity_reg[19]_i_3_n_0 ;
  wire \velocity_reg[19]_i_3_n_1 ;
  wire \velocity_reg[19]_i_3_n_2 ;
  wire \velocity_reg[19]_i_3_n_3 ;
  wire \velocity_reg[23]_i_12_n_1 ;
  wire \velocity_reg[23]_i_12_n_2 ;
  wire \velocity_reg[23]_i_12_n_3 ;
  wire \velocity_reg[23]_i_2_n_0 ;
  wire \velocity_reg[23]_i_2_n_1 ;
  wire \velocity_reg[23]_i_2_n_2 ;
  wire \velocity_reg[23]_i_2_n_3 ;
  wire \velocity_reg[23]_i_3_n_0 ;
  wire \velocity_reg[23]_i_3_n_1 ;
  wire \velocity_reg[23]_i_3_n_2 ;
  wire \velocity_reg[23]_i_3_n_3 ;
  wire \velocity_reg[27]_i_2_n_0 ;
  wire \velocity_reg[27]_i_2_n_1 ;
  wire \velocity_reg[27]_i_2_n_2 ;
  wire \velocity_reg[27]_i_2_n_3 ;
  wire \velocity_reg[27]_i_3_n_0 ;
  wire \velocity_reg[27]_i_3_n_1 ;
  wire \velocity_reg[27]_i_3_n_2 ;
  wire \velocity_reg[27]_i_3_n_3 ;
  wire \velocity_reg[31]_i_2_n_0 ;
  wire \velocity_reg[31]_i_2_n_1 ;
  wire \velocity_reg[31]_i_2_n_2 ;
  wire \velocity_reg[31]_i_2_n_3 ;
  wire \velocity_reg[31]_i_3_n_0 ;
  wire \velocity_reg[31]_i_3_n_1 ;
  wire \velocity_reg[31]_i_3_n_2 ;
  wire \velocity_reg[31]_i_3_n_3 ;
  wire \velocity_reg[35]_i_2_n_0 ;
  wire \velocity_reg[35]_i_2_n_1 ;
  wire \velocity_reg[35]_i_2_n_2 ;
  wire \velocity_reg[35]_i_2_n_3 ;
  wire \velocity_reg[35]_i_3_n_0 ;
  wire \velocity_reg[35]_i_3_n_1 ;
  wire \velocity_reg[35]_i_3_n_2 ;
  wire \velocity_reg[35]_i_3_n_3 ;
  wire \velocity_reg[39]_i_10_n_1 ;
  wire \velocity_reg[39]_i_10_n_2 ;
  wire \velocity_reg[39]_i_10_n_3 ;
  wire \velocity_reg[39]_i_24_n_1 ;
  wire \velocity_reg[39]_i_24_n_2 ;
  wire \velocity_reg[39]_i_24_n_3 ;
  wire \velocity_reg[39]_i_25_n_3 ;
  wire \velocity_reg[39]_i_36_n_0 ;
  wire \velocity_reg[39]_i_36_n_1 ;
  wire \velocity_reg[39]_i_36_n_2 ;
  wire \velocity_reg[39]_i_36_n_3 ;
  wire \velocity_reg[39]_i_40_n_0 ;
  wire \velocity_reg[39]_i_40_n_1 ;
  wire \velocity_reg[39]_i_40_n_2 ;
  wire \velocity_reg[39]_i_40_n_3 ;
  wire \velocity_reg[39]_i_55_n_0 ;
  wire \velocity_reg[39]_i_55_n_1 ;
  wire \velocity_reg[39]_i_55_n_2 ;
  wire \velocity_reg[39]_i_55_n_3 ;
  wire \velocity_reg[39]_i_60_n_0 ;
  wire \velocity_reg[39]_i_60_n_1 ;
  wire \velocity_reg[39]_i_60_n_2 ;
  wire \velocity_reg[39]_i_60_n_3 ;
  wire \velocity_reg[39]_i_69_n_1 ;
  wire \velocity_reg[39]_i_69_n_2 ;
  wire \velocity_reg[39]_i_69_n_3 ;
  wire \velocity_reg[39]_i_82_n_0 ;
  wire \velocity_reg[39]_i_82_n_1 ;
  wire \velocity_reg[39]_i_82_n_2 ;
  wire \velocity_reg[39]_i_82_n_3 ;
  wire \velocity_reg[39]_i_83_n_0 ;
  wire \velocity_reg[39]_i_83_n_1 ;
  wire \velocity_reg[39]_i_83_n_2 ;
  wire \velocity_reg[39]_i_83_n_3 ;
  wire \velocity_reg[39]_i_88_n_0 ;
  wire \velocity_reg[39]_i_88_n_1 ;
  wire \velocity_reg[39]_i_88_n_2 ;
  wire \velocity_reg[39]_i_88_n_3 ;
  wire \velocity_reg[39]_i_89_n_0 ;
  wire \velocity_reg[39]_i_89_n_1 ;
  wire \velocity_reg[39]_i_89_n_2 ;
  wire \velocity_reg[39]_i_89_n_3 ;
  wire \velocity_reg[39]_i_8_n_1 ;
  wire \velocity_reg[39]_i_8_n_2 ;
  wire \velocity_reg[39]_i_8_n_3 ;
  wire \velocity_reg[3]_i_12_n_0 ;
  wire \velocity_reg[3]_i_12_n_1 ;
  wire \velocity_reg[3]_i_12_n_2 ;
  wire \velocity_reg[3]_i_12_n_3 ;
  wire \velocity_reg[3]_i_13_n_0 ;
  wire \velocity_reg[3]_i_13_n_1 ;
  wire \velocity_reg[3]_i_13_n_2 ;
  wire \velocity_reg[3]_i_13_n_3 ;
  wire \velocity_reg[3]_i_14_n_0 ;
  wire \velocity_reg[3]_i_14_n_1 ;
  wire \velocity_reg[3]_i_14_n_2 ;
  wire \velocity_reg[3]_i_14_n_3 ;
  wire \velocity_reg[3]_i_19_n_0 ;
  wire \velocity_reg[3]_i_19_n_1 ;
  wire \velocity_reg[3]_i_19_n_2 ;
  wire \velocity_reg[3]_i_19_n_3 ;
  wire \velocity_reg[3]_i_24_n_0 ;
  wire \velocity_reg[3]_i_24_n_1 ;
  wire \velocity_reg[3]_i_24_n_2 ;
  wire \velocity_reg[3]_i_24_n_3 ;
  wire \velocity_reg[3]_i_29_n_0 ;
  wire \velocity_reg[3]_i_29_n_1 ;
  wire \velocity_reg[3]_i_29_n_2 ;
  wire \velocity_reg[3]_i_29_n_3 ;
  wire \velocity_reg[3]_i_2_n_0 ;
  wire \velocity_reg[3]_i_2_n_1 ;
  wire \velocity_reg[3]_i_2_n_2 ;
  wire \velocity_reg[3]_i_2_n_3 ;
  wire \velocity_reg[3]_i_3_n_0 ;
  wire \velocity_reg[3]_i_3_n_1 ;
  wire \velocity_reg[3]_i_3_n_2 ;
  wire \velocity_reg[3]_i_3_n_3 ;
  wire \velocity_reg[7]_i_12_n_0 ;
  wire \velocity_reg[7]_i_12_n_1 ;
  wire \velocity_reg[7]_i_12_n_2 ;
  wire \velocity_reg[7]_i_12_n_3 ;
  wire \velocity_reg[7]_i_2_n_0 ;
  wire \velocity_reg[7]_i_2_n_1 ;
  wire \velocity_reg[7]_i_2_n_2 ;
  wire \velocity_reg[7]_i_2_n_3 ;
  wire \velocity_reg[7]_i_3_n_0 ;
  wire \velocity_reg[7]_i_3_n_1 ;
  wire \velocity_reg[7]_i_3_n_2 ;
  wire \velocity_reg[7]_i_3_n_3 ;
  wire \velocity_reg_n_0_[0] ;
  wire \velocity_reg_n_0_[10] ;
  wire \velocity_reg_n_0_[11] ;
  wire \velocity_reg_n_0_[12] ;
  wire \velocity_reg_n_0_[13] ;
  wire \velocity_reg_n_0_[14] ;
  wire \velocity_reg_n_0_[15] ;
  wire \velocity_reg_n_0_[16] ;
  wire \velocity_reg_n_0_[17] ;
  wire \velocity_reg_n_0_[18] ;
  wire \velocity_reg_n_0_[19] ;
  wire \velocity_reg_n_0_[1] ;
  wire \velocity_reg_n_0_[20] ;
  wire \velocity_reg_n_0_[21] ;
  wire \velocity_reg_n_0_[22] ;
  wire \velocity_reg_n_0_[23] ;
  wire \velocity_reg_n_0_[24] ;
  wire \velocity_reg_n_0_[25] ;
  wire \velocity_reg_n_0_[26] ;
  wire \velocity_reg_n_0_[27] ;
  wire \velocity_reg_n_0_[28] ;
  wire \velocity_reg_n_0_[29] ;
  wire \velocity_reg_n_0_[2] ;
  wire \velocity_reg_n_0_[30] ;
  wire \velocity_reg_n_0_[31] ;
  wire \velocity_reg_n_0_[32] ;
  wire \velocity_reg_n_0_[33] ;
  wire \velocity_reg_n_0_[34] ;
  wire \velocity_reg_n_0_[35] ;
  wire \velocity_reg_n_0_[36] ;
  wire \velocity_reg_n_0_[37] ;
  wire \velocity_reg_n_0_[38] ;
  wire \velocity_reg_n_0_[39] ;
  wire \velocity_reg_n_0_[3] ;
  wire \velocity_reg_n_0_[4] ;
  wire \velocity_reg_n_0_[5] ;
  wire \velocity_reg_n_0_[6] ;
  wire \velocity_reg_n_0_[7] ;
  wire \velocity_reg_n_0_[8] ;
  wire \velocity_reg_n_0_[9] ;
  wire [19:0]velocity_remain;
  wire \velocity_remain[11]_i_3_n_0 ;
  wire \velocity_remain[11]_i_4_n_0 ;
  wire \velocity_remain[11]_i_5_n_0 ;
  wire \velocity_remain[11]_i_6_n_0 ;
  wire \velocity_remain[15]_i_3_n_0 ;
  wire \velocity_remain[15]_i_4_n_0 ;
  wire \velocity_remain[15]_i_5_n_0 ;
  wire \velocity_remain[15]_i_6_n_0 ;
  wire \velocity_remain[19]_i_10_n_0 ;
  wire \velocity_remain[19]_i_11_n_0 ;
  wire \velocity_remain[19]_i_12_n_0 ;
  wire \velocity_remain[19]_i_13_n_0 ;
  wire \velocity_remain[19]_i_14_n_0 ;
  wire \velocity_remain[19]_i_1_n_0 ;
  wire \velocity_remain[19]_i_5_n_0 ;
  wire \velocity_remain[19]_i_6_n_0 ;
  wire \velocity_remain[19]_i_7_n_0 ;
  wire \velocity_remain[19]_i_8_n_0 ;
  wire \velocity_remain[19]_i_9_n_0 ;
  wire \velocity_remain[3]_i_3_n_0 ;
  wire \velocity_remain[3]_i_4_n_0 ;
  wire \velocity_remain[3]_i_5_n_0 ;
  wire \velocity_remain[3]_i_6_n_0 ;
  wire \velocity_remain[7]_i_3_n_0 ;
  wire \velocity_remain[7]_i_4_n_0 ;
  wire \velocity_remain[7]_i_5_n_0 ;
  wire \velocity_remain[7]_i_6_n_0 ;
  wire \velocity_remain_reg[11]_i_2_n_0 ;
  wire \velocity_remain_reg[11]_i_2_n_1 ;
  wire \velocity_remain_reg[11]_i_2_n_2 ;
  wire \velocity_remain_reg[11]_i_2_n_3 ;
  wire \velocity_remain_reg[11]_i_2_n_4 ;
  wire \velocity_remain_reg[11]_i_2_n_5 ;
  wire \velocity_remain_reg[11]_i_2_n_6 ;
  wire \velocity_remain_reg[11]_i_2_n_7 ;
  wire \velocity_remain_reg[15]_i_2_n_0 ;
  wire \velocity_remain_reg[15]_i_2_n_1 ;
  wire \velocity_remain_reg[15]_i_2_n_2 ;
  wire \velocity_remain_reg[15]_i_2_n_3 ;
  wire \velocity_remain_reg[15]_i_2_n_4 ;
  wire \velocity_remain_reg[15]_i_2_n_5 ;
  wire \velocity_remain_reg[15]_i_2_n_6 ;
  wire \velocity_remain_reg[15]_i_2_n_7 ;
  wire \velocity_remain_reg[19]_i_4_n_1 ;
  wire \velocity_remain_reg[19]_i_4_n_2 ;
  wire \velocity_remain_reg[19]_i_4_n_3 ;
  wire \velocity_remain_reg[19]_i_4_n_4 ;
  wire \velocity_remain_reg[19]_i_4_n_5 ;
  wire \velocity_remain_reg[19]_i_4_n_6 ;
  wire \velocity_remain_reg[19]_i_4_n_7 ;
  wire \velocity_remain_reg[3]_i_2_n_0 ;
  wire \velocity_remain_reg[3]_i_2_n_1 ;
  wire \velocity_remain_reg[3]_i_2_n_2 ;
  wire \velocity_remain_reg[3]_i_2_n_3 ;
  wire \velocity_remain_reg[3]_i_2_n_4 ;
  wire \velocity_remain_reg[3]_i_2_n_5 ;
  wire \velocity_remain_reg[3]_i_2_n_6 ;
  wire \velocity_remain_reg[3]_i_2_n_7 ;
  wire \velocity_remain_reg[7]_i_2_n_0 ;
  wire \velocity_remain_reg[7]_i_2_n_1 ;
  wire \velocity_remain_reg[7]_i_2_n_2 ;
  wire \velocity_remain_reg[7]_i_2_n_3 ;
  wire \velocity_remain_reg[7]_i_2_n_4 ;
  wire \velocity_remain_reg[7]_i_2_n_5 ;
  wire \velocity_remain_reg[7]_i_2_n_6 ;
  wire \velocity_remain_reg[7]_i_2_n_7 ;
  wire \velocity_remain_reg_n_0_[0] ;
  wire \velocity_remain_reg_n_0_[10] ;
  wire \velocity_remain_reg_n_0_[11] ;
  wire \velocity_remain_reg_n_0_[12] ;
  wire \velocity_remain_reg_n_0_[13] ;
  wire \velocity_remain_reg_n_0_[14] ;
  wire \velocity_remain_reg_n_0_[15] ;
  wire \velocity_remain_reg_n_0_[16] ;
  wire \velocity_remain_reg_n_0_[17] ;
  wire \velocity_remain_reg_n_0_[18] ;
  wire \velocity_remain_reg_n_0_[19] ;
  wire \velocity_remain_reg_n_0_[1] ;
  wire \velocity_remain_reg_n_0_[2] ;
  wire \velocity_remain_reg_n_0_[3] ;
  wire \velocity_remain_reg_n_0_[4] ;
  wire \velocity_remain_reg_n_0_[5] ;
  wire \velocity_remain_reg_n_0_[6] ;
  wire \velocity_remain_reg_n_0_[7] ;
  wire \velocity_remain_reg_n_0_[8] ;
  wire \velocity_remain_reg_n_0_[9] ;
  wire [3:2]\NLW_FSM_sequential_state_reg[2]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_13_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_sequential_state_reg[2]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_29_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_sequential_state_reg[2]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_39_O_UNCONNECTED ;
  wire [2:2]\NLW_FSM_sequential_state_reg[2]_i_48_CO_UNCONNECTED ;
  wire [3:3]\NLW_FSM_sequential_state_reg[2]_i_48_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_41_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_50_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_59_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_68_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_77_O_UNCONNECTED ;
  wire [3:0]\NLW_acceleration_reg[35]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_acceleration_reg[43]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_acceleration_reg[43]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_acceleration_remain_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_output_counter_reg[19]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_output_counter_reg[19]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_output_counter_reg[19]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_output_counter_reg[19]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[0]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[0]_i_28_O_UNCONNECTED ;
  wire [3:1]\NLW_pos_reg[20]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_pos_reg[20]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_pos_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_pulse_sent_done_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_sent_done_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pulse_sent_done_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pulse_sent_done_reg_i_9_O_UNCONNECTED;
  wire [3:3]\NLW_velocity_reg[23]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_velocity_reg[39]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_velocity_reg[39]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_24_O_UNCONNECTED ;
  wire [3:2]\NLW_velocity_reg[39]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_55_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[39]_i_60_O_UNCONNECTED ;
  wire [3:3]\NLW_velocity_reg[39]_i_69_CO_UNCONNECTED ;
  wire [3:3]\NLW_velocity_reg[39]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[3]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[3]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[3]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[3]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity_reg[3]_i_29_O_UNCONNECTED ;
  wire [3:3]\NLW_velocity_remain_reg[19]_i_4_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[0] ),
        .O(AIM_SPEED_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[10]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[10] ),
        .O(AIM_SPEED_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[11]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[11] ),
        .O(AIM_SPEED_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[12]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[12] ),
        .O(AIM_SPEED_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[13]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[13] ),
        .O(AIM_SPEED_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[14]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[14] ),
        .O(AIM_SPEED_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[15] ),
        .O(AIM_SPEED_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[16]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[16] ),
        .O(AIM_SPEED_reg[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[17]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[17] ),
        .O(AIM_SPEED_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[18]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[18] ),
        .O(AIM_SPEED_reg[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[19]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[19] ),
        .O(AIM_SPEED_reg[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[1] ),
        .O(AIM_SPEED_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[20]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[20] ),
        .O(AIM_SPEED_reg[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[21]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[21] ),
        .O(AIM_SPEED_reg[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[22]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[22] ),
        .O(AIM_SPEED_reg[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[23]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[23] ),
        .O(AIM_SPEED_reg[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[24]_i_1 
       (.I0(AIM_SPEED[0]),
        .I1(\velocity_reg_n_0_[24] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[25]_i_1 
       (.I0(AIM_SPEED[1]),
        .I1(\velocity_reg_n_0_[25] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[26]_i_1 
       (.I0(AIM_SPEED[2]),
        .I1(\velocity_reg_n_0_[26] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[27]_i_1 
       (.I0(AIM_SPEED[3]),
        .I1(\velocity_reg_n_0_[27] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[28]_i_1 
       (.I0(AIM_SPEED[4]),
        .I1(\velocity_reg_n_0_[28] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[29]_i_1 
       (.I0(AIM_SPEED[5]),
        .I1(\velocity_reg_n_0_[29] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[2] ),
        .O(AIM_SPEED_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[30]_i_1 
       (.I0(AIM_SPEED[6]),
        .I1(\velocity_reg_n_0_[30] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[31]_i_1 
       (.I0(AIM_SPEED[7]),
        .I1(\velocity_reg_n_0_[31] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[31]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[32]_i_1 
       (.I0(AIM_SPEED[8]),
        .I1(\velocity_reg_n_0_[32] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[32]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[33]_i_1 
       (.I0(AIM_SPEED[9]),
        .I1(\velocity_reg_n_0_[33] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[33]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[34]_i_1 
       (.I0(AIM_SPEED[10]),
        .I1(\velocity_reg_n_0_[34] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[34]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[35]_i_1 
       (.I0(AIM_SPEED[11]),
        .I1(\velocity_reg_n_0_[35] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[35]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[36]_i_1 
       (.I0(AIM_SPEED[12]),
        .I1(\velocity_reg_n_0_[36] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[36]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[37]_i_1 
       (.I0(AIM_SPEED[13]),
        .I1(\velocity_reg_n_0_[37] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[37]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[38]_i_1 
       (.I0(AIM_SPEED[14]),
        .I1(\velocity_reg_n_0_[38] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[38]));
  LUT5 #(
    .INIT(32'h0000CCCA)) 
    \AIM_SPEED_reg[39]_i_1 
       (.I0(start_s),
        .I1(force_stop),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I4(state[2]),
        .O(\AIM_SPEED_reg[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \AIM_SPEED_reg[39]_i_2 
       (.I0(AIM_SPEED[15]),
        .I1(\velocity_reg_n_0_[39] ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(AIM_SPEED_reg[39]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[3]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[3] ),
        .O(AIM_SPEED_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[4]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[4] ),
        .O(AIM_SPEED_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[5]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[5] ),
        .O(AIM_SPEED_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[6]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[6] ),
        .O(AIM_SPEED_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[7]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[7] ),
        .O(AIM_SPEED_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[8]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[8] ),
        .O(AIM_SPEED_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \AIM_SPEED_reg[9]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\velocity_reg_n_0_[9] ),
        .O(AIM_SPEED_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[0] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(AIM_SPEED_reg[0]),
        .Q(\AIM_SPEED_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[10] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[10]),
        .Q(\AIM_SPEED_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[11] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[11]),
        .Q(\AIM_SPEED_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[12] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[12]),
        .Q(\AIM_SPEED_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[13] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[13]),
        .Q(\AIM_SPEED_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[14] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[14]),
        .Q(\AIM_SPEED_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[15] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[15]),
        .Q(\AIM_SPEED_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[16] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[16]),
        .Q(\AIM_SPEED_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[17] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[17]),
        .Q(\AIM_SPEED_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[18] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[18]),
        .Q(\AIM_SPEED_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[19] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[19]),
        .Q(\AIM_SPEED_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[1] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(AIM_SPEED_reg[1]),
        .Q(\AIM_SPEED_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[20] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[20]),
        .Q(\AIM_SPEED_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[21] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[21]),
        .Q(\AIM_SPEED_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[22] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[22]),
        .Q(\AIM_SPEED_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[23] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[23]),
        .Q(\AIM_SPEED_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[24] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[24]),
        .Q(\AIM_SPEED_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[25] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[25]),
        .Q(\AIM_SPEED_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[26] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[26]),
        .Q(\AIM_SPEED_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[27] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[27]),
        .Q(\AIM_SPEED_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[28] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[28]),
        .Q(\AIM_SPEED_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[29] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[29]),
        .Q(\AIM_SPEED_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[2] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(AIM_SPEED_reg[2]),
        .Q(\AIM_SPEED_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[30] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[30]),
        .Q(\AIM_SPEED_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[31] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[31]),
        .Q(\AIM_SPEED_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[32] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[32]),
        .Q(\AIM_SPEED_reg_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[33] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[33]),
        .Q(\AIM_SPEED_reg_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[34] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[34]),
        .Q(\AIM_SPEED_reg_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[35] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[35]),
        .Q(\AIM_SPEED_reg_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[36] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[36]),
        .Q(\AIM_SPEED_reg_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[37] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[37]),
        .Q(\AIM_SPEED_reg_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[38] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[38]),
        .Q(\AIM_SPEED_reg_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[39] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(AIM_SPEED_reg[39]),
        .Q(\AIM_SPEED_reg_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[3] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[3]),
        .Q(\AIM_SPEED_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[4] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[4]),
        .Q(\AIM_SPEED_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[5] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[5]),
        .Q(\AIM_SPEED_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[6] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[6]),
        .Q(\AIM_SPEED_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[7] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[7]),
        .Q(\AIM_SPEED_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[8] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[8]),
        .Q(\AIM_SPEED_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \AIM_SPEED_reg_reg[9] 
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(AIM_SPEED_reg[9]),
        .Q(\AIM_SPEED_reg_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FF0F00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(force_stop),
        .I1(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0F00)) 
    \FSM_sequential_state[0]_rep_i_1 
       (.I0(force_stop),
        .I1(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_rep_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .O(\FSM_sequential_state[1]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_rep_i_1__0 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .O(\FSM_sequential_state[1]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .I1(state[0]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\velocity[39]_i_35_n_0 ),
        .I1(\velocity_reg_n_0_[36] ),
        .I2(\velocity_reg_n_0_[37] ),
        .I3(\velocity_reg_n_0_[39] ),
        .I4(\velocity_reg_n_0_[38] ),
        .I5(\velocity_remain[19]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_100 
       (.I0(TARGET_POS[3]),
        .I1(\acc_lenth_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_101 
       (.I0(TARGET_POS[2]),
        .I1(\acc_lenth_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_102 
       (.I0(TARGET_POS[1]),
        .I1(\acc_lenth_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_103 
       (.I0(TARGET_POS[0]),
        .I1(\acc_lenth_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_103_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_104 
       (.I0(TARGET_POS[8]),
        .O(\FSM_sequential_state[2]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_105 
       (.I0(TARGET_POS[7]),
        .O(\FSM_sequential_state[2]_i_105_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_106 
       (.I0(TARGET_POS[6]),
        .O(\FSM_sequential_state[2]_i_106_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_107 
       (.I0(TARGET_POS[5]),
        .O(\FSM_sequential_state[2]_i_107_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_108 
       (.I0(TARGET_POS[4]),
        .O(\FSM_sequential_state[2]_i_108_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_109 
       (.I0(TARGET_POS[3]),
        .O(\FSM_sequential_state[2]_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\velocity_reg_n_0_[23] ),
        .I1(\velocity_reg_n_0_[20] ),
        .I2(\velocity[39]_i_34_n_0 ),
        .I3(\velocity_reg_n_0_[24] ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_110 
       (.I0(TARGET_POS[2]),
        .O(\FSM_sequential_state[2]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\velocity_reg_n_0_[25] ),
        .I1(\velocity_reg_n_0_[22] ),
        .I2(\velocity_reg_n_0_[16] ),
        .I3(\velocity_reg_n_0_[17] ),
        .I4(\velocity_reg_n_0_[18] ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(forceStopflg_reg_n_0),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[2]_i_16 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(\FSM_sequential_state[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[2]_i_18 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(\velocity_reg_n_0_[9] ),
        .I2(\velocity_reg_n_0_[7] ),
        .I3(\velocity_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEAAAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(acceleration0),
        .I2(state10_in),
        .I3(forceStopflg_reg_n_0),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_20 
       (.I0(state10_out[19]),
        .I1(state10_out[18]),
        .I2(output_counter[18]),
        .I3(output_counter[19]),
        .O(\FSM_sequential_state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_21 
       (.I0(state10_out[17]),
        .I1(state10_out[16]),
        .I2(output_counter[16]),
        .I3(output_counter[17]),
        .O(\FSM_sequential_state[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_22 
       (.I0(state10_out[19]),
        .I1(output_counter[19]),
        .I2(state10_out[18]),
        .I3(output_counter[18]),
        .O(\FSM_sequential_state[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_23 
       (.I0(state10_out[17]),
        .I1(output_counter[17]),
        .I2(state10_out[16]),
        .I3(output_counter[16]),
        .O(\FSM_sequential_state[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hF220)) 
    \FSM_sequential_state[2]_i_25 
       (.I0(output_counter[18]),
        .I1(state1[18]),
        .I2(output_counter[19]),
        .I3(\FSM_sequential_state_reg[2]_i_48_n_0 ),
        .O(\FSM_sequential_state[2]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_26 
       (.I0(state1[17]),
        .I1(state1[16]),
        .I2(output_counter[16]),
        .I3(output_counter[17]),
        .O(\FSM_sequential_state[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \FSM_sequential_state[2]_i_27 
       (.I0(\FSM_sequential_state_reg[2]_i_48_n_0 ),
        .I1(output_counter[19]),
        .I2(state1[18]),
        .I3(output_counter[18]),
        .O(\FSM_sequential_state[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_28 
       (.I0(state1[17]),
        .I1(output_counter[17]),
        .I2(state1[16]),
        .I3(output_counter[16]),
        .O(\FSM_sequential_state[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4440)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(forceStopflg_reg_n_0),
        .I2(acceleration1),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_30 
       (.I0(state10_out[15]),
        .I1(state10_out[14]),
        .I2(output_counter[14]),
        .I3(output_counter[15]),
        .O(\FSM_sequential_state[2]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_31 
       (.I0(state10_out[13]),
        .I1(state10_out[12]),
        .I2(output_counter[12]),
        .I3(output_counter[13]),
        .O(\FSM_sequential_state[2]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_32 
       (.I0(state10_out[11]),
        .I1(state10_out[10]),
        .I2(output_counter[10]),
        .I3(output_counter[11]),
        .O(\FSM_sequential_state[2]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_33 
       (.I0(state10_out[9]),
        .I1(state10_out[8]),
        .I2(output_counter[8]),
        .I3(output_counter[9]),
        .O(\FSM_sequential_state[2]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_34 
       (.I0(state10_out[15]),
        .I1(output_counter[15]),
        .I2(state10_out[14]),
        .I3(output_counter[14]),
        .O(\FSM_sequential_state[2]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_35 
       (.I0(state10_out[13]),
        .I1(output_counter[13]),
        .I2(state10_out[12]),
        .I3(output_counter[12]),
        .O(\FSM_sequential_state[2]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_36 
       (.I0(state10_out[11]),
        .I1(output_counter[11]),
        .I2(state10_out[10]),
        .I3(output_counter[10]),
        .O(\FSM_sequential_state[2]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_37 
       (.I0(state10_out[9]),
        .I1(output_counter[9]),
        .I2(state10_out[8]),
        .I3(output_counter[8]),
        .O(\FSM_sequential_state[2]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000A00B0)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(force_stop),
        .I1(\velocity[39]_i_15_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_40 
       (.I0(state1[15]),
        .I1(state1[14]),
        .I2(output_counter[14]),
        .I3(output_counter[15]),
        .O(\FSM_sequential_state[2]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_41 
       (.I0(state1[13]),
        .I1(state1[12]),
        .I2(output_counter[12]),
        .I3(output_counter[13]),
        .O(\FSM_sequential_state[2]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_42 
       (.I0(state1[11]),
        .I1(state1[10]),
        .I2(output_counter[10]),
        .I3(output_counter[11]),
        .O(\FSM_sequential_state[2]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_43 
       (.I0(state1[9]),
        .I1(state1[8]),
        .I2(output_counter[8]),
        .I3(output_counter[9]),
        .O(\FSM_sequential_state[2]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_44 
       (.I0(state1[15]),
        .I1(output_counter[15]),
        .I2(state1[14]),
        .I3(output_counter[14]),
        .O(\FSM_sequential_state[2]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_45 
       (.I0(state1[13]),
        .I1(output_counter[13]),
        .I2(state1[12]),
        .I3(output_counter[12]),
        .O(\FSM_sequential_state[2]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_46 
       (.I0(state1[11]),
        .I1(output_counter[11]),
        .I2(state1[10]),
        .I3(output_counter[10]),
        .O(\FSM_sequential_state[2]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_47 
       (.I0(state1[9]),
        .I1(output_counter[9]),
        .I2(state1[8]),
        .I3(output_counter[8]),
        .O(\FSM_sequential_state[2]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_49 
       (.I0(state10_out[7]),
        .I1(state10_out[6]),
        .I2(output_counter[6]),
        .I3(output_counter[7]),
        .O(\FSM_sequential_state[2]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_50 
       (.I0(state10_out[5]),
        .I1(state10_out[4]),
        .I2(output_counter[4]),
        .I3(output_counter[5]),
        .O(\FSM_sequential_state[2]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_51 
       (.I0(state10_out[3]),
        .I1(state10_out[2]),
        .I2(output_counter[2]),
        .I3(output_counter[3]),
        .O(\FSM_sequential_state[2]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_52 
       (.I0(state10_out[1]),
        .I1(state10_out[0]),
        .I2(output_counter[0]),
        .I3(output_counter[1]),
        .O(\FSM_sequential_state[2]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_53 
       (.I0(state10_out[7]),
        .I1(output_counter[7]),
        .I2(state10_out[6]),
        .I3(output_counter[6]),
        .O(\FSM_sequential_state[2]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_54 
       (.I0(state10_out[5]),
        .I1(output_counter[5]),
        .I2(state10_out[4]),
        .I3(output_counter[4]),
        .O(\FSM_sequential_state[2]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_55 
       (.I0(state10_out[3]),
        .I1(output_counter[3]),
        .I2(state10_out[2]),
        .I3(output_counter[2]),
        .O(\FSM_sequential_state[2]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_56 
       (.I0(state10_out[1]),
        .I1(output_counter[1]),
        .I2(state10_out[0]),
        .I3(output_counter[0]),
        .O(\FSM_sequential_state[2]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_59 
       (.I0(TARGET_POS[19]),
        .I1(\acc_lenth_reg_n_0_[19] ),
        .O(\FSM_sequential_state[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_state[2]_i_10_n_0 ),
        .I2(\FSM_sequential_state[2]_i_11_n_0 ),
        .I3(\FSM_sequential_state[2]_i_12_n_0 ),
        .I4(\velocity_reg_n_0_[21] ),
        .I5(\velocity_reg_n_0_[19] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_60 
       (.I0(TARGET_POS[18]),
        .I1(\acc_lenth_reg_n_0_[18] ),
        .O(\FSM_sequential_state[2]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_61 
       (.I0(TARGET_POS[17]),
        .I1(\acc_lenth_reg_n_0_[17] ),
        .O(\FSM_sequential_state[2]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_62 
       (.I0(TARGET_POS[16]),
        .I1(\acc_lenth_reg_n_0_[16] ),
        .O(\FSM_sequential_state[2]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_63 
       (.I0(state1[7]),
        .I1(state1[6]),
        .I2(output_counter[6]),
        .I3(output_counter[7]),
        .O(\FSM_sequential_state[2]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_64 
       (.I0(state1[5]),
        .I1(state1[4]),
        .I2(output_counter[4]),
        .I3(output_counter[5]),
        .O(\FSM_sequential_state[2]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_65 
       (.I0(state1[3]),
        .I1(state1[2]),
        .I2(output_counter[2]),
        .I3(output_counter[3]),
        .O(\FSM_sequential_state[2]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \FSM_sequential_state[2]_i_66 
       (.I0(state1[1]),
        .I1(state1[0]),
        .I2(output_counter[0]),
        .I3(output_counter[1]),
        .O(\FSM_sequential_state[2]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_67 
       (.I0(state1[7]),
        .I1(output_counter[7]),
        .I2(state1[6]),
        .I3(output_counter[6]),
        .O(\FSM_sequential_state[2]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_68 
       (.I0(state1[5]),
        .I1(output_counter[5]),
        .I2(state1[4]),
        .I3(output_counter[4]),
        .O(\FSM_sequential_state[2]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_69 
       (.I0(state1[3]),
        .I1(output_counter[3]),
        .I2(state1[2]),
        .I3(output_counter[2]),
        .O(\FSM_sequential_state[2]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\FSM_sequential_state_reg[2]_i_13_n_2 ),
        .I1(\velocity_reg[39]_i_24_n_1 ),
        .I2(acceleration2),
        .I3(\FSM_sequential_state[2]_i_14_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I5(start_s),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_70 
       (.I0(state1[1]),
        .I1(output_counter[1]),
        .I2(state1[0]),
        .I3(output_counter[0]),
        .O(\FSM_sequential_state[2]_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_73 
       (.I0(TARGET_POS[19]),
        .O(\FSM_sequential_state[2]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_74 
       (.I0(TARGET_POS[18]),
        .O(\FSM_sequential_state[2]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_75 
       (.I0(TARGET_POS[17]),
        .O(\FSM_sequential_state[2]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_78 
       (.I0(TARGET_POS[15]),
        .I1(\acc_lenth_reg_n_0_[15] ),
        .O(\FSM_sequential_state[2]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_79 
       (.I0(TARGET_POS[14]),
        .I1(\acc_lenth_reg_n_0_[14] ),
        .O(\FSM_sequential_state[2]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(state10_in),
        .I2(\FSM_sequential_state[2]_i_15_n_0 ),
        .I3(\FSM_sequential_state[2]_i_16_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_17_n_2 ),
        .I5(\velocity_reg[39]_i_24_n_1 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_80 
       (.I0(TARGET_POS[13]),
        .I1(\acc_lenth_reg_n_0_[13] ),
        .O(\FSM_sequential_state[2]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_81 
       (.I0(TARGET_POS[12]),
        .I1(\acc_lenth_reg_n_0_[12] ),
        .O(\FSM_sequential_state[2]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_82 
       (.I0(TARGET_POS[11]),
        .I1(\acc_lenth_reg_n_0_[11] ),
        .O(\FSM_sequential_state[2]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_83 
       (.I0(TARGET_POS[10]),
        .I1(\acc_lenth_reg_n_0_[10] ),
        .O(\FSM_sequential_state[2]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_84 
       (.I0(TARGET_POS[9]),
        .I1(\acc_lenth_reg_n_0_[9] ),
        .O(\FSM_sequential_state[2]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_85 
       (.I0(TARGET_POS[8]),
        .I1(\acc_lenth_reg_n_0_[8] ),
        .O(\FSM_sequential_state[2]_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_88 
       (.I0(TARGET_POS[16]),
        .O(\FSM_sequential_state[2]_i_88_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_89 
       (.I0(TARGET_POS[15]),
        .O(\FSM_sequential_state[2]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\FSM_sequential_state[2]_i_18_n_0 ),
        .I1(\velocity_reg_n_0_[15] ),
        .I2(\velocity_reg_n_0_[14] ),
        .I3(\velocity_reg_n_0_[12] ),
        .I4(\velocity_reg_n_0_[11] ),
        .I5(\velocity_remain[19]_i_13_n_0 ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_90 
       (.I0(TARGET_POS[14]),
        .O(\FSM_sequential_state[2]_i_90_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_91 
       (.I0(TARGET_POS[13]),
        .O(\FSM_sequential_state[2]_i_91_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_92 
       (.I0(TARGET_POS[12]),
        .O(\FSM_sequential_state[2]_i_92_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_93 
       (.I0(TARGET_POS[11]),
        .O(\FSM_sequential_state[2]_i_93_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_94 
       (.I0(TARGET_POS[10]),
        .O(\FSM_sequential_state[2]_i_94_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_95 
       (.I0(TARGET_POS[9]),
        .O(\FSM_sequential_state[2]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_96 
       (.I0(TARGET_POS[7]),
        .I1(\acc_lenth_reg_n_0_[7] ),
        .O(\FSM_sequential_state[2]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_97 
       (.I0(TARGET_POS[6]),
        .I1(\acc_lenth_reg_n_0_[6] ),
        .O(\FSM_sequential_state[2]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_98 
       (.I0(TARGET_POS[5]),
        .I1(\acc_lenth_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_99 
       (.I0(TARGET_POS[4]),
        .I1(\acc_lenth_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_99_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_state_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_state_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0]_rep 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[0]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1]_rep 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1]_rep__0 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_rep_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_rep__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:000,STATE_ACCEL:001,STATE_STOP:100,STATE_DECEL:011,STATE_CRUISE:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_13 
       (.CI(\FSM_sequential_state_reg[2]_i_19_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_13_CO_UNCONNECTED [3:2],\FSM_sequential_state_reg[2]_i_13_n_2 ,\FSM_sequential_state_reg[2]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_sequential_state[2]_i_20_n_0 ,\FSM_sequential_state[2]_i_21_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\FSM_sequential_state[2]_i_22_n_0 ,\FSM_sequential_state[2]_i_23_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_17 
       (.CI(\FSM_sequential_state_reg[2]_i_24_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_17_CO_UNCONNECTED [3:2],\FSM_sequential_state_reg[2]_i_17_n_2 ,\FSM_sequential_state_reg[2]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_sequential_state[2]_i_25_n_0 ,\FSM_sequential_state[2]_i_26_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_17_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\FSM_sequential_state[2]_i_27_n_0 ,\FSM_sequential_state[2]_i_28_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_19 
       (.CI(\FSM_sequential_state_reg[2]_i_29_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_19_n_0 ,\FSM_sequential_state_reg[2]_i_19_n_1 ,\FSM_sequential_state_reg[2]_i_19_n_2 ,\FSM_sequential_state_reg[2]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[2]_i_30_n_0 ,\FSM_sequential_state[2]_i_31_n_0 ,\FSM_sequential_state[2]_i_32_n_0 ,\FSM_sequential_state[2]_i_33_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_19_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_34_n_0 ,\FSM_sequential_state[2]_i_35_n_0 ,\FSM_sequential_state[2]_i_36_n_0 ,\FSM_sequential_state[2]_i_37_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_24 
       (.CI(\FSM_sequential_state_reg[2]_i_39_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_24_n_0 ,\FSM_sequential_state_reg[2]_i_24_n_1 ,\FSM_sequential_state_reg[2]_i_24_n_2 ,\FSM_sequential_state_reg[2]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[2]_i_40_n_0 ,\FSM_sequential_state[2]_i_41_n_0 ,\FSM_sequential_state[2]_i_42_n_0 ,\FSM_sequential_state[2]_i_43_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_24_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_44_n_0 ,\FSM_sequential_state[2]_i_45_n_0 ,\FSM_sequential_state[2]_i_46_n_0 ,\FSM_sequential_state[2]_i_47_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_29 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_29_n_0 ,\FSM_sequential_state_reg[2]_i_29_n_1 ,\FSM_sequential_state_reg[2]_i_29_n_2 ,\FSM_sequential_state_reg[2]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[2]_i_49_n_0 ,\FSM_sequential_state[2]_i_50_n_0 ,\FSM_sequential_state[2]_i_51_n_0 ,\FSM_sequential_state[2]_i_52_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_29_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_53_n_0 ,\FSM_sequential_state[2]_i_54_n_0 ,\FSM_sequential_state[2]_i_55_n_0 ,\FSM_sequential_state[2]_i_56_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_38 
       (.CI(\FSM_sequential_state_reg[2]_i_57_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_38_CO_UNCONNECTED [3],\FSM_sequential_state_reg[2]_i_38_n_1 ,\FSM_sequential_state_reg[2]_i_38_n_2 ,\FSM_sequential_state_reg[2]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,TARGET_POS[18:16]}),
        .O(state10_out[19:16]),
        .S({\FSM_sequential_state[2]_i_59_n_0 ,\FSM_sequential_state[2]_i_60_n_0 ,\FSM_sequential_state[2]_i_61_n_0 ,\FSM_sequential_state[2]_i_62_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_39 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_39_n_0 ,\FSM_sequential_state_reg[2]_i_39_n_1 ,\FSM_sequential_state_reg[2]_i_39_n_2 ,\FSM_sequential_state_reg[2]_i_39_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_sequential_state[2]_i_63_n_0 ,\FSM_sequential_state[2]_i_64_n_0 ,\FSM_sequential_state[2]_i_65_n_0 ,\FSM_sequential_state[2]_i_66_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[2]_i_39_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_67_n_0 ,\FSM_sequential_state[2]_i_68_n_0 ,\FSM_sequential_state[2]_i_69_n_0 ,\FSM_sequential_state[2]_i_70_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_48 
       (.CI(\FSM_sequential_state_reg[2]_i_71_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_48_n_0 ,\NLW_FSM_sequential_state_reg[2]_i_48_CO_UNCONNECTED [2],\FSM_sequential_state_reg[2]_i_48_n_2 ,\FSM_sequential_state_reg[2]_i_48_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,TARGET_POS[19:17]}),
        .O({\NLW_FSM_sequential_state_reg[2]_i_48_O_UNCONNECTED [3],state1[18:16]}),
        .S({1'b1,\FSM_sequential_state[2]_i_73_n_0 ,\FSM_sequential_state[2]_i_74_n_0 ,\FSM_sequential_state[2]_i_75_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_57 
       (.CI(\FSM_sequential_state_reg[2]_i_58_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_57_n_0 ,\FSM_sequential_state_reg[2]_i_57_n_1 ,\FSM_sequential_state_reg[2]_i_57_n_2 ,\FSM_sequential_state_reg[2]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[15:12]),
        .O(state10_out[15:12]),
        .S({\FSM_sequential_state[2]_i_78_n_0 ,\FSM_sequential_state[2]_i_79_n_0 ,\FSM_sequential_state[2]_i_80_n_0 ,\FSM_sequential_state[2]_i_81_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_58 
       (.CI(\FSM_sequential_state_reg[2]_i_76_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_58_n_0 ,\FSM_sequential_state_reg[2]_i_58_n_1 ,\FSM_sequential_state_reg[2]_i_58_n_2 ,\FSM_sequential_state_reg[2]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[11:8]),
        .O(state10_out[11:8]),
        .S({\FSM_sequential_state[2]_i_82_n_0 ,\FSM_sequential_state[2]_i_83_n_0 ,\FSM_sequential_state[2]_i_84_n_0 ,\FSM_sequential_state[2]_i_85_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_71 
       (.CI(\FSM_sequential_state_reg[2]_i_72_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_71_n_0 ,\FSM_sequential_state_reg[2]_i_71_n_1 ,\FSM_sequential_state_reg[2]_i_71_n_2 ,\FSM_sequential_state_reg[2]_i_71_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[16:13]),
        .O(state1[15:12]),
        .S({\FSM_sequential_state[2]_i_88_n_0 ,\FSM_sequential_state[2]_i_89_n_0 ,\FSM_sequential_state[2]_i_90_n_0 ,\FSM_sequential_state[2]_i_91_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_72 
       (.CI(\FSM_sequential_state_reg[2]_i_86_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_72_n_0 ,\FSM_sequential_state_reg[2]_i_72_n_1 ,\FSM_sequential_state_reg[2]_i_72_n_2 ,\FSM_sequential_state_reg[2]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[12:9]),
        .O(state1[11:8]),
        .S({\FSM_sequential_state[2]_i_92_n_0 ,\FSM_sequential_state[2]_i_93_n_0 ,\FSM_sequential_state[2]_i_94_n_0 ,\FSM_sequential_state[2]_i_95_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_76 
       (.CI(\FSM_sequential_state_reg[2]_i_77_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_76_n_0 ,\FSM_sequential_state_reg[2]_i_76_n_1 ,\FSM_sequential_state_reg[2]_i_76_n_2 ,\FSM_sequential_state_reg[2]_i_76_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[7:4]),
        .O(state10_out[7:4]),
        .S({\FSM_sequential_state[2]_i_96_n_0 ,\FSM_sequential_state[2]_i_97_n_0 ,\FSM_sequential_state[2]_i_98_n_0 ,\FSM_sequential_state[2]_i_99_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_77 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_77_n_0 ,\FSM_sequential_state_reg[2]_i_77_n_1 ,\FSM_sequential_state_reg[2]_i_77_n_2 ,\FSM_sequential_state_reg[2]_i_77_n_3 }),
        .CYINIT(1'b1),
        .DI(TARGET_POS[3:0]),
        .O(state10_out[3:0]),
        .S({\FSM_sequential_state[2]_i_100_n_0 ,\FSM_sequential_state[2]_i_101_n_0 ,\FSM_sequential_state[2]_i_102_n_0 ,\FSM_sequential_state[2]_i_103_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_86 
       (.CI(\FSM_sequential_state_reg[2]_i_87_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_86_n_0 ,\FSM_sequential_state_reg[2]_i_86_n_1 ,\FSM_sequential_state_reg[2]_i_86_n_2 ,\FSM_sequential_state_reg[2]_i_86_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[8:5]),
        .O(state1[7:4]),
        .S({\FSM_sequential_state[2]_i_104_n_0 ,\FSM_sequential_state[2]_i_105_n_0 ,\FSM_sequential_state[2]_i_106_n_0 ,\FSM_sequential_state[2]_i_107_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_sequential_state_reg[2]_i_87 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_87_n_0 ,\FSM_sequential_state_reg[2]_i_87_n_1 ,\FSM_sequential_state_reg[2]_i_87_n_2 ,\FSM_sequential_state_reg[2]_i_87_n_3 }),
        .CYINIT(1'b0),
        .DI({TARGET_POS[4:2],1'b0}),
        .O(state1[3:0]),
        .S({\FSM_sequential_state[2]_i_108_n_0 ,\FSM_sequential_state[2]_i_109_n_0 ,\FSM_sequential_state[2]_i_110_n_0 ,TARGET_POS[1]}));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[0]_i_1 
       (.I0(output_counter[0]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[10]_i_1 
       (.I0(output_counter[10]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[11]_i_1 
       (.I0(output_counter[11]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[11]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[12]_i_1 
       (.I0(output_counter[12]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[13]_i_1 
       (.I0(output_counter[13]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[14]_i_1 
       (.I0(output_counter[14]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[14]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[15]_i_1 
       (.I0(output_counter[15]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[16]_i_1 
       (.I0(output_counter[16]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[16]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[17]_i_1 
       (.I0(output_counter[17]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[17]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[18]_i_1 
       (.I0(output_counter[18]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[18]));
  LUT4 #(
    .INIT(16'h0302)) 
    \acc_lenth[19]_i_1 
       (.I0(start_s),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(\acc_lenth[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[19]_i_2 
       (.I0(output_counter[19]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[1]_i_1 
       (.I0(output_counter[1]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[2]_i_1 
       (.I0(output_counter[2]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[3]_i_1 
       (.I0(output_counter[3]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[4]_i_1 
       (.I0(output_counter[4]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[5]_i_1 
       (.I0(output_counter[5]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[6]_i_1 
       (.I0(output_counter[6]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[7]_i_1 
       (.I0(output_counter[7]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[8]_i_1 
       (.I0(output_counter[8]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_lenth[9]_i_1 
       (.I0(output_counter[9]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(acc_lenth[9]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[0] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[0]),
        .Q(\acc_lenth_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[10] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[10]),
        .Q(\acc_lenth_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[11] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[11]),
        .Q(\acc_lenth_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[12] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[12]),
        .Q(\acc_lenth_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[13] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[13]),
        .Q(\acc_lenth_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[14] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[14]),
        .Q(\acc_lenth_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[15] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[15]),
        .Q(\acc_lenth_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[16] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[16]),
        .Q(\acc_lenth_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[17] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[17]),
        .Q(\acc_lenth_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[18] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[18]),
        .Q(\acc_lenth_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[19] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[19]),
        .Q(\acc_lenth_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[1] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[1]),
        .Q(\acc_lenth_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[2] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[2]),
        .Q(\acc_lenth_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[3] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[3]),
        .Q(\acc_lenth_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[4] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[4]),
        .Q(\acc_lenth_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[5] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[5]),
        .Q(\acc_lenth_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[6] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[6]),
        .Q(\acc_lenth_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[7] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[7]),
        .Q(\acc_lenth_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[8] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[8]),
        .Q(\acc_lenth_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_lenth_reg[9] 
       (.C(sys_clk),
        .CE(\acc_lenth[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acc_lenth[9]),
        .Q(\acc_lenth_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[0]_i_1 
       (.I0(\acceleration_reg[3]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[3]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[10]_i_1 
       (.I0(\acceleration_reg[11]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[11]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[11]_i_1 
       (.I0(\acceleration_reg[11]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[11]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[11]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_10 
       (.I0(AA_ACCELERATION_CLK[9]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[9] ),
        .O(\acceleration[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_11 
       (.I0(AA_ACCELERATION_CLK[8]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[8] ),
        .O(\acceleration[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_4 
       (.I0(AA_ACCELERATION2_CLK[11]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[11] ),
        .O(\acceleration[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_5 
       (.I0(AA_ACCELERATION2_CLK[10]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[10] ),
        .O(\acceleration[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_6 
       (.I0(AA_ACCELERATION2_CLK[9]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[9] ),
        .O(\acceleration[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_7 
       (.I0(AA_ACCELERATION2_CLK[8]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[8] ),
        .O(\acceleration[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_8 
       (.I0(AA_ACCELERATION_CLK[11]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[11] ),
        .O(\acceleration[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[11]_i_9 
       (.I0(AA_ACCELERATION_CLK[10]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[10] ),
        .O(\acceleration[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[12]_i_1 
       (.I0(\acceleration_reg[15]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[15]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[13]_i_1 
       (.I0(\acceleration_reg[15]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[15]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[14]_i_1 
       (.I0(\acceleration_reg[15]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[15]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[15]_i_1 
       (.I0(\acceleration_reg[15]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[15]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[15]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_10 
       (.I0(AA_ACCELERATION_CLK[13]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[13] ),
        .O(\acceleration[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_11 
       (.I0(AA_ACCELERATION_CLK[12]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[12] ),
        .O(\acceleration[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_4 
       (.I0(AA_ACCELERATION2_CLK[15]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[15] ),
        .O(\acceleration[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_5 
       (.I0(AA_ACCELERATION2_CLK[14]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[14] ),
        .O(\acceleration[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_6 
       (.I0(AA_ACCELERATION2_CLK[13]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[13] ),
        .O(\acceleration[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_7 
       (.I0(AA_ACCELERATION2_CLK[12]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[12] ),
        .O(\acceleration[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_8 
       (.I0(AA_ACCELERATION_CLK[15]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[15] ),
        .O(\acceleration[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[15]_i_9 
       (.I0(AA_ACCELERATION_CLK[14]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[14] ),
        .O(\acceleration[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[16]_i_1 
       (.I0(\acceleration_reg[19]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[19]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[17]_i_1 
       (.I0(\acceleration_reg[19]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[19]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[18]_i_1 
       (.I0(\acceleration_reg[19]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[19]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[19]_i_1 
       (.I0(\acceleration_reg[19]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[19]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[19]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_10 
       (.I0(AA_ACCELERATION_CLK[17]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[17] ),
        .O(\acceleration[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_11 
       (.I0(AA_ACCELERATION_CLK[16]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[16] ),
        .O(\acceleration[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_4 
       (.I0(AA_ACCELERATION2_CLK[19]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[19] ),
        .O(\acceleration[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_5 
       (.I0(AA_ACCELERATION2_CLK[18]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[18] ),
        .O(\acceleration[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_6 
       (.I0(AA_ACCELERATION2_CLK[17]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[17] ),
        .O(\acceleration[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_7 
       (.I0(AA_ACCELERATION2_CLK[16]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[16] ),
        .O(\acceleration[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_8 
       (.I0(AA_ACCELERATION_CLK[19]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[19] ),
        .O(\acceleration[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[19]_i_9 
       (.I0(AA_ACCELERATION_CLK[18]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[18] ),
        .O(\acceleration[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[1]_i_1 
       (.I0(\acceleration_reg[3]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[3]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[20]_i_1 
       (.I0(\acceleration_reg[23]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[23]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[21]_i_1 
       (.I0(\acceleration_reg[23]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[23]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[22]_i_1 
       (.I0(\acceleration_reg[23]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[23]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[23]_i_1 
       (.I0(\acceleration_reg[23]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[23]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[23]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_10 
       (.I0(AA_ACCELERATION_CLK[21]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[21] ),
        .O(\acceleration[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_11 
       (.I0(AA_ACCELERATION_CLK[20]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[20] ),
        .O(\acceleration[23]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_4 
       (.I0(AA_ACCELERATION2_CLK[23]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[23] ),
        .O(\acceleration[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_5 
       (.I0(AA_ACCELERATION2_CLK[22]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[22] ),
        .O(\acceleration[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_6 
       (.I0(AA_ACCELERATION2_CLK[21]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[21] ),
        .O(\acceleration[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_7 
       (.I0(AA_ACCELERATION2_CLK[20]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[20] ),
        .O(\acceleration[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_8 
       (.I0(AA_ACCELERATION_CLK[23]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[23] ),
        .O(\acceleration[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[23]_i_9 
       (.I0(AA_ACCELERATION_CLK[22]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[22] ),
        .O(\acceleration[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[24]_i_1 
       (.I0(\acceleration_reg[27]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[27]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[25]_i_1 
       (.I0(\acceleration_reg[27]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[27]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[26]_i_1 
       (.I0(\acceleration_reg[27]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[27]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[27]_i_1 
       (.I0(\acceleration_reg[27]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[27]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[27]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_10 
       (.I0(AA_ACCELERATION_CLK[25]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[25] ),
        .O(\acceleration[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_11 
       (.I0(AA_ACCELERATION_CLK[24]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[24] ),
        .O(\acceleration[27]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_4 
       (.I0(AA_ACCELERATION2_CLK[27]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[27] ),
        .O(\acceleration[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_5 
       (.I0(AA_ACCELERATION2_CLK[26]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[26] ),
        .O(\acceleration[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_6 
       (.I0(AA_ACCELERATION2_CLK[25]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[25] ),
        .O(\acceleration[27]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_7 
       (.I0(AA_ACCELERATION2_CLK[24]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[24] ),
        .O(\acceleration[27]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_8 
       (.I0(AA_ACCELERATION_CLK[27]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[27] ),
        .O(\acceleration[27]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[27]_i_9 
       (.I0(AA_ACCELERATION_CLK[26]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[26] ),
        .O(\acceleration[27]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[28]_i_1 
       (.I0(\acceleration_reg[31]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[31]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[29]_i_1 
       (.I0(\acceleration_reg[31]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[31]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[2]_i_1 
       (.I0(\acceleration_reg[3]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[3]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[30]_i_1 
       (.I0(\acceleration_reg[31]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[31]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[31]_i_1 
       (.I0(\acceleration_reg[31]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[31]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[31]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_10 
       (.I0(AA_ACCELERATION_CLK[29]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[29] ),
        .O(\acceleration[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_11 
       (.I0(AA_ACCELERATION_CLK[28]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[28] ),
        .O(\acceleration[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_4 
       (.I0(AA_ACCELERATION2_CLK[31]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[31] ),
        .O(\acceleration[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_5 
       (.I0(AA_ACCELERATION2_CLK[30]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[30] ),
        .O(\acceleration[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_6 
       (.I0(AA_ACCELERATION2_CLK[29]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[29] ),
        .O(\acceleration[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_7 
       (.I0(AA_ACCELERATION2_CLK[28]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[28] ),
        .O(\acceleration[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_8 
       (.I0(AA_ACCELERATION_CLK[31]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[31] ),
        .O(\acceleration[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[31]_i_9 
       (.I0(AA_ACCELERATION_CLK[30]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[30] ),
        .O(\acceleration[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[32]_i_1 
       (.I0(\acceleration_reg[35]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[35]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[32]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[33]_i_1 
       (.I0(\acceleration_reg[35]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[35]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[33]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[34]_i_1 
       (.I0(\acceleration_reg[35]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[35]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[34]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[35]_i_1 
       (.I0(\acceleration_reg[35]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[35]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[35]));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_10 
       (.I0(\acceleration_reg_n_0_[34] ),
        .I1(\acceleration_reg_n_0_[35] ),
        .O(\acceleration[35]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_100 
       (.I0(\velocity_reg_n_0_[2] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[3] ),
        .I2(\velocity_reg_n_0_[3] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[4] ),
        .O(\acceleration[35]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_101 
       (.I0(\AIM_SPEED_reg_reg_n_0_[1] ),
        .I1(\velocity_reg_n_0_[0] ),
        .I2(\velocity_reg_n_0_[1] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[2] ),
        .O(\acceleration[35]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_11 
       (.I0(\acceleration_reg_n_0_[33] ),
        .I1(\acceleration_reg_n_0_[34] ),
        .O(\acceleration[35]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_12 
       (.I0(\acceleration_reg_n_0_[32] ),
        .I1(\acceleration_reg_n_0_[33] ),
        .O(\acceleration[35]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_13 
       (.I0(\acceleration_reg_n_0_[32] ),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .O(\acceleration[35]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \acceleration[35]_i_15 
       (.I0(\AIM_SPEED_reg_reg_n_0_[39] ),
        .I1(\velocity_reg_n_0_[38] ),
        .I2(\velocity_reg_n_0_[39] ),
        .O(\acceleration[35]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_16 
       (.I0(\velocity_reg_n_0_[36] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[37] ),
        .I2(\velocity_reg_n_0_[37] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[38] ),
        .O(\acceleration[35]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_17 
       (.I0(\velocity_reg_n_0_[34] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[35] ),
        .I2(\velocity_reg_n_0_[35] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[36] ),
        .O(\acceleration[35]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_18 
       (.I0(\velocity_reg_n_0_[32] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[33] ),
        .I2(\velocity_reg_n_0_[33] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[34] ),
        .O(\acceleration[35]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \acceleration[35]_i_19 
       (.I0(\velocity_reg_n_0_[38] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[39] ),
        .I2(\velocity_reg_n_0_[39] ),
        .O(\acceleration[35]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_20 
       (.I0(\velocity_reg_n_0_[36] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[37] ),
        .I2(\velocity_reg_n_0_[37] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[38] ),
        .O(\acceleration[35]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_21 
       (.I0(\velocity_reg_n_0_[34] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[35] ),
        .I2(\velocity_reg_n_0_[35] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[36] ),
        .O(\acceleration[35]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_22 
       (.I0(\velocity_reg_n_0_[32] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[33] ),
        .I2(\velocity_reg_n_0_[33] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[34] ),
        .O(\acceleration[35]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \acceleration[35]_i_24 
       (.I0(\AIM_SPEED_reg_reg_n_0_[39] ),
        .I1(\velocity_reg_n_0_[39] ),
        .I2(\velocity_reg_n_0_[38] ),
        .O(\acceleration[35]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_25 
       (.I0(\AIM_SPEED_reg_reg_n_0_[37] ),
        .I1(\velocity_reg_n_0_[36] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[38] ),
        .I3(\velocity_reg_n_0_[37] ),
        .O(\acceleration[35]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_26 
       (.I0(\AIM_SPEED_reg_reg_n_0_[35] ),
        .I1(\velocity_reg_n_0_[34] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[36] ),
        .I3(\velocity_reg_n_0_[35] ),
        .O(\acceleration[35]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_27 
       (.I0(\AIM_SPEED_reg_reg_n_0_[33] ),
        .I1(\velocity_reg_n_0_[32] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[34] ),
        .I3(\velocity_reg_n_0_[33] ),
        .O(\acceleration[35]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \acceleration[35]_i_28 
       (.I0(\velocity_reg_n_0_[38] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[39] ),
        .I2(\velocity_reg_n_0_[39] ),
        .O(\acceleration[35]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_29 
       (.I0(\velocity_reg_n_0_[36] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[37] ),
        .I2(\velocity_reg_n_0_[37] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[38] ),
        .O(\acceleration[35]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_30 
       (.I0(\velocity_reg_n_0_[34] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[35] ),
        .I2(\velocity_reg_n_0_[35] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[36] ),
        .O(\acceleration[35]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_31 
       (.I0(\velocity_reg_n_0_[32] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[33] ),
        .I2(\velocity_reg_n_0_[33] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[34] ),
        .O(\acceleration[35]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_33 
       (.I0(\velocity_reg_n_0_[30] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[31] ),
        .I2(\velocity_reg_n_0_[31] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[32] ),
        .O(\acceleration[35]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_34 
       (.I0(\velocity_reg_n_0_[28] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[29] ),
        .I2(\velocity_reg_n_0_[29] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[30] ),
        .O(\acceleration[35]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_35 
       (.I0(\velocity_reg_n_0_[26] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[27] ),
        .I2(\velocity_reg_n_0_[27] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[28] ),
        .O(\acceleration[35]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_36 
       (.I0(\velocity_reg_n_0_[24] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[25] ),
        .I2(\velocity_reg_n_0_[25] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[26] ),
        .O(\acceleration[35]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_37 
       (.I0(\velocity_reg_n_0_[30] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[31] ),
        .I2(\velocity_reg_n_0_[31] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[32] ),
        .O(\acceleration[35]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_38 
       (.I0(\velocity_reg_n_0_[28] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[29] ),
        .I2(\velocity_reg_n_0_[29] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[30] ),
        .O(\acceleration[35]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_39 
       (.I0(\velocity_reg_n_0_[26] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[27] ),
        .I2(\velocity_reg_n_0_[27] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[28] ),
        .O(\acceleration[35]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_40 
       (.I0(\velocity_reg_n_0_[25] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[26] ),
        .I2(\velocity_reg_n_0_[24] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[25] ),
        .O(\acceleration[35]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_42 
       (.I0(\AIM_SPEED_reg_reg_n_0_[31] ),
        .I1(\velocity_reg_n_0_[30] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[32] ),
        .I3(\velocity_reg_n_0_[31] ),
        .O(\acceleration[35]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_43 
       (.I0(\AIM_SPEED_reg_reg_n_0_[29] ),
        .I1(\velocity_reg_n_0_[28] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[30] ),
        .I3(\velocity_reg_n_0_[29] ),
        .O(\acceleration[35]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_44 
       (.I0(\AIM_SPEED_reg_reg_n_0_[27] ),
        .I1(\velocity_reg_n_0_[26] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[28] ),
        .I3(\velocity_reg_n_0_[27] ),
        .O(\acceleration[35]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_45 
       (.I0(\AIM_SPEED_reg_reg_n_0_[25] ),
        .I1(\velocity_reg_n_0_[24] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[26] ),
        .I3(\velocity_reg_n_0_[25] ),
        .O(\acceleration[35]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_46 
       (.I0(\velocity_reg_n_0_[30] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[31] ),
        .I2(\velocity_reg_n_0_[31] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[32] ),
        .O(\acceleration[35]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_47 
       (.I0(\velocity_reg_n_0_[28] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[29] ),
        .I2(\velocity_reg_n_0_[29] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[30] ),
        .O(\acceleration[35]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_48 
       (.I0(\velocity_reg_n_0_[26] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[27] ),
        .I2(\velocity_reg_n_0_[27] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[28] ),
        .O(\acceleration[35]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_49 
       (.I0(\velocity_reg_n_0_[25] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[26] ),
        .I2(\velocity_reg_n_0_[24] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[25] ),
        .O(\acceleration[35]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_5 
       (.I0(\acceleration_reg_n_0_[34] ),
        .I1(\acceleration_reg_n_0_[35] ),
        .O(\acceleration[35]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_51 
       (.I0(\velocity_reg_n_0_[22] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[23] ),
        .I2(\velocity_reg_n_0_[23] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[24] ),
        .O(\acceleration[35]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_52 
       (.I0(\velocity_reg_n_0_[20] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[21] ),
        .I2(\velocity_reg_n_0_[21] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[22] ),
        .O(\acceleration[35]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_53 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[19] ),
        .I2(\velocity_reg_n_0_[19] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[20] ),
        .O(\acceleration[35]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_54 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[17] ),
        .I2(\velocity_reg_n_0_[17] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[18] ),
        .O(\acceleration[35]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_55 
       (.I0(\velocity_reg_n_0_[23] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[24] ),
        .I2(\velocity_reg_n_0_[22] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[23] ),
        .O(\acceleration[35]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_56 
       (.I0(\velocity_reg_n_0_[20] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[21] ),
        .I2(\velocity_reg_n_0_[21] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[22] ),
        .O(\acceleration[35]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_57 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[19] ),
        .I2(\velocity_reg_n_0_[19] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[20] ),
        .O(\acceleration[35]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_58 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[17] ),
        .I2(\velocity_reg_n_0_[17] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[18] ),
        .O(\acceleration[35]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_6 
       (.I0(\acceleration_reg_n_0_[33] ),
        .I1(\acceleration_reg_n_0_[34] ),
        .O(\acceleration[35]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_60 
       (.I0(\AIM_SPEED_reg_reg_n_0_[23] ),
        .I1(\velocity_reg_n_0_[22] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[24] ),
        .I3(\velocity_reg_n_0_[23] ),
        .O(\acceleration[35]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_61 
       (.I0(\AIM_SPEED_reg_reg_n_0_[21] ),
        .I1(\velocity_reg_n_0_[20] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[22] ),
        .I3(\velocity_reg_n_0_[21] ),
        .O(\acceleration[35]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_62 
       (.I0(\AIM_SPEED_reg_reg_n_0_[19] ),
        .I1(\velocity_reg_n_0_[18] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[20] ),
        .I3(\velocity_reg_n_0_[19] ),
        .O(\acceleration[35]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_63 
       (.I0(\AIM_SPEED_reg_reg_n_0_[17] ),
        .I1(\velocity_reg_n_0_[16] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[18] ),
        .I3(\velocity_reg_n_0_[17] ),
        .O(\acceleration[35]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_64 
       (.I0(\velocity_reg_n_0_[23] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[24] ),
        .I2(\velocity_reg_n_0_[22] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[23] ),
        .O(\acceleration[35]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_65 
       (.I0(\velocity_reg_n_0_[20] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[21] ),
        .I2(\velocity_reg_n_0_[21] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[22] ),
        .O(\acceleration[35]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_66 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[19] ),
        .I2(\velocity_reg_n_0_[19] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[20] ),
        .O(\acceleration[35]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_67 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[17] ),
        .I2(\velocity_reg_n_0_[17] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[18] ),
        .O(\acceleration[35]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_69 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[15] ),
        .I2(\velocity_reg_n_0_[15] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[16] ),
        .O(\acceleration[35]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_7 
       (.I0(\acceleration_reg_n_0_[32] ),
        .I1(\acceleration_reg_n_0_[33] ),
        .O(\acceleration[35]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_70 
       (.I0(\velocity_reg_n_0_[12] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[13] ),
        .I2(\velocity_reg_n_0_[13] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[14] ),
        .O(\acceleration[35]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_71 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[11] ),
        .I2(\velocity_reg_n_0_[11] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[12] ),
        .O(\acceleration[35]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_72 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[9] ),
        .I2(\velocity_reg_n_0_[9] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[10] ),
        .O(\acceleration[35]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_73 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[15] ),
        .I2(\velocity_reg_n_0_[15] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[16] ),
        .O(\acceleration[35]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_74 
       (.I0(\velocity_reg_n_0_[13] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[14] ),
        .I2(\velocity_reg_n_0_[12] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[13] ),
        .O(\acceleration[35]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_75 
       (.I0(\velocity_reg_n_0_[11] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[12] ),
        .I2(\velocity_reg_n_0_[10] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[11] ),
        .O(\acceleration[35]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_76 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[9] ),
        .I2(\velocity_reg_n_0_[9] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[10] ),
        .O(\acceleration[35]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_78 
       (.I0(\AIM_SPEED_reg_reg_n_0_[15] ),
        .I1(\velocity_reg_n_0_[14] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[16] ),
        .I3(\velocity_reg_n_0_[15] ),
        .O(\acceleration[35]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_79 
       (.I0(\AIM_SPEED_reg_reg_n_0_[13] ),
        .I1(\velocity_reg_n_0_[12] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[14] ),
        .I3(\velocity_reg_n_0_[13] ),
        .O(\acceleration[35]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[35]_i_8 
       (.I0(\acceleration_reg_n_0_[32] ),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .O(\acceleration[35]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_80 
       (.I0(\AIM_SPEED_reg_reg_n_0_[11] ),
        .I1(\velocity_reg_n_0_[10] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[12] ),
        .I3(\velocity_reg_n_0_[11] ),
        .O(\acceleration[35]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_81 
       (.I0(\AIM_SPEED_reg_reg_n_0_[9] ),
        .I1(\velocity_reg_n_0_[8] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[10] ),
        .I3(\velocity_reg_n_0_[9] ),
        .O(\acceleration[35]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_82 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[15] ),
        .I2(\velocity_reg_n_0_[15] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[16] ),
        .O(\acceleration[35]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_83 
       (.I0(\velocity_reg_n_0_[13] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[14] ),
        .I2(\velocity_reg_n_0_[12] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[13] ),
        .O(\acceleration[35]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_84 
       (.I0(\velocity_reg_n_0_[11] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[12] ),
        .I2(\velocity_reg_n_0_[10] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[11] ),
        .O(\acceleration[35]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_85 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[9] ),
        .I2(\velocity_reg_n_0_[9] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[10] ),
        .O(\acceleration[35]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_86 
       (.I0(\velocity_reg_n_0_[6] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[7] ),
        .I2(\velocity_reg_n_0_[7] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[8] ),
        .O(\acceleration[35]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_87 
       (.I0(\velocity_reg_n_0_[4] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[5] ),
        .I2(\velocity_reg_n_0_[5] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[6] ),
        .O(\acceleration[35]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \acceleration[35]_i_88 
       (.I0(\AIM_SPEED_reg_reg_n_0_[4] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[3] ),
        .I2(\velocity_reg_n_0_[2] ),
        .I3(\velocity_reg_n_0_[3] ),
        .O(\acceleration[35]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_89 
       (.I0(\velocity_reg_n_0_[0] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[1] ),
        .I2(\velocity_reg_n_0_[1] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[2] ),
        .O(\acceleration[35]_i_89_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_90 
       (.I0(\velocity_reg_n_0_[7] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[8] ),
        .I2(\velocity_reg_n_0_[6] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[7] ),
        .O(\acceleration[35]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_91 
       (.I0(\velocity_reg_n_0_[5] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[6] ),
        .I2(\velocity_reg_n_0_[4] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[5] ),
        .O(\acceleration[35]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_92 
       (.I0(\velocity_reg_n_0_[2] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[3] ),
        .I2(\velocity_reg_n_0_[3] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[4] ),
        .O(\acceleration[35]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_93 
       (.I0(\AIM_SPEED_reg_reg_n_0_[1] ),
        .I1(\velocity_reg_n_0_[0] ),
        .I2(\velocity_reg_n_0_[1] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[2] ),
        .O(\acceleration[35]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_94 
       (.I0(\AIM_SPEED_reg_reg_n_0_[7] ),
        .I1(\velocity_reg_n_0_[6] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[8] ),
        .I3(\velocity_reg_n_0_[7] ),
        .O(\acceleration[35]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_95 
       (.I0(\AIM_SPEED_reg_reg_n_0_[5] ),
        .I1(\velocity_reg_n_0_[4] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[6] ),
        .I3(\velocity_reg_n_0_[5] ),
        .O(\acceleration[35]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \acceleration[35]_i_96 
       (.I0(\AIM_SPEED_reg_reg_n_0_[4] ),
        .I1(\velocity_reg_n_0_[3] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[3] ),
        .I3(\velocity_reg_n_0_[2] ),
        .O(\acceleration[35]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \acceleration[35]_i_97 
       (.I0(\AIM_SPEED_reg_reg_n_0_[1] ),
        .I1(\velocity_reg_n_0_[0] ),
        .I2(\AIM_SPEED_reg_reg_n_0_[2] ),
        .I3(\velocity_reg_n_0_[1] ),
        .O(\acceleration[35]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_98 
       (.I0(\velocity_reg_n_0_[7] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[8] ),
        .I2(\velocity_reg_n_0_[6] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[7] ),
        .O(\acceleration[35]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \acceleration[35]_i_99 
       (.I0(\velocity_reg_n_0_[5] ),
        .I1(\AIM_SPEED_reg_reg_n_0_[6] ),
        .I2(\velocity_reg_n_0_[4] ),
        .I3(\AIM_SPEED_reg_reg_n_0_[5] ),
        .O(\acceleration[35]_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[36]_i_1 
       (.I0(\acceleration_reg[39]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[39]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[36]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[37]_i_1 
       (.I0(\acceleration_reg[39]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[39]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[37]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[38]_i_1 
       (.I0(\acceleration_reg[39]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[39]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[38]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[39]_i_1 
       (.I0(\acceleration_reg[39]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[39]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[39]));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_10 
       (.I0(\acceleration_reg_n_0_[36] ),
        .I1(\acceleration_reg_n_0_[37] ),
        .O(\acceleration[39]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_11 
       (.I0(\acceleration_reg_n_0_[35] ),
        .I1(\acceleration_reg_n_0_[36] ),
        .O(\acceleration[39]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_4 
       (.I0(\acceleration_reg_n_0_[38] ),
        .I1(\acceleration_reg_n_0_[39] ),
        .O(\acceleration[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_5 
       (.I0(\acceleration_reg_n_0_[37] ),
        .I1(\acceleration_reg_n_0_[38] ),
        .O(\acceleration[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_6 
       (.I0(\acceleration_reg_n_0_[36] ),
        .I1(\acceleration_reg_n_0_[37] ),
        .O(\acceleration[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_7 
       (.I0(\acceleration_reg_n_0_[35] ),
        .I1(\acceleration_reg_n_0_[36] ),
        .O(\acceleration[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_8 
       (.I0(\acceleration_reg_n_0_[38] ),
        .I1(\acceleration_reg_n_0_[39] ),
        .O(\acceleration[39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[39]_i_9 
       (.I0(\acceleration_reg_n_0_[37] ),
        .I1(\acceleration_reg_n_0_[38] ),
        .O(\acceleration[39]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[3]_i_1 
       (.I0(\acceleration_reg[3]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[3]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[3]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_10 
       (.I0(AA_ACCELERATION_CLK[3]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[3] ),
        .O(\acceleration[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_11 
       (.I0(AA_ACCELERATION_CLK[2]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[2] ),
        .O(\acceleration[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_12 
       (.I0(AA_ACCELERATION_CLK[1]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[1] ),
        .O(\acceleration[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \acceleration[3]_i_13 
       (.I0(AA_ACCELERATION_CLK[0]),
        .O(\acceleration[3]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acceleration[3]_i_4 
       (.I0(\acceleration_reg[35]_i_4_n_0 ),
        .O(\acceleration[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_5 
       (.I0(AA_ACCELERATION2_CLK[3]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[3] ),
        .O(\acceleration[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_6 
       (.I0(AA_ACCELERATION2_CLK[2]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[2] ),
        .O(\acceleration[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[3]_i_7 
       (.I0(AA_ACCELERATION2_CLK[1]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[1] ),
        .O(\acceleration[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \acceleration[3]_i_8 
       (.I0(AA_ACCELERATION2_CLK[0]),
        .O(\acceleration[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acceleration[3]_i_9 
       (.I0(\acceleration_reg[35]_i_9_n_0 ),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[40]_i_1 
       (.I0(\acceleration_reg[43]_i_3_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[43]_i_5_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[41]_i_1 
       (.I0(\acceleration_reg[43]_i_3_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[43]_i_5_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[41]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[42]_i_1 
       (.I0(\acceleration_reg[43]_i_3_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[43]_i_5_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[42]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F0F0D08)) 
    \acceleration[43]_i_1 
       (.I0(state[1]),
        .I1(force_stop),
        .I2(state[2]),
        .I3(start_s),
        .I4(state[0]),
        .I5(\output_counter[19]_i_9_n_0 ),
        .O(\acceleration[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_10 
       (.I0(\acceleration_reg_n_0_[39] ),
        .I1(\acceleration_reg_n_0_[40] ),
        .O(\acceleration[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_11 
       (.I0(\acceleration_reg_n_0_[42] ),
        .I1(\acceleration_reg_n_0_[43] ),
        .O(\acceleration[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_12 
       (.I0(\acceleration_reg_n_0_[41] ),
        .I1(\acceleration_reg_n_0_[42] ),
        .O(\acceleration[43]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_13 
       (.I0(\acceleration_reg_n_0_[40] ),
        .I1(\acceleration_reg_n_0_[41] ),
        .O(\acceleration[43]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_14 
       (.I0(\acceleration_reg_n_0_[39] ),
        .I1(\acceleration_reg_n_0_[40] ),
        .O(\acceleration[43]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[43]_i_2 
       (.I0(\acceleration_reg[43]_i_3_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[43]_i_5_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[43]));
  LUT4 #(
    .INIT(16'h1000)) 
    \acceleration[43]_i_4 
       (.I0(force_stop),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\acceleration[43]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \acceleration[43]_i_6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(force_stop),
        .I4(\velocity[39]_i_15_n_0 ),
        .O(\acceleration[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_7 
       (.I0(\acceleration_reg_n_0_[42] ),
        .I1(\acceleration_reg_n_0_[43] ),
        .O(\acceleration[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_8 
       (.I0(\acceleration_reg_n_0_[41] ),
        .I1(\acceleration_reg_n_0_[42] ),
        .O(\acceleration[43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acceleration[43]_i_9 
       (.I0(\acceleration_reg_n_0_[40] ),
        .I1(\acceleration_reg_n_0_[41] ),
        .O(\acceleration[43]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[4]_i_1 
       (.I0(\acceleration_reg[7]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[7]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[5]_i_1 
       (.I0(\acceleration_reg[7]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[7]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[6]_i_1 
       (.I0(\acceleration_reg[7]_i_2_n_5 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[7]_i_3_n_5 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[7]_i_1 
       (.I0(\acceleration_reg[7]_i_2_n_4 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[7]_i_3_n_4 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[7]));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_10 
       (.I0(AA_ACCELERATION_CLK[5]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[5] ),
        .O(\acceleration[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_11 
       (.I0(AA_ACCELERATION_CLK[4]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[4] ),
        .O(\acceleration[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_4 
       (.I0(AA_ACCELERATION2_CLK[7]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[7] ),
        .O(\acceleration[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_5 
       (.I0(AA_ACCELERATION2_CLK[6]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[6] ),
        .O(\acceleration[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_6 
       (.I0(AA_ACCELERATION2_CLK[5]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[5] ),
        .O(\acceleration[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_7 
       (.I0(AA_ACCELERATION2_CLK[4]),
        .I1(\acceleration_reg[35]_i_4_n_0 ),
        .I2(\acceleration_reg_n_0_[4] ),
        .O(\acceleration[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_8 
       (.I0(AA_ACCELERATION_CLK[7]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[7] ),
        .O(\acceleration[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \acceleration[7]_i_9 
       (.I0(AA_ACCELERATION_CLK[6]),
        .I1(\acceleration_reg[35]_i_9_n_0 ),
        .I2(\acceleration_reg_n_0_[6] ),
        .O(\acceleration[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[8]_i_1 
       (.I0(\acceleration_reg[11]_i_2_n_7 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[11]_i_3_n_7 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \acceleration[9]_i_1 
       (.I0(\acceleration_reg[11]_i_2_n_6 ),
        .I1(\acceleration[43]_i_4_n_0 ),
        .I2(\acceleration_reg[11]_i_3_n_6 ),
        .I3(\acceleration[43]_i_6_n_0 ),
        .O(acceleration[9]));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[0] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[0]),
        .Q(\acceleration_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[10] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[10]),
        .Q(\acceleration_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[11] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[11]),
        .Q(\acceleration_reg_n_0_[11] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[11]_i_2 
       (.CI(\acceleration_reg[7]_i_2_n_0 ),
        .CO({\acceleration_reg[11]_i_2_n_0 ,\acceleration_reg[11]_i_2_n_1 ,\acceleration_reg[11]_i_2_n_2 ,\acceleration_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[11] ,\acceleration_reg_n_0_[10] ,\acceleration_reg_n_0_[9] ,\acceleration_reg_n_0_[8] }),
        .O({\acceleration_reg[11]_i_2_n_4 ,\acceleration_reg[11]_i_2_n_5 ,\acceleration_reg[11]_i_2_n_6 ,\acceleration_reg[11]_i_2_n_7 }),
        .S({\acceleration[11]_i_4_n_0 ,\acceleration[11]_i_5_n_0 ,\acceleration[11]_i_6_n_0 ,\acceleration[11]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[11]_i_3 
       (.CI(\acceleration_reg[7]_i_3_n_0 ),
        .CO({\acceleration_reg[11]_i_3_n_0 ,\acceleration_reg[11]_i_3_n_1 ,\acceleration_reg[11]_i_3_n_2 ,\acceleration_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[11] ,\acceleration_reg_n_0_[10] ,\acceleration_reg_n_0_[9] ,\acceleration_reg_n_0_[8] }),
        .O({\acceleration_reg[11]_i_3_n_4 ,\acceleration_reg[11]_i_3_n_5 ,\acceleration_reg[11]_i_3_n_6 ,\acceleration_reg[11]_i_3_n_7 }),
        .S({\acceleration[11]_i_8_n_0 ,\acceleration[11]_i_9_n_0 ,\acceleration[11]_i_10_n_0 ,\acceleration[11]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[12] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[12]),
        .Q(\acceleration_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[13] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[13]),
        .Q(\acceleration_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[14] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[14]),
        .Q(\acceleration_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[15] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[15]),
        .Q(\acceleration_reg_n_0_[15] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[15]_i_2 
       (.CI(\acceleration_reg[11]_i_2_n_0 ),
        .CO({\acceleration_reg[15]_i_2_n_0 ,\acceleration_reg[15]_i_2_n_1 ,\acceleration_reg[15]_i_2_n_2 ,\acceleration_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[15] ,\acceleration_reg_n_0_[14] ,\acceleration_reg_n_0_[13] ,\acceleration_reg_n_0_[12] }),
        .O({\acceleration_reg[15]_i_2_n_4 ,\acceleration_reg[15]_i_2_n_5 ,\acceleration_reg[15]_i_2_n_6 ,\acceleration_reg[15]_i_2_n_7 }),
        .S({\acceleration[15]_i_4_n_0 ,\acceleration[15]_i_5_n_0 ,\acceleration[15]_i_6_n_0 ,\acceleration[15]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[15]_i_3 
       (.CI(\acceleration_reg[11]_i_3_n_0 ),
        .CO({\acceleration_reg[15]_i_3_n_0 ,\acceleration_reg[15]_i_3_n_1 ,\acceleration_reg[15]_i_3_n_2 ,\acceleration_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[15] ,\acceleration_reg_n_0_[14] ,\acceleration_reg_n_0_[13] ,\acceleration_reg_n_0_[12] }),
        .O({\acceleration_reg[15]_i_3_n_4 ,\acceleration_reg[15]_i_3_n_5 ,\acceleration_reg[15]_i_3_n_6 ,\acceleration_reg[15]_i_3_n_7 }),
        .S({\acceleration[15]_i_8_n_0 ,\acceleration[15]_i_9_n_0 ,\acceleration[15]_i_10_n_0 ,\acceleration[15]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[16] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[16]),
        .Q(\acceleration_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[17] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[17]),
        .Q(\acceleration_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[18] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[18]),
        .Q(\acceleration_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[19] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[19]),
        .Q(\acceleration_reg_n_0_[19] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[19]_i_2 
       (.CI(\acceleration_reg[15]_i_2_n_0 ),
        .CO({\acceleration_reg[19]_i_2_n_0 ,\acceleration_reg[19]_i_2_n_1 ,\acceleration_reg[19]_i_2_n_2 ,\acceleration_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[19] ,\acceleration_reg_n_0_[18] ,\acceleration_reg_n_0_[17] ,\acceleration_reg_n_0_[16] }),
        .O({\acceleration_reg[19]_i_2_n_4 ,\acceleration_reg[19]_i_2_n_5 ,\acceleration_reg[19]_i_2_n_6 ,\acceleration_reg[19]_i_2_n_7 }),
        .S({\acceleration[19]_i_4_n_0 ,\acceleration[19]_i_5_n_0 ,\acceleration[19]_i_6_n_0 ,\acceleration[19]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[19]_i_3 
       (.CI(\acceleration_reg[15]_i_3_n_0 ),
        .CO({\acceleration_reg[19]_i_3_n_0 ,\acceleration_reg[19]_i_3_n_1 ,\acceleration_reg[19]_i_3_n_2 ,\acceleration_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[19] ,\acceleration_reg_n_0_[18] ,\acceleration_reg_n_0_[17] ,\acceleration_reg_n_0_[16] }),
        .O({\acceleration_reg[19]_i_3_n_4 ,\acceleration_reg[19]_i_3_n_5 ,\acceleration_reg[19]_i_3_n_6 ,\acceleration_reg[19]_i_3_n_7 }),
        .S({\acceleration[19]_i_8_n_0 ,\acceleration[19]_i_9_n_0 ,\acceleration[19]_i_10_n_0 ,\acceleration[19]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[1] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[1]),
        .Q(\acceleration_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[20] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[20]),
        .Q(\acceleration_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[21] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[21]),
        .Q(\acceleration_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[22] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[22]),
        .Q(\acceleration_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[23] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[23]),
        .Q(\acceleration_reg_n_0_[23] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[23]_i_2 
       (.CI(\acceleration_reg[19]_i_2_n_0 ),
        .CO({\acceleration_reg[23]_i_2_n_0 ,\acceleration_reg[23]_i_2_n_1 ,\acceleration_reg[23]_i_2_n_2 ,\acceleration_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[23] ,\acceleration_reg_n_0_[22] ,\acceleration_reg_n_0_[21] ,\acceleration_reg_n_0_[20] }),
        .O({\acceleration_reg[23]_i_2_n_4 ,\acceleration_reg[23]_i_2_n_5 ,\acceleration_reg[23]_i_2_n_6 ,\acceleration_reg[23]_i_2_n_7 }),
        .S({\acceleration[23]_i_4_n_0 ,\acceleration[23]_i_5_n_0 ,\acceleration[23]_i_6_n_0 ,\acceleration[23]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[23]_i_3 
       (.CI(\acceleration_reg[19]_i_3_n_0 ),
        .CO({\acceleration_reg[23]_i_3_n_0 ,\acceleration_reg[23]_i_3_n_1 ,\acceleration_reg[23]_i_3_n_2 ,\acceleration_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[23] ,\acceleration_reg_n_0_[22] ,\acceleration_reg_n_0_[21] ,\acceleration_reg_n_0_[20] }),
        .O({\acceleration_reg[23]_i_3_n_4 ,\acceleration_reg[23]_i_3_n_5 ,\acceleration_reg[23]_i_3_n_6 ,\acceleration_reg[23]_i_3_n_7 }),
        .S({\acceleration[23]_i_8_n_0 ,\acceleration[23]_i_9_n_0 ,\acceleration[23]_i_10_n_0 ,\acceleration[23]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[24] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[24]),
        .Q(\acceleration_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[25] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[25]),
        .Q(\acceleration_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[26] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[26]),
        .Q(\acceleration_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[27] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[27]),
        .Q(\acceleration_reg_n_0_[27] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[27]_i_2 
       (.CI(\acceleration_reg[23]_i_2_n_0 ),
        .CO({\acceleration_reg[27]_i_2_n_0 ,\acceleration_reg[27]_i_2_n_1 ,\acceleration_reg[27]_i_2_n_2 ,\acceleration_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[27] ,\acceleration_reg_n_0_[26] ,\acceleration_reg_n_0_[25] ,\acceleration_reg_n_0_[24] }),
        .O({\acceleration_reg[27]_i_2_n_4 ,\acceleration_reg[27]_i_2_n_5 ,\acceleration_reg[27]_i_2_n_6 ,\acceleration_reg[27]_i_2_n_7 }),
        .S({\acceleration[27]_i_4_n_0 ,\acceleration[27]_i_5_n_0 ,\acceleration[27]_i_6_n_0 ,\acceleration[27]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[27]_i_3 
       (.CI(\acceleration_reg[23]_i_3_n_0 ),
        .CO({\acceleration_reg[27]_i_3_n_0 ,\acceleration_reg[27]_i_3_n_1 ,\acceleration_reg[27]_i_3_n_2 ,\acceleration_reg[27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[27] ,\acceleration_reg_n_0_[26] ,\acceleration_reg_n_0_[25] ,\acceleration_reg_n_0_[24] }),
        .O({\acceleration_reg[27]_i_3_n_4 ,\acceleration_reg[27]_i_3_n_5 ,\acceleration_reg[27]_i_3_n_6 ,\acceleration_reg[27]_i_3_n_7 }),
        .S({\acceleration[27]_i_8_n_0 ,\acceleration[27]_i_9_n_0 ,\acceleration[27]_i_10_n_0 ,\acceleration[27]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[28] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[28]),
        .Q(\acceleration_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[29] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[29]),
        .Q(\acceleration_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[2] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[2]),
        .Q(\acceleration_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[30] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[30]),
        .Q(\acceleration_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[31] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[31]),
        .Q(\acceleration_reg_n_0_[31] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[31]_i_2 
       (.CI(\acceleration_reg[27]_i_2_n_0 ),
        .CO({\acceleration_reg[31]_i_2_n_0 ,\acceleration_reg[31]_i_2_n_1 ,\acceleration_reg[31]_i_2_n_2 ,\acceleration_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[31] ,\acceleration_reg_n_0_[30] ,\acceleration_reg_n_0_[29] ,\acceleration_reg_n_0_[28] }),
        .O({\acceleration_reg[31]_i_2_n_4 ,\acceleration_reg[31]_i_2_n_5 ,\acceleration_reg[31]_i_2_n_6 ,\acceleration_reg[31]_i_2_n_7 }),
        .S({\acceleration[31]_i_4_n_0 ,\acceleration[31]_i_5_n_0 ,\acceleration[31]_i_6_n_0 ,\acceleration[31]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[31]_i_3 
       (.CI(\acceleration_reg[27]_i_3_n_0 ),
        .CO({\acceleration_reg[31]_i_3_n_0 ,\acceleration_reg[31]_i_3_n_1 ,\acceleration_reg[31]_i_3_n_2 ,\acceleration_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[31] ,\acceleration_reg_n_0_[30] ,\acceleration_reg_n_0_[29] ,\acceleration_reg_n_0_[28] }),
        .O({\acceleration_reg[31]_i_3_n_4 ,\acceleration_reg[31]_i_3_n_5 ,\acceleration_reg[31]_i_3_n_6 ,\acceleration_reg[31]_i_3_n_7 }),
        .S({\acceleration[31]_i_8_n_0 ,\acceleration[31]_i_9_n_0 ,\acceleration[31]_i_10_n_0 ,\acceleration[31]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[32] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[32]),
        .Q(\acceleration_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[33] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[33]),
        .Q(\acceleration_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[34] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[34]),
        .Q(\acceleration_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[35] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[35]),
        .Q(\acceleration_reg_n_0_[35] ));
  CARRY4 \acceleration_reg[35]_i_14 
       (.CI(\acceleration_reg[35]_i_32_n_0 ),
        .CO({\acceleration_reg[35]_i_14_n_0 ,\acceleration_reg[35]_i_14_n_1 ,\acceleration_reg[35]_i_14_n_2 ,\acceleration_reg[35]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_33_n_0 ,\acceleration[35]_i_34_n_0 ,\acceleration[35]_i_35_n_0 ,\acceleration[35]_i_36_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_14_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_37_n_0 ,\acceleration[35]_i_38_n_0 ,\acceleration[35]_i_39_n_0 ,\acceleration[35]_i_40_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_2 
       (.CI(\acceleration_reg[31]_i_2_n_0 ),
        .CO({\acceleration_reg[35]_i_2_n_0 ,\acceleration_reg[35]_i_2_n_1 ,\acceleration_reg[35]_i_2_n_2 ,\acceleration_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[34] ,\acceleration_reg_n_0_[33] ,\acceleration_reg_n_0_[32] ,\acceleration_reg[35]_i_4_n_0 }),
        .O({\acceleration_reg[35]_i_2_n_4 ,\acceleration_reg[35]_i_2_n_5 ,\acceleration_reg[35]_i_2_n_6 ,\acceleration_reg[35]_i_2_n_7 }),
        .S({\acceleration[35]_i_5_n_0 ,\acceleration[35]_i_6_n_0 ,\acceleration[35]_i_7_n_0 ,\acceleration[35]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_23 
       (.CI(\acceleration_reg[35]_i_41_n_0 ),
        .CO({\acceleration_reg[35]_i_23_n_0 ,\acceleration_reg[35]_i_23_n_1 ,\acceleration_reg[35]_i_23_n_2 ,\acceleration_reg[35]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_42_n_0 ,\acceleration[35]_i_43_n_0 ,\acceleration[35]_i_44_n_0 ,\acceleration[35]_i_45_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_23_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_46_n_0 ,\acceleration[35]_i_47_n_0 ,\acceleration[35]_i_48_n_0 ,\acceleration[35]_i_49_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_3 
       (.CI(\acceleration_reg[31]_i_3_n_0 ),
        .CO({\acceleration_reg[35]_i_3_n_0 ,\acceleration_reg[35]_i_3_n_1 ,\acceleration_reg[35]_i_3_n_2 ,\acceleration_reg[35]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[34] ,\acceleration_reg_n_0_[33] ,\acceleration_reg_n_0_[32] ,\acceleration_reg[35]_i_9_n_0 }),
        .O({\acceleration_reg[35]_i_3_n_4 ,\acceleration_reg[35]_i_3_n_5 ,\acceleration_reg[35]_i_3_n_6 ,\acceleration_reg[35]_i_3_n_7 }),
        .S({\acceleration[35]_i_10_n_0 ,\acceleration[35]_i_11_n_0 ,\acceleration[35]_i_12_n_0 ,\acceleration[35]_i_13_n_0 }));
  CARRY4 \acceleration_reg[35]_i_32 
       (.CI(\acceleration_reg[35]_i_50_n_0 ),
        .CO({\acceleration_reg[35]_i_32_n_0 ,\acceleration_reg[35]_i_32_n_1 ,\acceleration_reg[35]_i_32_n_2 ,\acceleration_reg[35]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_51_n_0 ,\acceleration[35]_i_52_n_0 ,\acceleration[35]_i_53_n_0 ,\acceleration[35]_i_54_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_32_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_55_n_0 ,\acceleration[35]_i_56_n_0 ,\acceleration[35]_i_57_n_0 ,\acceleration[35]_i_58_n_0 }));
  CARRY4 \acceleration_reg[35]_i_4 
       (.CI(\acceleration_reg[35]_i_14_n_0 ),
        .CO({\acceleration_reg[35]_i_4_n_0 ,\acceleration_reg[35]_i_4_n_1 ,\acceleration_reg[35]_i_4_n_2 ,\acceleration_reg[35]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_15_n_0 ,\acceleration[35]_i_16_n_0 ,\acceleration[35]_i_17_n_0 ,\acceleration[35]_i_18_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_4_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_19_n_0 ,\acceleration[35]_i_20_n_0 ,\acceleration[35]_i_21_n_0 ,\acceleration[35]_i_22_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_41 
       (.CI(\acceleration_reg[35]_i_59_n_0 ),
        .CO({\acceleration_reg[35]_i_41_n_0 ,\acceleration_reg[35]_i_41_n_1 ,\acceleration_reg[35]_i_41_n_2 ,\acceleration_reg[35]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_60_n_0 ,\acceleration[35]_i_61_n_0 ,\acceleration[35]_i_62_n_0 ,\acceleration[35]_i_63_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_41_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_64_n_0 ,\acceleration[35]_i_65_n_0 ,\acceleration[35]_i_66_n_0 ,\acceleration[35]_i_67_n_0 }));
  CARRY4 \acceleration_reg[35]_i_50 
       (.CI(\acceleration_reg[35]_i_68_n_0 ),
        .CO({\acceleration_reg[35]_i_50_n_0 ,\acceleration_reg[35]_i_50_n_1 ,\acceleration_reg[35]_i_50_n_2 ,\acceleration_reg[35]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_69_n_0 ,\acceleration[35]_i_70_n_0 ,\acceleration[35]_i_71_n_0 ,\acceleration[35]_i_72_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_50_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_73_n_0 ,\acceleration[35]_i_74_n_0 ,\acceleration[35]_i_75_n_0 ,\acceleration[35]_i_76_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_59 
       (.CI(\acceleration_reg[35]_i_77_n_0 ),
        .CO({\acceleration_reg[35]_i_59_n_0 ,\acceleration_reg[35]_i_59_n_1 ,\acceleration_reg[35]_i_59_n_2 ,\acceleration_reg[35]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_78_n_0 ,\acceleration[35]_i_79_n_0 ,\acceleration[35]_i_80_n_0 ,\acceleration[35]_i_81_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_59_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_82_n_0 ,\acceleration[35]_i_83_n_0 ,\acceleration[35]_i_84_n_0 ,\acceleration[35]_i_85_n_0 }));
  CARRY4 \acceleration_reg[35]_i_68 
       (.CI(1'b0),
        .CO({\acceleration_reg[35]_i_68_n_0 ,\acceleration_reg[35]_i_68_n_1 ,\acceleration_reg[35]_i_68_n_2 ,\acceleration_reg[35]_i_68_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_86_n_0 ,\acceleration[35]_i_87_n_0 ,\acceleration[35]_i_88_n_0 ,\acceleration[35]_i_89_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_68_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_90_n_0 ,\acceleration[35]_i_91_n_0 ,\acceleration[35]_i_92_n_0 ,\acceleration[35]_i_93_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_77 
       (.CI(1'b0),
        .CO({\acceleration_reg[35]_i_77_n_0 ,\acceleration_reg[35]_i_77_n_1 ,\acceleration_reg[35]_i_77_n_2 ,\acceleration_reg[35]_i_77_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_94_n_0 ,\acceleration[35]_i_95_n_0 ,\acceleration[35]_i_96_n_0 ,\acceleration[35]_i_97_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_77_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_98_n_0 ,\acceleration[35]_i_99_n_0 ,\acceleration[35]_i_100_n_0 ,\acceleration[35]_i_101_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[35]_i_9 
       (.CI(\acceleration_reg[35]_i_23_n_0 ),
        .CO({\acceleration_reg[35]_i_9_n_0 ,\acceleration_reg[35]_i_9_n_1 ,\acceleration_reg[35]_i_9_n_2 ,\acceleration_reg[35]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration[35]_i_24_n_0 ,\acceleration[35]_i_25_n_0 ,\acceleration[35]_i_26_n_0 ,\acceleration[35]_i_27_n_0 }),
        .O(\NLW_acceleration_reg[35]_i_9_O_UNCONNECTED [3:0]),
        .S({\acceleration[35]_i_28_n_0 ,\acceleration[35]_i_29_n_0 ,\acceleration[35]_i_30_n_0 ,\acceleration[35]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[36] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[36]),
        .Q(\acceleration_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[37] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[37]),
        .Q(\acceleration_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[38] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[38]),
        .Q(\acceleration_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[39] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[39]),
        .Q(\acceleration_reg_n_0_[39] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[39]_i_2 
       (.CI(\acceleration_reg[35]_i_2_n_0 ),
        .CO({\acceleration_reg[39]_i_2_n_0 ,\acceleration_reg[39]_i_2_n_1 ,\acceleration_reg[39]_i_2_n_2 ,\acceleration_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[38] ,\acceleration_reg_n_0_[37] ,\acceleration_reg_n_0_[36] ,\acceleration_reg_n_0_[35] }),
        .O({\acceleration_reg[39]_i_2_n_4 ,\acceleration_reg[39]_i_2_n_5 ,\acceleration_reg[39]_i_2_n_6 ,\acceleration_reg[39]_i_2_n_7 }),
        .S({\acceleration[39]_i_4_n_0 ,\acceleration[39]_i_5_n_0 ,\acceleration[39]_i_6_n_0 ,\acceleration[39]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[39]_i_3 
       (.CI(\acceleration_reg[35]_i_3_n_0 ),
        .CO({\acceleration_reg[39]_i_3_n_0 ,\acceleration_reg[39]_i_3_n_1 ,\acceleration_reg[39]_i_3_n_2 ,\acceleration_reg[39]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[38] ,\acceleration_reg_n_0_[37] ,\acceleration_reg_n_0_[36] ,\acceleration_reg_n_0_[35] }),
        .O({\acceleration_reg[39]_i_3_n_4 ,\acceleration_reg[39]_i_3_n_5 ,\acceleration_reg[39]_i_3_n_6 ,\acceleration_reg[39]_i_3_n_7 }),
        .S({\acceleration[39]_i_8_n_0 ,\acceleration[39]_i_9_n_0 ,\acceleration[39]_i_10_n_0 ,\acceleration[39]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[3] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[3]),
        .Q(\acceleration_reg_n_0_[3] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\acceleration_reg[3]_i_2_n_0 ,\acceleration_reg[3]_i_2_n_1 ,\acceleration_reg[3]_i_2_n_2 ,\acceleration_reg[3]_i_2_n_3 }),
        .CYINIT(\acceleration_reg_n_0_[0] ),
        .DI({\acceleration_reg_n_0_[3] ,\acceleration_reg_n_0_[2] ,\acceleration_reg_n_0_[1] ,\acceleration[3]_i_4_n_0 }),
        .O({\acceleration_reg[3]_i_2_n_4 ,\acceleration_reg[3]_i_2_n_5 ,\acceleration_reg[3]_i_2_n_6 ,\acceleration_reg[3]_i_2_n_7 }),
        .S({\acceleration[3]_i_5_n_0 ,\acceleration[3]_i_6_n_0 ,\acceleration[3]_i_7_n_0 ,\acceleration[3]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\acceleration_reg[3]_i_3_n_0 ,\acceleration_reg[3]_i_3_n_1 ,\acceleration_reg[3]_i_3_n_2 ,\acceleration_reg[3]_i_3_n_3 }),
        .CYINIT(\acceleration_reg_n_0_[0] ),
        .DI({\acceleration_reg_n_0_[3] ,\acceleration_reg_n_0_[2] ,\acceleration_reg_n_0_[1] ,p_1_in}),
        .O({\acceleration_reg[3]_i_3_n_4 ,\acceleration_reg[3]_i_3_n_5 ,\acceleration_reg[3]_i_3_n_6 ,\acceleration_reg[3]_i_3_n_7 }),
        .S({\acceleration[3]_i_10_n_0 ,\acceleration[3]_i_11_n_0 ,\acceleration[3]_i_12_n_0 ,\acceleration[3]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[40] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[40]),
        .Q(\acceleration_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[41] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[41]),
        .Q(\acceleration_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[42] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[42]),
        .Q(\acceleration_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[43] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[43]),
        .Q(\acceleration_reg_n_0_[43] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[43]_i_3 
       (.CI(\acceleration_reg[39]_i_2_n_0 ),
        .CO({\NLW_acceleration_reg[43]_i_3_CO_UNCONNECTED [3],\acceleration_reg[43]_i_3_n_1 ,\acceleration_reg[43]_i_3_n_2 ,\acceleration_reg[43]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acceleration_reg_n_0_[41] ,\acceleration_reg_n_0_[40] ,\acceleration_reg_n_0_[39] }),
        .O({\acceleration_reg[43]_i_3_n_4 ,\acceleration_reg[43]_i_3_n_5 ,\acceleration_reg[43]_i_3_n_6 ,\acceleration_reg[43]_i_3_n_7 }),
        .S({\acceleration[43]_i_7_n_0 ,\acceleration[43]_i_8_n_0 ,\acceleration[43]_i_9_n_0 ,\acceleration[43]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[43]_i_5 
       (.CI(\acceleration_reg[39]_i_3_n_0 ),
        .CO({\NLW_acceleration_reg[43]_i_5_CO_UNCONNECTED [3],\acceleration_reg[43]_i_5_n_1 ,\acceleration_reg[43]_i_5_n_2 ,\acceleration_reg[43]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acceleration_reg_n_0_[41] ,\acceleration_reg_n_0_[40] ,\acceleration_reg_n_0_[39] }),
        .O({\acceleration_reg[43]_i_5_n_4 ,\acceleration_reg[43]_i_5_n_5 ,\acceleration_reg[43]_i_5_n_6 ,\acceleration_reg[43]_i_5_n_7 }),
        .S({\acceleration[43]_i_11_n_0 ,\acceleration[43]_i_12_n_0 ,\acceleration[43]_i_13_n_0 ,\acceleration[43]_i_14_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[4] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[4]),
        .Q(\acceleration_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[5] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[5]),
        .Q(\acceleration_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[6] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[6]),
        .Q(\acceleration_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[7] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[7]),
        .Q(\acceleration_reg_n_0_[7] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[7]_i_2 
       (.CI(\acceleration_reg[3]_i_2_n_0 ),
        .CO({\acceleration_reg[7]_i_2_n_0 ,\acceleration_reg[7]_i_2_n_1 ,\acceleration_reg[7]_i_2_n_2 ,\acceleration_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[7] ,\acceleration_reg_n_0_[6] ,\acceleration_reg_n_0_[5] ,\acceleration_reg_n_0_[4] }),
        .O({\acceleration_reg[7]_i_2_n_4 ,\acceleration_reg[7]_i_2_n_5 ,\acceleration_reg[7]_i_2_n_6 ,\acceleration_reg[7]_i_2_n_7 }),
        .S({\acceleration[7]_i_4_n_0 ,\acceleration[7]_i_5_n_0 ,\acceleration[7]_i_6_n_0 ,\acceleration[7]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \acceleration_reg[7]_i_3 
       (.CI(\acceleration_reg[3]_i_3_n_0 ),
        .CO({\acceleration_reg[7]_i_3_n_0 ,\acceleration_reg[7]_i_3_n_1 ,\acceleration_reg[7]_i_3_n_2 ,\acceleration_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[7] ,\acceleration_reg_n_0_[6] ,\acceleration_reg_n_0_[5] ,\acceleration_reg_n_0_[4] }),
        .O({\acceleration_reg[7]_i_3_n_4 ,\acceleration_reg[7]_i_3_n_5 ,\acceleration_reg[7]_i_3_n_6 ,\acceleration_reg[7]_i_3_n_7 }),
        .S({\acceleration[7]_i_8_n_0 ,\acceleration[7]_i_9_n_0 ,\acceleration[7]_i_10_n_0 ,\acceleration[7]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[8] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[8]),
        .Q(\acceleration_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_reg[9] 
       (.C(sys_clk),
        .CE(\acceleration[43]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(acceleration[9]),
        .Q(\acceleration_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[11]_i_2 
       (.I0(\acceleration_remain_reg_n_0_[11] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[11]_i_3 
       (.I0(\acceleration_remain_reg_n_0_[10] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[11]_i_4 
       (.I0(\acceleration_remain_reg_n_0_[9] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[11]_i_5 
       (.I0(\acceleration_remain_reg_n_0_[8] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[11]_i_6 
       (.I0(\acceleration_remain_reg_n_0_[11] ),
        .I1(\acceleration_reg_n_0_[11] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[11]_i_7 
       (.I0(\acceleration_remain_reg_n_0_[10] ),
        .I1(\acceleration_reg_n_0_[10] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[11]_i_8 
       (.I0(\acceleration_remain_reg_n_0_[9] ),
        .I1(\acceleration_reg_n_0_[9] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[11]_i_9 
       (.I0(\acceleration_remain_reg_n_0_[8] ),
        .I1(\acceleration_reg_n_0_[8] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[15]_i_2 
       (.I0(\acceleration_remain_reg_n_0_[15] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[15]_i_3 
       (.I0(\acceleration_remain_reg_n_0_[14] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[15]_i_4 
       (.I0(\acceleration_remain_reg_n_0_[13] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[15]_i_5 
       (.I0(\acceleration_remain_reg_n_0_[12] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[15]_i_6 
       (.I0(\acceleration_remain_reg_n_0_[15] ),
        .I1(\acceleration_reg_n_0_[15] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[15]_i_7 
       (.I0(\acceleration_remain_reg_n_0_[14] ),
        .I1(\acceleration_reg_n_0_[14] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[15]_i_8 
       (.I0(\acceleration_remain_reg_n_0_[13] ),
        .I1(\acceleration_reg_n_0_[13] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[15]_i_9 
       (.I0(\acceleration_remain_reg_n_0_[12] ),
        .I1(\acceleration_reg_n_0_[12] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acceleration_remain[19]_i_1 
       (.I0(start_s),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(acceleration_remain));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[19]_i_3 
       (.I0(\acceleration_remain_reg_n_0_[18] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[19]_i_4 
       (.I0(\acceleration_remain_reg_n_0_[17] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[19]_i_5 
       (.I0(\acceleration_remain_reg_n_0_[16] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[19]_i_6 
       (.I0(\acceleration_remain_reg_n_0_[19] ),
        .I1(\acceleration_reg_n_0_[19] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[19]_i_7 
       (.I0(\acceleration_remain_reg_n_0_[18] ),
        .I1(\acceleration_reg_n_0_[18] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[19]_i_8 
       (.I0(\acceleration_remain_reg_n_0_[17] ),
        .I1(\acceleration_reg_n_0_[17] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[19]_i_9 
       (.I0(\acceleration_remain_reg_n_0_[16] ),
        .I1(\acceleration_reg_n_0_[16] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[3]_i_2 
       (.I0(\acceleration_remain_reg_n_0_[3] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[3]_i_3 
       (.I0(\acceleration_remain_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[3]_i_4 
       (.I0(\acceleration_remain_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[3]_i_5 
       (.I0(\acceleration_remain_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[3]_i_6 
       (.I0(\acceleration_remain_reg_n_0_[3] ),
        .I1(\acceleration_reg_n_0_[3] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[3]_i_7 
       (.I0(\acceleration_remain_reg_n_0_[2] ),
        .I1(\acceleration_reg_n_0_[2] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[3]_i_8 
       (.I0(\acceleration_remain_reg_n_0_[1] ),
        .I1(\acceleration_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[3]_i_9 
       (.I0(\acceleration_remain_reg_n_0_[0] ),
        .I1(\acceleration_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[7]_i_2 
       (.I0(\acceleration_remain_reg_n_0_[7] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[7]_i_3 
       (.I0(\acceleration_remain_reg_n_0_[6] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[7]_i_4 
       (.I0(\acceleration_remain_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \acceleration_remain[7]_i_5 
       (.I0(\acceleration_remain_reg_n_0_[4] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\acceleration_remain[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[7]_i_6 
       (.I0(\acceleration_remain_reg_n_0_[7] ),
        .I1(\acceleration_reg_n_0_[7] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[7]_i_7 
       (.I0(\acceleration_remain_reg_n_0_[6] ),
        .I1(\acceleration_reg_n_0_[6] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[7]_i_8 
       (.I0(\acceleration_remain_reg_n_0_[5] ),
        .I1(\acceleration_reg_n_0_[5] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \acceleration_remain[7]_i_9 
       (.I0(\acceleration_remain_reg_n_0_[4] ),
        .I1(\acceleration_reg_n_0_[4] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\acceleration_remain[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[0] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[3]_i_1_n_7 ),
        .Q(\acceleration_remain_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[10] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[11]_i_1_n_5 ),
        .Q(\acceleration_remain_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[11] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[11]_i_1_n_4 ),
        .Q(\acceleration_remain_reg_n_0_[11] ));
  CARRY4 \acceleration_remain_reg[11]_i_1 
       (.CI(\acceleration_remain_reg[7]_i_1_n_0 ),
        .CO({\acceleration_remain_reg[11]_i_1_n_0 ,\acceleration_remain_reg[11]_i_1_n_1 ,\acceleration_remain_reg[11]_i_1_n_2 ,\acceleration_remain_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_remain[11]_i_2_n_0 ,\acceleration_remain[11]_i_3_n_0 ,\acceleration_remain[11]_i_4_n_0 ,\acceleration_remain[11]_i_5_n_0 }),
        .O({\acceleration_remain_reg[11]_i_1_n_4 ,\acceleration_remain_reg[11]_i_1_n_5 ,\acceleration_remain_reg[11]_i_1_n_6 ,\acceleration_remain_reg[11]_i_1_n_7 }),
        .S({\acceleration_remain[11]_i_6_n_0 ,\acceleration_remain[11]_i_7_n_0 ,\acceleration_remain[11]_i_8_n_0 ,\acceleration_remain[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[12] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[15]_i_1_n_7 ),
        .Q(\acceleration_remain_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[13] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[15]_i_1_n_6 ),
        .Q(\acceleration_remain_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[14] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[15]_i_1_n_5 ),
        .Q(\acceleration_remain_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[15] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[15]_i_1_n_4 ),
        .Q(\acceleration_remain_reg_n_0_[15] ));
  CARRY4 \acceleration_remain_reg[15]_i_1 
       (.CI(\acceleration_remain_reg[11]_i_1_n_0 ),
        .CO({\acceleration_remain_reg[15]_i_1_n_0 ,\acceleration_remain_reg[15]_i_1_n_1 ,\acceleration_remain_reg[15]_i_1_n_2 ,\acceleration_remain_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_remain[15]_i_2_n_0 ,\acceleration_remain[15]_i_3_n_0 ,\acceleration_remain[15]_i_4_n_0 ,\acceleration_remain[15]_i_5_n_0 }),
        .O({\acceleration_remain_reg[15]_i_1_n_4 ,\acceleration_remain_reg[15]_i_1_n_5 ,\acceleration_remain_reg[15]_i_1_n_6 ,\acceleration_remain_reg[15]_i_1_n_7 }),
        .S({\acceleration_remain[15]_i_6_n_0 ,\acceleration_remain[15]_i_7_n_0 ,\acceleration_remain[15]_i_8_n_0 ,\acceleration_remain[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[16] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[19]_i_2_n_7 ),
        .Q(\acceleration_remain_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[17] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[19]_i_2_n_6 ),
        .Q(\acceleration_remain_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[18] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[19]_i_2_n_5 ),
        .Q(\acceleration_remain_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[19] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[19]_i_2_n_4 ),
        .Q(\acceleration_remain_reg_n_0_[19] ));
  CARRY4 \acceleration_remain_reg[19]_i_2 
       (.CI(\acceleration_remain_reg[15]_i_1_n_0 ),
        .CO({\NLW_acceleration_remain_reg[19]_i_2_CO_UNCONNECTED [3],\acceleration_remain_reg[19]_i_2_n_1 ,\acceleration_remain_reg[19]_i_2_n_2 ,\acceleration_remain_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acceleration_remain[19]_i_3_n_0 ,\acceleration_remain[19]_i_4_n_0 ,\acceleration_remain[19]_i_5_n_0 }),
        .O({\acceleration_remain_reg[19]_i_2_n_4 ,\acceleration_remain_reg[19]_i_2_n_5 ,\acceleration_remain_reg[19]_i_2_n_6 ,\acceleration_remain_reg[19]_i_2_n_7 }),
        .S({\acceleration_remain[19]_i_6_n_0 ,\acceleration_remain[19]_i_7_n_0 ,\acceleration_remain[19]_i_8_n_0 ,\acceleration_remain[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[1] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[3]_i_1_n_6 ),
        .Q(\acceleration_remain_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[2] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[3]_i_1_n_5 ),
        .Q(\acceleration_remain_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[3] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[3]_i_1_n_4 ),
        .Q(\acceleration_remain_reg_n_0_[3] ));
  CARRY4 \acceleration_remain_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acceleration_remain_reg[3]_i_1_n_0 ,\acceleration_remain_reg[3]_i_1_n_1 ,\acceleration_remain_reg[3]_i_1_n_2 ,\acceleration_remain_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_remain[3]_i_2_n_0 ,\acceleration_remain[3]_i_3_n_0 ,\acceleration_remain[3]_i_4_n_0 ,\acceleration_remain[3]_i_5_n_0 }),
        .O({\acceleration_remain_reg[3]_i_1_n_4 ,\acceleration_remain_reg[3]_i_1_n_5 ,\acceleration_remain_reg[3]_i_1_n_6 ,\acceleration_remain_reg[3]_i_1_n_7 }),
        .S({\acceleration_remain[3]_i_6_n_0 ,\acceleration_remain[3]_i_7_n_0 ,\acceleration_remain[3]_i_8_n_0 ,\acceleration_remain[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[4] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[7]_i_1_n_7 ),
        .Q(\acceleration_remain_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[5] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[7]_i_1_n_6 ),
        .Q(\acceleration_remain_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[6] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[7]_i_1_n_5 ),
        .Q(\acceleration_remain_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[7] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[7]_i_1_n_4 ),
        .Q(\acceleration_remain_reg_n_0_[7] ));
  CARRY4 \acceleration_remain_reg[7]_i_1 
       (.CI(\acceleration_remain_reg[3]_i_1_n_0 ),
        .CO({\acceleration_remain_reg[7]_i_1_n_0 ,\acceleration_remain_reg[7]_i_1_n_1 ,\acceleration_remain_reg[7]_i_1_n_2 ,\acceleration_remain_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_remain[7]_i_2_n_0 ,\acceleration_remain[7]_i_3_n_0 ,\acceleration_remain[7]_i_4_n_0 ,\acceleration_remain[7]_i_5_n_0 }),
        .O({\acceleration_remain_reg[7]_i_1_n_4 ,\acceleration_remain_reg[7]_i_1_n_5 ,\acceleration_remain_reg[7]_i_1_n_6 ,\acceleration_remain_reg[7]_i_1_n_7 }),
        .S({\acceleration_remain[7]_i_6_n_0 ,\acceleration_remain[7]_i_7_n_0 ,\acceleration_remain[7]_i_8_n_0 ,\acceleration_remain[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[8] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[11]_i_1_n_7 ),
        .Q(\acceleration_remain_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \acceleration_remain_reg[9] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\acceleration_remain_reg[11]_i_1_n_6 ),
        .Q(\acceleration_remain_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    forceStopflg_i_1
       (.I0(force_stop),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(forceStopflg));
  FDCE #(
    .INIT(1'b0)) 
    forceStopflg_reg
       (.C(sys_clk),
        .CE(\AIM_SPEED_reg[39]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(forceStopflg),
        .Q(forceStopflg_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4444454F)) 
    \output_counter[0]_i_1 
       (.I0(output_counter[0]),
        .I1(\output_counter[19]_i_10_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(\output_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[10]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[10]),
        .O(\output_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[11]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[11]),
        .O(\output_counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[12]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[12]),
        .O(\output_counter[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[13]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[13]),
        .O(\output_counter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[14]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[14]),
        .O(\output_counter[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[15]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[15]),
        .O(\output_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[16]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[16]),
        .O(\output_counter[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[17]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[17]),
        .O(\output_counter[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[18]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[18]),
        .O(\output_counter[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \output_counter[18]_i_2 
       (.I0(sys_rst_n),
        .O(\output_counter[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \output_counter[19]_i_1 
       (.I0(\output_counter[19]_i_4_n_0 ),
        .I1(\output_counter[19]_i_5_n_0 ),
        .I2(\output_counter[19]_i_6_n_0 ),
        .I3(\output_counter[19]_i_7_n_0 ),
        .I4(\output_counter[19]_i_8_n_0 ),
        .I5(\output_counter[19]_i_9_n_0 ),
        .O(\output_counter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \output_counter[19]_i_10 
       (.I0(\output_counter[19]_i_18_n_0 ),
        .I1(\output_counter_reg[19]_i_16_n_6 ),
        .I2(\output_counter[19]_i_6_n_0 ),
        .I3(\output_counter_reg[19]_i_16_n_7 ),
        .I4(\output_counter_reg[19]_i_16_n_4 ),
        .I5(\output_counter_reg[19]_i_16_n_5 ),
        .O(\output_counter[19]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \output_counter[19]_i_15 
       (.I0(\output_counter_reg[19]_i_28_n_7 ),
        .I1(\output_counter_reg[19]_i_28_n_6 ),
        .I2(\output_counter_reg[19]_i_28_n_5 ),
        .I3(\output_counter_reg[19]_i_28_n_4 ),
        .O(\output_counter[19]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \output_counter[19]_i_17 
       (.I0(\output_counter_reg[19]_i_19_n_7 ),
        .I1(\output_counter_reg[19]_i_19_n_6 ),
        .I2(\output_counter_reg[19]_i_19_n_5 ),
        .I3(\output_counter_reg[19]_i_19_n_4 ),
        .O(\output_counter[19]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \output_counter[19]_i_18 
       (.I0(\output_counter[19]_i_33_n_0 ),
        .I1(\output_counter_reg[19]_i_19_n_7 ),
        .I2(\output_counter_reg[19]_i_19_n_6 ),
        .I3(\output_counter_reg[19]_i_19_n_5 ),
        .O(\output_counter[19]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[19]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[19]),
        .O(\output_counter[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_20 
       (.I0(pos_reg[43]),
        .I1(pos_pre[43]),
        .O(\output_counter[19]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_21 
       (.I0(pos_reg[42]),
        .I1(pos_pre[42]),
        .O(\output_counter[19]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_22 
       (.I0(pos_reg[41]),
        .I1(pos_pre[41]),
        .O(\output_counter[19]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_23 
       (.I0(pos_reg[40]),
        .I1(pos_pre[40]),
        .O(\output_counter[19]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_24 
       (.I0(pos_reg[27]),
        .I1(pos_pre[27]),
        .O(\output_counter[19]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_25 
       (.I0(pos_reg[26]),
        .I1(pos_pre[26]),
        .O(\output_counter[19]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_26 
       (.I0(pos_reg[25]),
        .I1(pos_pre[25]),
        .O(\output_counter[19]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_27 
       (.I0(pos_reg[24]),
        .I1(pos_pre[24]),
        .O(\output_counter[19]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_29 
       (.I0(pos_reg[35]),
        .I1(pos_pre[35]),
        .O(\output_counter[19]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \output_counter[19]_i_3 
       (.I0(sys_rst_n),
        .O(\output_counter[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_30 
       (.I0(pos_reg[34]),
        .I1(pos_pre[34]),
        .O(\output_counter[19]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_31 
       (.I0(pos_reg[33]),
        .I1(pos_pre[33]),
        .O(\output_counter[19]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_32 
       (.I0(pos_reg[32]),
        .I1(pos_pre[32]),
        .O(\output_counter[19]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \output_counter[19]_i_33 
       (.I0(\output_counter_reg[19]_i_19_n_4 ),
        .I1(\output_counter_reg[19]_i_12_n_7 ),
        .I2(\output_counter_reg[19]_i_12_n_6 ),
        .I3(\output_counter_reg[19]_i_12_n_5 ),
        .I4(\output_counter_reg[19]_i_12_n_4 ),
        .I5(\output_counter_reg[19]_i_13_n_3 ),
        .O(\output_counter[19]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_34 
       (.I0(pos_reg[39]),
        .I1(pos_pre[39]),
        .O(\output_counter[19]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_35 
       (.I0(pos_reg[38]),
        .I1(pos_pre[38]),
        .O(\output_counter[19]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_36 
       (.I0(pos_reg[37]),
        .I1(pos_pre[37]),
        .O(\output_counter[19]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_37 
       (.I0(pos_reg[36]),
        .I1(pos_pre[36]),
        .O(\output_counter[19]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_38 
       (.I0(pos_reg[31]),
        .I1(pos_pre[31]),
        .O(\output_counter[19]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_39 
       (.I0(pos_reg[30]),
        .I1(pos_pre[30]),
        .O(\output_counter[19]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \output_counter[19]_i_4 
       (.I0(\output_counter_reg[19]_i_12_n_7 ),
        .I1(\output_counter_reg[19]_i_12_n_6 ),
        .I2(\output_counter_reg[19]_i_12_n_5 ),
        .I3(\output_counter_reg[19]_i_12_n_4 ),
        .I4(\output_counter_reg[19]_i_13_n_3 ),
        .O(\output_counter[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_40 
       (.I0(pos_reg[29]),
        .I1(pos_pre[29]),
        .O(\output_counter[19]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_counter[19]_i_41 
       (.I0(pos_reg[28]),
        .I1(pos_pre[28]),
        .O(\output_counter[19]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \output_counter[19]_i_5 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\output_counter[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \output_counter[19]_i_6 
       (.I0(\output_counter_reg[19]_i_14_n_4 ),
        .I1(\output_counter_reg[19]_i_14_n_5 ),
        .I2(\output_counter_reg[19]_i_14_n_6 ),
        .I3(\output_counter_reg[19]_i_14_n_7 ),
        .I4(\output_counter[19]_i_15_n_0 ),
        .O(\output_counter[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \output_counter[19]_i_7 
       (.I0(\output_counter_reg[19]_i_16_n_4 ),
        .I1(\output_counter_reg[19]_i_16_n_5 ),
        .I2(\output_counter_reg[19]_i_16_n_6 ),
        .I3(\output_counter_reg[19]_i_16_n_7 ),
        .I4(\output_counter[19]_i_17_n_0 ),
        .O(\output_counter[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \output_counter[19]_i_8 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(start_s),
        .O(\output_counter[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \output_counter[19]_i_9 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(acceleration0),
        .O(\output_counter[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[1]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[1]),
        .O(\output_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[2]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[2]),
        .O(\output_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[3]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[3]),
        .O(\output_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[4]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[4]),
        .O(\output_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[5]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[5]),
        .O(\output_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[6]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[6]),
        .O(\output_counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[7]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[7]),
        .O(\output_counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[8]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[8]),
        .O(\output_counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE100000)) 
    \output_counter[9]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I2(state[2]),
        .I3(\output_counter[19]_i_10_n_0 ),
        .I4(data0[9]),
        .O(\output_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[0] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[0]_i_1_n_0 ),
        .Q(output_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[10] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[10]_i_1_n_0 ),
        .Q(output_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[11] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[11]_i_1_n_0 ),
        .Q(output_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[12] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[12]_i_1_n_0 ),
        .Q(output_counter[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[12]_i_2 
       (.CI(\output_counter_reg[8]_i_2_n_0 ),
        .CO({\output_counter_reg[12]_i_2_n_0 ,\output_counter_reg[12]_i_2_n_1 ,\output_counter_reg[12]_i_2_n_2 ,\output_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(output_counter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[13] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[13]_i_1_n_0 ),
        .Q(output_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[14] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[14]_i_1_n_0 ),
        .Q(output_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[15] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[15]_i_1_n_0 ),
        .Q(output_counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[16] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[16]_i_1_n_0 ),
        .Q(output_counter[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[16]_i_2 
       (.CI(\output_counter_reg[12]_i_2_n_0 ),
        .CO({\output_counter_reg[16]_i_2_n_0 ,\output_counter_reg[16]_i_2_n_1 ,\output_counter_reg[16]_i_2_n_2 ,\output_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(output_counter[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[17] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[17]_i_1_n_0 ),
        .Q(output_counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[18] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[18]_i_1_n_0 ),
        .Q(output_counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[19] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\output_counter[19]_i_2_n_0 ),
        .Q(output_counter[19]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_11 
       (.CI(\output_counter_reg[16]_i_2_n_0 ),
        .CO({\NLW_output_counter_reg[19]_i_11_CO_UNCONNECTED [3:2],\output_counter_reg[19]_i_11_n_2 ,\output_counter_reg[19]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_output_counter_reg[19]_i_11_O_UNCONNECTED [3],data0[19:17]}),
        .S({1'b0,output_counter[19:17]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_12 
       (.CI(\output_counter_reg[19]_i_19_n_0 ),
        .CO({\output_counter_reg[19]_i_12_n_0 ,\output_counter_reg[19]_i_12_n_1 ,\output_counter_reg[19]_i_12_n_2 ,\output_counter_reg[19]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(pos_reg[43:40]),
        .O({\output_counter_reg[19]_i_12_n_4 ,\output_counter_reg[19]_i_12_n_5 ,\output_counter_reg[19]_i_12_n_6 ,\output_counter_reg[19]_i_12_n_7 }),
        .S({\output_counter[19]_i_20_n_0 ,\output_counter[19]_i_21_n_0 ,\output_counter[19]_i_22_n_0 ,\output_counter[19]_i_23_n_0 }));
  CARRY4 \output_counter_reg[19]_i_13 
       (.CI(\output_counter_reg[19]_i_12_n_0 ),
        .CO({\NLW_output_counter_reg[19]_i_13_CO_UNCONNECTED [3:1],\output_counter_reg[19]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_output_counter_reg[19]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_14 
       (.CI(1'b0),
        .CO({\output_counter_reg[19]_i_14_n_0 ,\output_counter_reg[19]_i_14_n_1 ,\output_counter_reg[19]_i_14_n_2 ,\output_counter_reg[19]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI(pos_reg[27:24]),
        .O({\output_counter_reg[19]_i_14_n_4 ,\output_counter_reg[19]_i_14_n_5 ,\output_counter_reg[19]_i_14_n_6 ,\output_counter_reg[19]_i_14_n_7 }),
        .S({\output_counter[19]_i_24_n_0 ,\output_counter[19]_i_25_n_0 ,\output_counter[19]_i_26_n_0 ,\output_counter[19]_i_27_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_16 
       (.CI(\output_counter_reg[19]_i_28_n_0 ),
        .CO({\output_counter_reg[19]_i_16_n_0 ,\output_counter_reg[19]_i_16_n_1 ,\output_counter_reg[19]_i_16_n_2 ,\output_counter_reg[19]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(pos_reg[35:32]),
        .O({\output_counter_reg[19]_i_16_n_4 ,\output_counter_reg[19]_i_16_n_5 ,\output_counter_reg[19]_i_16_n_6 ,\output_counter_reg[19]_i_16_n_7 }),
        .S({\output_counter[19]_i_29_n_0 ,\output_counter[19]_i_30_n_0 ,\output_counter[19]_i_31_n_0 ,\output_counter[19]_i_32_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_19 
       (.CI(\output_counter_reg[19]_i_16_n_0 ),
        .CO({\output_counter_reg[19]_i_19_n_0 ,\output_counter_reg[19]_i_19_n_1 ,\output_counter_reg[19]_i_19_n_2 ,\output_counter_reg[19]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI(pos_reg[39:36]),
        .O({\output_counter_reg[19]_i_19_n_4 ,\output_counter_reg[19]_i_19_n_5 ,\output_counter_reg[19]_i_19_n_6 ,\output_counter_reg[19]_i_19_n_7 }),
        .S({\output_counter[19]_i_34_n_0 ,\output_counter[19]_i_35_n_0 ,\output_counter[19]_i_36_n_0 ,\output_counter[19]_i_37_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[19]_i_28 
       (.CI(\output_counter_reg[19]_i_14_n_0 ),
        .CO({\output_counter_reg[19]_i_28_n_0 ,\output_counter_reg[19]_i_28_n_1 ,\output_counter_reg[19]_i_28_n_2 ,\output_counter_reg[19]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI(pos_reg[31:28]),
        .O({\output_counter_reg[19]_i_28_n_4 ,\output_counter_reg[19]_i_28_n_5 ,\output_counter_reg[19]_i_28_n_6 ,\output_counter_reg[19]_i_28_n_7 }),
        .S({\output_counter[19]_i_38_n_0 ,\output_counter[19]_i_39_n_0 ,\output_counter[19]_i_40_n_0 ,\output_counter[19]_i_41_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[1] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[1]_i_1_n_0 ),
        .Q(output_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[2] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[2]_i_1_n_0 ),
        .Q(output_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[3] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[3]_i_1_n_0 ),
        .Q(output_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[4] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[4]_i_1_n_0 ),
        .Q(output_counter[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\output_counter_reg[4]_i_2_n_0 ,\output_counter_reg[4]_i_2_n_1 ,\output_counter_reg[4]_i_2_n_2 ,\output_counter_reg[4]_i_2_n_3 }),
        .CYINIT(output_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(output_counter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[5] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[5]_i_1_n_0 ),
        .Q(output_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[6] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[6]_i_1_n_0 ),
        .Q(output_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[7] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[7]_i_1_n_0 ),
        .Q(output_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[8] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[8]_i_1_n_0 ),
        .Q(output_counter[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \output_counter_reg[8]_i_2 
       (.CI(\output_counter_reg[4]_i_2_n_0 ),
        .CO({\output_counter_reg[8]_i_2_n_0 ,\output_counter_reg[8]_i_2_n_1 ,\output_counter_reg[8]_i_2_n_2 ,\output_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(output_counter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_counter_reg[9] 
       (.C(sys_clk),
        .CE(\output_counter[19]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\output_counter[9]_i_1_n_0 ),
        .Q(output_counter[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pos[0]_i_1 
       (.I0(start_s),
        .I1(\output_counter[19]_i_9_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FEFEFEFE00)) 
    \pos[0]_i_10 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[20]),
        .I5(\pos_reg_n_0_[0] ),
        .O(\pos[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_14 
       (.I0(\velocity_reg_n_0_[19] ),
        .I1(\velocity_remain_reg_n_0_[19] ),
        .O(\pos[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_15 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\velocity_remain_reg_n_0_[18] ),
        .O(\pos[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_16 
       (.I0(\velocity_reg_n_0_[17] ),
        .I1(\velocity_remain_reg_n_0_[17] ),
        .O(\pos[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_17 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(\velocity_remain_reg_n_0_[16] ),
        .O(\pos[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_19 
       (.I0(\velocity_reg_n_0_[15] ),
        .I1(\velocity_remain_reg_n_0_[15] ),
        .O(\pos[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_20 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\velocity_remain_reg_n_0_[14] ),
        .O(\pos[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_21 
       (.I0(\velocity_reg_n_0_[13] ),
        .I1(\velocity_remain_reg_n_0_[13] ),
        .O(\pos[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_22 
       (.I0(\velocity_reg_n_0_[12] ),
        .I1(\velocity_remain_reg_n_0_[12] ),
        .O(\pos[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_24 
       (.I0(\velocity_reg_n_0_[11] ),
        .I1(\velocity_remain_reg_n_0_[11] ),
        .O(\pos[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_25 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(\velocity_remain_reg_n_0_[10] ),
        .O(\pos[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_26 
       (.I0(\velocity_reg_n_0_[9] ),
        .I1(\velocity_remain_reg_n_0_[9] ),
        .O(\pos[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_27 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(\velocity_remain_reg_n_0_[8] ),
        .O(\pos[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_29 
       (.I0(\velocity_reg_n_0_[7] ),
        .I1(\velocity_remain_reg_n_0_[7] ),
        .O(\pos[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[0]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[23]),
        .O(\pos[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_30 
       (.I0(\velocity_reg_n_0_[6] ),
        .I1(\velocity_remain_reg_n_0_[6] ),
        .O(\pos[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_31 
       (.I0(\velocity_reg_n_0_[5] ),
        .I1(\velocity_remain_reg_n_0_[5] ),
        .O(\pos[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_32 
       (.I0(\velocity_reg_n_0_[4] ),
        .I1(\velocity_remain_reg_n_0_[4] ),
        .O(\pos[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_33 
       (.I0(\velocity_reg_n_0_[3] ),
        .I1(\velocity_remain_reg_n_0_[3] ),
        .O(\pos[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_34 
       (.I0(\velocity_reg_n_0_[2] ),
        .I1(\velocity_remain_reg_n_0_[2] ),
        .O(\pos[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_35 
       (.I0(\velocity_reg_n_0_[1] ),
        .I1(\velocity_remain_reg_n_0_[1] ),
        .O(\pos[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pos[0]_i_36 
       (.I0(\velocity_reg_n_0_[0] ),
        .I1(\velocity_remain_reg_n_0_[0] ),
        .O(\pos[0]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[0]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[22]),
        .O(\pos[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[0]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[21]),
        .O(\pos[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \pos[0]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[20]),
        .O(\pos[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[0]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[23]),
        .I5(\pos_reg_n_0_[3] ),
        .O(\pos[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[0]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[22]),
        .I5(\pos_reg_n_0_[2] ),
        .O(\pos[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[0]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[21]),
        .I5(\pos_reg_n_0_[1] ),
        .O(\pos[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[12]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[35]),
        .O(\pos[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[12]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[34]),
        .O(\pos[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[12]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[33]),
        .O(\pos[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[12]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[32]),
        .O(\pos[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[12]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[35]),
        .I5(\pos_reg_n_0_[15] ),
        .O(\pos[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[12]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[34]),
        .I5(\pos_reg_n_0_[14] ),
        .O(\pos[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[12]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[33]),
        .I5(\pos_reg_n_0_[13] ),
        .O(\pos[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[12]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[32]),
        .I5(\pos_reg_n_0_[12] ),
        .O(\pos[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[16]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[39]),
        .O(\pos[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[16]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[38]),
        .O(\pos[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[16]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[37]),
        .O(\pos[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[16]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[36]),
        .O(\pos[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[16]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[39]),
        .I5(\pos_reg_n_0_[19] ),
        .O(\pos[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[16]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[38]),
        .I5(\pos_reg_n_0_[18] ),
        .O(\pos[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[16]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[37]),
        .I5(\pos_reg_n_0_[17] ),
        .O(\pos[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[16]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[36]),
        .I5(\pos_reg_n_0_[16] ),
        .O(\pos[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[20]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[40]),
        .O(\pos[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[20]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\pos_reg_n_0_[23] ),
        .O(\pos[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[20]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\pos_reg_n_0_[22] ),
        .O(\pos[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[20]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\pos_reg_n_0_[21] ),
        .O(\pos[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[20]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[40]),
        .I5(\pos_reg_n_0_[20] ),
        .O(\pos[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[24]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[27]),
        .O(\pos[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[24]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[26]),
        .O(\pos[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[24]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[25]),
        .O(\pos[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[24]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[24]),
        .O(\pos[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[28]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[31]),
        .O(\pos[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[28]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[30]),
        .O(\pos[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[28]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[29]),
        .O(\pos[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[28]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[28]),
        .O(\pos[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[32]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[35]),
        .O(\pos[32]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[32]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[34]),
        .O(\pos[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[32]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[33]),
        .O(\pos[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[32]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[32]),
        .O(\pos[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[36]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[39]),
        .O(\pos[36]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[36]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[38]),
        .O(\pos[36]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[36]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[37]),
        .O(\pos[36]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[36]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[36]),
        .O(\pos[36]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[40]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[43]),
        .O(\pos[40]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[40]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[42]),
        .O(\pos[40]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[40]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[41]),
        .O(\pos[40]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos[40]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[40]),
        .O(\pos[40]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[4]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[27]),
        .O(\pos[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[4]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[26]),
        .O(\pos[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \pos[4]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[25]),
        .O(\pos[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[4]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[24]),
        .O(\pos[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[4]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[27]),
        .I5(\pos_reg_n_0_[7] ),
        .O(\pos[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[4]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[26]),
        .I5(\pos_reg_n_0_[6] ),
        .O(\pos[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000FEFEFEFE00)) 
    \pos[4]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[25]),
        .I5(\pos_reg_n_0_[5] ),
        .O(\pos[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[4]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[24]),
        .I5(\pos_reg_n_0_[4] ),
        .O(\pos[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[8]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[31]),
        .O(\pos[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[8]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[30]),
        .O(\pos[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[8]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[29]),
        .O(\pos[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \pos[8]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[28]),
        .O(\pos[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[8]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[31]),
        .I5(\pos_reg_n_0_[11] ),
        .O(\pos[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[8]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[30]),
        .I5(\pos_reg_n_0_[10] ),
        .O(\pos[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[8]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[29]),
        .I5(\pos_reg_n_0_[9] ),
        .O(\pos[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00FE0000)) 
    \pos[8]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos1),
        .I4(pos2[28]),
        .I5(\pos_reg_n_0_[8] ),
        .O(\pos[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[24]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[24]),
        .O(\pos_pre[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[25]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[25]),
        .O(\pos_pre[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[26]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[26]),
        .O(\pos_pre[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[27]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[27]),
        .O(\pos_pre[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[28]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[28]),
        .O(\pos_pre[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[29]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[29]),
        .O(\pos_pre[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[30]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[30]),
        .O(\pos_pre[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[31]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[31]),
        .O(\pos_pre[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[32]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[32]),
        .O(\pos_pre[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[33]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[33]),
        .O(\pos_pre[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[34]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[34]),
        .O(\pos_pre[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[35]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[35]),
        .O(\pos_pre[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[36]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[36]),
        .O(\pos_pre[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[37]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[37]),
        .O(\pos_pre[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[38]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[38]),
        .O(\pos_pre[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[39]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[39]),
        .O(\pos_pre[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[40]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[40]),
        .O(\pos_pre[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[41]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[41]),
        .O(\pos_pre[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[42]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[42]),
        .O(\pos_pre[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \pos_pre[43]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pos_reg[43]),
        .O(\pos_pre[43]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[24] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[24]_i_1_n_0 ),
        .Q(pos_pre[24]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[25] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[25]_i_1_n_0 ),
        .Q(pos_pre[25]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[26] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[26]_i_1_n_0 ),
        .Q(pos_pre[26]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[27] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[27]_i_1_n_0 ),
        .Q(pos_pre[27]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[28] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[28]_i_1_n_0 ),
        .Q(pos_pre[28]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[29] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[29]_i_1_n_0 ),
        .Q(pos_pre[29]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[30] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[30]_i_1_n_0 ),
        .Q(pos_pre[30]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[31] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[31]_i_1_n_0 ),
        .Q(pos_pre[31]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[32] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[32]_i_1_n_0 ),
        .Q(pos_pre[32]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[33] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[33]_i_1_n_0 ),
        .Q(pos_pre[33]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[34] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[34]_i_1_n_0 ),
        .Q(pos_pre[34]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[35] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[35]_i_1_n_0 ),
        .Q(pos_pre[35]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[36] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[36]_i_1_n_0 ),
        .Q(pos_pre[36]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[37] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[37]_i_1_n_0 ),
        .Q(pos_pre[37]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[38] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[38]_i_1_n_0 ),
        .Q(pos_pre[38]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[39] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[39]_i_1_n_0 ),
        .Q(pos_pre[39]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[40] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[40]_i_1_n_0 ),
        .Q(pos_pre[40]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[41] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[41]_i_1_n_0 ),
        .Q(pos_pre[41]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[42] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[42]_i_1_n_0 ),
        .Q(pos_pre[42]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_pre_reg[43] 
       (.C(sys_clk),
        .CE(acceleration_remain),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\pos_pre[43]_i_1_n_0 ),
        .Q(pos_pre[43]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[0] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[0]_i_2_n_7 ),
        .Q(\pos_reg_n_0_[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_11 
       (.CI(\pos_reg[0]_i_12_n_0 ),
        .CO({\pos_reg[0]_i_11_n_0 ,\pos_reg[0]_i_11_n_1 ,\pos_reg[0]_i_11_n_2 ,\pos_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[23] ,\velocity_reg_n_0_[22] ,\velocity_reg_n_0_[21] ,\velocity_reg_n_0_[20] }),
        .O(pos2[23:20]),
        .S({\velocity_reg_n_0_[23] ,\velocity_reg_n_0_[22] ,\velocity_reg_n_0_[21] ,\velocity_reg_n_0_[20] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_12 
       (.CI(\pos_reg[0]_i_13_n_0 ),
        .CO({\pos_reg[0]_i_12_n_0 ,\pos_reg[0]_i_12_n_1 ,\pos_reg[0]_i_12_n_2 ,\pos_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[19] ,\velocity_reg_n_0_[18] ,\velocity_reg_n_0_[17] ,\velocity_reg_n_0_[16] }),
        .O(\NLW_pos_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\pos[0]_i_14_n_0 ,\pos[0]_i_15_n_0 ,\pos[0]_i_16_n_0 ,\pos[0]_i_17_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_13 
       (.CI(\pos_reg[0]_i_18_n_0 ),
        .CO({\pos_reg[0]_i_13_n_0 ,\pos_reg[0]_i_13_n_1 ,\pos_reg[0]_i_13_n_2 ,\pos_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[15] ,\velocity_reg_n_0_[14] ,\velocity_reg_n_0_[13] ,\velocity_reg_n_0_[12] }),
        .O(\NLW_pos_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\pos[0]_i_19_n_0 ,\pos[0]_i_20_n_0 ,\pos[0]_i_21_n_0 ,\pos[0]_i_22_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_18 
       (.CI(\pos_reg[0]_i_23_n_0 ),
        .CO({\pos_reg[0]_i_18_n_0 ,\pos_reg[0]_i_18_n_1 ,\pos_reg[0]_i_18_n_2 ,\pos_reg[0]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[11] ,\velocity_reg_n_0_[10] ,\velocity_reg_n_0_[9] ,\velocity_reg_n_0_[8] }),
        .O(\NLW_pos_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\pos[0]_i_24_n_0 ,\pos[0]_i_25_n_0 ,\pos[0]_i_26_n_0 ,\pos[0]_i_27_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pos_reg[0]_i_2_n_0 ,\pos_reg[0]_i_2_n_1 ,\pos_reg[0]_i_2_n_2 ,\pos_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pos[0]_i_3_n_0 ,\pos[0]_i_4_n_0 ,\pos[0]_i_5_n_0 ,\pos[0]_i_6_n_0 }),
        .O({\pos_reg[0]_i_2_n_4 ,\pos_reg[0]_i_2_n_5 ,\pos_reg[0]_i_2_n_6 ,\pos_reg[0]_i_2_n_7 }),
        .S({\pos[0]_i_7_n_0 ,\pos[0]_i_8_n_0 ,\pos[0]_i_9_n_0 ,\pos[0]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_23 
       (.CI(\pos_reg[0]_i_28_n_0 ),
        .CO({\pos_reg[0]_i_23_n_0 ,\pos_reg[0]_i_23_n_1 ,\pos_reg[0]_i_23_n_2 ,\pos_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[7] ,\velocity_reg_n_0_[6] ,\velocity_reg_n_0_[5] ,\velocity_reg_n_0_[4] }),
        .O(\NLW_pos_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S({\pos[0]_i_29_n_0 ,\pos[0]_i_30_n_0 ,\pos[0]_i_31_n_0 ,\pos[0]_i_32_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[0]_i_28 
       (.CI(1'b0),
        .CO({\pos_reg[0]_i_28_n_0 ,\pos_reg[0]_i_28_n_1 ,\pos_reg[0]_i_28_n_2 ,\pos_reg[0]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[3] ,\velocity_reg_n_0_[2] ,\velocity_reg_n_0_[1] ,\velocity_reg_n_0_[0] }),
        .O(\NLW_pos_reg[0]_i_28_O_UNCONNECTED [3:0]),
        .S({\pos[0]_i_33_n_0 ,\pos[0]_i_34_n_0 ,\pos[0]_i_35_n_0 ,\pos[0]_i_36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[10] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[8]_i_1_n_5 ),
        .Q(\pos_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[11] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[8]_i_1_n_4 ),
        .Q(\pos_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[12] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[12]_i_1_n_7 ),
        .Q(\pos_reg_n_0_[12] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[12]_i_1 
       (.CI(\pos_reg[8]_i_1_n_0 ),
        .CO({\pos_reg[12]_i_1_n_0 ,\pos_reg[12]_i_1_n_1 ,\pos_reg[12]_i_1_n_2 ,\pos_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pos[12]_i_2_n_0 ,\pos[12]_i_3_n_0 ,\pos[12]_i_4_n_0 ,\pos[12]_i_5_n_0 }),
        .O({\pos_reg[12]_i_1_n_4 ,\pos_reg[12]_i_1_n_5 ,\pos_reg[12]_i_1_n_6 ,\pos_reg[12]_i_1_n_7 }),
        .S({\pos[12]_i_6_n_0 ,\pos[12]_i_7_n_0 ,\pos[12]_i_8_n_0 ,\pos[12]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[12]_i_10 
       (.CI(\pos_reg[8]_i_10_n_0 ),
        .CO({\pos_reg[12]_i_10_n_0 ,\pos_reg[12]_i_10_n_1 ,\pos_reg[12]_i_10_n_2 ,\pos_reg[12]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pos2[35:32]),
        .S({\velocity_reg_n_0_[35] ,\velocity_reg_n_0_[34] ,\velocity_reg_n_0_[33] ,\velocity_reg_n_0_[32] }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[13] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[12]_i_1_n_6 ),
        .Q(\pos_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[14] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[12]_i_1_n_5 ),
        .Q(\pos_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[15] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[12]_i_1_n_4 ),
        .Q(\pos_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[16] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[16]_i_1_n_7 ),
        .Q(\pos_reg_n_0_[16] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[16]_i_1 
       (.CI(\pos_reg[12]_i_1_n_0 ),
        .CO({\pos_reg[16]_i_1_n_0 ,\pos_reg[16]_i_1_n_1 ,\pos_reg[16]_i_1_n_2 ,\pos_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pos[16]_i_2_n_0 ,\pos[16]_i_3_n_0 ,\pos[16]_i_4_n_0 ,\pos[16]_i_5_n_0 }),
        .O({\pos_reg[16]_i_1_n_4 ,\pos_reg[16]_i_1_n_5 ,\pos_reg[16]_i_1_n_6 ,\pos_reg[16]_i_1_n_7 }),
        .S({\pos[16]_i_6_n_0 ,\pos[16]_i_7_n_0 ,\pos[16]_i_8_n_0 ,\pos[16]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[16]_i_10 
       (.CI(\pos_reg[12]_i_10_n_0 ),
        .CO({\pos_reg[16]_i_10_n_0 ,\pos_reg[16]_i_10_n_1 ,\pos_reg[16]_i_10_n_2 ,\pos_reg[16]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pos2[39:36]),
        .S({\velocity_reg_n_0_[39] ,\velocity_reg_n_0_[38] ,\velocity_reg_n_0_[37] ,\velocity_reg_n_0_[36] }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[17] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[16]_i_1_n_6 ),
        .Q(\pos_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[18] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[16]_i_1_n_5 ),
        .Q(\pos_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[19] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[16]_i_1_n_4 ),
        .Q(\pos_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[1] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[0]_i_2_n_6 ),
        .Q(\pos_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[20] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[20]_i_1_n_7 ),
        .Q(\pos_reg_n_0_[20] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[20]_i_1 
       (.CI(\pos_reg[16]_i_1_n_0 ),
        .CO({\pos_reg[20]_i_1_n_0 ,\pos_reg[20]_i_1_n_1 ,\pos_reg[20]_i_1_n_2 ,\pos_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pos[20]_i_2_n_0 }),
        .O({\pos_reg[20]_i_1_n_4 ,\pos_reg[20]_i_1_n_5 ,\pos_reg[20]_i_1_n_6 ,\pos_reg[20]_i_1_n_7 }),
        .S({\pos[20]_i_3_n_0 ,\pos[20]_i_4_n_0 ,\pos[20]_i_5_n_0 ,\pos[20]_i_6_n_0 }));
  CARRY4 \pos_reg[20]_i_7 
       (.CI(\pos_reg[16]_i_10_n_0 ),
        .CO({\NLW_pos_reg[20]_i_7_CO_UNCONNECTED [3:1],pos2[40]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pos_reg[20]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[21] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[20]_i_1_n_6 ),
        .Q(\pos_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[22] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[20]_i_1_n_5 ),
        .Q(\pos_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[23] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[20]_i_1_n_4 ),
        .Q(\pos_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[24] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[24]_i_1_n_7 ),
        .Q(pos_reg[24]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[24]_i_1 
       (.CI(\pos_reg[20]_i_1_n_0 ),
        .CO({\pos_reg[24]_i_1_n_0 ,\pos_reg[24]_i_1_n_1 ,\pos_reg[24]_i_1_n_2 ,\pos_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_reg[24]_i_1_n_4 ,\pos_reg[24]_i_1_n_5 ,\pos_reg[24]_i_1_n_6 ,\pos_reg[24]_i_1_n_7 }),
        .S({\pos[24]_i_2_n_0 ,\pos[24]_i_3_n_0 ,\pos[24]_i_4_n_0 ,\pos[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[25] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[24]_i_1_n_6 ),
        .Q(pos_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[26] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[24]_i_1_n_5 ),
        .Q(pos_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[27] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[24]_i_1_n_4 ),
        .Q(pos_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[28] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[28]_i_1_n_7 ),
        .Q(pos_reg[28]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[28]_i_1 
       (.CI(\pos_reg[24]_i_1_n_0 ),
        .CO({\pos_reg[28]_i_1_n_0 ,\pos_reg[28]_i_1_n_1 ,\pos_reg[28]_i_1_n_2 ,\pos_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_reg[28]_i_1_n_4 ,\pos_reg[28]_i_1_n_5 ,\pos_reg[28]_i_1_n_6 ,\pos_reg[28]_i_1_n_7 }),
        .S({\pos[28]_i_2_n_0 ,\pos[28]_i_3_n_0 ,\pos[28]_i_4_n_0 ,\pos[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[29] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[28]_i_1_n_6 ),
        .Q(pos_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[2] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[0]_i_2_n_5 ),
        .Q(\pos_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[30] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[28]_i_1_n_5 ),
        .Q(pos_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[31] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[28]_i_1_n_4 ),
        .Q(pos_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[32] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[32]_i_1_n_7 ),
        .Q(pos_reg[32]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[32]_i_1 
       (.CI(\pos_reg[28]_i_1_n_0 ),
        .CO({\pos_reg[32]_i_1_n_0 ,\pos_reg[32]_i_1_n_1 ,\pos_reg[32]_i_1_n_2 ,\pos_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_reg[32]_i_1_n_4 ,\pos_reg[32]_i_1_n_5 ,\pos_reg[32]_i_1_n_6 ,\pos_reg[32]_i_1_n_7 }),
        .S({\pos[32]_i_2_n_0 ,\pos[32]_i_3_n_0 ,\pos[32]_i_4_n_0 ,\pos[32]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[33] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[32]_i_1_n_6 ),
        .Q(pos_reg[33]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[34] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[32]_i_1_n_5 ),
        .Q(pos_reg[34]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[35] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[32]_i_1_n_4 ),
        .Q(pos_reg[35]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[36] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[36]_i_1_n_7 ),
        .Q(pos_reg[36]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[36]_i_1 
       (.CI(\pos_reg[32]_i_1_n_0 ),
        .CO({\pos_reg[36]_i_1_n_0 ,\pos_reg[36]_i_1_n_1 ,\pos_reg[36]_i_1_n_2 ,\pos_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_reg[36]_i_1_n_4 ,\pos_reg[36]_i_1_n_5 ,\pos_reg[36]_i_1_n_6 ,\pos_reg[36]_i_1_n_7 }),
        .S({\pos[36]_i_2_n_0 ,\pos[36]_i_3_n_0 ,\pos[36]_i_4_n_0 ,\pos[36]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[37] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[36]_i_1_n_6 ),
        .Q(pos_reg[37]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[38] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[36]_i_1_n_5 ),
        .Q(pos_reg[38]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[39] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[36]_i_1_n_4 ),
        .Q(pos_reg[39]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[3] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[0]_i_2_n_4 ),
        .Q(\pos_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[40] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[40]_i_1_n_7 ),
        .Q(pos_reg[40]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[40]_i_1 
       (.CI(\pos_reg[36]_i_1_n_0 ),
        .CO({\NLW_pos_reg[40]_i_1_CO_UNCONNECTED [3],\pos_reg[40]_i_1_n_1 ,\pos_reg[40]_i_1_n_2 ,\pos_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_reg[40]_i_1_n_4 ,\pos_reg[40]_i_1_n_5 ,\pos_reg[40]_i_1_n_6 ,\pos_reg[40]_i_1_n_7 }),
        .S({\pos[40]_i_2_n_0 ,\pos[40]_i_3_n_0 ,\pos[40]_i_4_n_0 ,\pos[40]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[41] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[40]_i_1_n_6 ),
        .Q(pos_reg[41]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[42] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[40]_i_1_n_5 ),
        .Q(pos_reg[42]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[43] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[40]_i_1_n_4 ),
        .Q(pos_reg[43]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[4] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[4]_i_1_n_7 ),
        .Q(\pos_reg_n_0_[4] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[4]_i_1 
       (.CI(\pos_reg[0]_i_2_n_0 ),
        .CO({\pos_reg[4]_i_1_n_0 ,\pos_reg[4]_i_1_n_1 ,\pos_reg[4]_i_1_n_2 ,\pos_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pos[4]_i_2_n_0 ,\pos[4]_i_3_n_0 ,\pos[4]_i_4_n_0 ,\pos[4]_i_5_n_0 }),
        .O({\pos_reg[4]_i_1_n_4 ,\pos_reg[4]_i_1_n_5 ,\pos_reg[4]_i_1_n_6 ,\pos_reg[4]_i_1_n_7 }),
        .S({\pos[4]_i_6_n_0 ,\pos[4]_i_7_n_0 ,\pos[4]_i_8_n_0 ,\pos[4]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[4]_i_10 
       (.CI(\pos_reg[0]_i_11_n_0 ),
        .CO({\pos_reg[4]_i_10_n_0 ,\pos_reg[4]_i_10_n_1 ,\pos_reg[4]_i_10_n_2 ,\pos_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[27] ,\velocity_reg_n_0_[26] ,\velocity_reg_n_0_[25] ,\velocity_reg_n_0_[24] }),
        .O(pos2[27:24]),
        .S({\velocity_reg_n_0_[27] ,\velocity_reg_n_0_[26] ,\velocity_reg_n_0_[25] ,\velocity_reg_n_0_[24] }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[5] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[4]_i_1_n_6 ),
        .Q(\pos_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[6] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[4]_i_1_n_5 ),
        .Q(\pos_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[7] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[4]_i_1_n_4 ),
        .Q(\pos_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[8] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[8]_i_1_n_7 ),
        .Q(\pos_reg_n_0_[8] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[8]_i_1 
       (.CI(\pos_reg[4]_i_1_n_0 ),
        .CO({\pos_reg[8]_i_1_n_0 ,\pos_reg[8]_i_1_n_1 ,\pos_reg[8]_i_1_n_2 ,\pos_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pos[8]_i_2_n_0 ,\pos[8]_i_3_n_0 ,\pos[8]_i_4_n_0 ,\pos[8]_i_5_n_0 }),
        .O({\pos_reg[8]_i_1_n_4 ,\pos_reg[8]_i_1_n_5 ,\pos_reg[8]_i_1_n_6 ,\pos_reg[8]_i_1_n_7 }),
        .S({\pos[8]_i_6_n_0 ,\pos[8]_i_7_n_0 ,\pos[8]_i_8_n_0 ,\pos[8]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \pos_reg[8]_i_10 
       (.CI(\pos_reg[4]_i_10_n_0 ),
        .CO({\pos_reg[8]_i_10_n_0 ,\pos_reg[8]_i_10_n_1 ,\pos_reg[8]_i_10_n_2 ,\pos_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[31] ,\velocity_reg_n_0_[30] ,\velocity_reg_n_0_[29] ,\velocity_reg_n_0_[28] }),
        .O(pos2[31:28]),
        .S({\velocity_reg_n_0_[31] ,\velocity_reg_n_0_[30] ,\velocity_reg_n_0_[29] ,\velocity_reg_n_0_[28] }));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg[9] 
       (.C(sys_clk),
        .CE(\pos[0]_i_1_n_0 ),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(\pos_reg[8]_i_1_n_6 ),
        .Q(\pos_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h11101111EEEFEEEE)) 
    pulse_i_1
       (.I0(\output_counter[19]_i_9_n_0 ),
        .I1(\output_counter[19]_i_8_n_0 ),
        .I2(\output_counter[19]_i_7_n_0 ),
        .I3(\output_counter[19]_i_6_n_0 ),
        .I4(pulse_i_2_n_0),
        .I5(pulse),
        .O(pulse_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    pulse_i_2
       (.I0(\output_counter_reg[19]_i_13_n_3 ),
        .I1(\output_counter_reg[19]_i_12_n_4 ),
        .I2(\output_counter_reg[19]_i_12_n_5 ),
        .I3(\output_counter_reg[19]_i_12_n_6 ),
        .I4(\output_counter_reg[19]_i_12_n_7 ),
        .I5(\output_counter[19]_i_5_n_0 ),
        .O(pulse_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(pulse_i_1_n_0),
        .Q(pulse));
  LUT6 #(
    .INIT(64'hFFFFFFF3000A0000)) 
    pulse_sent_done_i_1
       (.I0(pulse_sent_done_i_2_n_0),
        .I1(start_s),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[1]_rep__0_n_0 ),
        .I4(state[2]),
        .I5(pulse_sent_done),
        .O(pulse_sent_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_10
       (.I0(TARGET_POS[15]),
        .I1(TARGET_POS[14]),
        .I2(output_counter[14]),
        .I3(output_counter[15]),
        .O(pulse_sent_done_i_10_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_11
       (.I0(TARGET_POS[13]),
        .I1(TARGET_POS[12]),
        .I2(output_counter[12]),
        .I3(output_counter[13]),
        .O(pulse_sent_done_i_11_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_12
       (.I0(TARGET_POS[11]),
        .I1(TARGET_POS[10]),
        .I2(output_counter[10]),
        .I3(output_counter[11]),
        .O(pulse_sent_done_i_12_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_13
       (.I0(TARGET_POS[9]),
        .I1(TARGET_POS[8]),
        .I2(output_counter[8]),
        .I3(output_counter[9]),
        .O(pulse_sent_done_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_14
       (.I0(TARGET_POS[15]),
        .I1(output_counter[15]),
        .I2(TARGET_POS[14]),
        .I3(output_counter[14]),
        .O(pulse_sent_done_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_15
       (.I0(TARGET_POS[13]),
        .I1(output_counter[13]),
        .I2(TARGET_POS[12]),
        .I3(output_counter[12]),
        .O(pulse_sent_done_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_16
       (.I0(TARGET_POS[11]),
        .I1(output_counter[11]),
        .I2(TARGET_POS[10]),
        .I3(output_counter[10]),
        .O(pulse_sent_done_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_17
       (.I0(TARGET_POS[9]),
        .I1(output_counter[9]),
        .I2(TARGET_POS[8]),
        .I3(output_counter[8]),
        .O(pulse_sent_done_i_17_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_18
       (.I0(TARGET_POS[7]),
        .I1(TARGET_POS[6]),
        .I2(output_counter[6]),
        .I3(output_counter[7]),
        .O(pulse_sent_done_i_18_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_19
       (.I0(TARGET_POS[5]),
        .I1(TARGET_POS[4]),
        .I2(output_counter[4]),
        .I3(output_counter[5]),
        .O(pulse_sent_done_i_19_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    pulse_sent_done_i_2
       (.I0(forceStopflg_reg_n_0),
        .I1(state10_in),
        .I2(acceleration0),
        .O(pulse_sent_done_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_20
       (.I0(TARGET_POS[3]),
        .I1(TARGET_POS[2]),
        .I2(output_counter[2]),
        .I3(output_counter[3]),
        .O(pulse_sent_done_i_20_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_21
       (.I0(TARGET_POS[1]),
        .I1(TARGET_POS[0]),
        .I2(output_counter[0]),
        .I3(output_counter[1]),
        .O(pulse_sent_done_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_22
       (.I0(TARGET_POS[7]),
        .I1(output_counter[7]),
        .I2(TARGET_POS[6]),
        .I3(output_counter[6]),
        .O(pulse_sent_done_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_23
       (.I0(TARGET_POS[5]),
        .I1(output_counter[5]),
        .I2(TARGET_POS[4]),
        .I3(output_counter[4]),
        .O(pulse_sent_done_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_24
       (.I0(TARGET_POS[3]),
        .I1(output_counter[3]),
        .I2(TARGET_POS[2]),
        .I3(output_counter[2]),
        .O(pulse_sent_done_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_25
       (.I0(TARGET_POS[1]),
        .I1(output_counter[1]),
        .I2(TARGET_POS[0]),
        .I3(output_counter[0]),
        .O(pulse_sent_done_i_25_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_5
       (.I0(TARGET_POS[19]),
        .I1(TARGET_POS[18]),
        .I2(output_counter[18]),
        .I3(output_counter[19]),
        .O(pulse_sent_done_i_5_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pulse_sent_done_i_6
       (.I0(TARGET_POS[17]),
        .I1(TARGET_POS[16]),
        .I2(output_counter[16]),
        .I3(output_counter[17]),
        .O(pulse_sent_done_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_7
       (.I0(TARGET_POS[19]),
        .I1(output_counter[19]),
        .I2(TARGET_POS[18]),
        .I3(output_counter[18]),
        .O(pulse_sent_done_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_sent_done_i_8
       (.I0(TARGET_POS[17]),
        .I1(output_counter[17]),
        .I2(TARGET_POS[16]),
        .I3(output_counter[16]),
        .O(pulse_sent_done_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_sent_done_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\output_counter[18]_i_2_n_0 ),
        .D(pulse_sent_done_i_1_n_0),
        .Q(pulse_sent_done));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pulse_sent_done_reg_i_3
       (.CI(pulse_sent_done_reg_i_4_n_0),
        .CO({NLW_pulse_sent_done_reg_i_3_CO_UNCONNECTED[3:2],state10_in,pulse_sent_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_sent_done_i_5_n_0,pulse_sent_done_i_6_n_0}),
        .O(NLW_pulse_sent_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_sent_done_i_7_n_0,pulse_sent_done_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pulse_sent_done_reg_i_4
       (.CI(pulse_sent_done_reg_i_9_n_0),
        .CO({pulse_sent_done_reg_i_4_n_0,pulse_sent_done_reg_i_4_n_1,pulse_sent_done_reg_i_4_n_2,pulse_sent_done_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_sent_done_i_10_n_0,pulse_sent_done_i_11_n_0,pulse_sent_done_i_12_n_0,pulse_sent_done_i_13_n_0}),
        .O(NLW_pulse_sent_done_reg_i_4_O_UNCONNECTED[3:0]),
        .S({pulse_sent_done_i_14_n_0,pulse_sent_done_i_15_n_0,pulse_sent_done_i_16_n_0,pulse_sent_done_i_17_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 pulse_sent_done_reg_i_9
       (.CI(1'b0),
        .CO({pulse_sent_done_reg_i_9_n_0,pulse_sent_done_reg_i_9_n_1,pulse_sent_done_reg_i_9_n_2,pulse_sent_done_reg_i_9_n_3}),
        .CYINIT(1'b1),
        .DI({pulse_sent_done_i_18_n_0,pulse_sent_done_i_19_n_0,pulse_sent_done_i_20_n_0,pulse_sent_done_i_21_n_0}),
        .O(NLW_pulse_sent_done_reg_i_9_O_UNCONNECTED[3:0]),
        .S({pulse_sent_done_i_22_n_0,pulse_sent_done_i_23_n_0,pulse_sent_done_i_24_n_0,pulse_sent_done_i_25_n_0}));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[0]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[0]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[0] ),
        .I4(velocity0[0]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[10]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[10]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[10] ),
        .I4(velocity0[10]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[11]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[11]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[11] ),
        .I4(velocity0[11]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[11]_i_10 
       (.I0(\velocity_reg_n_0_[9] ),
        .I1(velocity2[29]),
        .O(\velocity[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[11]_i_11 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(velocity2[28]),
        .O(\velocity[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[11]_i_4 
       (.I0(velocity2[31]),
        .I1(\velocity_reg_n_0_[11] ),
        .O(\velocity[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[11]_i_5 
       (.I0(velocity2[30]),
        .I1(\velocity_reg_n_0_[10] ),
        .O(\velocity[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[11]_i_6 
       (.I0(velocity2[29]),
        .I1(\velocity_reg_n_0_[9] ),
        .O(\velocity[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[11]_i_7 
       (.I0(velocity2[28]),
        .I1(\velocity_reg_n_0_[8] ),
        .O(\velocity[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[11]_i_8 
       (.I0(\velocity_reg_n_0_[11] ),
        .I1(velocity2[31]),
        .O(\velocity[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[11]_i_9 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(velocity2[30]),
        .O(\velocity[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[12]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[12]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[12] ),
        .I4(velocity0[12]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[13]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[13]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[13] ),
        .I4(velocity0[13]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[14]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[14]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[14] ),
        .I4(velocity0[14]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[15]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[15]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[15] ),
        .I4(velocity0[15]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[15]_i_10 
       (.I0(\velocity_reg_n_0_[13] ),
        .I1(velocity2[33]),
        .O(\velocity[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[15]_i_11 
       (.I0(\velocity_reg_n_0_[12] ),
        .I1(velocity2[32]),
        .O(\velocity[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[15]_i_4 
       (.I0(velocity2[35]),
        .I1(\velocity_reg_n_0_[15] ),
        .O(\velocity[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[15]_i_5 
       (.I0(velocity2[34]),
        .I1(\velocity_reg_n_0_[14] ),
        .O(\velocity[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[15]_i_6 
       (.I0(velocity2[33]),
        .I1(\velocity_reg_n_0_[13] ),
        .O(\velocity[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[15]_i_7 
       (.I0(velocity2[32]),
        .I1(\velocity_reg_n_0_[12] ),
        .O(\velocity[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[15]_i_8 
       (.I0(\velocity_reg_n_0_[15] ),
        .I1(velocity2[35]),
        .O(\velocity[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[15]_i_9 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(velocity2[34]),
        .O(\velocity[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[16]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[16]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[16] ),
        .I4(velocity0[16]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[17]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[17]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[17] ),
        .I4(velocity0[17]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[18]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[18]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[18] ),
        .I4(velocity0[18]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[19]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[19]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[19] ),
        .I4(velocity0[19]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[19]_i_10 
       (.I0(\velocity_reg_n_0_[17] ),
        .I1(velocity2[37]),
        .O(\velocity[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[19]_i_11 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(velocity2[36]),
        .O(\velocity[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[19]_i_4 
       (.I0(velocity2[39]),
        .I1(\velocity_reg_n_0_[19] ),
        .O(\velocity[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[19]_i_5 
       (.I0(velocity2[38]),
        .I1(\velocity_reg_n_0_[18] ),
        .O(\velocity[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[19]_i_6 
       (.I0(velocity2[37]),
        .I1(\velocity_reg_n_0_[17] ),
        .O(\velocity[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[19]_i_7 
       (.I0(velocity2[36]),
        .I1(\velocity_reg_n_0_[16] ),
        .O(\velocity[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[19]_i_8 
       (.I0(\velocity_reg_n_0_[19] ),
        .I1(velocity2[39]),
        .O(\velocity[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[19]_i_9 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(velocity2[38]),
        .O(\velocity[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[1]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[1]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[1] ),
        .I4(velocity0[1]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[20]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[20]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[20] ),
        .I4(velocity0[20]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[21]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[21]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[21] ),
        .I4(velocity0[21]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[22]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[22]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[22] ),
        .I4(velocity0[22]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[23]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[23]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[23] ),
        .I4(velocity0[23]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[23]_i_10 
       (.I0(\velocity_reg_n_0_[21] ),
        .I1(velocity2[41]),
        .O(\velocity[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[23]_i_11 
       (.I0(\velocity_reg_n_0_[20] ),
        .I1(velocity2[40]),
        .O(\velocity[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[23]_i_4 
       (.I0(velocity2[43]),
        .I1(\velocity_reg_n_0_[23] ),
        .O(\velocity[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[23]_i_5 
       (.I0(velocity2[42]),
        .I1(\velocity_reg_n_0_[22] ),
        .O(\velocity[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[23]_i_6 
       (.I0(velocity2[41]),
        .I1(\velocity_reg_n_0_[21] ),
        .O(\velocity[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[23]_i_7 
       (.I0(velocity2[40]),
        .I1(\velocity_reg_n_0_[20] ),
        .O(\velocity[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[23]_i_8 
       (.I0(\velocity_reg_n_0_[23] ),
        .I1(velocity2[43]),
        .O(\velocity[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[23]_i_9 
       (.I0(\velocity_reg_n_0_[22] ),
        .I1(velocity2[42]),
        .O(\velocity[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[24]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[24]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[24] ),
        .I4(velocity0[24]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[25]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[25]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[25] ),
        .I4(velocity0[25]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[26]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[26]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[26] ),
        .I4(velocity0[26]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[27]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[27]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[27] ),
        .I4(velocity0[27]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[27]_i_4 
       (.I0(\velocity_reg_n_0_[27] ),
        .O(\velocity[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[27]_i_5 
       (.I0(\velocity_reg_n_0_[26] ),
        .O(\velocity[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[27]_i_6 
       (.I0(\velocity_reg_n_0_[25] ),
        .O(\velocity[27]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[27]_i_7 
       (.I0(\velocity_reg_n_0_[24] ),
        .O(\velocity[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[28]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[28]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[28] ),
        .I4(velocity0[28]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[29]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[29]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[29] ),
        .I4(velocity0[29]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[2]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[2]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[2] ),
        .I4(velocity0[2]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[30]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[30]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[30] ),
        .I4(velocity0[30]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[31]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[31]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[31] ),
        .I4(velocity0[31]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[31]_i_4 
       (.I0(\velocity_reg_n_0_[31] ),
        .O(\velocity[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[31]_i_5 
       (.I0(\velocity_reg_n_0_[30] ),
        .O(\velocity[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[31]_i_6 
       (.I0(\velocity_reg_n_0_[29] ),
        .O(\velocity[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[31]_i_7 
       (.I0(\velocity_reg_n_0_[28] ),
        .O(\velocity[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[32]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[32]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[32] ),
        .I4(velocity0[32]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[33]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[33]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[33] ),
        .I4(velocity0[33]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[34]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[34]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[34] ),
        .I4(velocity0[34]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[35]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[35]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[35] ),
        .I4(velocity0[35]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[35]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[35]_i_4 
       (.I0(\velocity_reg_n_0_[35] ),
        .O(\velocity[35]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[35]_i_5 
       (.I0(\velocity_reg_n_0_[34] ),
        .O(\velocity[35]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[35]_i_6 
       (.I0(\velocity_reg_n_0_[33] ),
        .O(\velocity[35]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[35]_i_7 
       (.I0(\velocity_reg_n_0_[32] ),
        .O(\velocity[35]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[36]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[36]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[36] ),
        .I4(velocity0[36]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[37]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[37]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[37] ),
        .I4(velocity0[37]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[38]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[38]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[38] ),
        .I4(velocity0[38]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800FFFF080C)) 
    \velocity[39]_i_1 
       (.I0(acceleration0),
        .I1(\velocity[39]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I3(state[2]),
        .I4(\velocity[39]_i_6_n_0 ),
        .I5(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(\velocity[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_100 
       (.I0(TARGET_POS[5]),
        .I1(theory_dec_len[5]),
        .O(\velocity[39]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_101 
       (.I0(TARGET_POS[4]),
        .I1(theory_dec_len[4]),
        .O(\velocity[39]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_102 
       (.I0(TARGET_POS[3]),
        .I1(theory_dec_len[3]),
        .O(\velocity[39]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_103 
       (.I0(TARGET_POS[2]),
        .I1(theory_dec_len[2]),
        .O(\velocity[39]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_104 
       (.I0(TARGET_POS[1]),
        .I1(theory_dec_len[1]),
        .O(\velocity[39]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_105 
       (.I0(TARGET_POS[0]),
        .I1(theory_dec_len[0]),
        .O(\velocity[39]_i_105_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \velocity[39]_i_11 
       (.I0(\velocity[39]_i_16_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .O(\velocity[39]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \velocity[39]_i_12 
       (.I0(\output_counter_reg[19]_i_14_n_7 ),
        .I1(\output_counter_reg[19]_i_14_n_6 ),
        .I2(\output_counter_reg[19]_i_14_n_5 ),
        .I3(\output_counter_reg[19]_i_14_n_4 ),
        .O(\velocity[39]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_13 
       (.I0(\output_counter_reg[19]_i_16_n_7 ),
        .I1(\output_counter_reg[19]_i_16_n_6 ),
        .I2(\output_counter_reg[19]_i_16_n_5 ),
        .I3(\output_counter_reg[19]_i_16_n_4 ),
        .O(\velocity[39]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000BFFFFF)) 
    \velocity[39]_i_14 
       (.I0(\velocity[39]_i_21_n_0 ),
        .I1(\velocity_reg_n_0_[20] ),
        .I2(\velocity_reg_n_0_[19] ),
        .I3(\velocity[39]_i_22_n_0 ),
        .I4(\velocity_reg_n_0_[25] ),
        .I5(\velocity[39]_i_23_n_0 ),
        .O(acceleration1));
  LUT6 #(
    .INIT(64'hABBBABBBBBBBABBB)) 
    \velocity[39]_i_15 
       (.I0(\velocity_reg[39]_i_24_n_1 ),
        .I1(acceleration2),
        .I2(\velocity[39]_i_26_n_0 ),
        .I3(\acceleration_reg_n_0_[43] ),
        .I4(\velocity[39]_i_27_n_0 ),
        .I5(\velocity[39]_i_28_n_0 ),
        .O(\velocity[39]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \velocity[39]_i_16 
       (.I0(\acceleration_reg_n_0_[43] ),
        .I1(\acceleration_reg_n_0_[42] ),
        .I2(\acceleration_reg_n_0_[41] ),
        .I3(\acceleration_reg_n_0_[40] ),
        .O(\velocity[39]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_17 
       (.I0(\velocity_reg_n_0_[39] ),
        .O(\velocity[39]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_18 
       (.I0(\velocity_reg_n_0_[38] ),
        .O(\velocity[39]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_19 
       (.I0(\velocity_reg_n_0_[37] ),
        .O(\velocity[39]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[39]_i_2 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[39]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[39] ),
        .I4(velocity0[39]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[39]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_20 
       (.I0(\velocity_reg_n_0_[36] ),
        .O(\velocity[39]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \velocity[39]_i_21 
       (.I0(\velocity[39]_i_29_n_0 ),
        .I1(\velocity[39]_i_30_n_0 ),
        .I2(\velocity[39]_i_31_n_0 ),
        .I3(\velocity[39]_i_32_n_0 ),
        .I4(\velocity[39]_i_33_n_0 ),
        .O(\velocity[39]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_22 
       (.I0(\velocity_reg_n_0_[24] ),
        .I1(\velocity_reg_n_0_[23] ),
        .I2(\velocity_reg_n_0_[22] ),
        .I3(\velocity_reg_n_0_[21] ),
        .O(\velocity[39]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \velocity[39]_i_23 
       (.I0(\velocity_reg_n_0_[38] ),
        .I1(\velocity_reg_n_0_[39] ),
        .I2(\velocity_reg_n_0_[36] ),
        .I3(\velocity_reg_n_0_[37] ),
        .I4(\velocity[39]_i_34_n_0 ),
        .I5(\velocity[39]_i_35_n_0 ),
        .O(\velocity[39]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \velocity[39]_i_26 
       (.I0(\acceleration_reg_n_0_[42] ),
        .I1(\acceleration_reg_n_0_[41] ),
        .I2(\acceleration_reg_n_0_[40] ),
        .O(\velocity[39]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \velocity[39]_i_27 
       (.I0(\velocity[39]_i_45_n_0 ),
        .I1(\velocity[39]_i_46_n_0 ),
        .I2(\velocity[39]_i_47_n_0 ),
        .I3(\velocity[39]_i_48_n_0 ),
        .I4(\velocity[39]_i_49_n_0 ),
        .I5(\velocity[39]_i_50_n_0 ),
        .O(\velocity[39]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_28 
       (.I0(\velocity[39]_i_51_n_0 ),
        .I1(\velocity[39]_i_52_n_0 ),
        .I2(\velocity[39]_i_53_n_0 ),
        .I3(\velocity[39]_i_54_n_0 ),
        .O(\velocity[39]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \velocity[39]_i_29 
       (.I0(\velocity_reg_n_0_[15] ),
        .I1(\velocity_reg_n_0_[14] ),
        .I2(\velocity_reg_n_0_[11] ),
        .I3(\velocity_reg_n_0_[13] ),
        .O(\velocity[39]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_3 
       (.I0(sys_rst_n),
        .O(\velocity[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \velocity[39]_i_30 
       (.I0(\velocity_reg_n_0_[4] ),
        .I1(\velocity_reg_n_0_[2] ),
        .I2(\velocity_reg_n_0_[3] ),
        .I3(\velocity_reg_n_0_[6] ),
        .I4(\velocity_reg_n_0_[13] ),
        .I5(\velocity_reg_n_0_[8] ),
        .O(\velocity[39]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0077007F)) 
    \velocity[39]_i_31 
       (.I0(\velocity_reg_n_0_[9] ),
        .I1(\velocity_reg_n_0_[12] ),
        .I2(\velocity_reg_n_0_[7] ),
        .I3(\velocity_reg_n_0_[13] ),
        .I4(\velocity_reg_n_0_[8] ),
        .O(\velocity[39]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00550057)) 
    \velocity[39]_i_32 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(\velocity_reg_n_0_[5] ),
        .I2(\velocity_reg_n_0_[8] ),
        .I3(\velocity_reg_n_0_[13] ),
        .I4(\velocity_reg_n_0_[6] ),
        .O(\velocity[39]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \velocity[39]_i_33 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\velocity_reg_n_0_[17] ),
        .I2(\velocity_reg_n_0_[16] ),
        .O(\velocity[39]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \velocity[39]_i_34 
       (.I0(\velocity_reg_n_0_[26] ),
        .I1(\velocity_reg_n_0_[27] ),
        .I2(\velocity_reg_n_0_[28] ),
        .I3(\velocity_reg_n_0_[29] ),
        .I4(\velocity_reg_n_0_[31] ),
        .I5(\velocity_reg_n_0_[30] ),
        .O(\velocity[39]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_35 
       (.I0(\velocity_reg_n_0_[35] ),
        .I1(\velocity_reg_n_0_[34] ),
        .I2(\velocity_reg_n_0_[33] ),
        .I3(\velocity_reg_n_0_[32] ),
        .O(\velocity[39]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_37 
       (.I0(AA_ACCELERATION2_CLK[30]),
        .I1(AA_ACCELERATION_CLK[30]),
        .I2(AA_ACCELERATION2_CLK[31]),
        .I3(AA_ACCELERATION_CLK[31]),
        .O(\velocity[39]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_38 
       (.I0(AA_ACCELERATION_CLK[27]),
        .I1(AA_ACCELERATION2_CLK[27]),
        .I2(AA_ACCELERATION2_CLK[28]),
        .I3(AA_ACCELERATION_CLK[28]),
        .I4(AA_ACCELERATION_CLK[29]),
        .I5(AA_ACCELERATION2_CLK[29]),
        .O(\velocity[39]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_39 
       (.I0(AA_ACCELERATION_CLK[24]),
        .I1(AA_ACCELERATION2_CLK[24]),
        .I2(AA_ACCELERATION2_CLK[25]),
        .I3(AA_ACCELERATION_CLK[25]),
        .I4(AA_ACCELERATION_CLK[26]),
        .I5(AA_ACCELERATION2_CLK[26]),
        .O(\velocity[39]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \velocity[39]_i_4 
       (.I0(\velocity[39]_i_12_n_0 ),
        .I1(\output_counter[19]_i_15_n_0 ),
        .I2(\output_counter[19]_i_4_n_0 ),
        .I3(\output_counter[19]_i_17_n_0 ),
        .I4(\velocity[39]_i_13_n_0 ),
        .I5(acceleration1),
        .O(acceleration0));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_41 
       (.I0(acceleration31_out[19]),
        .I1(acceleration31_out[18]),
        .I2(output_counter[18]),
        .I3(output_counter[19]),
        .O(\velocity[39]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_42 
       (.I0(acceleration31_out[17]),
        .I1(acceleration31_out[16]),
        .I2(output_counter[16]),
        .I3(output_counter[17]),
        .O(\velocity[39]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_43 
       (.I0(acceleration31_out[19]),
        .I1(output_counter[19]),
        .I2(acceleration31_out[18]),
        .I3(output_counter[18]),
        .O(\velocity[39]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_44 
       (.I0(acceleration31_out[17]),
        .I1(output_counter[17]),
        .I2(acceleration31_out[16]),
        .I3(output_counter[16]),
        .O(\velocity[39]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \velocity[39]_i_45 
       (.I0(\acceleration_reg_n_0_[39] ),
        .I1(\acceleration_reg_n_0_[38] ),
        .I2(\acceleration_reg_n_0_[37] ),
        .I3(\acceleration_reg_n_0_[36] ),
        .O(\velocity[39]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \velocity[39]_i_46 
       (.I0(\acceleration_reg_n_0_[35] ),
        .I1(\acceleration_reg_n_0_[34] ),
        .I2(\acceleration_reg_n_0_[33] ),
        .I3(\acceleration_reg_n_0_[32] ),
        .O(\velocity[39]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \velocity[39]_i_47 
       (.I0(\acceleration_reg_n_0_[25] ),
        .I1(\acceleration_reg_n_0_[0] ),
        .I2(\acceleration_reg_n_0_[27] ),
        .I3(\acceleration_reg_n_0_[26] ),
        .O(\velocity[39]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \velocity[39]_i_48 
       (.I0(\acceleration_reg_n_0_[31] ),
        .I1(\acceleration_reg_n_0_[30] ),
        .I2(\acceleration_reg_n_0_[29] ),
        .I3(\acceleration_reg_n_0_[28] ),
        .O(\velocity[39]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_49 
       (.I0(\acceleration_reg_n_0_[4] ),
        .I1(\acceleration_reg_n_0_[3] ),
        .I2(\acceleration_reg_n_0_[2] ),
        .I3(\acceleration_reg_n_0_[1] ),
        .O(\velocity[39]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h0F0A0F3A)) 
    \velocity[39]_i_5 
       (.I0(start_s),
        .I1(\velocity[39]_i_15_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(state[2]),
        .I4(force_stop),
        .O(\velocity[39]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_50 
       (.I0(\acceleration_reg_n_0_[8] ),
        .I1(\acceleration_reg_n_0_[7] ),
        .I2(\acceleration_reg_n_0_[6] ),
        .I3(\acceleration_reg_n_0_[5] ),
        .O(\velocity[39]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_51 
       (.I0(\acceleration_reg_n_0_[20] ),
        .I1(\acceleration_reg_n_0_[19] ),
        .I2(\acceleration_reg_n_0_[18] ),
        .I3(\acceleration_reg_n_0_[17] ),
        .O(\velocity[39]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_52 
       (.I0(\acceleration_reg_n_0_[24] ),
        .I1(\acceleration_reg_n_0_[23] ),
        .I2(\acceleration_reg_n_0_[22] ),
        .I3(\acceleration_reg_n_0_[21] ),
        .O(\velocity[39]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_53 
       (.I0(\acceleration_reg_n_0_[12] ),
        .I1(\acceleration_reg_n_0_[11] ),
        .I2(\acceleration_reg_n_0_[10] ),
        .I3(\acceleration_reg_n_0_[9] ),
        .O(\velocity[39]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[39]_i_54 
       (.I0(\acceleration_reg_n_0_[16] ),
        .I1(\acceleration_reg_n_0_[15] ),
        .I2(\acceleration_reg_n_0_[14] ),
        .I3(\acceleration_reg_n_0_[13] ),
        .O(\velocity[39]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_56 
       (.I0(AA_ACCELERATION_CLK[21]),
        .I1(AA_ACCELERATION2_CLK[21]),
        .I2(AA_ACCELERATION2_CLK[22]),
        .I3(AA_ACCELERATION_CLK[22]),
        .I4(AA_ACCELERATION_CLK[23]),
        .I5(AA_ACCELERATION2_CLK[23]),
        .O(\velocity[39]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_57 
       (.I0(AA_ACCELERATION_CLK[18]),
        .I1(AA_ACCELERATION2_CLK[18]),
        .I2(AA_ACCELERATION2_CLK[19]),
        .I3(AA_ACCELERATION_CLK[19]),
        .I4(AA_ACCELERATION_CLK[20]),
        .I5(AA_ACCELERATION2_CLK[20]),
        .O(\velocity[39]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_58 
       (.I0(AA_ACCELERATION_CLK[15]),
        .I1(AA_ACCELERATION2_CLK[15]),
        .I2(AA_ACCELERATION2_CLK[16]),
        .I3(AA_ACCELERATION_CLK[16]),
        .I4(AA_ACCELERATION_CLK[17]),
        .I5(AA_ACCELERATION2_CLK[17]),
        .O(\velocity[39]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_59 
       (.I0(AA_ACCELERATION_CLK[12]),
        .I1(AA_ACCELERATION2_CLK[12]),
        .I2(AA_ACCELERATION2_CLK[13]),
        .I3(AA_ACCELERATION_CLK[13]),
        .I4(AA_ACCELERATION_CLK[14]),
        .I5(AA_ACCELERATION2_CLK[14]),
        .O(\velocity[39]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0000000100)) 
    \velocity[39]_i_6 
       (.I0(force_stop),
        .I1(\velocity[39]_i_15_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I5(\velocity[39]_i_16_n_0 ),
        .O(\velocity[39]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_61 
       (.I0(acceleration31_out[15]),
        .I1(acceleration31_out[14]),
        .I2(output_counter[14]),
        .I3(output_counter[15]),
        .O(\velocity[39]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_62 
       (.I0(acceleration31_out[13]),
        .I1(acceleration31_out[12]),
        .I2(output_counter[12]),
        .I3(output_counter[13]),
        .O(\velocity[39]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_63 
       (.I0(acceleration31_out[11]),
        .I1(acceleration31_out[10]),
        .I2(output_counter[10]),
        .I3(output_counter[11]),
        .O(\velocity[39]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_64 
       (.I0(acceleration31_out[9]),
        .I1(acceleration31_out[8]),
        .I2(output_counter[8]),
        .I3(output_counter[9]),
        .O(\velocity[39]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_65 
       (.I0(acceleration31_out[15]),
        .I1(output_counter[15]),
        .I2(acceleration31_out[14]),
        .I3(output_counter[14]),
        .O(\velocity[39]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_66 
       (.I0(acceleration31_out[13]),
        .I1(output_counter[13]),
        .I2(acceleration31_out[12]),
        .I3(output_counter[12]),
        .O(\velocity[39]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_67 
       (.I0(acceleration31_out[11]),
        .I1(output_counter[11]),
        .I2(acceleration31_out[10]),
        .I3(output_counter[10]),
        .O(\velocity[39]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_68 
       (.I0(acceleration31_out[9]),
        .I1(output_counter[9]),
        .I2(acceleration31_out[8]),
        .I3(output_counter[8]),
        .O(\velocity[39]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \velocity[39]_i_7 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .O(\velocity[39]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_70 
       (.I0(AA_ACCELERATION_CLK[9]),
        .I1(AA_ACCELERATION2_CLK[9]),
        .I2(AA_ACCELERATION2_CLK[10]),
        .I3(AA_ACCELERATION_CLK[10]),
        .I4(AA_ACCELERATION_CLK[11]),
        .I5(AA_ACCELERATION2_CLK[11]),
        .O(\velocity[39]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_71 
       (.I0(AA_ACCELERATION_CLK[6]),
        .I1(AA_ACCELERATION2_CLK[6]),
        .I2(AA_ACCELERATION2_CLK[7]),
        .I3(AA_ACCELERATION_CLK[7]),
        .I4(AA_ACCELERATION_CLK[8]),
        .I5(AA_ACCELERATION2_CLK[8]),
        .O(\velocity[39]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_72 
       (.I0(AA_ACCELERATION_CLK[3]),
        .I1(AA_ACCELERATION2_CLK[3]),
        .I2(AA_ACCELERATION2_CLK[4]),
        .I3(AA_ACCELERATION_CLK[4]),
        .I4(AA_ACCELERATION_CLK[5]),
        .I5(AA_ACCELERATION2_CLK[5]),
        .O(\velocity[39]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \velocity[39]_i_73 
       (.I0(AA_ACCELERATION_CLK[0]),
        .I1(AA_ACCELERATION2_CLK[0]),
        .I2(AA_ACCELERATION2_CLK[1]),
        .I3(AA_ACCELERATION_CLK[1]),
        .I4(AA_ACCELERATION_CLK[2]),
        .I5(AA_ACCELERATION2_CLK[2]),
        .O(\velocity[39]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_74 
       (.I0(acceleration31_out[7]),
        .I1(acceleration31_out[6]),
        .I2(output_counter[6]),
        .I3(output_counter[7]),
        .O(\velocity[39]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_75 
       (.I0(acceleration31_out[5]),
        .I1(acceleration31_out[4]),
        .I2(output_counter[4]),
        .I3(output_counter[5]),
        .O(\velocity[39]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_76 
       (.I0(acceleration31_out[3]),
        .I1(acceleration31_out[2]),
        .I2(output_counter[2]),
        .I3(output_counter[3]),
        .O(\velocity[39]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h7510)) 
    \velocity[39]_i_77 
       (.I0(acceleration31_out[1]),
        .I1(acceleration31_out[0]),
        .I2(output_counter[0]),
        .I3(output_counter[1]),
        .O(\velocity[39]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_78 
       (.I0(acceleration31_out[7]),
        .I1(output_counter[7]),
        .I2(acceleration31_out[6]),
        .I3(output_counter[6]),
        .O(\velocity[39]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_79 
       (.I0(acceleration31_out[5]),
        .I1(output_counter[5]),
        .I2(acceleration31_out[4]),
        .I3(output_counter[4]),
        .O(\velocity[39]_i_79_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_80 
       (.I0(acceleration31_out[3]),
        .I1(output_counter[3]),
        .I2(acceleration31_out[2]),
        .I3(output_counter[2]),
        .O(\velocity[39]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \velocity[39]_i_81 
       (.I0(acceleration31_out[1]),
        .I1(output_counter[1]),
        .I2(acceleration31_out[0]),
        .I3(output_counter[0]),
        .O(\velocity[39]_i_81_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_84 
       (.I0(TARGET_POS[19]),
        .O(\velocity[39]_i_84_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_85 
       (.I0(TARGET_POS[18]),
        .O(\velocity[39]_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_86 
       (.I0(TARGET_POS[17]),
        .O(\velocity[39]_i_86_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[39]_i_87 
       (.I0(TARGET_POS[16]),
        .O(\velocity[39]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \velocity[39]_i_9 
       (.I0(\velocity[39]_i_16_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I3(state[2]),
        .O(\velocity[39]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_90 
       (.I0(TARGET_POS[15]),
        .I1(theory_dec_len[15]),
        .O(\velocity[39]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_91 
       (.I0(TARGET_POS[14]),
        .I1(theory_dec_len[14]),
        .O(\velocity[39]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_92 
       (.I0(TARGET_POS[13]),
        .I1(theory_dec_len[13]),
        .O(\velocity[39]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_93 
       (.I0(TARGET_POS[12]),
        .I1(theory_dec_len[12]),
        .O(\velocity[39]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_94 
       (.I0(TARGET_POS[11]),
        .I1(theory_dec_len[11]),
        .O(\velocity[39]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_95 
       (.I0(TARGET_POS[10]),
        .I1(theory_dec_len[10]),
        .O(\velocity[39]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_96 
       (.I0(TARGET_POS[9]),
        .I1(theory_dec_len[9]),
        .O(\velocity[39]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_97 
       (.I0(TARGET_POS[8]),
        .I1(theory_dec_len[8]),
        .O(\velocity[39]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_98 
       (.I0(TARGET_POS[7]),
        .I1(theory_dec_len[7]),
        .O(\velocity[39]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[39]_i_99 
       (.I0(TARGET_POS[6]),
        .I1(theory_dec_len[6]),
        .O(\velocity[39]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[3]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[3]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[3] ),
        .I4(velocity0[3]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_10 
       (.I0(\velocity_reg_n_0_[1] ),
        .I1(velocity2[21]),
        .O(\velocity[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_11 
       (.I0(\velocity_reg_n_0_[0] ),
        .I1(velocity2[20]),
        .O(\velocity[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_15 
       (.I0(\acceleration_reg_n_0_[19] ),
        .I1(\acceleration_remain_reg_n_0_[19] ),
        .O(\velocity[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_16 
       (.I0(\acceleration_reg_n_0_[18] ),
        .I1(\acceleration_remain_reg_n_0_[18] ),
        .O(\velocity[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_17 
       (.I0(\acceleration_reg_n_0_[17] ),
        .I1(\acceleration_remain_reg_n_0_[17] ),
        .O(\velocity[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_18 
       (.I0(\acceleration_reg_n_0_[16] ),
        .I1(\acceleration_remain_reg_n_0_[16] ),
        .O(\velocity[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_20 
       (.I0(\acceleration_reg_n_0_[15] ),
        .I1(\acceleration_remain_reg_n_0_[15] ),
        .O(\velocity[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_21 
       (.I0(\acceleration_reg_n_0_[14] ),
        .I1(\acceleration_remain_reg_n_0_[14] ),
        .O(\velocity[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_22 
       (.I0(\acceleration_reg_n_0_[13] ),
        .I1(\acceleration_remain_reg_n_0_[13] ),
        .O(\velocity[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_23 
       (.I0(\acceleration_reg_n_0_[12] ),
        .I1(\acceleration_remain_reg_n_0_[12] ),
        .O(\velocity[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_25 
       (.I0(\acceleration_reg_n_0_[11] ),
        .I1(\acceleration_remain_reg_n_0_[11] ),
        .O(\velocity[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_26 
       (.I0(\acceleration_reg_n_0_[10] ),
        .I1(\acceleration_remain_reg_n_0_[10] ),
        .O(\velocity[3]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_27 
       (.I0(\acceleration_reg_n_0_[9] ),
        .I1(\acceleration_remain_reg_n_0_[9] ),
        .O(\velocity[3]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_28 
       (.I0(\acceleration_reg_n_0_[8] ),
        .I1(\acceleration_remain_reg_n_0_[8] ),
        .O(\velocity[3]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_30 
       (.I0(\acceleration_reg_n_0_[7] ),
        .I1(\acceleration_remain_reg_n_0_[7] ),
        .O(\velocity[3]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_31 
       (.I0(\acceleration_reg_n_0_[6] ),
        .I1(\acceleration_remain_reg_n_0_[6] ),
        .O(\velocity[3]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_32 
       (.I0(\acceleration_reg_n_0_[5] ),
        .I1(\acceleration_remain_reg_n_0_[5] ),
        .O(\velocity[3]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_33 
       (.I0(\acceleration_reg_n_0_[4] ),
        .I1(\acceleration_remain_reg_n_0_[4] ),
        .O(\velocity[3]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_34 
       (.I0(\acceleration_reg_n_0_[3] ),
        .I1(\acceleration_remain_reg_n_0_[3] ),
        .O(\velocity[3]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_35 
       (.I0(\acceleration_reg_n_0_[2] ),
        .I1(\acceleration_remain_reg_n_0_[2] ),
        .O(\velocity[3]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_36 
       (.I0(\acceleration_reg_n_0_[1] ),
        .I1(\acceleration_remain_reg_n_0_[1] ),
        .O(\velocity[3]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_37 
       (.I0(\acceleration_reg_n_0_[0] ),
        .I1(\acceleration_remain_reg_n_0_[0] ),
        .O(\velocity[3]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[3]_i_4 
       (.I0(velocity2[23]),
        .I1(\velocity_reg_n_0_[3] ),
        .O(\velocity[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[3]_i_5 
       (.I0(velocity2[22]),
        .I1(\velocity_reg_n_0_[2] ),
        .O(\velocity[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[3]_i_6 
       (.I0(velocity2[21]),
        .I1(\velocity_reg_n_0_[1] ),
        .O(\velocity[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[3]_i_7 
       (.I0(velocity2[20]),
        .I1(\velocity_reg_n_0_[0] ),
        .O(\velocity[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_8 
       (.I0(\velocity_reg_n_0_[3] ),
        .I1(velocity2[23]),
        .O(\velocity[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[3]_i_9 
       (.I0(\velocity_reg_n_0_[2] ),
        .I1(velocity2[22]),
        .O(\velocity[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[4]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[4]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[4] ),
        .I4(velocity0[4]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[5]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[5]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[5] ),
        .I4(velocity0[5]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[6]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[6]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[6] ),
        .I4(velocity0[6]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[7]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[7]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[7] ),
        .I4(velocity0[7]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[7]_i_10 
       (.I0(\velocity_reg_n_0_[5] ),
        .I1(velocity2[25]),
        .O(\velocity[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[7]_i_11 
       (.I0(\velocity_reg_n_0_[4] ),
        .I1(velocity2[24]),
        .O(\velocity[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[7]_i_4 
       (.I0(velocity2[27]),
        .I1(\velocity_reg_n_0_[7] ),
        .O(\velocity[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[7]_i_5 
       (.I0(velocity2[26]),
        .I1(\velocity_reg_n_0_[6] ),
        .O(\velocity[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[7]_i_6 
       (.I0(velocity2[25]),
        .I1(\velocity_reg_n_0_[5] ),
        .O(\velocity[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \velocity[7]_i_7 
       (.I0(velocity2[24]),
        .I1(\velocity_reg_n_0_[4] ),
        .O(\velocity[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[7]_i_8 
       (.I0(\velocity_reg_n_0_[7] ),
        .I1(velocity2[27]),
        .O(\velocity[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity[7]_i_9 
       (.I0(\velocity_reg_n_0_[6] ),
        .I1(velocity2[26]),
        .O(\velocity[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[8]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[8]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[8] ),
        .I4(velocity0[8]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \velocity[9]_i_1 
       (.I0(\velocity[39]_i_7_n_0 ),
        .I1(in4[9]),
        .I2(\velocity[39]_i_9_n_0 ),
        .I3(\AIM_SPEED_reg_reg_n_0_[9] ),
        .I4(velocity0[9]),
        .I5(\velocity[39]_i_11_n_0 ),
        .O(\velocity[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[0] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\velocity[0]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[10] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[10]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[11] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[11]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[11] ));
  CARRY4 \velocity_reg[11]_i_12 
       (.CI(\velocity_reg[7]_i_12_n_0 ),
        .CO({\velocity_reg[11]_i_12_n_0 ,\velocity_reg[11]_i_12_n_1 ,\velocity_reg[11]_i_12_n_2 ,\velocity_reg[11]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[31] ,\acceleration_reg_n_0_[30] ,\acceleration_reg_n_0_[29] ,\acceleration_reg_n_0_[28] }),
        .O(velocity2[31:28]),
        .S({\acceleration_reg_n_0_[31] ,\acceleration_reg_n_0_[30] ,\acceleration_reg_n_0_[29] ,\acceleration_reg_n_0_[28] }));
  CARRY4 \velocity_reg[11]_i_2 
       (.CI(\velocity_reg[7]_i_2_n_0 ),
        .CO({\velocity_reg[11]_i_2_n_0 ,\velocity_reg[11]_i_2_n_1 ,\velocity_reg[11]_i_2_n_2 ,\velocity_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[11] ,\velocity_reg_n_0_[10] ,\velocity_reg_n_0_[9] ,\velocity_reg_n_0_[8] }),
        .O(in4[11:8]),
        .S({\velocity[11]_i_4_n_0 ,\velocity[11]_i_5_n_0 ,\velocity[11]_i_6_n_0 ,\velocity[11]_i_7_n_0 }));
  CARRY4 \velocity_reg[11]_i_3 
       (.CI(\velocity_reg[7]_i_3_n_0 ),
        .CO({\velocity_reg[11]_i_3_n_0 ,\velocity_reg[11]_i_3_n_1 ,\velocity_reg[11]_i_3_n_2 ,\velocity_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[11] ,\velocity_reg_n_0_[10] ,\velocity_reg_n_0_[9] ,\velocity_reg_n_0_[8] }),
        .O(velocity0[11:8]),
        .S({\velocity[11]_i_8_n_0 ,\velocity[11]_i_9_n_0 ,\velocity[11]_i_10_n_0 ,\velocity[11]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[12] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[12]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[13] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[13]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[14] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[14]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[15] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[15]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[15] ));
  CARRY4 \velocity_reg[15]_i_12 
       (.CI(\velocity_reg[11]_i_12_n_0 ),
        .CO({\velocity_reg[15]_i_12_n_0 ,\velocity_reg[15]_i_12_n_1 ,\velocity_reg[15]_i_12_n_2 ,\velocity_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity2[35:32]),
        .S({\acceleration_reg_n_0_[35] ,\acceleration_reg_n_0_[34] ,\acceleration_reg_n_0_[33] ,\acceleration_reg_n_0_[32] }));
  CARRY4 \velocity_reg[15]_i_2 
       (.CI(\velocity_reg[11]_i_2_n_0 ),
        .CO({\velocity_reg[15]_i_2_n_0 ,\velocity_reg[15]_i_2_n_1 ,\velocity_reg[15]_i_2_n_2 ,\velocity_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[15] ,\velocity_reg_n_0_[14] ,\velocity_reg_n_0_[13] ,\velocity_reg_n_0_[12] }),
        .O(in4[15:12]),
        .S({\velocity[15]_i_4_n_0 ,\velocity[15]_i_5_n_0 ,\velocity[15]_i_6_n_0 ,\velocity[15]_i_7_n_0 }));
  CARRY4 \velocity_reg[15]_i_3 
       (.CI(\velocity_reg[11]_i_3_n_0 ),
        .CO({\velocity_reg[15]_i_3_n_0 ,\velocity_reg[15]_i_3_n_1 ,\velocity_reg[15]_i_3_n_2 ,\velocity_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[15] ,\velocity_reg_n_0_[14] ,\velocity_reg_n_0_[13] ,\velocity_reg_n_0_[12] }),
        .O(velocity0[15:12]),
        .S({\velocity[15]_i_8_n_0 ,\velocity[15]_i_9_n_0 ,\velocity[15]_i_10_n_0 ,\velocity[15]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[16] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[16]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[17] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[17]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[18] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[18]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[19] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[19]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[19] ));
  CARRY4 \velocity_reg[19]_i_12 
       (.CI(\velocity_reg[15]_i_12_n_0 ),
        .CO({\velocity_reg[19]_i_12_n_0 ,\velocity_reg[19]_i_12_n_1 ,\velocity_reg[19]_i_12_n_2 ,\velocity_reg[19]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity2[39:36]),
        .S({\acceleration_reg_n_0_[39] ,\acceleration_reg_n_0_[38] ,\acceleration_reg_n_0_[37] ,\acceleration_reg_n_0_[36] }));
  CARRY4 \velocity_reg[19]_i_2 
       (.CI(\velocity_reg[15]_i_2_n_0 ),
        .CO({\velocity_reg[19]_i_2_n_0 ,\velocity_reg[19]_i_2_n_1 ,\velocity_reg[19]_i_2_n_2 ,\velocity_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[19] ,\velocity_reg_n_0_[18] ,\velocity_reg_n_0_[17] ,\velocity_reg_n_0_[16] }),
        .O(in4[19:16]),
        .S({\velocity[19]_i_4_n_0 ,\velocity[19]_i_5_n_0 ,\velocity[19]_i_6_n_0 ,\velocity[19]_i_7_n_0 }));
  CARRY4 \velocity_reg[19]_i_3 
       (.CI(\velocity_reg[15]_i_3_n_0 ),
        .CO({\velocity_reg[19]_i_3_n_0 ,\velocity_reg[19]_i_3_n_1 ,\velocity_reg[19]_i_3_n_2 ,\velocity_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[19] ,\velocity_reg_n_0_[18] ,\velocity_reg_n_0_[17] ,\velocity_reg_n_0_[16] }),
        .O(velocity0[19:16]),
        .S({\velocity[19]_i_8_n_0 ,\velocity[19]_i_9_n_0 ,\velocity[19]_i_10_n_0 ,\velocity[19]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[1] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(\velocity[1]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[20] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[20]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[21] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[21]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[22] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[22]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[23] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[23]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[23] ));
  CARRY4 \velocity_reg[23]_i_12 
       (.CI(\velocity_reg[19]_i_12_n_0 ),
        .CO({\NLW_velocity_reg[23]_i_12_CO_UNCONNECTED [3],\velocity_reg[23]_i_12_n_1 ,\velocity_reg[23]_i_12_n_2 ,\velocity_reg[23]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity2[43:40]),
        .S({\acceleration_reg_n_0_[43] ,\acceleration_reg_n_0_[42] ,\acceleration_reg_n_0_[41] ,\acceleration_reg_n_0_[40] }));
  CARRY4 \velocity_reg[23]_i_2 
       (.CI(\velocity_reg[19]_i_2_n_0 ),
        .CO({\velocity_reg[23]_i_2_n_0 ,\velocity_reg[23]_i_2_n_1 ,\velocity_reg[23]_i_2_n_2 ,\velocity_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[23] ,\velocity_reg_n_0_[22] ,\velocity_reg_n_0_[21] ,\velocity_reg_n_0_[20] }),
        .O(in4[23:20]),
        .S({\velocity[23]_i_4_n_0 ,\velocity[23]_i_5_n_0 ,\velocity[23]_i_6_n_0 ,\velocity[23]_i_7_n_0 }));
  CARRY4 \velocity_reg[23]_i_3 
       (.CI(\velocity_reg[19]_i_3_n_0 ),
        .CO({\velocity_reg[23]_i_3_n_0 ,\velocity_reg[23]_i_3_n_1 ,\velocity_reg[23]_i_3_n_2 ,\velocity_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[23] ,\velocity_reg_n_0_[22] ,\velocity_reg_n_0_[21] ,\velocity_reg_n_0_[20] }),
        .O(velocity0[23:20]),
        .S({\velocity[23]_i_8_n_0 ,\velocity[23]_i_9_n_0 ,\velocity[23]_i_10_n_0 ,\velocity[23]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[24] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[24]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[25] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[25]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[26] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[26]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[27] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[27]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[27] ));
  CARRY4 \velocity_reg[27]_i_2 
       (.CI(\velocity_reg[23]_i_2_n_0 ),
        .CO({\velocity_reg[27]_i_2_n_0 ,\velocity_reg[27]_i_2_n_1 ,\velocity_reg[27]_i_2_n_2 ,\velocity_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[27] ,\velocity_reg_n_0_[26] ,\velocity_reg_n_0_[25] ,\velocity_reg_n_0_[24] }),
        .O(in4[27:24]),
        .S({\velocity[27]_i_4_n_0 ,\velocity[27]_i_5_n_0 ,\velocity[27]_i_6_n_0 ,\velocity[27]_i_7_n_0 }));
  CARRY4 \velocity_reg[27]_i_3 
       (.CI(\velocity_reg[23]_i_3_n_0 ),
        .CO({\velocity_reg[27]_i_3_n_0 ,\velocity_reg[27]_i_3_n_1 ,\velocity_reg[27]_i_3_n_2 ,\velocity_reg[27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity0[27:24]),
        .S({\velocity_reg_n_0_[27] ,\velocity_reg_n_0_[26] ,\velocity_reg_n_0_[25] ,\velocity_reg_n_0_[24] }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[28] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[28]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[29] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[29]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[2] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[2]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[30] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[30]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[31] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[31]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[31] ));
  CARRY4 \velocity_reg[31]_i_2 
       (.CI(\velocity_reg[27]_i_2_n_0 ),
        .CO({\velocity_reg[31]_i_2_n_0 ,\velocity_reg[31]_i_2_n_1 ,\velocity_reg[31]_i_2_n_2 ,\velocity_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[31] ,\velocity_reg_n_0_[30] ,\velocity_reg_n_0_[29] ,\velocity_reg_n_0_[28] }),
        .O(in4[31:28]),
        .S({\velocity[31]_i_4_n_0 ,\velocity[31]_i_5_n_0 ,\velocity[31]_i_6_n_0 ,\velocity[31]_i_7_n_0 }));
  CARRY4 \velocity_reg[31]_i_3 
       (.CI(\velocity_reg[27]_i_3_n_0 ),
        .CO({\velocity_reg[31]_i_3_n_0 ,\velocity_reg[31]_i_3_n_1 ,\velocity_reg[31]_i_3_n_2 ,\velocity_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity0[31:28]),
        .S({\velocity_reg_n_0_[31] ,\velocity_reg_n_0_[30] ,\velocity_reg_n_0_[29] ,\velocity_reg_n_0_[28] }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[32] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[32]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[33] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[33]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[34] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[34]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[35] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[35]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[35] ));
  CARRY4 \velocity_reg[35]_i_2 
       (.CI(\velocity_reg[31]_i_2_n_0 ),
        .CO({\velocity_reg[35]_i_2_n_0 ,\velocity_reg[35]_i_2_n_1 ,\velocity_reg[35]_i_2_n_2 ,\velocity_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[35] ,\velocity_reg_n_0_[34] ,\velocity_reg_n_0_[33] ,\velocity_reg_n_0_[32] }),
        .O(in4[35:32]),
        .S({\velocity[35]_i_4_n_0 ,\velocity[35]_i_5_n_0 ,\velocity[35]_i_6_n_0 ,\velocity[35]_i_7_n_0 }));
  CARRY4 \velocity_reg[35]_i_3 
       (.CI(\velocity_reg[31]_i_3_n_0 ),
        .CO({\velocity_reg[35]_i_3_n_0 ,\velocity_reg[35]_i_3_n_1 ,\velocity_reg[35]_i_3_n_2 ,\velocity_reg[35]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity0[35:32]),
        .S({\velocity_reg_n_0_[35] ,\velocity_reg_n_0_[34] ,\velocity_reg_n_0_[33] ,\velocity_reg_n_0_[32] }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[36] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[36]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[37] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[37]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[38] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[38]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[39] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[39]_i_2_n_0 ),
        .Q(\velocity_reg_n_0_[39] ));
  CARRY4 \velocity_reg[39]_i_10 
       (.CI(\velocity_reg[35]_i_3_n_0 ),
        .CO({\NLW_velocity_reg[39]_i_10_CO_UNCONNECTED [3],\velocity_reg[39]_i_10_n_1 ,\velocity_reg[39]_i_10_n_2 ,\velocity_reg[39]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity0[39:36]),
        .S({\velocity_reg_n_0_[39] ,\velocity_reg_n_0_[38] ,\velocity_reg_n_0_[37] ,\velocity_reg_n_0_[36] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_24 
       (.CI(\velocity_reg[39]_i_36_n_0 ),
        .CO({\NLW_velocity_reg[39]_i_24_CO_UNCONNECTED [3],\velocity_reg[39]_i_24_n_1 ,\velocity_reg[39]_i_24_n_2 ,\velocity_reg[39]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity_reg[39]_i_24_O_UNCONNECTED [3:0]),
        .S({1'b0,\velocity[39]_i_37_n_0 ,\velocity[39]_i_38_n_0 ,\velocity[39]_i_39_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_25 
       (.CI(\velocity_reg[39]_i_40_n_0 ),
        .CO({\NLW_velocity_reg[39]_i_25_CO_UNCONNECTED [3:2],acceleration2,\velocity_reg[39]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\velocity[39]_i_41_n_0 ,\velocity[39]_i_42_n_0 }),
        .O(\NLW_velocity_reg[39]_i_25_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\velocity[39]_i_43_n_0 ,\velocity[39]_i_44_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_36 
       (.CI(\velocity_reg[39]_i_55_n_0 ),
        .CO({\velocity_reg[39]_i_36_n_0 ,\velocity_reg[39]_i_36_n_1 ,\velocity_reg[39]_i_36_n_2 ,\velocity_reg[39]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity_reg[39]_i_36_O_UNCONNECTED [3:0]),
        .S({\velocity[39]_i_56_n_0 ,\velocity[39]_i_57_n_0 ,\velocity[39]_i_58_n_0 ,\velocity[39]_i_59_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_40 
       (.CI(\velocity_reg[39]_i_60_n_0 ),
        .CO({\velocity_reg[39]_i_40_n_0 ,\velocity_reg[39]_i_40_n_1 ,\velocity_reg[39]_i_40_n_2 ,\velocity_reg[39]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity[39]_i_61_n_0 ,\velocity[39]_i_62_n_0 ,\velocity[39]_i_63_n_0 ,\velocity[39]_i_64_n_0 }),
        .O(\NLW_velocity_reg[39]_i_40_O_UNCONNECTED [3:0]),
        .S({\velocity[39]_i_65_n_0 ,\velocity[39]_i_66_n_0 ,\velocity[39]_i_67_n_0 ,\velocity[39]_i_68_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_55 
       (.CI(1'b0),
        .CO({\velocity_reg[39]_i_55_n_0 ,\velocity_reg[39]_i_55_n_1 ,\velocity_reg[39]_i_55_n_2 ,\velocity_reg[39]_i_55_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity_reg[39]_i_55_O_UNCONNECTED [3:0]),
        .S({\velocity[39]_i_70_n_0 ,\velocity[39]_i_71_n_0 ,\velocity[39]_i_72_n_0 ,\velocity[39]_i_73_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_60 
       (.CI(1'b0),
        .CO({\velocity_reg[39]_i_60_n_0 ,\velocity_reg[39]_i_60_n_1 ,\velocity_reg[39]_i_60_n_2 ,\velocity_reg[39]_i_60_n_3 }),
        .CYINIT(1'b1),
        .DI({\velocity[39]_i_74_n_0 ,\velocity[39]_i_75_n_0 ,\velocity[39]_i_76_n_0 ,\velocity[39]_i_77_n_0 }),
        .O(\NLW_velocity_reg[39]_i_60_O_UNCONNECTED [3:0]),
        .S({\velocity[39]_i_78_n_0 ,\velocity[39]_i_79_n_0 ,\velocity[39]_i_80_n_0 ,\velocity[39]_i_81_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_69 
       (.CI(\velocity_reg[39]_i_82_n_0 ),
        .CO({\NLW_velocity_reg[39]_i_69_CO_UNCONNECTED [3],\velocity_reg[39]_i_69_n_1 ,\velocity_reg[39]_i_69_n_2 ,\velocity_reg[39]_i_69_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,TARGET_POS[18:16]}),
        .O(acceleration31_out[19:16]),
        .S({\velocity[39]_i_84_n_0 ,\velocity[39]_i_85_n_0 ,\velocity[39]_i_86_n_0 ,\velocity[39]_i_87_n_0 }));
  CARRY4 \velocity_reg[39]_i_8 
       (.CI(\velocity_reg[35]_i_2_n_0 ),
        .CO({\NLW_velocity_reg[39]_i_8_CO_UNCONNECTED [3],\velocity_reg[39]_i_8_n_1 ,\velocity_reg[39]_i_8_n_2 ,\velocity_reg[39]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\velocity_reg_n_0_[38] ,\velocity_reg_n_0_[37] ,\velocity_reg_n_0_[36] }),
        .O(in4[39:36]),
        .S({\velocity[39]_i_17_n_0 ,\velocity[39]_i_18_n_0 ,\velocity[39]_i_19_n_0 ,\velocity[39]_i_20_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_82 
       (.CI(\velocity_reg[39]_i_83_n_0 ),
        .CO({\velocity_reg[39]_i_82_n_0 ,\velocity_reg[39]_i_82_n_1 ,\velocity_reg[39]_i_82_n_2 ,\velocity_reg[39]_i_82_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[15:12]),
        .O(acceleration31_out[15:12]),
        .S({\velocity[39]_i_90_n_0 ,\velocity[39]_i_91_n_0 ,\velocity[39]_i_92_n_0 ,\velocity[39]_i_93_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_83 
       (.CI(\velocity_reg[39]_i_88_n_0 ),
        .CO({\velocity_reg[39]_i_83_n_0 ,\velocity_reg[39]_i_83_n_1 ,\velocity_reg[39]_i_83_n_2 ,\velocity_reg[39]_i_83_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[11:8]),
        .O(acceleration31_out[11:8]),
        .S({\velocity[39]_i_94_n_0 ,\velocity[39]_i_95_n_0 ,\velocity[39]_i_96_n_0 ,\velocity[39]_i_97_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_88 
       (.CI(\velocity_reg[39]_i_89_n_0 ),
        .CO({\velocity_reg[39]_i_88_n_0 ,\velocity_reg[39]_i_88_n_1 ,\velocity_reg[39]_i_88_n_2 ,\velocity_reg[39]_i_88_n_3 }),
        .CYINIT(1'b0),
        .DI(TARGET_POS[7:4]),
        .O(acceleration31_out[7:4]),
        .S({\velocity[39]_i_98_n_0 ,\velocity[39]_i_99_n_0 ,\velocity[39]_i_100_n_0 ,\velocity[39]_i_101_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_reg[39]_i_89 
       (.CI(1'b0),
        .CO({\velocity_reg[39]_i_89_n_0 ,\velocity_reg[39]_i_89_n_1 ,\velocity_reg[39]_i_89_n_2 ,\velocity_reg[39]_i_89_n_3 }),
        .CYINIT(1'b1),
        .DI(TARGET_POS[3:0]),
        .O(acceleration31_out[3:0]),
        .S({\velocity[39]_i_102_n_0 ,\velocity[39]_i_103_n_0 ,\velocity[39]_i_104_n_0 ,\velocity[39]_i_105_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[3] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[3]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[3] ));
  CARRY4 \velocity_reg[3]_i_12 
       (.CI(\velocity_reg[3]_i_13_n_0 ),
        .CO({\velocity_reg[3]_i_12_n_0 ,\velocity_reg[3]_i_12_n_1 ,\velocity_reg[3]_i_12_n_2 ,\velocity_reg[3]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[23] ,\acceleration_reg_n_0_[22] ,\acceleration_reg_n_0_[21] ,\acceleration_reg_n_0_[20] }),
        .O(velocity2[23:20]),
        .S({\acceleration_reg_n_0_[23] ,\acceleration_reg_n_0_[22] ,\acceleration_reg_n_0_[21] ,\acceleration_reg_n_0_[20] }));
  CARRY4 \velocity_reg[3]_i_13 
       (.CI(\velocity_reg[3]_i_14_n_0 ),
        .CO({\velocity_reg[3]_i_13_n_0 ,\velocity_reg[3]_i_13_n_1 ,\velocity_reg[3]_i_13_n_2 ,\velocity_reg[3]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[19] ,\acceleration_reg_n_0_[18] ,\acceleration_reg_n_0_[17] ,\acceleration_reg_n_0_[16] }),
        .O(\NLW_velocity_reg[3]_i_13_O_UNCONNECTED [3:0]),
        .S({\velocity[3]_i_15_n_0 ,\velocity[3]_i_16_n_0 ,\velocity[3]_i_17_n_0 ,\velocity[3]_i_18_n_0 }));
  CARRY4 \velocity_reg[3]_i_14 
       (.CI(\velocity_reg[3]_i_19_n_0 ),
        .CO({\velocity_reg[3]_i_14_n_0 ,\velocity_reg[3]_i_14_n_1 ,\velocity_reg[3]_i_14_n_2 ,\velocity_reg[3]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[15] ,\acceleration_reg_n_0_[14] ,\acceleration_reg_n_0_[13] ,\acceleration_reg_n_0_[12] }),
        .O(\NLW_velocity_reg[3]_i_14_O_UNCONNECTED [3:0]),
        .S({\velocity[3]_i_20_n_0 ,\velocity[3]_i_21_n_0 ,\velocity[3]_i_22_n_0 ,\velocity[3]_i_23_n_0 }));
  CARRY4 \velocity_reg[3]_i_19 
       (.CI(\velocity_reg[3]_i_24_n_0 ),
        .CO({\velocity_reg[3]_i_19_n_0 ,\velocity_reg[3]_i_19_n_1 ,\velocity_reg[3]_i_19_n_2 ,\velocity_reg[3]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[11] ,\acceleration_reg_n_0_[10] ,\acceleration_reg_n_0_[9] ,\acceleration_reg_n_0_[8] }),
        .O(\NLW_velocity_reg[3]_i_19_O_UNCONNECTED [3:0]),
        .S({\velocity[3]_i_25_n_0 ,\velocity[3]_i_26_n_0 ,\velocity[3]_i_27_n_0 ,\velocity[3]_i_28_n_0 }));
  CARRY4 \velocity_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\velocity_reg[3]_i_2_n_0 ,\velocity_reg[3]_i_2_n_1 ,\velocity_reg[3]_i_2_n_2 ,\velocity_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\velocity_reg_n_0_[3] ,\velocity_reg_n_0_[2] ,\velocity_reg_n_0_[1] ,\velocity_reg_n_0_[0] }),
        .O(in4[3:0]),
        .S({\velocity[3]_i_4_n_0 ,\velocity[3]_i_5_n_0 ,\velocity[3]_i_6_n_0 ,\velocity[3]_i_7_n_0 }));
  CARRY4 \velocity_reg[3]_i_24 
       (.CI(\velocity_reg[3]_i_29_n_0 ),
        .CO({\velocity_reg[3]_i_24_n_0 ,\velocity_reg[3]_i_24_n_1 ,\velocity_reg[3]_i_24_n_2 ,\velocity_reg[3]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[7] ,\acceleration_reg_n_0_[6] ,\acceleration_reg_n_0_[5] ,\acceleration_reg_n_0_[4] }),
        .O(\NLW_velocity_reg[3]_i_24_O_UNCONNECTED [3:0]),
        .S({\velocity[3]_i_30_n_0 ,\velocity[3]_i_31_n_0 ,\velocity[3]_i_32_n_0 ,\velocity[3]_i_33_n_0 }));
  CARRY4 \velocity_reg[3]_i_29 
       (.CI(1'b0),
        .CO({\velocity_reg[3]_i_29_n_0 ,\velocity_reg[3]_i_29_n_1 ,\velocity_reg[3]_i_29_n_2 ,\velocity_reg[3]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[3] ,\acceleration_reg_n_0_[2] ,\acceleration_reg_n_0_[1] ,\acceleration_reg_n_0_[0] }),
        .O(\NLW_velocity_reg[3]_i_29_O_UNCONNECTED [3:0]),
        .S({\velocity[3]_i_34_n_0 ,\velocity[3]_i_35_n_0 ,\velocity[3]_i_36_n_0 ,\velocity[3]_i_37_n_0 }));
  CARRY4 \velocity_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\velocity_reg[3]_i_3_n_0 ,\velocity_reg[3]_i_3_n_1 ,\velocity_reg[3]_i_3_n_2 ,\velocity_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[3] ,\velocity_reg_n_0_[2] ,\velocity_reg_n_0_[1] ,\velocity_reg_n_0_[0] }),
        .O(velocity0[3:0]),
        .S({\velocity[3]_i_8_n_0 ,\velocity[3]_i_9_n_0 ,\velocity[3]_i_10_n_0 ,\velocity[3]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[4] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[4]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[5] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[5]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[6] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[6]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[7] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[7]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[7] ));
  CARRY4 \velocity_reg[7]_i_12 
       (.CI(\velocity_reg[3]_i_12_n_0 ),
        .CO({\velocity_reg[7]_i_12_n_0 ,\velocity_reg[7]_i_12_n_1 ,\velocity_reg[7]_i_12_n_2 ,\velocity_reg[7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\acceleration_reg_n_0_[27] ,\acceleration_reg_n_0_[26] ,\acceleration_reg_n_0_[25] ,\acceleration_reg_n_0_[24] }),
        .O(velocity2[27:24]),
        .S({\acceleration_reg_n_0_[27] ,\acceleration_reg_n_0_[26] ,\acceleration_reg_n_0_[25] ,\acceleration_reg_n_0_[24] }));
  CARRY4 \velocity_reg[7]_i_2 
       (.CI(\velocity_reg[3]_i_2_n_0 ),
        .CO({\velocity_reg[7]_i_2_n_0 ,\velocity_reg[7]_i_2_n_1 ,\velocity_reg[7]_i_2_n_2 ,\velocity_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[7] ,\velocity_reg_n_0_[6] ,\velocity_reg_n_0_[5] ,\velocity_reg_n_0_[4] }),
        .O(in4[7:4]),
        .S({\velocity[7]_i_4_n_0 ,\velocity[7]_i_5_n_0 ,\velocity[7]_i_6_n_0 ,\velocity[7]_i_7_n_0 }));
  CARRY4 \velocity_reg[7]_i_3 
       (.CI(\velocity_reg[3]_i_3_n_0 ),
        .CO({\velocity_reg[7]_i_3_n_0 ,\velocity_reg[7]_i_3_n_1 ,\velocity_reg[7]_i_3_n_2 ,\velocity_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[7] ,\velocity_reg_n_0_[6] ,\velocity_reg_n_0_[5] ,\velocity_reg_n_0_[4] }),
        .O(velocity0[7:4]),
        .S({\velocity[7]_i_8_n_0 ,\velocity[7]_i_9_n_0 ,\velocity[7]_i_10_n_0 ,\velocity[7]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[8] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[8]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_reg[9] 
       (.C(sys_clk),
        .CE(\velocity[39]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(\velocity[9]_i_1_n_0 ),
        .Q(\velocity_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[3]_i_2_n_7 ),
        .O(velocity_remain[0]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[10]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[11]_i_2_n_5 ),
        .O(velocity_remain[10]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[11]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[11]_i_2_n_4 ),
        .O(velocity_remain[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[11]_i_3 
       (.I0(\velocity_reg_n_0_[11] ),
        .I1(\velocity_remain_reg_n_0_[11] ),
        .O(\velocity_remain[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[11]_i_4 
       (.I0(\velocity_reg_n_0_[10] ),
        .I1(\velocity_remain_reg_n_0_[10] ),
        .O(\velocity_remain[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[11]_i_5 
       (.I0(\velocity_reg_n_0_[9] ),
        .I1(\velocity_remain_reg_n_0_[9] ),
        .O(\velocity_remain[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[11]_i_6 
       (.I0(\velocity_reg_n_0_[8] ),
        .I1(\velocity_remain_reg_n_0_[8] ),
        .O(\velocity_remain[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[12]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[15]_i_2_n_7 ),
        .O(velocity_remain[12]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[13]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[15]_i_2_n_6 ),
        .O(velocity_remain[13]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[14]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[15]_i_2_n_5 ),
        .O(velocity_remain[14]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[15]_i_2_n_4 ),
        .O(velocity_remain[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[15]_i_3 
       (.I0(\velocity_reg_n_0_[15] ),
        .I1(\velocity_remain_reg_n_0_[15] ),
        .O(\velocity_remain[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[15]_i_4 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\velocity_remain_reg_n_0_[14] ),
        .O(\velocity_remain[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[15]_i_5 
       (.I0(\velocity_reg_n_0_[13] ),
        .I1(\velocity_remain_reg_n_0_[13] ),
        .O(\velocity_remain[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[15]_i_6 
       (.I0(\velocity_reg_n_0_[12] ),
        .I1(\velocity_remain_reg_n_0_[12] ),
        .O(\velocity_remain[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[16]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[19]_i_4_n_7 ),
        .O(velocity_remain[16]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[17]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[19]_i_4_n_6 ),
        .O(velocity_remain[17]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[18]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[19]_i_4_n_5 ),
        .O(velocity_remain[18]));
  LUT5 #(
    .INIT(32'h01FF00FE)) 
    \velocity_remain[19]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(start_s),
        .O(\velocity_remain[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \velocity_remain[19]_i_10 
       (.I0(\velocity_remain[19]_i_13_n_0 ),
        .I1(\velocity_reg_n_0_[25] ),
        .I2(\velocity_reg_n_0_[4] ),
        .I3(\velocity[39]_i_35_n_0 ),
        .I4(\velocity[39]_i_22_n_0 ),
        .I5(\velocity[39]_i_34_n_0 ),
        .O(\velocity_remain[19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity_remain[19]_i_11 
       (.I0(\velocity_reg_n_0_[6] ),
        .I1(\velocity_reg_n_0_[13] ),
        .I2(\velocity_reg_n_0_[8] ),
        .I3(\velocity_reg_n_0_[5] ),
        .O(\velocity_remain[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \velocity_remain[19]_i_12 
       (.I0(\velocity_remain[19]_i_14_n_0 ),
        .I1(\velocity_reg_n_0_[19] ),
        .I2(\velocity_reg_n_0_[10] ),
        .I3(\velocity_reg_n_0_[9] ),
        .I4(\velocity[39]_i_33_n_0 ),
        .I5(\velocity_reg_n_0_[20] ),
        .O(\velocity_remain[19]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \velocity_remain[19]_i_13 
       (.I0(\velocity_reg_n_0_[1] ),
        .I1(\velocity_reg_n_0_[0] ),
        .I2(\velocity_reg_n_0_[3] ),
        .I3(\velocity_reg_n_0_[2] ),
        .O(\velocity_remain[19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \velocity_remain[19]_i_14 
       (.I0(\velocity_reg_n_0_[14] ),
        .I1(\velocity_reg_n_0_[15] ),
        .O(\velocity_remain[19]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[19]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[19]_i_4_n_4 ),
        .O(velocity_remain[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \velocity_remain[19]_i_3 
       (.I0(\velocity_remain[19]_i_5_n_0 ),
        .I1(\velocity_reg_n_0_[39] ),
        .I2(\velocity_reg_n_0_[38] ),
        .I3(\velocity_reg_n_0_[37] ),
        .I4(\velocity_reg_n_0_[36] ),
        .I5(acceleration1),
        .O(pos1));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \velocity_remain[19]_i_5 
       (.I0(\velocity_remain[19]_i_10_n_0 ),
        .I1(\velocity_remain[19]_i_11_n_0 ),
        .I2(\velocity_reg_n_0_[7] ),
        .I3(\velocity_reg_n_0_[12] ),
        .I4(\velocity_reg_n_0_[11] ),
        .I5(\velocity_remain[19]_i_12_n_0 ),
        .O(\velocity_remain[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[19]_i_6 
       (.I0(\velocity_reg_n_0_[19] ),
        .I1(\velocity_remain_reg_n_0_[19] ),
        .O(\velocity_remain[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[19]_i_7 
       (.I0(\velocity_reg_n_0_[18] ),
        .I1(\velocity_remain_reg_n_0_[18] ),
        .O(\velocity_remain[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[19]_i_8 
       (.I0(\velocity_reg_n_0_[17] ),
        .I1(\velocity_remain_reg_n_0_[17] ),
        .O(\velocity_remain[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[19]_i_9 
       (.I0(\velocity_reg_n_0_[16] ),
        .I1(\velocity_remain_reg_n_0_[16] ),
        .O(\velocity_remain[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[3]_i_2_n_6 ),
        .O(velocity_remain[1]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[3]_i_2_n_5 ),
        .O(velocity_remain[2]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[3]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[3]_i_2_n_4 ),
        .O(velocity_remain[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[3]_i_3 
       (.I0(\velocity_reg_n_0_[3] ),
        .I1(\velocity_remain_reg_n_0_[3] ),
        .O(\velocity_remain[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[3]_i_4 
       (.I0(\velocity_reg_n_0_[2] ),
        .I1(\velocity_remain_reg_n_0_[2] ),
        .O(\velocity_remain[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[3]_i_5 
       (.I0(\velocity_reg_n_0_[1] ),
        .I1(\velocity_remain_reg_n_0_[1] ),
        .O(\velocity_remain[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[3]_i_6 
       (.I0(\velocity_reg_n_0_[0] ),
        .I1(\velocity_remain_reg_n_0_[0] ),
        .O(\velocity_remain[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[4]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[7]_i_2_n_7 ),
        .O(velocity_remain[4]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[5]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[7]_i_2_n_6 ),
        .O(velocity_remain[5]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[6]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[7]_i_2_n_5 ),
        .O(velocity_remain[6]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[7]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[7]_i_2_n_4 ),
        .O(velocity_remain[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[7]_i_3 
       (.I0(\velocity_reg_n_0_[7] ),
        .I1(\velocity_remain_reg_n_0_[7] ),
        .O(\velocity_remain[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[7]_i_4 
       (.I0(\velocity_reg_n_0_[6] ),
        .I1(\velocity_remain_reg_n_0_[6] ),
        .O(\velocity_remain[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[7]_i_5 
       (.I0(\velocity_reg_n_0_[5] ),
        .I1(\velocity_remain_reg_n_0_[5] ),
        .O(\velocity_remain[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \velocity_remain[7]_i_6 
       (.I0(\velocity_reg_n_0_[4] ),
        .I1(\velocity_remain_reg_n_0_[4] ),
        .O(\velocity_remain[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[8]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[11]_i_2_n_7 ),
        .O(velocity_remain[8]));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \velocity_remain[9]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_rep_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_rep_n_0 ),
        .I3(pos1),
        .I4(\velocity_remain_reg[11]_i_2_n_6 ),
        .O(velocity_remain[9]));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[0] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(velocity_remain[0]),
        .Q(\velocity_remain_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[10] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[10]),
        .Q(\velocity_remain_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[11] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[11]),
        .Q(\velocity_remain_reg_n_0_[11] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_remain_reg[11]_i_2 
       (.CI(\velocity_remain_reg[7]_i_2_n_0 ),
        .CO({\velocity_remain_reg[11]_i_2_n_0 ,\velocity_remain_reg[11]_i_2_n_1 ,\velocity_remain_reg[11]_i_2_n_2 ,\velocity_remain_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[11] ,\velocity_reg_n_0_[10] ,\velocity_reg_n_0_[9] ,\velocity_reg_n_0_[8] }),
        .O({\velocity_remain_reg[11]_i_2_n_4 ,\velocity_remain_reg[11]_i_2_n_5 ,\velocity_remain_reg[11]_i_2_n_6 ,\velocity_remain_reg[11]_i_2_n_7 }),
        .S({\velocity_remain[11]_i_3_n_0 ,\velocity_remain[11]_i_4_n_0 ,\velocity_remain[11]_i_5_n_0 ,\velocity_remain[11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[12] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[12]),
        .Q(\velocity_remain_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[13] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[13]),
        .Q(\velocity_remain_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[14] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[14]),
        .Q(\velocity_remain_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[15] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[15]),
        .Q(\velocity_remain_reg_n_0_[15] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_remain_reg[15]_i_2 
       (.CI(\velocity_remain_reg[11]_i_2_n_0 ),
        .CO({\velocity_remain_reg[15]_i_2_n_0 ,\velocity_remain_reg[15]_i_2_n_1 ,\velocity_remain_reg[15]_i_2_n_2 ,\velocity_remain_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[15] ,\velocity_reg_n_0_[14] ,\velocity_reg_n_0_[13] ,\velocity_reg_n_0_[12] }),
        .O({\velocity_remain_reg[15]_i_2_n_4 ,\velocity_remain_reg[15]_i_2_n_5 ,\velocity_remain_reg[15]_i_2_n_6 ,\velocity_remain_reg[15]_i_2_n_7 }),
        .S({\velocity_remain[15]_i_3_n_0 ,\velocity_remain[15]_i_4_n_0 ,\velocity_remain[15]_i_5_n_0 ,\velocity_remain[15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[16] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[16]),
        .Q(\velocity_remain_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[17] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[17]),
        .Q(\velocity_remain_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[18] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[18]),
        .Q(\velocity_remain_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[19] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[19]),
        .Q(\velocity_remain_reg_n_0_[19] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_remain_reg[19]_i_4 
       (.CI(\velocity_remain_reg[15]_i_2_n_0 ),
        .CO({\NLW_velocity_remain_reg[19]_i_4_CO_UNCONNECTED [3],\velocity_remain_reg[19]_i_4_n_1 ,\velocity_remain_reg[19]_i_4_n_2 ,\velocity_remain_reg[19]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\velocity_reg_n_0_[18] ,\velocity_reg_n_0_[17] ,\velocity_reg_n_0_[16] }),
        .O({\velocity_remain_reg[19]_i_4_n_4 ,\velocity_remain_reg[19]_i_4_n_5 ,\velocity_remain_reg[19]_i_4_n_6 ,\velocity_remain_reg[19]_i_4_n_7 }),
        .S({\velocity_remain[19]_i_6_n_0 ,\velocity_remain[19]_i_7_n_0 ,\velocity_remain[19]_i_8_n_0 ,\velocity_remain[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[1] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\output_counter[19]_i_3_n_0 ),
        .D(velocity_remain[1]),
        .Q(\velocity_remain_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[2] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[2]),
        .Q(\velocity_remain_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[3] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[3]),
        .Q(\velocity_remain_reg_n_0_[3] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_remain_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\velocity_remain_reg[3]_i_2_n_0 ,\velocity_remain_reg[3]_i_2_n_1 ,\velocity_remain_reg[3]_i_2_n_2 ,\velocity_remain_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[3] ,\velocity_reg_n_0_[2] ,\velocity_reg_n_0_[1] ,\velocity_reg_n_0_[0] }),
        .O({\velocity_remain_reg[3]_i_2_n_4 ,\velocity_remain_reg[3]_i_2_n_5 ,\velocity_remain_reg[3]_i_2_n_6 ,\velocity_remain_reg[3]_i_2_n_7 }),
        .S({\velocity_remain[3]_i_3_n_0 ,\velocity_remain[3]_i_4_n_0 ,\velocity_remain[3]_i_5_n_0 ,\velocity_remain[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[4] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[4]),
        .Q(\velocity_remain_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[5] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[5]),
        .Q(\velocity_remain_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[6] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[6]),
        .Q(\velocity_remain_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[7] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[7]),
        .Q(\velocity_remain_reg_n_0_[7] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \velocity_remain_reg[7]_i_2 
       (.CI(\velocity_remain_reg[3]_i_2_n_0 ),
        .CO({\velocity_remain_reg[7]_i_2_n_0 ,\velocity_remain_reg[7]_i_2_n_1 ,\velocity_remain_reg[7]_i_2_n_2 ,\velocity_remain_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\velocity_reg_n_0_[7] ,\velocity_reg_n_0_[6] ,\velocity_reg_n_0_[5] ,\velocity_reg_n_0_[4] }),
        .O({\velocity_remain_reg[7]_i_2_n_4 ,\velocity_remain_reg[7]_i_2_n_5 ,\velocity_remain_reg[7]_i_2_n_6 ,\velocity_remain_reg[7]_i_2_n_7 }),
        .S({\velocity_remain[7]_i_3_n_0 ,\velocity_remain[7]_i_4_n_0 ,\velocity_remain[7]_i_5_n_0 ,\velocity_remain[7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[8] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[8]),
        .Q(\velocity_remain_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \velocity_remain_reg[9] 
       (.C(sys_clk),
        .CE(\velocity_remain[19]_i_1_n_0 ),
        .CLR(\velocity[39]_i_3_n_0 ),
        .D(velocity_remain[9]),
        .Q(\velocity_remain_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
