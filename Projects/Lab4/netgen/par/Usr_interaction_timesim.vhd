--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Usr_interaction_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 28 18:17:54 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Usr_interaction.pcf -rpw 100 -tpw 0 -ar Structure -tm Usr_interaction -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Usr_interaction.ncd Usr_interaction_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: Usr_interaction.ncd
-- Output file	: D:\Jonathan Hubbard\DSD2\Lab4\Projects\Lab4\netgen\par\Usr_interaction_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal Clk_in_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Clk_in_BUFGP : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_1576 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_1577 : STD_LOGIC; 
  signal instance0_coin_rx_N_received_1578 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_1579 : STD_LOGIC; 
  signal instance0_coin_rx_Q_received_1580 : STD_LOGIC; 
  signal instance0_coin_rx_D_received_1581 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_In_1582 : STD_LOGIC; 
  signal instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o : STD_LOGIC; 
  signal instance0_coin_rx_Reset_n_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_8_Q : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n113 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_4_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o12 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o13 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CAn_1600 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N77_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mmux_n0073_rs_AS_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619 : STD_LOGIC; 
  signal instance0_coin_rx_Dp_1620 : STD_LOGIC; 
  signal instance0_coin_rx_Qp_1621 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In : STD_LOGIC; 
  signal Soda_req_in_IBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_amt_err_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_drop_soda_1628 : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_1630 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_In_1631 : STD_LOGIC; 
  signal instance0_coin_rx_Np_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o19 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CDn_1651 : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_7_Q : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_1653 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_11_LessThan_17_o : STD_LOGIC; 
  signal N137_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o : STD_LOGIC; 
  signal instance0_coin_rx_n0067 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14_1693 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CEn_1694 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp2_3_Q : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal instance0_coin_rx_D_reg_1698 : STD_LOGIC; 
  signal Drcd_out_OBUF_0 : STD_LOGIC; 
  signal instance0_coin_rx_N_reg_1700 : STD_LOGIC; 
  signal instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_57_o : STD_LOGIC; 
  signal instance0_coin_rx_Q_reg_1703 : STD_LOGIC; 
  signal Qrcd_out_OBUF_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_1705 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CFn_1706 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n12 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CGn_1715 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13_1716 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_7_OUT_lut_3_Q : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal Soda_price_in_3_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_2_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_0_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_1_IBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_soda_cost_5_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_soda_cost_3_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_soda_cost_6_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_soda_cost_4_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CBn_1737 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_1739 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_n0089_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_Q_1744 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_Q_1745 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1749 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1754 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1759 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1764 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_1767 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CCn_1768 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1769 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1770 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_Q_1771 : STD_LOGIC; 
  signal Nrcd_out_OBUF_0 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_In : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_1788 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o12 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o17_1795 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_amt_temp_0_rt_35 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_1_rt_130 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_2_rt_126 : STD_LOGIC; 
  signal ProtoComp104_CYINITGND_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_3_rt_115 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_4_rt_162 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_5_rt_158 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_6_rt_154 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_7_rt_143 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_8_rt_190 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_9_rt_186 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_10_rt_182 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_11_rt_171 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_12_rt_218 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_13_rt_214 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_14_rt_210 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_15_rt_199 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_16_rt_239 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_17_rt_235 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_rt_232 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr1 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr2 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr3 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr4 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr5 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr6 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr7 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr8 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi1_365 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_1_Q_364 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi2_359 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_2_Q_358 : STD_LOGIC; 
  signal ProtoComp118_CYINITVCC_1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi3_351 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_3_Q_350 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_0_Q_348 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi_347 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi4_376 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_4_Q_375 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_Q_374 : STD_LOGIC; 
  signal Nrcd_out_OBUF_388 : STD_LOGIC; 
  signal Drcd_out_OBUF_409 : STD_LOGIC; 
  signal Clk_in_BUFGP_IBUFG_412 : STD_LOGIC; 
  signal Soda_price_in_0_IBUF_419 : STD_LOGIC; 
  signal Soda_price_in_1_IBUF_422 : STD_LOGIC; 
  signal Soda_req_in_IBUF_425 : STD_LOGIC; 
  signal Soda_price_in_2_IBUF_428 : STD_LOGIC; 
  signal Soda_price_in_3_IBUF_435 : STD_LOGIC; 
  signal ProtoComp123_IINV_OUT : STD_LOGIC; 
  signal instance0_coin_rx_Reset_n_inv_non_inverted : STD_LOGIC; 
  signal Qrcd_out_OBUF_444 : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_In_pack_16 : STD_LOGIC; 
  signal instance0_coin_rx_Np_504 : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_3_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_4_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_amt_err_533 : STD_LOGIC; 
  signal N4_pack_9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_572 : STD_LOGIC; 
  signal N78_pack_7 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o_pack_12 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_pack_11 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_glue_set_1517 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_glue_set_1527 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_glue_set_1526 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_1524 : STD_LOGIC; 
  signal NlwBufferSignal_Clk_in_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Amt_err_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Drcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CEn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CBn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ones_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_tens_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CFn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Qrcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CCn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Nrcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CGn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Drop_soda_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CDn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hund_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CAn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Dp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Qp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Np_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_drop_soda_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_err_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_N0_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_unused_anode_OBUF_1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_amt_dep : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_n0128_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_seven_seg_disp_counter : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_next_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_n0122_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_n0125_Madd_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal instance0_vending_machine_controller_Madd_n0125_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_amt_temp : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_coin_rx_coin_cntr : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal instance0_vending_machine_controller_coin_controller_soda_cost : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_vending_machine_controller_coin_controller_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal instance0_seven_seg_disp_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_seven_seg_disp_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal instance0_coin_rx_Mcount_coin_cntr_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  Clk_in_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_Clk_in_BUFGP_BUFG_IN,
      O => Clk_in_BUFGP
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_3_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(3),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"CCCC00CC3333FF33"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_3_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(3)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_2_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(2),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      CI => '0',
      CYINIT => instance0_vending_machine_controller_coin_controller_Mmux_n0073_rs_AS_inv,
      CO(3) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_Q_1744,
      CO(2) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_1_Q,
      DI(0) => instance0_vending_machine_controller_coin_controller_amt_temp_0_rt_35,
      O(3) => instance0_vending_machine_controller_coin_controller_Result(3),
      O(2) => instance0_vending_machine_controller_coin_controller_Result(2),
      O(1) => instance0_vending_machine_controller_coin_controller_Result(1),
      O(0) => instance0_vending_machine_controller_coin_controller_Result(0),
      S(3) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(3),
      S(2) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(2),
      S(1) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(1),
      S(0) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(0)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"FF3300CC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      ADR5 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(2)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_1_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(1),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"F50AF50A05FAF50A"
    )
    port map (
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(1),
      ADR5 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(1)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_0_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(0),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"C0AA3F55C0AA3F55"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR2 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(1),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(0)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      ADR3 => '1',
      O => instance0_vending_machine_controller_coin_controller_amt_temp_0_rt_35
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_7 : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_7_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(7),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"55F5FFFFAA0A0000"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(1),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      ADR3 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_2_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(7)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_6 : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_6_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(6),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y16"
    )
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_Q_1744,
      CYINIT => '0',
      CO(3) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_Q_1745,
      CO(2) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_0_Q,
      O(3) => instance0_vending_machine_controller_coin_controller_Result(7),
      O(2) => instance0_vending_machine_controller_coin_controller_Result(6),
      O(1) => instance0_vending_machine_controller_coin_controller_Result(5),
      O(0) => instance0_vending_machine_controller_coin_controller_Result(4),
      S(3) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(7),
      S(2) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(6),
      S(1) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(5),
      S(0) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(4)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"F5FF0A00F5FF0A00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_soda_cost_6_0,
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(6)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_5 : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_5_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(5),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"AA55FF00FF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost_5_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR5 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(5)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_4_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(4),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FFF05F50000FA0AF"
    )
    port map (
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_4_0,
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(4)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_11 : X_SFF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_11_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(11),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"33FF33FFCC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(11)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_10 : X_SFF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_10_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(10),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y17"
    )
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_Q_1745,
      CYINIT => '0',
      CO(3) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_2_Q,
      DI(1) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_1_Q,
      DI(0) => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_0_Q,
      O(3) => instance0_vending_machine_controller_coin_controller_Result(11),
      O(2) => instance0_vending_machine_controller_coin_controller_Result(10),
      O(1) => instance0_vending_machine_controller_coin_controller_Result(9),
      O(0) => instance0_vending_machine_controller_coin_controller_Result(8),
      S(3) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(11),
      S(2) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(10),
      S(1) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(9),
      S(0) => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(8)
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"3F3FC0C03F3FC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR2 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(10)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_9 : X_SFF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_9_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(9),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"0F0FF0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      ADR2 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR5 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(9)
    );
  instance0_vending_machine_controller_coin_controller_amt_temp_8 : X_SFF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_coin_controller_n0089_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_8_CLK,
      I => instance0_vending_machine_controller_coin_controller_Result(8),
      O => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"F3FFF3FF0C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_lut(8)
    );
  instance0_seven_seg_disp_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK,
      I => instance0_seven_seg_disp_Result(3),
      O => instance0_seven_seg_disp_counter(3),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_3_rt_115
    );
  N0_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_D5LUT_O_UNCONNECTED
    );
  ProtoComp104_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X34Y9"
    )
    port map (
      O => ProtoComp104_CYINITGND_0
    );
  instance0_seven_seg_disp_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK,
      I => instance0_seven_seg_disp_Result(2),
      O => instance0_seven_seg_disp_counter(2),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y9"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp104_CYINITGND_0,
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1749,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => instance0_seven_seg_disp_Result(3),
      O(2) => instance0_seven_seg_disp_Result(2),
      O(1) => instance0_seven_seg_disp_Result(1),
      O(0) => instance0_seven_seg_disp_Result(0),
      S(3) => instance0_seven_seg_disp_counter_3_rt_115,
      S(2) => instance0_seven_seg_disp_counter_2_rt_126,
      S(1) => instance0_seven_seg_disp_counter_1_rt_130,
      S(0) => instance0_seven_seg_disp_Mcount_counter_lut(0)
    );
  instance0_seven_seg_disp_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_2_rt_126
    );
  N0_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK,
      I => instance0_seven_seg_disp_Result(1),
      O => instance0_seven_seg_disp_counter(1),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_1_rt_130
    );
  N0_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK,
      I => instance0_seven_seg_disp_Result(0),
      O => instance0_seven_seg_disp_counter(0),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_Mcount_counter_lut(0)
    );
  unused_anode_OBUF_1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y9",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_unused_anode_OBUF_1_2_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK,
      I => instance0_seven_seg_disp_Result(7),
      O => instance0_seven_seg_disp_counter(7),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(7),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_7_rt_143
    );
  N0_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK,
      I => instance0_seven_seg_disp_Result(6),
      O => instance0_seven_seg_disp_counter(6),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y10"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1749,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1754,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(7),
      O(2) => instance0_seven_seg_disp_Result(6),
      O(1) => instance0_seven_seg_disp_Result(5),
      O(0) => instance0_seven_seg_disp_Result(4),
      S(3) => instance0_seven_seg_disp_counter_7_rt_143,
      S(2) => instance0_seven_seg_disp_counter_6_rt_154,
      S(1) => instance0_seven_seg_disp_counter_5_rt_158,
      S(0) => instance0_seven_seg_disp_counter_4_rt_162
    );
  instance0_seven_seg_disp_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_6_rt_154
    );
  N0_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK,
      I => instance0_seven_seg_disp_Result(5),
      O => instance0_seven_seg_disp_counter(5),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_5_rt_158
    );
  N0_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK,
      I => instance0_seven_seg_disp_Result(4),
      O => instance0_seven_seg_disp_counter(4),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(4),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_4_rt_162
    );
  N0_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK,
      I => instance0_seven_seg_disp_Result(11),
      O => instance0_seven_seg_disp_counter(11),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(11),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_11_rt_171
    );
  N0_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK,
      I => instance0_seven_seg_disp_Result(10),
      O => instance0_seven_seg_disp_counter(10),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y11"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1754,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1759,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(11),
      O(2) => instance0_seven_seg_disp_Result(10),
      O(1) => instance0_seven_seg_disp_Result(9),
      O(0) => instance0_seven_seg_disp_Result(8),
      S(3) => instance0_seven_seg_disp_counter_11_rt_171,
      S(2) => instance0_seven_seg_disp_counter_10_rt_182,
      S(1) => instance0_seven_seg_disp_counter_9_rt_186,
      S(0) => instance0_seven_seg_disp_counter_8_rt_190
    );
  instance0_seven_seg_disp_counter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(10),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_10_rt_182
    );
  N0_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK,
      I => instance0_seven_seg_disp_Result(9),
      O => instance0_seven_seg_disp_counter(9),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_9_rt_186
    );
  N0_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK,
      I => instance0_seven_seg_disp_Result(8),
      O => instance0_seven_seg_disp_counter(8),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(8),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_8_rt_190
    );
  N0_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_15 : X_SFF
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK,
      I => instance0_seven_seg_disp_Result(15),
      O => instance0_seven_seg_disp_counter(15),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(15),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_15_rt_199
    );
  N0_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_14 : X_SFF
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK,
      I => instance0_seven_seg_disp_Result(14),
      O => instance0_seven_seg_disp_counter(14),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y12"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1759,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1764,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(15),
      O(2) => instance0_seven_seg_disp_Result(14),
      O(1) => instance0_seven_seg_disp_Result(13),
      O(0) => instance0_seven_seg_disp_Result(12),
      S(3) => instance0_seven_seg_disp_counter_15_rt_199,
      S(2) => instance0_seven_seg_disp_counter_14_rt_210,
      S(1) => instance0_seven_seg_disp_counter_13_rt_214,
      S(0) => instance0_seven_seg_disp_counter_12_rt_218
    );
  instance0_seven_seg_disp_counter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(14),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_14_rt_210
    );
  N0_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_13 : X_SFF
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK,
      I => instance0_seven_seg_disp_Result(13),
      O => instance0_seven_seg_disp_counter(13),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(13),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_13_rt_214
    );
  N0_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK,
      I => instance0_seven_seg_disp_Result(12),
      O => instance0_seven_seg_disp_counter(12),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(12),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_12_rt_218
    );
  N0_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_18 : X_SFF
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK,
      I => instance0_seven_seg_disp_Result(18),
      O => instance0_seven_seg_disp_counter(18),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_xor_18_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y13"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1764,
      CYINIT => '0',
      CO(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_O_3_UNCONNECTED,
      O(2) => instance0_seven_seg_disp_Result(18),
      O(1) => instance0_seven_seg_disp_Result(17),
      O(0) => instance0_seven_seg_disp_Result(16),
      S(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_S_3_UNCONNECTED,
      S(2) => instance0_seven_seg_disp_counter_18_rt_232,
      S(1) => instance0_seven_seg_disp_counter_17_rt_235,
      S(0) => instance0_seven_seg_disp_counter_16_rt_239
    );
  instance0_seven_seg_disp_counter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_18_rt_232
    );
  instance0_seven_seg_disp_counter_17 : X_SFF
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK,
      I => instance0_seven_seg_disp_Result(17),
      O => instance0_seven_seg_disp_counter(17),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_17_rt_235
    );
  N0_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_16 : X_SFF
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK,
      I => instance0_seven_seg_disp_Result(16),
      O => instance0_seven_seg_disp_counter(16),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(16),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_16_rt_239
    );
  N0_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_3 : X_SFF
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr3,
      O => instance0_coin_rx_coin_cntr(3),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"7070000070700000"
    )
    port map (
      ADR3 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(3),
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(3)
    );
  N0_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_D5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_2 : X_SFF
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr2,
      O => instance0_coin_rx_coin_cntr(2),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y29"
    )
    port map (
      CI => '0',
      CYINIT => instance0_coin_rx_n0067,
      CO(3) => instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1769,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_coin_rx_Mcount_coin_cntr3,
      O(2) => instance0_coin_rx_Mcount_coin_cntr2,
      O(1) => instance0_coin_rx_Mcount_coin_cntr1,
      O(0) => instance0_coin_rx_Mcount_coin_cntr,
      S(3) => instance0_coin_rx_Mcount_coin_cntr_lut(3),
      S(2) => instance0_coin_rx_Mcount_coin_cntr_lut(2),
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(1),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(0)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"2A2A00002A2A0000"
    )
    port map (
      ADR3 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(2),
      ADR2 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(2)
    );
  N0_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_C5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_1 : X_SFF
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr1,
      O => instance0_coin_rx_coin_cntr(1),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"0AAA00000AAA0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR2 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(1),
      ADR3 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(1)
    );
  N0_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_B5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_0 : X_SFF
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr,
      O => instance0_coin_rx_coin_cntr(0),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"0088888800888888"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR1 => instance0_coin_rx_coin_cntr(0),
      ADR4 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(0)
    );
  N0_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_7 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr7,
      O => instance0_coin_rx_coin_cntr(7),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"44CC000044CC0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(7),
      ADR3 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(7)
    );
  N0_2_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_D5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_6 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr6,
      O => instance0_coin_rx_coin_cntr(6),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1769,
      CYINIT => '0',
      CO(3) => instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1770,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_coin_rx_Mcount_coin_cntr7,
      O(2) => instance0_coin_rx_Mcount_coin_cntr6,
      O(1) => instance0_coin_rx_Mcount_coin_cntr5,
      O(0) => instance0_coin_rx_Mcount_coin_cntr4,
      S(3) => instance0_coin_rx_Mcount_coin_cntr_lut(7),
      S(2) => instance0_coin_rx_Mcount_coin_cntr_lut(6),
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(5),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(4)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"0CCC00000CCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(6),
      ADR2 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(6)
    );
  N0_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_C5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_5 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr5,
      O => instance0_coin_rx_coin_cntr(5),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"30F0000030F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(5),
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(5)
    );
  N0_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_B5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_4 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr4,
      O => instance0_coin_rx_coin_cntr(4),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"7700000077000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(4),
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(4)
    );
  N0_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y31"
    )
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1770,
      CYINIT => '0',
      CO(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_2_UNCONNECTED,
      O(1) => instance0_coin_rx_Mcount_coin_cntr9,
      O(0) => instance0_coin_rx_Mcount_coin_cntr8,
      S(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_2_UNCONNECTED,
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(9),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(8)
    );
  instance0_coin_rx_coin_cntr_9 : X_SFF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr9,
      O => instance0_coin_rx_coin_cntr(9),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"50F0000050F00000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR4 => instance0_coin_rx_coin_cntr(9),
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR3 => instance0_coin_rx_state_FSM_FFd1_1577,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(9)
    );
  instance0_coin_rx_coin_cntr_8 : X_SFF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr8,
      O => instance0_coin_rx_coin_cntr(8),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"50F0000050F00000"
    )
    port map (
      ADR1 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR4 => instance0_coin_rx_coin_cntr(8),
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(8)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost_6_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      ADR1 => instance0_vending_machine_controller_coin_controller_soda_cost(7),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_3_Q_350
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"77331100"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost_6_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      ADR1 => instance0_vending_machine_controller_coin_controller_soda_cost(7),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi3_351
    );
  ProtoComp118_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      O => ProtoComp118_CYINITVCC_1
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp118_CYINITVCC_1,
      CO(3) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_Q_1771,
      CO(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi3_351,
      DI(2) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi2_359,
      DI(1) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi1_365,
      DI(0) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi_347,
      O(3) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_O_0_UNCONNECTED,
      S(3) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_3_Q_350,
      S(2) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_2_Q_358,
      S(1) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_1_Q_364,
      S(0) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_0_Q_348
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_4_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost_5_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_2_Q_358
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"5050F550"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_4_0,
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost_5_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi2_359
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_3_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_1_Q_364
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"3000F3F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_soda_cost(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost_3_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi1_365
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"8241824182418241"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      ADR2 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_0_Q_348
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"4D0C4D0C"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_soda_cost(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      ADR2 => instance0_vending_machine_controller_coin_controller_soda_cost(1),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi_347
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_Q_374,
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_0
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      CI => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_3_Q_1771,
      CYINIT => '0',
      CO(3) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_CO_1_UNCONNECTED,
      CO(0) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_Q_374,
      DI(3) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_2_UNCONNECTED,
      DI(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_DI_1_UNCONNECTED,
      DI(0) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi4_376,
      O(3) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_3_UNCONNECTED,
      O(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_2_UNCONNECTED,
      O(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_1_UNCONNECTED,
      O(0) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_O_0_UNCONNECTED,
      S(3) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_3_UNCONNECTED,
      S(2) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_2_UNCONNECTED,
      S(1) => NLW_instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_S_1_UNCONNECTED,
      S(0) => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_4_Q_375
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"0002000100020001"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lut_4_Q_375
    );
  instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFCFFFE"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_soda_cost(8),
      O => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_lutdi4_376
    );
  Amt_err_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_Amt_err_OBUF_I,
      O => Amt_err
    );
  Drcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_Drcd_out_OBUF_I,
      O => Drcd_out
    );
  Nrcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 115 ps
    )
    port map (
      O => Nrcd_out_OBUF_388,
      I => Nrcd_in
    );
  ProtoComp122_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_388,
      O => Nrcd_out_OBUF_0
    );
  CEn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => NlwBufferSignal_CEn_out_OBUF_I,
      O => CEn_out
    );
  CBn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => NlwBufferSignal_CBn_out_OBUF_I,
      O => CBn_out
    );
  unused_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => '1',
      O => unused_anode
    );
  ones_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_ones_anode_out_OBUF_I,
      O => ones_anode_out
    );
  tens_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_tens_anode_out_OBUF_I,
      O => tens_anode_out
    );
  CFn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => NlwBufferSignal_CFn_out_OBUF_I,
      O => CFn_out
    );
  Qrcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => NlwBufferSignal_Qrcd_out_OBUF_I,
      O => Qrcd_out
    );
  CCn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => NlwBufferSignal_CCn_out_OBUF_I,
      O => CCn_out
    );
  Nrcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_Nrcd_out_OBUF_I,
      O => Nrcd_out
    );
  Drcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      O => Drcd_out_OBUF_409,
      I => Drcd_in
    );
  ProtoComp122_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_409,
      O => Drcd_out_OBUF_0
    );
  Clk_in_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      O => Clk_in_BUFGP_IBUFG_412,
      I => Clk_in
    );
  ProtoComp122_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP_IBUFG_412,
      O => Clk_in_BUFGP_IBUFG_0
    );
  CGn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => NlwBufferSignal_CGn_out_OBUF_I,
      O => CGn_out
    );
  Drop_soda_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_Drop_soda_out_OBUF_I,
      O => Drop_soda_out
    );
  Soda_price_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_0_IBUF_419,
      I => Soda_price_in(0)
    );
  ProtoComp122_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_0_IBUF_419,
      O => Soda_price_in_0_IBUF_0
    );
  Soda_price_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_1_IBUF_422,
      I => Soda_price_in(1)
    );
  ProtoComp122_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_1_IBUF_422,
      O => Soda_price_in_1_IBUF_0
    );
  Soda_req_in_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_req_in_IBUF_425,
      I => Soda_req_in
    );
  ProtoComp122_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_req_in_IBUF_425,
      O => Soda_req_in_IBUF_0
    );
  Soda_price_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_2_IBUF_428,
      I => Soda_price_in(2)
    );
  ProtoComp122_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_2_IBUF_428,
      O => Soda_price_in_2_IBUF_0
    );
  CDn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => NlwBufferSignal_CDn_out_OBUF_I,
      O => CDn_out
    );
  hund_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => NlwBufferSignal_hund_anode_out_OBUF_I,
      O => hund_anode_out
    );
  Soda_price_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_3_IBUF_435,
      I => Soda_price_in(3)
    );
  ProtoComp122_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_3_IBUF_435,
      O => Soda_price_in_3_IBUF_0
    );
  CAn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => NlwBufferSignal_CAn_out_OBUF_I,
      O => CAn_out
    );
  Reset_n_in_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      O => instance0_coin_rx_Reset_n_inv_non_inverted,
      I => Reset_n_in
    );
  ProtoComp123_IMUX : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp123_IINV_OUT,
      O => instance0_coin_rx_Reset_n_inv
    );
  ProtoComp123_IINV : X_INV
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Reset_n_inv_non_inverted,
      O => ProtoComp123_IINV_OUT
    );
  Qrcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      O => Qrcd_out_OBUF_444,
      I => Qrcd_in
    );
  ProtoComp122_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_444,
      O => Qrcd_out_OBUF_0
    );
  instance0_coin_rx_n0067_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"2A2A2A2A2A2A2A2A"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR2 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1577,
      O => instance0_coin_rx_n0067
    );
  instance0_coin_rx_Q_reg : X_SFF
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Q_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_Q_reg_IN,
      O => instance0_coin_rx_Q_reg_1703,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd3_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y28",
      INIT => X"FFFFFFFFF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR5 => instance0_coin_rx_state_FSM_FFd2_1579,
      O => N6
    );
  instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"8000000080000000"
    )
    port map (
      ADR5 => '1',
      ADR3 => instance0_coin_rx_coin_cntr(4),
      ADR0 => instance0_coin_rx_coin_cntr(3),
      ADR4 => instance0_coin_rx_coin_cntr(2),
      ADR1 => instance0_coin_rx_coin_cntr(1),
      ADR2 => instance0_coin_rx_coin_cntr(0),
      O => N13
    );
  instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => instance0_coin_rx_coin_cntr(9),
      ADR1 => instance0_coin_rx_coin_cntr(8),
      ADR2 => instance0_coin_rx_coin_cntr(7),
      ADR0 => instance0_coin_rx_coin_cntr(6),
      ADR3 => instance0_coin_rx_coin_cntr(5),
      ADR5 => N13,
      O => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o
    );
  instance0_coin_rx_Dp : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Dp_CLK,
      I => instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o,
      O => instance0_coin_rx_Dp_1620,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_n0077_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FF00FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => instance0_coin_rx_state_FSM_FFd3_In_1631,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_In_1582,
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_1_o
    );
  instance0_coin_rx_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK,
      I => instance0_coin_rx_state_FSM_FFd3_In_1631,
      O => instance0_coin_rx_state_FSM_FFd3_1576,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd3_In : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"3333555533335550"
    )
    port map (
      ADR0 => N6,
      ADR5 => instance0_coin_rx_D_received_1581,
      ADR3 => instance0_coin_rx_N_received_1578,
      ADR4 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR2 => instance0_coin_rx_Q_received_1580,
      ADR1 => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd3_In_1631
    );
  instance0_coin_rx_Q_received : X_SFF
    generic map(
      LOC => "SLICE_X7Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Q_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_Q_received_IN,
      O => instance0_coin_rx_Q_received_1580,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd2_instance0_coin_rx_state_FSM_FFd2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_state_FSM_FFd2_In_pack_16,
      O => instance0_coin_rx_state_FSM_FFd2_In_1582
    );
  instance0_coin_rx_state_FSM_FFd2_instance0_coin_rx_state_FSM_FFd2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Np_504,
      O => instance0_coin_rx_Np_0
    );
  instance0_coin_rx_state_FSM_FFd2_In : X_MUX2
    generic map(
      LOC => "SLICE_X8Y29"
    )
    port map (
      IA => N179,
      IB => N180,
      O => instance0_coin_rx_state_FSM_FFd2_In_pack_16,
      SEL => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o
    );
  instance0_coin_rx_state_FSM_FFd2_In_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"CCCCCC88CC54CC10"
    )
    port map (
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR3 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR5 => instance0_coin_rx_Q_received_1580,
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR4 => instance0_coin_rx_N_received_1578,
      ADR2 => instance0_coin_rx_D_received_1581,
      O => N179
    );
  instance0_coin_rx_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK,
      I => instance0_coin_rx_state_FSM_FFd2_In_pack_16,
      O => instance0_coin_rx_state_FSM_FFd2_1579,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd2_In_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"E5E0ABABE5E0AAAA"
    )
    port map (
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR2 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR3 => instance0_coin_rx_N_received_1578,
      ADR4 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR1 => instance0_coin_rx_Q_received_1580,
      ADR5 => instance0_coin_rx_D_received_1581,
      O => N180
    );
  instance0_coin_rx_Qp : X_SFF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Qp_CLK,
      I => instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o,
      O => instance0_coin_rx_Qp_1621,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_n0077_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_In_1631,
      ADR3 => instance0_coin_rx_state_FSM_FFd1_In,
      ADR5 => '1',
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_0_o
    );
  instance0_coin_rx_state_n0077_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"000000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => instance0_coin_rx_state_FSM_FFd2_In_1582,
      ADR1 => instance0_coin_rx_state_FSM_FFd3_In_1631,
      ADR3 => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o
    );
  instance0_coin_rx_Np : X_SFF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Np_CLK,
      I => instance0_coin_rx_next_state_2_GND_11_o_Mux_2_o,
      O => instance0_coin_rx_Np_504,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK,
      I => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_state_FSM_FFd1_1577,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"FFFCCCFC88338800"
    )
    port map (
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1576,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1579,
      ADR2 => instance0_coin_rx_D_received_1581,
      ADR5 => instance0_coin_rx_state_FSM_FFd1_1577,
      ADR4 => instance0_coin_rx_Q_received_1580,
      ADR0 => instance0_coin_rx_coin_cntr_9_PWR_12_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd1_In
    );
  instance0_coin_rx_D_received : X_SFF
    generic map(
      LOC => "SLICE_X9Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_D_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_D_received_IN,
      O => instance0_coin_rx_D_received_1581,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_N_received : X_SFF
    generic map(
      LOC => "SLICE_X9Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_N_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_N_received_IN,
      O => instance0_coin_rx_N_received_1578,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_drop_soda_instance0_vending_machine_controller_coin_controller_drop_soda_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_err_533,
      O => instance0_vending_machine_controller_coin_controller_amt_err_0
    );
  instance0_vending_machine_controller_coin_controller_drop_soda : X_SFF
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_drop_soda_CLK,
      I => instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_3_o,
      O => instance0_vending_machine_controller_coin_controller_drop_soda_1628,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_PWR_9_o_next_state_3_equal_3_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0000ECA00000ECA0"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR0 => Soda_req_in_IBUF_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_3_o
    );
  instance0_vending_machine_controller_coin_controller_state_PWR_9_o_next_state_3_equal_4_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"ECA00000"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR0 => Soda_req_in_IBUF_0,
      ADR2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      O => instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_4_o
    );
  instance0_vending_machine_controller_coin_controller_amt_err : X_SFF
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_err_CLK,
      I => instance0_vending_machine_controller_coin_controller_PWR_9_o_next_state_3_equal_4_o,
      O => instance0_vending_machine_controller_coin_controller_amt_err_533,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_CLK,
      I => instance0_vending_machine_controller_coin_controller_next_state(0),
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"F5F5A5F5FEFEEEEE"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      ADR4 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_0,
      ADR5 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617,
      ADR3 => instance0_vending_machine_controller_coin_controller_Mcompar_amt_temp_11_soda_cost_11_LessThan_19_o_cy_4_0,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In,
      O => instance0_vending_machine_controller_coin_controller_next_state(0)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_CLK,
      I => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0088008800990098"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617,
      ADR5 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      ADR4 => instance0_coin_rx_Dp_1620,
      ADR2 => instance0_coin_rx_Qp_1621,
      O => instance0_vending_machine_controller_coin_controller_next_state(1)
    );
  instance0_vending_machine_controller_coin_controller_Mmux_n0073_rs_AS_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR4 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_Mmux_n0073_rs_AS_inv
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"00000000CCCCEFEA"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617,
      ADR4 => instance0_coin_rx_Qp_1621,
      ADR2 => instance0_coin_rx_Np_0,
      ADR0 => instance0_coin_rx_Dp_1620,
      ADR3 => Soda_req_in_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N4_pack_9,
      O => N4
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_572,
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_0
    );
  instance0_vending_machine_controller_coin_controller_n0089_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"0704070407040704"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_next_state(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_next_state(2),
      ADR0 => instance0_vending_machine_controller_coin_controller_next_state(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_next_state(1),
      O => instance0_vending_machine_controller_coin_controller_n0089_inv
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Soda_price_in_3_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_soda_cost(7)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"FFFFFFF0"
    )
    port map (
      ADR4 => instance0_coin_rx_Qp_1621,
      ADR3 => instance0_coin_rx_Dp_1620,
      ADR2 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR1 => '1',
      ADR0 => '1',
      O => N4_pack_9
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_CLK,
      I => instance0_vending_machine_controller_coin_controller_next_state(2),
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"3300000033000032"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      ADR3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_1617,
      ADR5 => N4,
      ADR4 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR2 => instance0_coin_rx_Np_0,
      ADR0 => Soda_req_in_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_next_state(2)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_CLK,
      I => instance0_vending_machine_controller_coin_controller_next_state(3),
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"EEAACC00EEAACC00"
    )
    port map (
      ADR2 => '1',
      ADR3 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_1619,
      ADR1 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_1616,
      ADR4 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR0 => Soda_req_in_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_next_state(3)
    );
  instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In2 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => X"AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_1618,
      ADR0 => Soda_req_in_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_In1_572
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_2_instance0_vending_machine_controller_coin_controller_soda_cost_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_soda_cost(3),
      O => instance0_vending_machine_controller_coin_controller_soda_cost_3_0
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0177017701770177"
    )
    port map (
      ADR4 => '1',
      ADR1 => Soda_price_in_1_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_3_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_soda_cost(2)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_9_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"01C401C4"
    )
    port map (
      ADR4 => '1',
      ADR1 => Soda_price_in_1_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_3_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(3)
    );
  instance0_coin_rx_D_reg : X_SFF
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_D_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_D_reg_IN,
      O => instance0_coin_rx_D_reg_1698,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_1_instance0_vending_machine_controller_coin_controller_soda_cost_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_soda_cost(6),
      O => instance0_vending_machine_controller_coin_controller_soda_cost_6_0
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"00C300CF00C300CF"
    )
    port map (
      ADR0 => '1',
      ADR3 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR1 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_1_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_soda_cost(1)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_6_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"00FF0030"
    )
    port map (
      ADR0 => '1',
      ADR3 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR1 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_1_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(6)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_0_instance0_vending_machine_controller_coin_controller_soda_cost_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_soda_cost(4),
      O => instance0_vending_machine_controller_coin_controller_soda_cost_4_0
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"0333033303330333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_2_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_soda_cost(0)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_8_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"30333033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_2_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(4)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_8_instance0_vending_machine_controller_coin_controller_soda_cost_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_soda_cost(5),
      O => instance0_vending_machine_controller_coin_controller_soda_cost_5_0
    );
  instance0_vending_machine_controller_coin_controller_n0122_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => X"0005000000050000"
    )
    port map (
      ADR1 => '1',
      ADR4 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_2_IBUF_0,
      ADR3 => Soda_price_in_0_IBUF_0,
      ADR0 => Soda_price_in_1_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_coin_controller_soda_cost(8)
    );
  instance0_vending_machine_controller_coin_controller_soda_cost_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => X"0005AAA5"
    )
    port map (
      ADR1 => '1',
      ADR4 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_2_IBUF_0,
      ADR3 => Soda_price_in_0_IBUF_0,
      ADR0 => Soda_price_in_1_IBUF_0,
      O => instance0_vending_machine_controller_coin_controller_soda_cost(5)
    );
  instance0_coin_rx_N_reg : X_SFF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_N_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_N_reg_IN,
      O => instance0_coin_rx_N_reg_1700,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n1131_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"BA6D9AA6796D5DB6"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR3 => N46,
      O => N56
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"55C0FFEEFFD555C0"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR2 => N56,
      ADR0 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31,
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_3_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_1705
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"87780440E11E0110"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => instance0_vending_machine_controller_amt_dep_temp2_3_Q
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o18_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"FFFF55AAF0F0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      ADR2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31,
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_3_Q,
      O => N126
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n311 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y16",
      INIT => X"75BAEC769BCD178B"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR1 => N103,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"9EBBDC7DBB9E7DDC"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR5 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR0 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR1 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N159
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"FF41D7FFAABE2855"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR2 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR1 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N158
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o13_instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N78_pack_7,
      O => N78
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y13"
    )
    port map (
      IA => N177,
      IB => N178,
      O => N78_pack_7,
      SEL => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y13",
      INIT => X"00033000EE8AAEE8"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR3 => N46,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      O => N177
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y13",
      INIT => X"3302868433109888"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR0 => N46,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      O => N178
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y13",
      INIT => X"4015802A45108A20"
    )
    port map (
      ADR5 => N77_0,
      ADR1 => N78,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o13
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y14",
      INIT => X"F4FEF4FEF8FDF8FD"
    )
    port map (
      ADR4 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31,
      ADR1 => instance0_vending_machine_controller_amt_dep_temp2_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14_1693
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y14",
      INIT => X"00F500FA00AF00F5"
    )
    port map (
      ADR1 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31,
      ADR3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      O => N58
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y14",
      INIT => X"9D626E91AB5457A8"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => instance0_vending_machine_controller_amt_dep_temp2_4_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y14",
      INIT => X"F3F803E88FF38E03"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR2 => N46,
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => X"FFFFFFFF659A2418"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => X"0000FFEB0000FF7D"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      ADR4 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      O => N20
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => X"FF48FFA5FF5AFF48"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => X"0500000550000050"
    )
    port map (
      ADR1 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y16",
      INIT => X"A5A5FAFA5F5F5555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => N36,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => N107
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_4_amt_dep_temp1_5_MUX_102_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y16",
      INIT => X"8748014004702412"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => N46,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n321 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y16",
      INIT => X"12005A0084009600"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o112_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y16",
      INIT => X"FF05FFAFFF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR2 => N107,
      ADR4 => N108,
      ADR3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32,
      O => N94
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y9",
      INIT => X"F0FFFFF00FFFFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => N133
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y11",
      INIT => X"88D24B2244E18711"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR0 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR5 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N157
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y12",
      INIT => X"00DEFF0033FFB7CC"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR2 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR0 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N156
    );
  instance0_seven_seg_disp_CCn : X_SFF
    generic map(
      LOC => "SLICE_X29Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o,
      O => instance0_seven_seg_disp_CCn_1768,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y12",
      INIT => X"FFEEAFAFFFEE0505"
    )
    port map (
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR1 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_1767,
      ADR3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32,
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR2 => N20,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_5_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y12",
      INIT => X"22F522A077F577A0"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR2 => N157,
      ADR4 => N156,
      ADR1 => N159,
      ADR5 => N158,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o1
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o13_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => X"000003800000100C"
    )
    port map (
      ADR0 => N105,
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR2 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      O => N59
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => X"CFEEFCEECCEECCEE"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n12,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o12,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      ADR1 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32,
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      O => N34
    );
  instance0_seven_seg_disp_CBn : X_SFF
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o,
      O => instance0_seven_seg_disp_CBn_1737,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => X"FFFFAF05EEEEAF05"
    )
    port map (
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR2 => N58,
      ADR3 => N34,
      ADR1 => N59,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_4_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => X"000F5533FF0F5533"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR2 => N159,
      ADR1 => N158,
      ADR0 => N148,
      ADR5 => N149,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o11
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_amt_dep_temp1_11_MUX_57_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y14",
      INIT => X"F00000FFFF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_57_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_7_MUX_82_o11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y15",
      INIT => X"8511042125440184"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      O => N52
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_6_MUX_89_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y15",
      INIT => X"F25B2FB50DA4D04A"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_7_MUX_82_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y15",
      INIT => X"F3F3D1E2E2D1C0C0"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR0 => instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_57_o,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_7_OUT_lut_3_Q,
      ADR2 => N52,
      ADR5 => N51,
      ADR4 => N50,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_10_MUX_62_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y16",
      INIT => X"1082108208240824"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_7_OUT_lut_3_Q
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y9",
      INIT => X"5F2FCFBFCFBF5F2F"
    )
    port map (
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR5 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      O => N145
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y9",
      INIT => X"F73F3FF7FFB3B3FF"
    )
    port map (
      ADR1 => instance0_seven_seg_disp_counter(18),
      ADR3 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR4 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR5 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      O => N144
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_amt_dep_temp1_10_MUX_93_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y9",
      INIT => X"9ED4520AD4C42B29"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      O => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0)
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y9",
      INIT => X"7FDDDD7F7DF7F77D"
    )
    port map (
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR2 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      O => N143
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y10",
      INIT => X"E0D0F0F03C3C3438"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR0 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N154
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y10",
      INIT => X"F7B5E5FDBC67DDF3"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR4 => N64,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => N97
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_105_o11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y10",
      INIT => X"9911883366226611"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N68
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_4_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y11",
      INIT => X"D12EBBCDEE37D12E"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR1 => N64,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o12
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y11",
      INIT => X"8512D522EA118512"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR0 => N64,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13_1716
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n121 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y11",
      INIT => X"40040C3082881001"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR1 => N64,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n12
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_10_MUX_94_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y11",
      INIT => X"9024328C04011284"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y12",
      INIT => X"A7A5A5A724E5E524"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N149
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o110 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y12",
      INIT => X"0047CC473347FF47"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR3 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR0 => N153,
      ADR4 => N154,
      ADR2 => N148,
      ADR5 => N149,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o19
    );
  instance0_seven_seg_disp_CEn : X_SFF
    generic map(
      LOC => "SLICE_X30Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o,
      O => instance0_seven_seg_disp_CEn_1694,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y12",
      INIT => X"FFFCDDFCFF30DD30"
    )
    port map (
      ADR3 => instance0_seven_seg_disp_counter(17),
      ADR1 => instance0_seven_seg_disp_counter(18),
      ADR0 => N97,
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR2 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14_1693,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_7_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y12",
      INIT => X"FFFFFFFF0F0F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR3 => N148,
      ADR2 => N149,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_7_o13
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o19 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y13"
    )
    port map (
      IA => N171,
      IB => N172,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o,
      SEL => instance0_seven_seg_disp_counter(17)
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o19_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => X"0F0FFFFF0F0F2211"
    )
    port map (
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR1 => N126,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_4_LessThan_31_o,
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR5 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32,
      ADR2 => N135,
      O => N171
    );
  instance0_seven_seg_disp_CAn : X_SFF
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_3_o,
      O => instance0_seven_seg_disp_CAn_1600,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o19_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => X"FFFFFFFAFFFFAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o12,
      ADR2 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o13,
      ADR3 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n113,
      O => N172
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n1131 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => X"820A000041050000"
    )
    port map (
      ADR2 => N30,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n113
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_3_o19_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => X"FF00AAAACCCCF0F0"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR5 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR1 => N168,
      ADR3 => N169,
      ADR0 => N149,
      ADR2 => N148,
      O => N135
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o_pack_12,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y14"
    )
    port map (
      IA => N183,
      IB => N184,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o_pack_12,
      SEL => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y14",
      INIT => X"8583D4164A49E283"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      O => N183
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o1_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y14",
      INIT => X"D8995F6D5F97D899"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N184
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o17 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y14",
      INIT => X"F0F4F4F1F0F8F8F2"
    )
    port map (
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_1653
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y14",
      INIT => X"E727C706F9C9F181"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR2 => N64,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_49_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y15",
      INIT => X"FFCC0000FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut(2)
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_10 : X_FF
    generic map(
      LOC => "SLICE_X30Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_7_MUX_82_o11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y15",
      INIT => X"850080104020488A"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      O => N51
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_9 : X_FF
    generic map(
      LOC => "SLICE_X30Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_8 : X_FF
    generic map(
      LOC => "SLICE_X30Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y16",
      INIT => X"6DB6669B6DB6669B"
    )
    port map (
      ADR5 => '1',
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => N48
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_11 : X_FF
    generic map(
      LOC => "SLICE_X30Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      RST => GND,
      SET => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y9",
      INIT => X"F0F00FF00F0FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_6_LessThan_19_o,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => N132
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y9",
      INIT => X"26240202AAA88888"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(0),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR0 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n31,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_4_GND_8_o_add_31_OUT_lut_3_Q,
      ADR3 => N133,
      ADR5 => N132,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_1788
    );
  instance0_seven_seg_disp_CGn : X_SFF
    generic map(
      LOC => "SLICE_X31Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o,
      O => instance0_seven_seg_disp_CGn_1715,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y9",
      INIT => X"FFFFFFFFFAFA0F0C"
    )
    port map (
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR3 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_1788,
      ADR1 => instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n32,
      ADR0 => N71,
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_9_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y9",
      INIT => X"3050305F3F503F5F"
    )
    port map (
      ADR5 => N144,
      ADR4 => N143,
      ADR1 => N146,
      ADR0 => N145,
      ADR2 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      ADR3 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o11
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_8_11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y10",
      INIT => X"87D89C398C389829"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR1 => N64,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_amt_dep_temp2_8_Q
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y10",
      INIT => X"CCC4CC40C440C440"
    )
    port map (
      ADR1 => instance0_seven_seg_disp_counter(18),
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR3 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      O => N99
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y11",
      INIT => X"F7F75DDF55D75555"
    )
    port map (
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      O => N101
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y11",
      INIT => X"FFCF00008E0C0000"
    )
    port map (
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR0 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_8_Q,
      O => N100
    );
  instance0_seven_seg_disp_CFn : X_SFF
    generic map(
      LOC => "SLICE_X31Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o,
      O => instance0_seven_seg_disp_CFn_1706,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o17 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y11",
      INIT => X"FFFFFFFFA8A8FDA8"
    )
    port map (
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR1 => N22,
      ADR2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n113,
      ADR3 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13_1705,
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR5 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o12,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_8_o
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y11",
      INIT => X"0FEE0FDD0F440F88"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o,
      ADR2 => N101,
      ADR5 => N99,
      ADR1 => N100,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o12
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y12",
      INIT => X"FCF0FCF0FFFFFCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o13_1716,
      ADR1 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n12,
      ADR5 => instance0_vending_machine_controller_amt_dep_temp2_7_Q,
      ADR2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32,
      ADR3 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      O => N71
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y12",
      INIT => X"0000242400004242"
    )
    port map (
      ADR3 => '1',
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      ADR4 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR1 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_5_o11_1767
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_amt_dep_temp1_11_MUX_85_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y12",
      INIT => X"A55AF00FA5F0F05A"
    )
    port map (
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_8_MUX_73_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y12",
      INIT => X"D73C28C3C3D73C28"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_7_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y13",
      INIT => X"27A0115A885EEC05"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N30
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y13",
      INIT => X"F3FFFCFFF0F3FCF8"
    )
    port map (
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR3 => N54,
      ADR5 => instance0_vending_machine_controller_amt_dep_temp2_7_Q,
      ADR0 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      O => N22
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_7_11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y13",
      INIT => X"820024413C182424"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR0 => N64,
      ADR1 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_amt_dep_temp2_7_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_5_amt_dep_temp1_5_MUX_101_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y13",
      INIT => X"A69A9A9A3C591841"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR0 => N46,
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_111 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y14",
      INIT => X"99BB99BB93B393B3"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_lut(2),
      ADR2 => instance0_vending_machine_controller_amt_dep_temp1_11_amt_dep_temp1_11_MUX_57_o,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR1 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      O => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_6 : X_FF
    generic map(
      LOC => "SLICE_X31Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y14",
      INIT => X"F0DFF07FAB05AE05"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR4 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR1 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N148
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o111 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y14",
      INIT => X"65E96DEB65E96DEB"
    )
    port map (
      ADR5 => '1',
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      O => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_8_amt_dep_temp1_9_MUX_66_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y15",
      INIT => X"1802214002844018"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_6_amt_dep_temp1_7_MUX_82_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y15",
      INIT => X"6A150209206A2402"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      O => N50
    );
  instance0_vending_machine_controller_coin_controller_amt_dep_7 : X_FF
    generic map(
      LOC => "SLICE_X31Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_CLK,
      I => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_IN,
      O => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_amt_dep_temp1_10_MUX_61_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y16",
      INIT => X"33CCC3FC03CCC03C"
    )
    port map (
      ADR0 => '1',
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0)
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_ones_disp_n311_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y16",
      INIT => X"00FF9A2400FF6518"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      O => N103
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y16",
      INIT => X"F5FAF5FA5FAF5FAF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => N36,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_5_LessThan_25_o,
      O => N108
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y16",
      INIT => X"F60DF90EF50BFA07"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o,
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q,
      O => N36
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_9_o12_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y9",
      INIT => X"FF0F0FFF3FCFCF3F"
    )
    port map (
      ADR0 => '1',
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      O => N146
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y10",
      INIT => X"1C04041CA1B9B9A1"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR4 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N153
    );
  instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y10",
      INIT => X"FC00FD00F300F200"
    )
    port map (
      ADR3 => N80,
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_105_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y11",
      INIT => X"92A4168592A41685"
    )
    port map (
      ADR5 => '1',
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N66
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_8_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y11",
      INIT => X"FF22FFDD00DD00BB"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR1 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N64
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_105_o11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y11",
      INIT => X"F3F30C0C3C3C7D7D"
    )
    port map (
      ADR3 => '1',
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR1 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N67
    );
  N54_N54_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N137,
      O => N137_0
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_8_o15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y12",
      INIT => X"F60DF50BF90EFA07"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_11_LessThan_17_o,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => N54
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y12",
      INIT => X"88BBFCC8F33288BB"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR1 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_10_LessThan_21_o
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_11_LessThan_17_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y12",
      INIT => X"FF4BFF42FF4BFF42"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR5 => '1',
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_11_LessThan_17_o
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n321_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y12",
      INIT => X"DBFFDBFF"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR4 => '1',
      O => N137
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_GND_8_o_MUX_78_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y12",
      INIT => X"05A0058010001200"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q
    );
  N169_N169_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_pack_11,
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o : X_MUX2
    generic map(
      LOC => "SLICE_X32Y13"
    )
    port map (
      IA => N185,
      IB => N186,
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_pack_11,
      SEL => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y13",
      INIT => X"1122112210231023"
    )
    port map (
      ADR4 => '1',
      ADR1 => N2_0,
      ADR0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => N185
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y13",
      INIT => X"FF11207F0033B332"
    )
    port map (
      ADR1 => N80,
      ADR3 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      O => N186
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW17 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y13",
      INIT => X"F0F0B4782D1EF0F0"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR3 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR0 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR5 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N169
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1_SW16 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y13",
      INIT => X"0FE1B4C30FD278C3"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR0 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR5 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR2 => instance0_vending_machine_controller_Mmux_amt_dep_temp2_11_11,
      O => N168
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o_instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_77_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y14",
      INIT => X"0F1FC0C00F1FC080"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_hund_disp_n121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y14",
      INIT => X"6600930099CC6C36"
    )
    port map (
      ADR5 => N80,
      ADR4 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      O => N105
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_11_amt_dep_temp1_11_MUX_85_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y14",
      INIT => X"AA00A800AA00A800"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => '1',
      O => N80
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y14",
      INIT => X"55FF57FF"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      O => N2
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o_instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_7_MUX_81_o11 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y15"
    )
    port map (
      IA => N181,
      IB => N182,
      O => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_Q,
      SEL => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_7_MUX_81_o11_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y15",
      INIT => X"0E38B0230BC2E08C"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      O => N181
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_7_amt_dep_temp1_7_MUX_81_o11_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y15",
      INIT => X"9CC66339C6C63939"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR1 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      O => N182
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y15",
      INIT => X"DEEDDCCDCFFCCEEC"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_11_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_65_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y15",
      INIT => X"2D4F0D4BF2B4B024"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(8),
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(10),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(9),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(11),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0)
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o_instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N77,
      O => N77_0
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y16"
    )
    port map (
      IA => N175,
      IB => N176,
      O => N77,
      SEL => instance0_vending_machine_controller_Madd_amt_dep_temp1_6_GND_8_o_add_19_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y16",
      INIT => X"0066FFFF42FFF6F6"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR2 => N46,
      ADR5 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      O => N175
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp2_4_11_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y16",
      INIT => X"21BFCECE22FBDCDC"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(3),
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(2),
      ADR0 => N46,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o,
      ADR2 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(1),
      O => N176
    );
  instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y16",
      INIT => X"F3F2B83022CCCCFB"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(4),
      ADR5 => N48,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      ADR1 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_7_LessThan_15_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_4_amt_dep_temp1_5_MUX_102_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y16",
      INIT => X"CC63CCBDCCBDCC63"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_coin_controller_amt_dep(5),
      ADR0 => instance0_vending_machine_controller_coin_controller_amt_dep(6),
      ADR4 => instance0_vending_machine_controller_coin_controller_amt_dep(7),
      ADR5 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_9_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_11_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      O => N46
    );
  instance0_vending_machine_controller_Mmux_GND_8_o_GND_8_o_MUX_99_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y10",
      INIT => X"B070F07070B030B0"
    )
    port map (
      ADR1 => N80,
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2)
    );
  instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y11",
      INIT => X"6F9F0F9FF6F6F6F0"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_29_o_1565,
      ADR5 => instance0_vending_machine_controller_Madd_n0125_Madd_lut(2),
      ADR1 => instance0_vending_machine_controller_Madd_n0122_Madd_cy(0),
      ADR0 => instance0_vending_machine_controller_PWR_8_o_GND_8_o_LessThan_23_o,
      ADR3 => instance0_vending_machine_controller_Madd_n0125_Madd_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0),
      O => instance0_vending_machine_controller_GND_8_o_GND_8_o_LessThan_35_o
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_105_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y11",
      INIT => X"CCFFCC00F0AAF0AA"
    )
    port map (
      ADR0 => N66,
      ADR1 => N69,
      ADR4 => N67,
      ADR2 => N68,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_n0128_Madd_cy(0)
    );
  instance0_vending_machine_controller_Mmux_amt_dep_temp1_9_amt_dep_temp1_9_MUX_105_o11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y11",
      INIT => X"88AA2266DD55BB99"
    )
    port map (
      ADR2 => '1',
      ADR1 => instance0_vending_machine_controller_GND_8_o_GND_8_o_MUX_77_o,
      ADR0 => instance0_vending_machine_controller_Mmux_amt_dep_temp1_10_GND_8_o_MUX_79_o11,
      ADR3 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_13_OUT_cy(0),
      ADR5 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      O => N69
    );
  instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n321 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y12",
      INIT => X"0000000000151500"
    )
    port map (
      ADR5 => N137_0,
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_11_GND_8_o_add_17_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_11_LessThan_17_o,
      ADR0 => instance0_vending_machine_controller_Madd_amt_dep_temp1_10_GND_8_o_add_21_OUT_cy_0_0,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o18 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y13",
      INIT => X"8080A0A008080A0A"
    )
    port map (
      ADR3 => '1',
      ADR4 => instance0_vending_machine_controller_Madd_amt_dep_temp1_8_GND_8_o_add_33_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_Madd_amt_dep_temp1_9_GND_8_o_add_27_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_9_LessThan_27_o,
      ADR0 => instance0_vending_machine_controller_amt_dep_temp2_4_Q,
      ADR1 => instance0_vending_machine_controller_GND_8_o_amt_dep_temp1_8_LessThan_33_o,
      O => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o17_1795
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o112_SW0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y13",
      INIT => X"FFFFF5F0FFFFF5F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => instance0_vending_machine_controller_seven_segment_decoder_Mram_tens_disp_n32,
      ADR0 => instance0_vending_machine_controller_amt_dep_temp2_7_Q,
      ADR3 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o17_1795,
      ADR4 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o16_1653,
      O => N95
    );
  instance0_seven_seg_disp_CDn : X_SFF
    generic map(
      LOC => "SLICE_X33Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o,
      O => instance0_seven_seg_disp_CDn_1651,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o112 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y13",
      INIT => X"EEEECCCCFFFA5550"
    )
    port map (
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR5 => instance0_seven_seg_disp_counter(18),
      ADR3 => N94,
      ADR2 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o15,
      ADR1 => instance0_seven_seg_disp_Mmux_counter_18_PWR_13_o_Mux_6_o19,
      ADR4 => N95,
      O => instance0_seven_seg_disp_counter_18_PWR_13_o_Mux_6_o
    );
  instance0_seven_seg_disp_ones_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK,
      I => instance0_seven_seg_disp_ones_anode_glue_set_1517,
      O => instance0_seven_seg_disp_ones_anode_1630,
      RST => GND,
      SET => GND
    );
  instance0_seven_seg_disp_ones_anode_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X36Y11",
      INIT => X"FFFFEEEEFFFFEEEE"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => instance0_coin_rx_Reset_n_inv,
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR1 => instance0_seven_seg_disp_counter(18),
      O => instance0_seven_seg_disp_ones_anode_glue_set_1517
    );
  instance0_seven_seg_disp_tens_anode_instance0_seven_seg_disp_tens_anode_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_hund_anode_1524,
      O => instance0_seven_seg_disp_hund_anode_0
    );
  instance0_seven_seg_disp_tens_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK,
      I => instance0_seven_seg_disp_tens_anode_glue_set_1527,
      O => instance0_seven_seg_disp_tens_anode_1739,
      RST => GND,
      SET => GND
    );
  instance0_seven_seg_disp_tens_anode_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => X"FFBBFFBBFFBBFFBB"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => instance0_coin_rx_Reset_n_inv,
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_seven_seg_disp_counter(17),
      ADR5 => '1',
      O => instance0_seven_seg_disp_tens_anode_glue_set_1527
    );
  instance0_seven_seg_disp_hund_anode_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => X"FFDDFFDD"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => instance0_coin_rx_Reset_n_inv,
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_seven_seg_disp_counter(17),
      O => instance0_seven_seg_disp_hund_anode_glue_set_1526
    );
  instance0_seven_seg_disp_hund_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK,
      I => instance0_seven_seg_disp_hund_anode_glue_set_1526,
      O => instance0_seven_seg_disp_hund_anode_1524,
      RST => GND,
      SET => GND
    );
  NlwBufferBlock_Clk_in_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_in_BUFGP_BUFG_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_3_DI_3_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_7_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_cy_7_DI_3_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_11_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_10_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_Maccum_amt_temp_xor_11_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_9_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_temp_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_temp_8_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK
    );
  NlwBufferBlock_Amt_err_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_err_0,
      O => NlwBufferSignal_Amt_err_OBUF_I
    );
  NlwBufferBlock_Drcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_0,
      O => NlwBufferSignal_Drcd_out_OBUF_I
    );
  NlwBufferBlock_CEn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CEn_1694,
      O => NlwBufferSignal_CEn_out_OBUF_I
    );
  NlwBufferBlock_CBn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CBn_1737,
      O => NlwBufferSignal_CBn_out_OBUF_I
    );
  NlwBufferBlock_ones_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_ones_anode_1630,
      O => NlwBufferSignal_ones_anode_out_OBUF_I
    );
  NlwBufferBlock_tens_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_tens_anode_1739,
      O => NlwBufferSignal_tens_anode_out_OBUF_I
    );
  NlwBufferBlock_CFn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CFn_1706,
      O => NlwBufferSignal_CFn_out_OBUF_I
    );
  NlwBufferBlock_Qrcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_0,
      O => NlwBufferSignal_Qrcd_out_OBUF_I
    );
  NlwBufferBlock_CCn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CCn_1768,
      O => NlwBufferSignal_CCn_out_OBUF_I
    );
  NlwBufferBlock_Nrcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_0,
      O => NlwBufferSignal_Nrcd_out_OBUF_I
    );
  NlwBufferBlock_CGn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CGn_1715,
      O => NlwBufferSignal_CGn_out_OBUF_I
    );
  NlwBufferBlock_Drop_soda_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_drop_soda_1628,
      O => NlwBufferSignal_Drop_soda_out_OBUF_I
    );
  NlwBufferBlock_CDn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CDn_1651,
      O => NlwBufferSignal_CDn_out_OBUF_I
    );
  NlwBufferBlock_hund_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_hund_anode_0,
      O => NlwBufferSignal_hund_anode_out_OBUF_I
    );
  NlwBufferBlock_CAn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CAn_1600,
      O => NlwBufferSignal_CAn_out_OBUF_I
    );
  NlwBufferBlock_instance0_coin_rx_Q_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Q_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Q_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_Q_reg_IN
    );
  NlwBufferBlock_instance0_coin_rx_Dp_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Dp_CLK
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Q_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Q_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Q_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Q_reg_1703,
      O => NlwBufferSignal_instance0_coin_rx_Q_received_IN
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Qp_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Qp_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Np_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Np_CLK
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_D_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_D_reg_1698,
      O => NlwBufferSignal_instance0_coin_rx_D_received_IN
    );
  NlwBufferBlock_instance0_coin_rx_N_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_N_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_N_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_N_reg_1700,
      O => NlwBufferSignal_instance0_coin_rx_N_received_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_drop_soda_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_drop_soda_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_err_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_err_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_D_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_D_reg_IN
    );
  NlwBufferBlock_instance0_coin_rx_N_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_N_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_N_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_N_reg_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(3),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_3_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(2),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_2_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(1),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_1_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(0),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_0_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(4),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_4_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(5),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_5_IN
    );
  NlwBufferBlock_instance0_seven_seg_disp_CCn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CBn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CEn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CAn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_10_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(10),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_10_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_9_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(9),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_9_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_8_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(8),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_8_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_11_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(11),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_11_IN
    );
  NlwBufferBlock_instance0_seven_seg_disp_CGn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CFn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(6),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_6_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_coin_controller_amt_dep_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_coin_controller_amt_temp(7),
      O => NlwBufferSignal_instance0_vending_machine_controller_coin_controller_amt_dep_7_IN
    );
  NlwBufferBlock_instance0_seven_seg_disp_CDn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_ones_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_tens_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_hund_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK
    );
  NlwBlock_Usr_interaction_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Usr_interaction_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

