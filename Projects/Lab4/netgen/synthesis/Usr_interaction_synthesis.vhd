--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Usr_interaction_synthesis.vhd
-- /___/   /\     Timestamp: Tue Mar 27 13:43:24 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Usr_interaction -w -dir netgen/synthesis -ofmt vhdl -sim Usr_interaction.ngc Usr_interaction_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: Usr_interaction.ngc
-- Output file	: C:\Users\Jon\Google Drive\Year 2 Semester 2\DSD 2\Lab4\Projects\Lab4\netgen\synthesis\Usr_interaction_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Usr_interaction
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Usr_interaction is
  port (
    Qrcd_in : in STD_LOGIC := 'X'; 
    Drcd_in : in STD_LOGIC := 'X'; 
    Nrcd_in : in STD_LOGIC := 'X'; 
    Clk_in : in STD_LOGIC := 'X'; 
    Reset_n_in : in STD_LOGIC := 'X'; 
    Soda_req_in : in STD_LOGIC := 'X'; 
    Drop_soda_out : out STD_LOGIC; 
    Qrcd_out : out STD_LOGIC; 
    Drcd_out : out STD_LOGIC; 
    Nrcd_out : out STD_LOGIC; 
    Amt_err : out STD_LOGIC; 
    unused_anode : out STD_LOGIC; 
    hund_anode_out : out STD_LOGIC; 
    tens_anode_out : out STD_LOGIC; 
    ones_anode_out : out STD_LOGIC; 
    CAn_out : out STD_LOGIC; 
    CBn_out : out STD_LOGIC; 
    CCn_out : out STD_LOGIC; 
    CDn_out : out STD_LOGIC; 
    CEn_out : out STD_LOGIC; 
    CFn_out : out STD_LOGIC; 
    CGn_out : out STD_LOGIC; 
    Soda_price_in : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Usr_interaction;

architecture Structure of Usr_interaction is
  signal Soda_price_in_3_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_2_IBUF_1 : STD_LOGIC; 
  signal Soda_price_in_1_IBUF_2 : STD_LOGIC; 
  signal Soda_price_in_0_IBUF_3 : STD_LOGIC; 
  signal Qrcd_out_OBUF_4 : STD_LOGIC; 
  signal Drcd_out_OBUF_5 : STD_LOGIC; 
  signal Nrcd_out_OBUF_6 : STD_LOGIC; 
  signal Clk_in_BUFGP_7 : STD_LOGIC; 
  signal Reset_n_in_IBUF_8 : STD_LOGIC; 
  signal Soda_req_in_IBUF_9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_drop_soda_10 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_amt_err_11 : STD_LOGIC; 
  signal instance0_coin_rx_Qp_12 : STD_LOGIC; 
  signal instance0_coin_rx_Dp_13 : STD_LOGIC; 
  signal instance0_coin_rx_Np_14 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_15 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_16 : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_17 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CAn_18 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CBn_19 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CCn_20 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CDn_21 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CEn_22 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CFn_23 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CGn_24 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal unused_anode_OBUF_26 : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35 : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62 : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_8_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_4_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_63_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q_101 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_4_Q_102 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi4_103 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_3_Q_104 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_3_Q_105 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi3_106 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_2_Q_107 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_2_Q_108 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi2_109 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_1_Q_110 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_1_Q_111 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi1_112 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_0_Q_113 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_0_Q_114 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi_115 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_n0085_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_next_state_2_PWR_9_o_Mux_3_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_next_state_2_GND_9_o_Mux_2_o : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr9 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr8 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr7 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr6 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr5 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr4 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr3 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr2 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr1 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_In : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_In_188 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_In_189 : STD_LOGIC; 
  signal instance0_coin_rx_Reset_n_inv : STD_LOGIC; 
  signal instance0_coin_rx_n0067 : STD_LOGIC; 
  signal instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_196 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_197 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_198 : STD_LOGIC; 
  signal instance0_coin_rx_N_received_209 : STD_LOGIC; 
  signal instance0_coin_rx_D_received_210 : STD_LOGIC; 
  signal instance0_coin_rx_Q_received_211 : STD_LOGIC; 
  signal instance0_coin_rx_N_reg_212 : STD_LOGIC; 
  signal instance0_coin_rx_D_reg_213 : STD_LOGIC; 
  signal instance0_coin_rx_Q_reg_214 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11_285 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o11_287 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o15 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o11_291 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_293 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o12_294 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11_296 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o12_297 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o1 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o11_299 : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_glue_set_326 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_glue_set_327 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_glue_set_328 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_17_rt_329 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_16_rt_330 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_15_rt_331 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_14_rt_332 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_13_rt_333 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_12_rt_334 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_11_rt_335 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_10_rt_336 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_9_rt_337 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_8_rt_338 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_7_rt_339 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_6_rt_340 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_5_rt_341 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_4_rt_342 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_3_rt_343 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_2_rt_344 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_1_rt_345 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_xor_18_rt_346 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_n0128_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_amt_dep : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_n0125_Madd_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal instance0_vending_machine_controller_Madd_n0125_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_n0122_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_soda_cost : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_amt_temp : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_next_state : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal instance0_coin_rx_Mcount_coin_cntr_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_coin_rx_Mcount_coin_cntr_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal instance0_coin_rx_coin_cntr : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_seven_seg_disp_Mcount_counter_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal instance0_seven_seg_disp_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_seven_seg_disp_counter : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal instance0_seven_seg_disp_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => unused_anode_OBUF_26
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(10),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(11),
      O => instance0_vending_machine_controller_coin_controller_Result(11)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      I1 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(11)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_10_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(9),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(10),
      O => instance0_vending_machine_controller_coin_controller_Result(10)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_10_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(9),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(10),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(10)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      I1 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(10)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_9_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(8),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(9),
      O => instance0_vending_machine_controller_coin_controller_Result(9)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_9_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(8),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(9),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(9)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      I1 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(9)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_8_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(7),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(8),
      O => instance0_vending_machine_controller_coin_controller_Result(8)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_8_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(7),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(8),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(8)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_7_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(6),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(7),
      O => instance0_vending_machine_controller_coin_controller_Result(7)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(6),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(7),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(7)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_6_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(5),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(6),
      O => instance0_vending_machine_controller_coin_controller_Result(6)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_6_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(5),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(6),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(6)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_5_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(4),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(5),
      O => instance0_vending_machine_controller_coin_controller_Result(5)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_5_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(4),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(5),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(5)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_4_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(3),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(4),
      O => instance0_vending_machine_controller_coin_controller_Result(4)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_4_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(3),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(4),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(4)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_3_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(2),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(3),
      O => instance0_vending_machine_controller_coin_controller_Result(3)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(2),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(3),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(3)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_2_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(1),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(2),
      O => instance0_vending_machine_controller_coin_controller_Result(2)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_2_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(1),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(2),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(2)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_1_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(0),
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(1),
      O => instance0_vending_machine_controller_coin_controller_Result(1)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_1_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(0),
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(1)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_0_Q : XORCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      LI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(0),
      O => instance0_vending_machine_controller_coin_controller_Result(0)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_0_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      DI => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      S => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(0),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy(0)
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_3_Q_104,
      DI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi4_103,
      S => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_4_Q_102,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q_101
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_4_Q : LUT5
    generic map(
      INIT => X"01000001"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      I2 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      I3 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      I4 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_4_Q_102
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      I2 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      I4 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi4_103
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_3_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_2_Q_107,
      DI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi3_106,
      S => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_3_Q_105,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_3_Q_104
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_soda_cost(6),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(7),
      I3 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_3_Q_105
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(6),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(7),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi3_106
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_2_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_1_Q_110,
      DI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi2_109,
      S => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_2_Q_108,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_2_Q_107
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_soda_cost(4),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(5),
      I3 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_2_Q_108
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(4),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(5),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi2_109
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_1_Q : MUXCY
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_0_Q_113,
      DI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi1_112,
      S => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_1_Q_111,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_1_Q_110
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(3),
      I3 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_1_Q_111
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(3),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi1_112
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_0_Q : MUXCY
    port map (
      CI => unused_anode_OBUF_26,
      DI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi_115,
      S => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_0_Q_114,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_0_Q_113
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      I3 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lut_0_Q_114
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      I1 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_lutdi_115
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(11),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(11)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(10),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(10)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(9),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(9)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(8),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(8)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(7),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(7)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(6),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(6)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(5),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(5)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(4),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(4)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(3),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(3)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(2),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(2)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(1),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(1)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      CE => instance0_vending_machine_controller_coin_controller_n0085_inv,
      D => instance0_vending_machine_controller_coin_controller_Result(0),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_temp(0)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_next_state(2),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_next_state(1),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_next_state(0),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118
    );
  instance0_vending_machine_controller_coin_controller_drop_soda : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_next_state_2_GND_9_o_Mux_2_o,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_drop_soda_10
    );
  instance0_vending_machine_controller_coin_controller_amt_err : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_next_state_2_PWR_9_o_Mux_3_o,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_vending_machine_controller_coin_controller_amt_err_11
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_11 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(11)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_10 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(10)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_9 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(9)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_8 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(8)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_7 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(7)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_6 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(6)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_5 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(5)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_4 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(4)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_3 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(3)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_2 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(2)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_1 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(1)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_0 : FD
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      Q => instance0_vending_machine_controller_coin_controller_amt_dep(0)
    );
  instance0_coin_rx_coin_cntr_9 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr9,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(9)
    );
  instance0_coin_rx_coin_cntr_8 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr8,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(8)
    );
  instance0_coin_rx_coin_cntr_7 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr7,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(7)
    );
  instance0_coin_rx_coin_cntr_6 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr6,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(6)
    );
  instance0_coin_rx_coin_cntr_5 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr5,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(5)
    );
  instance0_coin_rx_coin_cntr_4 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr4,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(4)
    );
  instance0_coin_rx_coin_cntr_3 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr3,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(3)
    );
  instance0_coin_rx_coin_cntr_2 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr2,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(2)
    );
  instance0_coin_rx_coin_cntr_1 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr1,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(1)
    );
  instance0_coin_rx_coin_cntr_0 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Mcount_coin_cntr,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_coin_cntr(0)
    );
  instance0_coin_rx_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_state_FSM_FFd1_In,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_state_FSM_FFd1_198
    );
  instance0_coin_rx_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_state_FSM_FFd2_In_188,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_state_FSM_FFd2_197
    );
  instance0_coin_rx_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_state_FSM_FFd3_In_189,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_state_FSM_FFd3_196
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_9_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(8),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(9),
      O => instance0_coin_rx_Mcount_coin_cntr9
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_8_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(7),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(8),
      O => instance0_coin_rx_Mcount_coin_cntr8
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_8_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(7),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(8),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(8)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_7_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(6),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(7),
      O => instance0_coin_rx_Mcount_coin_cntr7
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_7_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(6),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(7),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(7)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_6_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(5),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(6),
      O => instance0_coin_rx_Mcount_coin_cntr6
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_6_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(5),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(6),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(6)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_5_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(4),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(5),
      O => instance0_coin_rx_Mcount_coin_cntr5
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_5_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(4),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(5),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(5)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_4_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(3),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(4),
      O => instance0_coin_rx_Mcount_coin_cntr4
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_4_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(3),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(4),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(4)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_3_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(2),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(3),
      O => instance0_coin_rx_Mcount_coin_cntr3
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_3_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(2),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(3),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(3)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_2_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(1),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(2),
      O => instance0_coin_rx_Mcount_coin_cntr2
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_2_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(1),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(2),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(2)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_1_Q : XORCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(0),
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(1),
      O => instance0_coin_rx_Mcount_coin_cntr1
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_1_Q : MUXCY
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy(0),
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(1),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(1)
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_0_Q : XORCY
    port map (
      CI => instance0_coin_rx_n0067,
      LI => instance0_coin_rx_Mcount_coin_cntr_lut(0),
      O => instance0_coin_rx_Mcount_coin_cntr
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_0_Q : MUXCY
    port map (
      CI => instance0_coin_rx_n0067,
      DI => N0,
      S => instance0_coin_rx_Mcount_coin_cntr_lut(0),
      O => instance0_coin_rx_Mcount_coin_cntr_cy(0)
    );
  instance0_coin_rx_Dp : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_Dp_13
    );
  instance0_coin_rx_Qp : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_Qp_12
    );
  instance0_coin_rx_Np : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_Np_14
    );
  instance0_coin_rx_D_received : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_D_reg_213,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_D_received_210
    );
  instance0_coin_rx_Q_received : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_Q_reg_214,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_Q_received_211
    );
  instance0_coin_rx_N_received : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_coin_rx_N_reg_212,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_N_received_209
    );
  instance0_coin_rx_D_reg : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => Drcd_out_OBUF_5,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_D_reg_213
    );
  instance0_coin_rx_Q_reg : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => Qrcd_out_OBUF_4,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_Q_reg_214
    );
  instance0_coin_rx_N_reg : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => Nrcd_out_OBUF_6,
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_coin_rx_N_reg_212
    );
  instance0_seven_seg_disp_Mcount_counter_xor_18_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(17),
      LI => instance0_seven_seg_disp_Mcount_counter_xor_18_rt_346,
      O => instance0_seven_seg_disp_Result(18)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(16),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_17_rt_329,
      O => instance0_seven_seg_disp_Result(17)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_17_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(16),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_17_rt_329,
      O => instance0_seven_seg_disp_Mcount_counter_cy(17)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(15),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_16_rt_330,
      O => instance0_seven_seg_disp_Result(16)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(15),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_16_rt_330,
      O => instance0_seven_seg_disp_Mcount_counter_cy(16)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(14),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_15_rt_331,
      O => instance0_seven_seg_disp_Result(15)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(14),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_15_rt_331,
      O => instance0_seven_seg_disp_Mcount_counter_cy(15)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(13),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_14_rt_332,
      O => instance0_seven_seg_disp_Result(14)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(13),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_14_rt_332,
      O => instance0_seven_seg_disp_Mcount_counter_cy(14)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(12),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_13_rt_333,
      O => instance0_seven_seg_disp_Result(13)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(12),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_13_rt_333,
      O => instance0_seven_seg_disp_Mcount_counter_cy(13)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(11),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_12_rt_334,
      O => instance0_seven_seg_disp_Result(12)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(11),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_12_rt_334,
      O => instance0_seven_seg_disp_Mcount_counter_cy(12)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(10),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_11_rt_335,
      O => instance0_seven_seg_disp_Result(11)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(10),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_11_rt_335,
      O => instance0_seven_seg_disp_Mcount_counter_cy(11)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(9),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_10_rt_336,
      O => instance0_seven_seg_disp_Result(10)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(9),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_10_rt_336,
      O => instance0_seven_seg_disp_Mcount_counter_cy(10)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(8),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_9_rt_337,
      O => instance0_seven_seg_disp_Result(9)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(8),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_9_rt_337,
      O => instance0_seven_seg_disp_Mcount_counter_cy(9)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(7),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_8_rt_338,
      O => instance0_seven_seg_disp_Result(8)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(7),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_8_rt_338,
      O => instance0_seven_seg_disp_Mcount_counter_cy(8)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(6),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_7_rt_339,
      O => instance0_seven_seg_disp_Result(7)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(6),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_7_rt_339,
      O => instance0_seven_seg_disp_Mcount_counter_cy(7)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(5),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_6_rt_340,
      O => instance0_seven_seg_disp_Result(6)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(5),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_6_rt_340,
      O => instance0_seven_seg_disp_Mcount_counter_cy(6)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(4),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_5_rt_341,
      O => instance0_seven_seg_disp_Result(5)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(4),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_5_rt_341,
      O => instance0_seven_seg_disp_Mcount_counter_cy(5)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(3),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_4_rt_342,
      O => instance0_seven_seg_disp_Result(4)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(3),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_4_rt_342,
      O => instance0_seven_seg_disp_Mcount_counter_cy(4)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(2),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_3_rt_343,
      O => instance0_seven_seg_disp_Result(3)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(2),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_3_rt_343,
      O => instance0_seven_seg_disp_Mcount_counter_cy(3)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(1),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_2_rt_344,
      O => instance0_seven_seg_disp_Result(2)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(1),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_2_rt_344,
      O => instance0_seven_seg_disp_Mcount_counter_cy(2)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(0),
      LI => instance0_seven_seg_disp_Mcount_counter_cy_1_rt_345,
      O => instance0_seven_seg_disp_Result(1)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy(0),
      DI => N0,
      S => instance0_seven_seg_disp_Mcount_counter_cy_1_rt_345,
      O => instance0_seven_seg_disp_Mcount_counter_cy(1)
    );
  instance0_seven_seg_disp_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => instance0_seven_seg_disp_Mcount_counter_lut(0),
      O => instance0_seven_seg_disp_Result(0)
    );
  instance0_seven_seg_disp_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => unused_anode_OBUF_26,
      S => instance0_seven_seg_disp_Mcount_counter_lut(0),
      O => instance0_seven_seg_disp_Mcount_counter_cy(0)
    );
  instance0_seven_seg_disp_counter_18 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(18),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(18)
    );
  instance0_seven_seg_disp_counter_17 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(17),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(17)
    );
  instance0_seven_seg_disp_counter_16 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(16),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(16)
    );
  instance0_seven_seg_disp_counter_15 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(15),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(15)
    );
  instance0_seven_seg_disp_counter_14 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(14),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(14)
    );
  instance0_seven_seg_disp_counter_13 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(13),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(13)
    );
  instance0_seven_seg_disp_counter_12 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(12),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(12)
    );
  instance0_seven_seg_disp_counter_11 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(11),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(11)
    );
  instance0_seven_seg_disp_counter_10 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(10),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(10)
    );
  instance0_seven_seg_disp_counter_9 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(9),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(9)
    );
  instance0_seven_seg_disp_counter_8 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(8),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(8)
    );
  instance0_seven_seg_disp_counter_7 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(7),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(7)
    );
  instance0_seven_seg_disp_counter_6 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(6),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(6)
    );
  instance0_seven_seg_disp_counter_5 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(5),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(5)
    );
  instance0_seven_seg_disp_counter_4 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(4),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(4)
    );
  instance0_seven_seg_disp_counter_3 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(3),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(3)
    );
  instance0_seven_seg_disp_counter_2 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(2),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(2)
    );
  instance0_seven_seg_disp_counter_1 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(1),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(1)
    );
  instance0_seven_seg_disp_counter_0 : FDR
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_Result(0),
      R => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_counter(0)
    );
  instance0_seven_seg_disp_CGn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CGn_24
    );
  instance0_seven_seg_disp_CFn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CFn_23
    );
  instance0_seven_seg_disp_CEn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CEn_22
    );
  instance0_seven_seg_disp_CDn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CDn_21
    );
  instance0_seven_seg_disp_CBn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CBn_19
    );
  instance0_seven_seg_disp_CAn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CAn_18
    );
  instance0_seven_seg_disp_CCn : FDS
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o,
      S => instance0_coin_rx_Reset_n_inv,
      Q => instance0_seven_seg_disp_CCn_20
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_amt_dep_temp1_11_MUX_91_o11 : LUT5
    generic map(
      INIT => X"A659A69A"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_8_MUX_79_o11 : LUT6
    generic map(
      INIT => X"C77C3883F11F0EE0"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_7_MUX_87_o11 : LUT6
    generic map(
      INIT => X"A758F10E7A851FE0"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o1 : LUT6
    generic map(
      INIT => X"FF58FF0EFF85FFE0"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_4_amt_dep_temp1_5_MUX_108_o11 : LUT6
    generic map(
      INIT => X"93026C08C9013604"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_5_amt_dep_temp1_5_MUX_107_o11 : LUT6
    generic map(
      INIT => X"9D626E91AB5457A8"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o1 : LUT6
    generic map(
      INIT => X"FF62FF91FF54FFA8"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_55_o11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut(2)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_amt_dep_temp1_11_MUX_63_o11 : LUT4
    generic map(
      INIT => X"85A8"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_63_o
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_10_1 : LUT4
    generic map(
      INIT => X"0177"
    )
    port map (
      I0 => Soda_price_in_1_IBUF_2,
      I1 => Soda_price_in_2_IBUF_1,
      I2 => Soda_price_in_0_IBUF_3,
      I3 => Soda_price_in_3_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(2)
    );
  instance0_vending_machine_controller_coin_controller_n0128_3_1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_2_IBUF_1,
      I2 => Soda_price_in_0_IBUF_3,
      I3 => Soda_price_in_1_IBUF_2,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(8)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_9_1 : LUT4
    generic map(
      INIT => X"2026"
    )
    port map (
      I0 => Soda_price_in_1_IBUF_2,
      I1 => Soda_price_in_3_IBUF_0,
      I2 => Soda_price_in_0_IBUF_3,
      I3 => Soda_price_in_2_IBUF_1,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(3)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_7_1 : LUT4
    generic map(
      INIT => X"2225"
    )
    port map (
      I0 => Soda_price_in_1_IBUF_2,
      I1 => Soda_price_in_3_IBUF_0,
      I2 => Soda_price_in_2_IBUF_1,
      I3 => Soda_price_in_0_IBUF_3,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(5)
    );
  instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv2 : LUT6
    generic map(
      INIT => X"2002200220022000"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      I4 => instance0_coin_rx_Dp_13,
      I5 => instance0_coin_rx_Qp_12,
      O => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_11_1 : LUT4
    generic map(
      INIT => X"4151"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_0_IBUF_3,
      I2 => Soda_price_in_2_IBUF_1,
      I3 => Soda_price_in_1_IBUF_2,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(1)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"41414140"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      I3 => instance0_coin_rx_Dp_13,
      I4 => instance0_coin_rx_Qp_12,
      O => instance0_vending_machine_controller_coin_controller_next_state(1)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_12_1 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_0_IBUF_3,
      I2 => Soda_price_in_2_IBUF_1,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(0)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_6_1 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_0_IBUF_3,
      I2 => Soda_price_in_2_IBUF_1,
      I3 => Soda_price_in_1_IBUF_2,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(6)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_8_1 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_2_IBUF_1,
      I2 => Soda_price_in_0_IBUF_3,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(4)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Soda_price_in_3_IBUF_0,
      I1 => Soda_price_in_2_IBUF_1,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(7)
    );
  instance0_vending_machine_controller_coin_controller_n0085_inv1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(0),
      O => instance0_vending_machine_controller_coin_controller_n0085_inv
    );
  instance0_coin_rx_state_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"EBE9CAC8ABA98A88"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd1_198,
      I1 => instance0_coin_rx_state_FSM_FFd3_196,
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_D_received_210,
      I4 => instance0_coin_rx_Q_received_211,
      I5 => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd1_In
    );
  instance0_coin_rx_n0067_2_1 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_state_FSM_FFd2_197,
      I2 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_n0067
    );
  instance0_coin_rx_state_next_state_2_GND_11_o_Mux_0_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_In_189,
      I1 => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o
    );
  instance0_coin_rx_state_next_state_2_GND_11_o_Mux_1_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_In_189,
      I1 => instance0_coin_rx_state_FSM_FFd2_In_188,
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o
    );
  instance0_coin_rx_state_next_state_2_GND_11_o_Mux_2_o1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_In_189,
      I1 => instance0_coin_rx_state_FSM_FFd2_In_188,
      I2 => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o : LUT6
    generic map(
      INIT => X"FF00FF110F00F111"
    )
    port map (
      I0 => N2,
      I1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I2 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      I3 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      I4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      I5 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"BBA9BBA8"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      I1 => instance0_coin_rx_Qp_12,
      I2 => instance0_coin_rx_Np_14,
      I3 => instance0_coin_rx_Dp_13,
      I4 => Soda_req_in_IBUF_9,
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_In_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => instance0_coin_rx_Qp_12,
      I1 => instance0_coin_rx_Dp_13,
      O => N4
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_In : LUT6
    generic map(
      INIT => X"4041404140414040"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      I3 => N4,
      I4 => instance0_coin_rx_Np_14,
      I5 => Soda_req_in_IBUF_9,
      O => instance0_vending_machine_controller_coin_controller_next_state(2)
    );
  instance0_coin_rx_state_FSM_FFd3_In_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd1_198,
      I1 => instance0_coin_rx_state_FSM_FFd2_197,
      O => N6
    );
  instance0_coin_rx_state_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"11111110BBBBBBBA"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => N6,
      I2 => instance0_coin_rx_D_received_210,
      I3 => instance0_coin_rx_N_received_209,
      I4 => instance0_coin_rx_Q_received_211,
      I5 => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd3_In_189
    );
  instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o_9_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => instance0_coin_rx_coin_cntr(4),
      I1 => instance0_coin_rx_coin_cntr(3),
      I2 => instance0_coin_rx_coin_cntr(2),
      I3 => instance0_coin_rx_coin_cntr(1),
      I4 => instance0_coin_rx_coin_cntr(0),
      O => N13
    );
  instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o_9_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => instance0_coin_rx_coin_cntr(9),
      I1 => instance0_coin_rx_coin_cntr(8),
      I2 => instance0_coin_rx_coin_cntr(7),
      I3 => instance0_coin_rx_coin_cntr(6),
      I4 => instance0_coin_rx_coin_cntr(5),
      I5 => N13,
      O => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12 : LUT6
    generic map(
      INIT => X"A264AA66852995A9"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11_285
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o12 : LUT6
    generic map(
      INIT => X"A060E87205091D8B"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o11_287
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o16 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I2 => instance0_seven_seg_disp_counter(17),
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o15
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o11 : LUT6
    generic map(
      INIT => X"A264CA3685299CA3"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11 : LUT6
    generic map(
      INIT => X"EA76E8729DAB1D8B"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o14 : LUT5
    generic map(
      INIT => X"FEDCBA10"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_293,
      I3 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o12_294,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11 : LUT6
    generic map(
      INIT => X"CA36E2749CA38D2B"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o14 : LUT5
    generic map(
      INIT => X"FEDCBA10"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11_296,
      I3 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o12_297,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o1,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o12 : LUT6
    generic map(
      INIT => X"AA66CA3695A99CA3"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o11_299
    );
  Soda_price_in_3_IBUF : IBUF
    port map (
      I => Soda_price_in(3),
      O => Soda_price_in_3_IBUF_0
    );
  Soda_price_in_2_IBUF : IBUF
    port map (
      I => Soda_price_in(2),
      O => Soda_price_in_2_IBUF_1
    );
  Soda_price_in_1_IBUF : IBUF
    port map (
      I => Soda_price_in(1),
      O => Soda_price_in_1_IBUF_2
    );
  Soda_price_in_0_IBUF : IBUF
    port map (
      I => Soda_price_in(0),
      O => Soda_price_in_0_IBUF_3
    );
  Qrcd_in_IBUF : IBUF
    port map (
      I => Qrcd_in,
      O => Qrcd_out_OBUF_4
    );
  Drcd_in_IBUF : IBUF
    port map (
      I => Drcd_in,
      O => Drcd_out_OBUF_5
    );
  Nrcd_in_IBUF : IBUF
    port map (
      I => Nrcd_in,
      O => Nrcd_out_OBUF_6
    );
  Reset_n_in_IBUF : IBUF
    port map (
      I => Reset_n_in,
      O => Reset_n_in_IBUF_8
    );
  Soda_req_in_IBUF : IBUF
    port map (
      I => Soda_req_in,
      O => Soda_req_in_IBUF_9
    );
  Drop_soda_out_OBUF : OBUF
    port map (
      I => instance0_vending_machine_controller_coin_controller_drop_soda_10,
      O => Drop_soda_out
    );
  Qrcd_out_OBUF : OBUF
    port map (
      I => Qrcd_out_OBUF_4,
      O => Qrcd_out
    );
  Drcd_out_OBUF : OBUF
    port map (
      I => Drcd_out_OBUF_5,
      O => Drcd_out
    );
  Nrcd_out_OBUF : OBUF
    port map (
      I => Nrcd_out_OBUF_6,
      O => Nrcd_out
    );
  Amt_err_OBUF : OBUF
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_err_11,
      O => Amt_err
    );
  unused_anode_OBUF : OBUF
    port map (
      I => unused_anode_OBUF_26,
      O => unused_anode
    );
  hund_anode_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_hund_anode_15,
      O => hund_anode_out
    );
  tens_anode_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_tens_anode_16,
      O => tens_anode_out
    );
  ones_anode_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_ones_anode_17,
      O => ones_anode_out
    );
  CAn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CAn_18,
      O => CAn_out
    );
  CBn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CBn_19,
      O => CBn_out
    );
  CCn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CCn_20,
      O => CCn_out
    );
  CDn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CDn_21,
      O => CDn_out
    );
  CEn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CEn_22,
      O => CEn_out
    );
  CFn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CFn_23,
      O => CFn_out
    );
  CGn_out_OBUF : OBUF
    port map (
      I => instance0_seven_seg_disp_CGn_24,
      O => CGn_out
    );
  instance0_seven_seg_disp_ones_anode : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_ones_anode_glue_set_326,
      Q => instance0_seven_seg_disp_ones_anode_17
    );
  instance0_seven_seg_disp_tens_anode : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_tens_anode_glue_set_327,
      Q => instance0_seven_seg_disp_tens_anode_16
    );
  instance0_seven_seg_disp_hund_anode : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_in_BUFGP_7,
      D => instance0_seven_seg_disp_hund_anode_glue_set_328,
      Q => instance0_seven_seg_disp_hund_anode_15
    );
  instance0_seven_seg_disp_Mcount_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      O => instance0_seven_seg_disp_Mcount_counter_cy_17_rt_329
    );
  instance0_seven_seg_disp_Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(16),
      O => instance0_seven_seg_disp_Mcount_counter_cy_16_rt_330
    );
  instance0_seven_seg_disp_Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(15),
      O => instance0_seven_seg_disp_Mcount_counter_cy_15_rt_331
    );
  instance0_seven_seg_disp_Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(14),
      O => instance0_seven_seg_disp_Mcount_counter_cy_14_rt_332
    );
  instance0_seven_seg_disp_Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(13),
      O => instance0_seven_seg_disp_Mcount_counter_cy_13_rt_333
    );
  instance0_seven_seg_disp_Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(12),
      O => instance0_seven_seg_disp_Mcount_counter_cy_12_rt_334
    );
  instance0_seven_seg_disp_Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(11),
      O => instance0_seven_seg_disp_Mcount_counter_cy_11_rt_335
    );
  instance0_seven_seg_disp_Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(10),
      O => instance0_seven_seg_disp_Mcount_counter_cy_10_rt_336
    );
  instance0_seven_seg_disp_Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(9),
      O => instance0_seven_seg_disp_Mcount_counter_cy_9_rt_337
    );
  instance0_seven_seg_disp_Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(8),
      O => instance0_seven_seg_disp_Mcount_counter_cy_8_rt_338
    );
  instance0_seven_seg_disp_Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(7),
      O => instance0_seven_seg_disp_Mcount_counter_cy_7_rt_339
    );
  instance0_seven_seg_disp_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(6),
      O => instance0_seven_seg_disp_Mcount_counter_cy_6_rt_340
    );
  instance0_seven_seg_disp_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(5),
      O => instance0_seven_seg_disp_Mcount_counter_cy_5_rt_341
    );
  instance0_seven_seg_disp_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(4),
      O => instance0_seven_seg_disp_Mcount_counter_cy_4_rt_342
    );
  instance0_seven_seg_disp_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(3),
      O => instance0_seven_seg_disp_Mcount_counter_cy_3_rt_343
    );
  instance0_seven_seg_disp_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(2),
      O => instance0_seven_seg_disp_Mcount_counter_cy_2_rt_344
    );
  instance0_seven_seg_disp_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(1),
      O => instance0_seven_seg_disp_Mcount_counter_cy_1_rt_345
    );
  instance0_seven_seg_disp_Mcount_counter_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      O => instance0_seven_seg_disp_Mcount_counter_xor_18_rt_346
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_71_o11 : LUT6
    generic map(
      INIT => X"08EFF308308EEF30"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_9_MUX_72_o11 : LUT6
    generic map(
      INIT => X"0418820420411820"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_10_MUX_100_o11 : LUT6
    generic map(
      INIT => X"80080DE018410A50"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o1 : LUT6
    generic map(
      INIT => X"8FF88A58DA5DD84D"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_amt_dep_temp1_10_MUX_67_o11 : LUT5
    generic map(
      INIT => X"0AD4FD0A"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0)
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16 : LUT6
    generic map(
      INIT => X"FDFDFDECB9B9B9A8"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => N29,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o11_291,
      I5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o1,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11_SW0 : LUT6
    generic map(
      INIT => X"0F0F94610F0FC238"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => N31
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11 : LUT5
    generic map(
      INIT => X"F001F07C"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => N31,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o11_SW0 : LUT6
    generic map(
      INIT => X"F0F06B9EF0F03DC7"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => N33
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o11 : LUT5
    generic map(
      INIT => X"4C104C17"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => N33,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o15 : LUT6
    generic map(
      INIT => X"FDFDFDECB9B9B9A8"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => N35,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o1,
      I5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11_285,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o15 : LUT6
    generic map(
      INIT => X"FDFDFDECB9B9B9A8"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => N37,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o1,
      I5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o11_287,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o15 : LUT6
    generic map(
      INIT => X"FDFDFDECB9B9B9A8"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => N39,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35,
      I4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o1,
      I5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o11_299,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o11 : LUT6
    generic map(
      INIT => X"4BB430034BB4DEED"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o12 : LUT6
    generic map(
      INIT => X"4BB410014BB4D66D"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o11_291
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_5_amt_dep_temp1_6_MUX_96_o11 : LUT6
    generic map(
      INIT => X"841504216A080218"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I3 => N41,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o1 : LUT6
    generic map(
      INIT => X"EA5F405EFF85A885"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I3 => N41,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_SW0 : LUT6
    generic map(
      INIT => X"656FA2B69A9F5179"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      O => N29
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_GND_8_o_MUX_84_o11 : LUT6
    generic map(
      INIT => X"00E003000F001000"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_amt_dep_temp1_10_MUX_99_o11 : LUT6
    generic map(
      INIT => X"87B88A589A599849"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0)
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n621 : LUT6
    generic map(
      INIT => X"8020080210400104"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n35
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o12 : LUT6
    generic map(
      INIT => X"CEF0EC0FFEBFEFFB"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_293
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o12 : LUT6
    generic map(
      INIT => X"C7E07C0EF7F97F9F"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11_296
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_111 : LUT5
    generic map(
      INIT => X"A8A857FF"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut(2),
      I1 => instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_63_o,
      I2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      O => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_6_MUX_95_o11 : LUT6
    generic map(
      INIT => X"EA15405E7F80A885"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I3 => N41,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_83_o11 : LUT6
    generic map(
      INIT => X"0003FFFFF0E00000"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o111 : LUT5
    generic map(
      INIT => X"5F2BAAF5"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      O => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o19_SW0 : LUT6
    generic map(
      INIT => X"E4B11E4BF6F99F6F"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      O => N55
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o14_SW0_SW0 : LUT6
    generic map(
      INIT => X"555FA2B5AAAF517A"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      O => N35
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o14_SW0_SW0 : LUT6
    generic map(
      INIT => X"707AA217B0B5512B"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      O => N37
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o14_SW0_SW0 : LUT6
    generic map(
      INIT => X"656FAAF69A9F55F9"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      O => N39
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_8_11 : LUT6
    generic map(
      INIT => X"E17847A9A5F00681"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I2 => N89,
      I3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_amt_dep_temp2_8_Q
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_105_o11 : LUT6
    generic map(
      INIT => X"D7007D00F5007D00"
    )
    port map (
      I0 => N91,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2)
    );
  instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o1 : LUT6
    generic map(
      INIT => X"AA82AA82AA82AAA0"
    )
    port map (
      I0 => N91,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o1 : LUT6
    generic map(
      INIT => X"E747F9A9A706F181"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I2 => N89,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13_SW2 : LUT6
    generic map(
      INIT => X"DCFBCE7FEA6F5DBD"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I2 => N89,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      O => N87
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1 : LUT6
    generic map(
      INIT => X"33CDC33D030DC131"
    )
    port map (
      I0 => N2,
      I1 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      I2 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      I3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      I4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I5 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14_SW0 : LUT6
    generic map(
      INIT => X"BE00FF00FF4141AA"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      I1 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      I2 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      I3 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I4 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N139
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14_SW1 : LUT6
    generic map(
      INIT => X"FF00FFB77B48CC00"
    )
    port map (
      I0 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      I1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      I2 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      I3 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      I4 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      I5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N140
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      I1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_62,
      I2 => N139,
      I3 => N140,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_0_Q : LUT6
    generic map(
      INIT => X"9599A6AA6A665955"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      I3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I4 => instance0_vending_machine_controller_coin_controller_next_state(0),
      I5 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(0)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_1_Q : LUT6
    generic map(
      INIT => X"A9656565569A9A9A"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(0),
      I3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I4 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      I5 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(1)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_4_Q : LUT6
    generic map(
      INIT => X"9A56565665A9A9A9"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(0),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(4),
      I4 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I5 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(4)
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o19_SW1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => N87,
      O => N142
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o19 : LUT6
    generic map(
      INIT => X"EAFFC0FFEAEAC0C0"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(17),
      I1 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o15,
      I2 => N55,
      I3 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      I4 => N142,
      I5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_3_amt_dep_temp1_5_MUX_109_o11 : LUT6
    generic map(
      INIT => X"3C313C32C3C8C3C4"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_8_11_SW0 : LUT5
    generic map(
      INIT => X"DDED3213"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N89
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_5_amt_dep_temp1_6_MUX_96_o11_SW0 : LUT6
    generic map(
      INIT => X"6799E679799E6799"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => N41
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW0 : LUT6
    generic map(
      INIT => X"CC6BCC3DCCB6CCD3"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => N153
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11 : LUT6
    generic map(
      INIT => X"EC13203E7F80C883"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      I3 => N153,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_5_GND_8_o_add_25_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      O => instance0_vending_machine_controller_amt_dep_temp2_4_Q
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o13_SW0 : LUT4
    generic map(
      INIT => X"03FB"
    )
    port map (
      I0 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      O => N155
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o13_SW1 : LUT6
    generic map(
      INIT => X"F4F5F8FA08FA04F5"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      O => N156
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o13 : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      I1 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      I2 => N155,
      I3 => N156,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o12_294
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o13_SW0 : LUT4
    generic map(
      INIT => X"039F"
    )
    port map (
      I0 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      O => N158
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o13_SW1 : LUT6
    generic map(
      INIT => X"35F43AF80AF805F4"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34,
      I4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q,
      O => N159
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o13 : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => instance0_seven_seg_disp_counter(18),
      I1 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      I2 => N158,
      I3 => N159,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o12_297
    );
  instance0_seven_seg_disp_ones_anode_glue_set : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => Reset_n_in_IBUF_8,
      I1 => instance0_seven_seg_disp_counter(17),
      I2 => instance0_seven_seg_disp_counter(18),
      O => instance0_seven_seg_disp_ones_anode_glue_set_326
    );
  instance0_seven_seg_disp_tens_anode_glue_set : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => Reset_n_in_IBUF_8,
      I1 => instance0_seven_seg_disp_counter(18),
      I2 => instance0_seven_seg_disp_counter(17),
      O => instance0_seven_seg_disp_tens_anode_glue_set_327
    );
  instance0_seven_seg_disp_hund_anode_glue_set : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => Reset_n_in_IBUF_8,
      I1 => instance0_seven_seg_disp_counter(17),
      I2 => instance0_seven_seg_disp_counter(18),
      O => instance0_seven_seg_disp_hund_anode_glue_set_328
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_2_Q : LUT5
    generic map(
      INIT => X"995966A6"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      I4 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(2)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_3_Q : LUT5
    generic map(
      INIT => X"95AA6A55"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      I1 => instance0_vending_machine_controller_coin_controller_soda_cost(3),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I4 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(3)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_5_Q : LUT5
    generic map(
      INIT => X"95556AAA"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(5),
      I4 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(5)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_6_Q : LUT5
    generic map(
      INIT => X"95556AAA"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(6),
      I4 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(6)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_8_Q : LUT5
    generic map(
      INIT => X"95556AAA"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      I4 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(8)
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_105_o11_SW0 : LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => N91
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_7_Q : LUT6
    generic map(
      INIT => X"55955555AA6AAAAA"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      I1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      I2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      I3 => Soda_price_in_3_IBUF_0,
      I4 => Soda_price_in_2_IBUF_1,
      I5 => instance0_vending_machine_controller_coin_controller_Mmux_next_state_2_amt_temp_11_wide_mux_8_OUT_rs_AS_inv,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(7)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_0_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(0),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(0)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_1_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(1),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(1)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_2_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(2),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(2)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_3_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(3),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(3)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_4_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(4),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(4)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_5_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(5),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(5)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_6_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(6),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(6)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_7_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(7),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(7)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_8_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(8),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(8)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_9_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_coin_cntr(9),
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(9)
    );
  instance0_vending_machine_controller_coin_controller_state_n0094_0_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I3 => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q_101,
      O => instance0_vending_machine_controller_coin_controller_next_state_2_GND_9_o_Mux_2_o
    );
  instance0_vending_machine_controller_coin_controller_state_n0094_1_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I1 => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q_101,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      O => instance0_vending_machine_controller_coin_controller_next_state_2_PWR_9_o_Mux_3_o
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_SW0 : LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => N2
    );
  instance0_coin_rx_state_FSM_FFd2_In : MUXF7
    port map (
      I0 => N165,
      I1 => N166,
      S => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd2_In_188
    );
  instance0_coin_rx_state_FSM_FFd2_In_F : LUT6
    generic map(
      INIT => X"A8ABA889A8AAA888"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd2_197,
      I1 => instance0_coin_rx_state_FSM_FFd3_196,
      I2 => instance0_coin_rx_Q_received_211,
      I3 => instance0_coin_rx_state_FSM_FFd1_198,
      I4 => instance0_coin_rx_N_received_209,
      I5 => instance0_coin_rx_D_received_210,
      O => N165
    );
  instance0_coin_rx_state_FSM_FFd2_In_G : LUT6
    generic map(
      INIT => X"DACA9B8BDACA9A8A"
    )
    port map (
      I0 => instance0_coin_rx_state_FSM_FFd3_196,
      I1 => instance0_coin_rx_state_FSM_FFd1_198,
      I2 => instance0_coin_rx_state_FSM_FFd2_197,
      I3 => instance0_coin_rx_N_received_209,
      I4 => instance0_coin_rx_Q_received_211,
      I5 => instance0_coin_rx_D_received_210,
      O => N166
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In3 : MUXF7
    port map (
      I0 => N167,
      I1 => N168,
      S => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_118,
      O => instance0_vending_machine_controller_coin_controller_next_state(0)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In3_F : LUT5
    generic map(
      INIT => X"73625140"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I2 => instance0_coin_rx_Np_14,
      I3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In,
      I4 => instance0_coin_rx_Qp_12,
      O => N167
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In3_G : LUT5
    generic map(
      INIT => X"55045F0E"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_116,
      I1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In,
      I2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_117,
      I3 => instance0_coin_rx_Dp_13,
      I4 => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_22_o_cy_4_Q_101,
      O => N168
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o1 : MUXF7
    port map (
      I0 => N169,
      I1 => N170,
      S => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o1_F : LUT6
    generic map(
      INIT => X"D9666DB649266492"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      O => N169
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o1_G : LUT6
    generic map(
      INIT => X"9696BD94D6429696"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      O => N170
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_8_MUX_80_o11 : MUXF7
    port map (
      I0 => N171,
      I1 => N172,
      S => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_7_GND_8_o_add_15_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_8_MUX_80_o11_F : LUT6
    generic map(
      INIT => X"2108084284212108"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      O => N171
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_8_MUX_80_o11_G : LUT6
    generic map(
      INIT => X"4204049020424204"
    )
    port map (
      I0 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      I1 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      I2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      I3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      I4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      I5 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      O => N172
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_9_MUX_112_o11 : MUXF7
    port map (
      I0 => N173,
      I1 => N174,
      S => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_9_MUX_112_o11_F : LUT6
    generic map(
      INIT => X"1808052C2C051808"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      O => N173
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_9_MUX_112_o11_G : LUT6
    generic map(
      INIT => X"8041148002411402"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I2 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N174
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_9_MUX_113_o11 : MUXF7
    port map (
      I0 => N175,
      I1 => N176,
      S => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_9_MUX_113_o11_F : LUT6
    generic map(
      INIT => X"86F20721988FD042"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      O => N175
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_9_MUX_113_o11_G : LUT6
    generic map(
      INIT => X"418218CBC3C32461"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I5 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      O => N176
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_111_o11 : MUXF7
    port map (
      I0 => N177,
      I1 => N178,
      S => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_111_o11_F : LUT6
    generic map(
      INIT => X"87869716D898D991"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => N177
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_111_o11_G : LUT6
    generic map(
      INIT => X"D84515D899649199"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I4 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N178
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n341 : MUXF7
    port map (
      I0 => N179,
      I1 => N180,
      S => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n34
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n341_F : LUT6
    generic map(
      INIT => X"55969286249A9245"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N179
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n341_G : LUT6
    generic map(
      INIT => X"4899692999489269"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I2 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      I5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => N180
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1 : MUXF7
    port map (
      I0 => N181,
      I1 => N182,
      S => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1_F : LUT6
    generic map(
      INIT => X"88FEFD889176B991"
    )
    port map (
      I0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N181
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1_G : LUT6
    generic map(
      INIT => X"D85555D899916499"
    )
    port map (
      I0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      I1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_85_o11,
      I2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      I3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_83_o,
      I4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      I5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N182
    );
  Clk_in_BUFGP : BUFGP
    port map (
      I => Clk_in,
      O => Clk_in_BUFGP_7
    );
  instance0_seven_seg_disp_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => instance0_seven_seg_disp_counter(0),
      O => instance0_seven_seg_disp_Mcount_counter_lut(0)
    );
  instance0_vending_machine_controller_coin_controller_reset_n_inv1_INV_0 : INV
    port map (
      I => Reset_n_in_IBUF_8,
      O => instance0_coin_rx_Reset_n_inv
    );

end Structure;

