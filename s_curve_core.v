// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 26 22:37:30 2020
// Host        : WIN-2001010039 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub s_curve_core.v
// Design      : s_curve_core
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s6csga225-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module s_curve_core(sys_clk, sys_rst_n, start_s, AIM_SPEED, 
  AA_ACCELERATION_CLK, AA_ACCELERATION2_CLK, TARGET_POS, theory_dec_len, force_stop, 
  output_counter, pulse, pulse_sent_done)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rst_n,start_s,AIM_SPEED[15:0],AA_ACCELERATION_CLK[31:0],AA_ACCELERATION2_CLK[31:0],TARGET_POS[19:0],theory_dec_len[15:0],force_stop,output_counter[19:0],pulse,pulse_sent_done" */;
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
endmodule
