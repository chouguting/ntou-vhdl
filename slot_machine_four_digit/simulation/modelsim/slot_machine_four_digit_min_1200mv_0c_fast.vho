-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "01/13/2022 18:40:26"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	slot_machine_four_digit IS
    PORT (
	clk : IN std_logic;
	up_down_switch : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	start_button : IN std_logic;
	stop_button : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END slot_machine_four_digit;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down_switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down_switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down_switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down_switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop_button	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_button	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF slot_machine_four_digit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_up_down_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start_button : std_logic;
SIGNAL ww_stop_button : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL \div1|divided_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div0|divided_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div3|divided_clk~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div2|divided_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \system_clk_divider|div_counter[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[8]~output_o\ : std_logic;
SIGNAL \LED[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div0|div_counter[0]~26_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \system_clk_divider|Add0~0_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~1\ : std_logic;
SIGNAL \system_clk_divider|Add0~2_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~3\ : std_logic;
SIGNAL \system_clk_divider|Add0~4_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~5\ : std_logic;
SIGNAL \system_clk_divider|Add0~6_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~7\ : std_logic;
SIGNAL \system_clk_divider|Add0~8_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~9\ : std_logic;
SIGNAL \system_clk_divider|Add0~10_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~11\ : std_logic;
SIGNAL \system_clk_divider|Add0~12_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~13\ : std_logic;
SIGNAL \system_clk_divider|Add0~15\ : std_logic;
SIGNAL \system_clk_divider|Add0~16_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~17\ : std_logic;
SIGNAL \system_clk_divider|Add0~18_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~19\ : std_logic;
SIGNAL \system_clk_divider|Add0~20_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~21\ : std_logic;
SIGNAL \system_clk_divider|Add0~22_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~23\ : std_logic;
SIGNAL \system_clk_divider|Add0~24_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~15_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~25\ : std_logic;
SIGNAL \system_clk_divider|Add0~26_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~14_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~27\ : std_logic;
SIGNAL \system_clk_divider|Add0~28_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~13_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~29\ : std_logic;
SIGNAL \system_clk_divider|Add0~30_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~12_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~31\ : std_logic;
SIGNAL \system_clk_divider|Add0~32_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~33\ : std_logic;
SIGNAL \system_clk_divider|Add0~34_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~11_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~35\ : std_logic;
SIGNAL \system_clk_divider|Add0~36_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~37\ : std_logic;
SIGNAL \system_clk_divider|Add0~38_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~10_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~39\ : std_logic;
SIGNAL \system_clk_divider|Add0~40_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~21_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~41\ : std_logic;
SIGNAL \system_clk_divider|Add0~42_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~20_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~43\ : std_logic;
SIGNAL \system_clk_divider|Add0~44_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~19_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~45\ : std_logic;
SIGNAL \system_clk_divider|Add0~46_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~18_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~47\ : std_logic;
SIGNAL \system_clk_divider|Add0~48_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~0_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~2_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~3_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~1_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~4_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~14_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~16_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~5_combout\ : std_logic;
SIGNAL \system_clk_divider|Equal0~7_combout\ : std_logic;
SIGNAL \system_clk_divider|Add0~49\ : std_logic;
SIGNAL \system_clk_divider|Add0~50_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter~17_combout\ : std_logic;
SIGNAL \stop_button~input_o\ : std_logic;
SIGNAL \start_button~input_o\ : std_logic;
SIGNAL \system_clk_divider|div_counter[25]~clkctrl_outclk\ : std_logic;
SIGNAL \current_state.game_ready~0_combout\ : std_logic;
SIGNAL \current_state.game_ready~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.spinning~q\ : std_logic;
SIGNAL \next_state.T0~0_combout\ : std_logic;
SIGNAL \current_state.T0~q\ : std_logic;
SIGNAL \current_state.T1~q\ : std_logic;
SIGNAL \current_state.T2~q\ : std_logic;
SIGNAL \current_state.T3~q\ : std_logic;
SIGNAL \current_state.T4~q\ : std_logic;
SIGNAL \current_state.T5~q\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \current_state.T6~q\ : std_logic;
SIGNAL \WideOr9~1_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \current_state.T7~q\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \div0|div_upper_bound[23]~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \div0|div_upper_bound~18_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[17]~19_combout\ : std_logic;
SIGNAL \div0|Equal0~19_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[9]~15_combout\ : std_logic;
SIGNAL \div0|div_upper_bound~16_combout\ : std_logic;
SIGNAL \div0|Equal1~2_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[9]~17_combout\ : std_logic;
SIGNAL \div0|Equal0~18_combout\ : std_logic;
SIGNAL \div0|Equal0~20_combout\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[16]~20_combout\ : std_logic;
SIGNAL \div0|Equal0~21_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[5]~21_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[10]~12_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[10]~13_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[5]~22_combout\ : std_logic;
SIGNAL \div0|Equal0~22_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[14]~11_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[10]~14_combout\ : std_logic;
SIGNAL \div0|Equal0~16_combout\ : std_logic;
SIGNAL \div0|Equal0~17_combout\ : std_logic;
SIGNAL \div0|Equal0~23_combout\ : std_logic;
SIGNAL \div0|Equal1~1_combout\ : std_logic;
SIGNAL \div0|Equal1~3_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[20]~7_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[20]~5_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[20]~6_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[20]~8_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[12]~9_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[12]~10_combout\ : std_logic;
SIGNAL \div0|Equal0~15_combout\ : std_logic;
SIGNAL \div0|Equal0~2_combout\ : std_logic;
SIGNAL \div0|Equal0~3_combout\ : std_logic;
SIGNAL \div0|Equal0~4_combout\ : std_logic;
SIGNAL \div0|Equal1~6_combout\ : std_logic;
SIGNAL \div0|Equal1~7_combout\ : std_logic;
SIGNAL \div0|Equal1~8_combout\ : std_logic;
SIGNAL \div0|Equal1~5_combout\ : std_logic;
SIGNAL \div0|Equal0~5_combout\ : std_logic;
SIGNAL \div0|Equal1~4_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[3]~3_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[0]~4_combout\ : std_logic;
SIGNAL \div0|Equal0~6_combout\ : std_logic;
SIGNAL \WideOr11~1_combout\ : std_logic;
SIGNAL \div0|Equal0~7_combout\ : std_logic;
SIGNAL \div0|Equal0~8_combout\ : std_logic;
SIGNAL \div0|div_counter[22]~71\ : std_logic;
SIGNAL \div0|div_counter[23]~72_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[23]~1_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[23]~2_combout\ : std_logic;
SIGNAL \div0|Equal0~0_combout\ : std_logic;
SIGNAL \div0|Equal0~1_combout\ : std_logic;
SIGNAL \div0|Equal0~9_combout\ : std_logic;
SIGNAL \div0|div_counter[23]~73\ : std_logic;
SIGNAL \div0|div_counter[24]~74_combout\ : std_logic;
SIGNAL \div0|div_counter[24]~75\ : std_logic;
SIGNAL \div0|div_counter[25]~76_combout\ : std_logic;
SIGNAL \div0|Equal0~11_combout\ : std_logic;
SIGNAL \div0|Equal0~10_combout\ : std_logic;
SIGNAL \div0|Equal0~12_combout\ : std_logic;
SIGNAL \div0|Equal0~13_combout\ : std_logic;
SIGNAL \div0|Equal0~14_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[16]~25_combout\ : std_logic;
SIGNAL \div0|Equal0~24_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[21]~23_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[21]~24_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[9]~26_combout\ : std_logic;
SIGNAL \div0|div_upper_bound[8]~27_combout\ : std_logic;
SIGNAL \div0|Equal0~25_combout\ : std_logic;
SIGNAL \div0|Equal0~26_combout\ : std_logic;
SIGNAL \div0|Equal0~27_combout\ : std_logic;
SIGNAL \div0|div_counter[0]~27\ : std_logic;
SIGNAL \div0|div_counter[1]~28_combout\ : std_logic;
SIGNAL \div0|div_counter[1]~29\ : std_logic;
SIGNAL \div0|div_counter[2]~30_combout\ : std_logic;
SIGNAL \div0|div_counter[2]~31\ : std_logic;
SIGNAL \div0|div_counter[3]~32_combout\ : std_logic;
SIGNAL \div0|div_counter[3]~33\ : std_logic;
SIGNAL \div0|div_counter[4]~34_combout\ : std_logic;
SIGNAL \div0|div_counter[4]~35\ : std_logic;
SIGNAL \div0|div_counter[5]~36_combout\ : std_logic;
SIGNAL \div0|div_counter[5]~37\ : std_logic;
SIGNAL \div0|div_counter[6]~38_combout\ : std_logic;
SIGNAL \div0|div_counter[6]~39\ : std_logic;
SIGNAL \div0|div_counter[7]~40_combout\ : std_logic;
SIGNAL \div0|div_counter[7]~41\ : std_logic;
SIGNAL \div0|div_counter[8]~42_combout\ : std_logic;
SIGNAL \div0|div_counter[8]~43\ : std_logic;
SIGNAL \div0|div_counter[9]~44_combout\ : std_logic;
SIGNAL \div0|div_counter[9]~45\ : std_logic;
SIGNAL \div0|div_counter[10]~46_combout\ : std_logic;
SIGNAL \div0|div_counter[10]~47\ : std_logic;
SIGNAL \div0|div_counter[11]~48_combout\ : std_logic;
SIGNAL \div0|div_counter[11]~49\ : std_logic;
SIGNAL \div0|div_counter[12]~50_combout\ : std_logic;
SIGNAL \div0|div_counter[12]~51\ : std_logic;
SIGNAL \div0|div_counter[13]~52_combout\ : std_logic;
SIGNAL \div0|div_counter[13]~53\ : std_logic;
SIGNAL \div0|div_counter[14]~54_combout\ : std_logic;
SIGNAL \div0|div_counter[14]~55\ : std_logic;
SIGNAL \div0|div_counter[15]~56_combout\ : std_logic;
SIGNAL \div0|div_counter[15]~57\ : std_logic;
SIGNAL \div0|div_counter[16]~58_combout\ : std_logic;
SIGNAL \div0|div_counter[16]~59\ : std_logic;
SIGNAL \div0|div_counter[17]~60_combout\ : std_logic;
SIGNAL \div0|div_counter[17]~61\ : std_logic;
SIGNAL \div0|div_counter[18]~62_combout\ : std_logic;
SIGNAL \div0|div_counter[18]~63\ : std_logic;
SIGNAL \div0|div_counter[19]~64_combout\ : std_logic;
SIGNAL \div0|div_counter[19]~65\ : std_logic;
SIGNAL \div0|div_counter[20]~66_combout\ : std_logic;
SIGNAL \div0|div_counter[20]~67\ : std_logic;
SIGNAL \div0|div_counter[21]~68_combout\ : std_logic;
SIGNAL \div0|div_counter[21]~69\ : std_logic;
SIGNAL \div0|div_counter[22]~70_combout\ : std_logic;
SIGNAL \div0|Equal1~0_combout\ : std_logic;
SIGNAL \div0|divided_clk~9_combout\ : std_logic;
SIGNAL \div0|divided_clk~7_combout\ : std_logic;
SIGNAL \div0|divided_clk~5_combout\ : std_logic;
SIGNAL \div0|divided_clk~4_combout\ : std_logic;
SIGNAL \div0|divided_clk~3_combout\ : std_logic;
SIGNAL \div0|divided_clk~2_combout\ : std_logic;
SIGNAL \div0|divided_clk~1_combout\ : std_logic;
SIGNAL \div0|divided_clk~combout\ : std_logic;
SIGNAL \div0|divided_clk~clkctrl_outclk\ : std_logic;
SIGNAL \up_down_switch[0]~input_o\ : std_logic;
SIGNAL \counter0|num_out[0]~6_combout\ : std_logic;
SIGNAL \counter0|num_out~0_combout\ : std_logic;
SIGNAL \counter0|num_out~1_combout\ : std_logic;
SIGNAL \counter0|num_out~2_combout\ : std_logic;
SIGNAL \counter0|num_out~3_combout\ : std_logic;
SIGNAL \counter0|num_out~4_combout\ : std_logic;
SIGNAL \counter0|num_out~5_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \div1|div_counter[0]~26_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[18]~11_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[23]~7_combout\ : std_logic;
SIGNAL \div1|div_counter[22]~71\ : std_logic;
SIGNAL \div1|div_counter[23]~72_combout\ : std_logic;
SIGNAL \div1|Equal0~9_combout\ : std_logic;
SIGNAL \div1|Equal0~10_combout\ : std_logic;
SIGNAL \div1|Equal0~11_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[23]~2_combout\ : std_logic;
SIGNAL \div1|Equal1~7_combout\ : std_logic;
SIGNAL \div1|Equal1~4_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[3]~3_combout\ : std_logic;
SIGNAL \div1|Equal0~0_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[8]~5_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[8]~6_combout\ : std_logic;
SIGNAL \div1|Equal0~1_combout\ : std_logic;
SIGNAL \div1|Equal1~6_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[0]~4_combout\ : std_logic;
SIGNAL \div1|Equal0~2_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[16]~10_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[14]~9_combout\ : std_logic;
SIGNAL \div1|Equal0~6_combout\ : std_logic;
SIGNAL \div1|Equal1~8_combout\ : std_logic;
SIGNAL \div1|Equal1~5_combout\ : std_logic;
SIGNAL \div1|Equal0~3_combout\ : std_logic;
SIGNAL \div1|Equal0~4_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[10]~8_combout\ : std_logic;
SIGNAL \div1|Equal0~5_combout\ : std_logic;
SIGNAL \div1|div_counter[23]~73\ : std_logic;
SIGNAL \div1|div_counter[24]~74_combout\ : std_logic;
SIGNAL \div1|Equal1~2_combout\ : std_logic;
SIGNAL \div1|Equal0~7_combout\ : std_logic;
SIGNAL \div1|Equal0~8_combout\ : std_logic;
SIGNAL \div1|div_upper_bound~17_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[9]~18_combout\ : std_logic;
SIGNAL \div1|Equal0~24_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[15]~19_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[20]~20_combout\ : std_logic;
SIGNAL \div1|Equal0~25_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[11]~15_combout\ : std_logic;
SIGNAL \div1|Equal0~16_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \div1|Equal0~17_combout\ : std_logic;
SIGNAL \div1|Equal0~18_combout\ : std_logic;
SIGNAL \div1|Equal0~20_combout\ : std_logic;
SIGNAL \div1|Equal0~21_combout\ : std_logic;
SIGNAL \div1|div_counter[24]~75\ : std_logic;
SIGNAL \div1|div_counter[25]~76_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[13]~16_combout\ : std_logic;
SIGNAL \div1|Equal0~19_combout\ : std_logic;
SIGNAL \div1|Equal0~22_combout\ : std_logic;
SIGNAL \div1|Equal0~23_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[10]~21_combout\ : std_logic;
SIGNAL \div1|Equal0~12_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[5]~12_combout\ : std_logic;
SIGNAL \div1|Equal0~13_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[6]~13_combout\ : std_logic;
SIGNAL \div1|div_upper_bound[12]~14_combout\ : std_logic;
SIGNAL \div1|Equal0~14_combout\ : std_logic;
SIGNAL \div1|Equal0~15_combout\ : std_logic;
SIGNAL \div1|Equal0~26_combout\ : std_logic;
SIGNAL \div1|Equal0~27_combout\ : std_logic;
SIGNAL \div1|div_counter[0]~27\ : std_logic;
SIGNAL \div1|div_counter[1]~28_combout\ : std_logic;
SIGNAL \div1|div_counter[1]~29\ : std_logic;
SIGNAL \div1|div_counter[2]~30_combout\ : std_logic;
SIGNAL \div1|div_counter[2]~31\ : std_logic;
SIGNAL \div1|div_counter[3]~32_combout\ : std_logic;
SIGNAL \div1|div_counter[3]~33\ : std_logic;
SIGNAL \div1|div_counter[4]~34_combout\ : std_logic;
SIGNAL \div1|div_counter[4]~35\ : std_logic;
SIGNAL \div1|div_counter[5]~36_combout\ : std_logic;
SIGNAL \div1|div_counter[5]~37\ : std_logic;
SIGNAL \div1|div_counter[6]~38_combout\ : std_logic;
SIGNAL \div1|div_counter[6]~39\ : std_logic;
SIGNAL \div1|div_counter[7]~40_combout\ : std_logic;
SIGNAL \div1|div_counter[7]~41\ : std_logic;
SIGNAL \div1|div_counter[8]~42_combout\ : std_logic;
SIGNAL \div1|div_counter[8]~43\ : std_logic;
SIGNAL \div1|div_counter[9]~44_combout\ : std_logic;
SIGNAL \div1|div_counter[9]~45\ : std_logic;
SIGNAL \div1|div_counter[10]~46_combout\ : std_logic;
SIGNAL \div1|div_counter[10]~47\ : std_logic;
SIGNAL \div1|div_counter[11]~48_combout\ : std_logic;
SIGNAL \div1|div_counter[11]~49\ : std_logic;
SIGNAL \div1|div_counter[12]~50_combout\ : std_logic;
SIGNAL \div1|div_counter[12]~51\ : std_logic;
SIGNAL \div1|div_counter[13]~52_combout\ : std_logic;
SIGNAL \div1|div_counter[13]~53\ : std_logic;
SIGNAL \div1|div_counter[14]~54_combout\ : std_logic;
SIGNAL \div1|div_counter[14]~55\ : std_logic;
SIGNAL \div1|div_counter[15]~56_combout\ : std_logic;
SIGNAL \div1|div_counter[15]~57\ : std_logic;
SIGNAL \div1|div_counter[16]~58_combout\ : std_logic;
SIGNAL \div1|div_counter[16]~59\ : std_logic;
SIGNAL \div1|div_counter[17]~60_combout\ : std_logic;
SIGNAL \div1|div_counter[17]~61\ : std_logic;
SIGNAL \div1|div_counter[18]~62_combout\ : std_logic;
SIGNAL \div1|div_counter[18]~63\ : std_logic;
SIGNAL \div1|div_counter[19]~64_combout\ : std_logic;
SIGNAL \div1|div_counter[19]~65\ : std_logic;
SIGNAL \div1|div_counter[20]~66_combout\ : std_logic;
SIGNAL \div1|div_counter[20]~67\ : std_logic;
SIGNAL \div1|div_counter[21]~68_combout\ : std_logic;
SIGNAL \div1|div_counter[21]~69\ : std_logic;
SIGNAL \div1|div_counter[22]~70_combout\ : std_logic;
SIGNAL \div1|divided_clk~9_combout\ : std_logic;
SIGNAL \div1|divided_clk~7_combout\ : std_logic;
SIGNAL \div1|Equal1~3_combout\ : std_logic;
SIGNAL \div1|divided_clk~4_combout\ : std_logic;
SIGNAL \div1|divided_clk~3_combout\ : std_logic;
SIGNAL \div1|divided_clk~2_combout\ : std_logic;
SIGNAL \div1|divided_clk~1_combout\ : std_logic;
SIGNAL \div1|divided_clk~combout\ : std_logic;
SIGNAL \div1|divided_clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter1|num_out[0]~6_combout\ : std_logic;
SIGNAL \up_down_switch[1]~input_o\ : std_logic;
SIGNAL \counter1|num_out~2_combout\ : std_logic;
SIGNAL \counter1|num_out~3_combout\ : std_logic;
SIGNAL \counter1|num_out~0_combout\ : std_logic;
SIGNAL \counter1|num_out~1_combout\ : std_logic;
SIGNAL \counter1|num_out~4_combout\ : std_logic;
SIGNAL \counter1|num_out~5_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \div2|div_counter[0]~26_combout\ : std_logic;
SIGNAL \div2|Equal0~8_combout\ : std_logic;
SIGNAL \div2|div_counter[22]~71\ : std_logic;
SIGNAL \div2|div_counter[23]~72_combout\ : std_logic;
SIGNAL \div2|div_counter[23]~73\ : std_logic;
SIGNAL \div2|div_counter[24]~74_combout\ : std_logic;
SIGNAL \div2|div_counter[24]~75\ : std_logic;
SIGNAL \div2|div_counter[25]~76_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[21]~8_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \div2|div_upper_bound[5]~9_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[10]~10_combout\ : std_logic;
SIGNAL \div2|Equal0~5_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[14]~12_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[12]~11_combout\ : std_logic;
SIGNAL \div2|Equal0~6_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[8]~18_combout\ : std_logic;
SIGNAL \div2|div_upper_bound~4_combout\ : std_logic;
SIGNAL \div2|Equal1~2_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[9]~5_combout\ : std_logic;
SIGNAL \div2|Equal0~0_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[1]~7_combout\ : std_logic;
SIGNAL \div2|Equal1~6_combout\ : std_logic;
SIGNAL \div2|Equal1~5_combout\ : std_logic;
SIGNAL \div2|Equal0~3_combout\ : std_logic;
SIGNAL \div2|Equal1~4_combout\ : std_logic;
SIGNAL \div2|Equal0~1_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[3]~6_combout\ : std_logic;
SIGNAL \div2|Equal0~2_combout\ : std_logic;
SIGNAL \div2|Equal0~4_combout\ : std_logic;
SIGNAL \div2|Equal0~7_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[16]~13_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[17]~14_combout\ : std_logic;
SIGNAL \div2|Equal0~9_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[20]~15_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[23]~16_combout\ : std_logic;
SIGNAL \div2|Equal0~10_combout\ : std_logic;
SIGNAL \div2|Equal0~19_combout\ : std_logic;
SIGNAL \div2|div_upper_bound[6]~17_combout\ : std_logic;
SIGNAL \div2|Equal0~20_combout\ : std_logic;
SIGNAL \div2|Equal1~1_combout\ : std_logic;
SIGNAL \div2|Equal0~11_combout\ : std_logic;
SIGNAL \div2|Equal0~12_combout\ : std_logic;
SIGNAL \div2|Equal0~14_combout\ : std_logic;
SIGNAL \div2|Equal0~16_combout\ : std_logic;
SIGNAL \div2|Equal0~15_combout\ : std_logic;
SIGNAL \div2|Equal0~17_combout\ : std_logic;
SIGNAL \div2|Equal0~13_combout\ : std_logic;
SIGNAL \div2|Equal0~18_combout\ : std_logic;
SIGNAL \div2|Equal0~21_combout\ : std_logic;
SIGNAL \div2|Equal0~22_combout\ : std_logic;
SIGNAL \div2|Equal0~23_combout\ : std_logic;
SIGNAL \div2|div_counter[0]~27\ : std_logic;
SIGNAL \div2|div_counter[1]~28_combout\ : std_logic;
SIGNAL \div2|div_counter[1]~29\ : std_logic;
SIGNAL \div2|div_counter[2]~30_combout\ : std_logic;
SIGNAL \div2|div_counter[2]~31\ : std_logic;
SIGNAL \div2|div_counter[3]~32_combout\ : std_logic;
SIGNAL \div2|div_counter[3]~33\ : std_logic;
SIGNAL \div2|div_counter[4]~34_combout\ : std_logic;
SIGNAL \div2|div_counter[4]~35\ : std_logic;
SIGNAL \div2|div_counter[5]~36_combout\ : std_logic;
SIGNAL \div2|div_counter[5]~37\ : std_logic;
SIGNAL \div2|div_counter[6]~38_combout\ : std_logic;
SIGNAL \div2|div_counter[6]~39\ : std_logic;
SIGNAL \div2|div_counter[7]~40_combout\ : std_logic;
SIGNAL \div2|div_counter[7]~41\ : std_logic;
SIGNAL \div2|div_counter[8]~42_combout\ : std_logic;
SIGNAL \div2|div_counter[8]~43\ : std_logic;
SIGNAL \div2|div_counter[9]~44_combout\ : std_logic;
SIGNAL \div2|div_counter[9]~45\ : std_logic;
SIGNAL \div2|div_counter[10]~46_combout\ : std_logic;
SIGNAL \div2|div_counter[10]~47\ : std_logic;
SIGNAL \div2|div_counter[11]~48_combout\ : std_logic;
SIGNAL \div2|div_counter[11]~49\ : std_logic;
SIGNAL \div2|div_counter[12]~50_combout\ : std_logic;
SIGNAL \div2|div_counter[12]~51\ : std_logic;
SIGNAL \div2|div_counter[13]~52_combout\ : std_logic;
SIGNAL \div2|div_counter[13]~53\ : std_logic;
SIGNAL \div2|div_counter[14]~54_combout\ : std_logic;
SIGNAL \div2|div_counter[14]~55\ : std_logic;
SIGNAL \div2|div_counter[15]~56_combout\ : std_logic;
SIGNAL \div2|div_counter[15]~57\ : std_logic;
SIGNAL \div2|div_counter[16]~58_combout\ : std_logic;
SIGNAL \div2|div_counter[16]~59\ : std_logic;
SIGNAL \div2|div_counter[17]~60_combout\ : std_logic;
SIGNAL \div2|div_counter[17]~61\ : std_logic;
SIGNAL \div2|div_counter[18]~62_combout\ : std_logic;
SIGNAL \div2|div_counter[18]~63\ : std_logic;
SIGNAL \div2|div_counter[19]~64_combout\ : std_logic;
SIGNAL \div2|div_counter[19]~65\ : std_logic;
SIGNAL \div2|div_counter[20]~66_combout\ : std_logic;
SIGNAL \div2|div_counter[20]~67\ : std_logic;
SIGNAL \div2|div_counter[21]~68_combout\ : std_logic;
SIGNAL \div2|div_counter[21]~69\ : std_logic;
SIGNAL \div2|div_counter[22]~70_combout\ : std_logic;
SIGNAL \div2|Equal1~0_combout\ : std_logic;
SIGNAL \div2|divided_clk~9_combout\ : std_logic;
SIGNAL \div2|divided_clk~7_combout\ : std_logic;
SIGNAL \div2|divided_clk~6_combout\ : std_logic;
SIGNAL \div2|Equal1~3_combout\ : std_logic;
SIGNAL \div2|divided_clk~4_combout\ : std_logic;
SIGNAL \div2|divided_clk~3_combout\ : std_logic;
SIGNAL \div2|divided_clk~2_combout\ : std_logic;
SIGNAL \div2|divided_clk~combout\ : std_logic;
SIGNAL \div2|divided_clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter2|num_out[0]~6_combout\ : std_logic;
SIGNAL \up_down_switch[2]~input_o\ : std_logic;
SIGNAL \counter2|num_out~4_combout\ : std_logic;
SIGNAL \counter2|num_out~5_combout\ : std_logic;
SIGNAL \counter2|num_out~0_combout\ : std_logic;
SIGNAL \counter2|num_out~1_combout\ : std_logic;
SIGNAL \counter2|num_out~2_combout\ : std_logic;
SIGNAL \counter2|num_out~3_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \div3|div_counter[0]~26_combout\ : std_logic;
SIGNAL \div3|Equal1~3_combout\ : std_logic;
SIGNAL \div3|Equal0~8_combout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \div3|div_upper_bound~0_combout\ : std_logic;
SIGNAL \div3|Equal0~18_combout\ : std_logic;
SIGNAL \div3|Equal0~15_combout\ : std_logic;
SIGNAL \div3|Equal0~19_combout\ : std_logic;
SIGNAL \div3|Equal0~10_combout\ : std_logic;
SIGNAL \div3|Equal0~11_combout\ : std_logic;
SIGNAL \div3|Equal0~12_combout\ : std_logic;
SIGNAL \div3|Equal0~20_combout\ : std_logic;
SIGNAL \div3|Equal0~9_combout\ : std_logic;
SIGNAL \div3|Equal0~21_combout\ : std_logic;
SIGNAL \div3|Equal0~14_combout\ : std_logic;
SIGNAL \div3|Equal0~22_combout\ : std_logic;
SIGNAL \div3|Equal0~23_combout\ : std_logic;
SIGNAL \div3|Equal0~13_combout\ : std_logic;
SIGNAL \div3|Equal0~16_combout\ : std_logic;
SIGNAL \div3|Equal0~17_combout\ : std_logic;
SIGNAL \div3|Equal0~24_combout\ : std_logic;
SIGNAL \div3|Equal0~2_combout\ : std_logic;
SIGNAL \div3|Equal0~1_combout\ : std_logic;
SIGNAL \div3|Equal1~1_combout\ : std_logic;
SIGNAL \div3|Equal0~0_combout\ : std_logic;
SIGNAL \div3|Equal0~3_combout\ : std_logic;
SIGNAL \div3|div_counter[23]~73\ : std_logic;
SIGNAL \div3|div_counter[24]~74_combout\ : std_logic;
SIGNAL \div3|div_counter[24]~75\ : std_logic;
SIGNAL \div3|div_counter[25]~76_combout\ : std_logic;
SIGNAL \div3|Equal0~28_combout\ : std_logic;
SIGNAL \div3|Equal1~0_combout\ : std_logic;
SIGNAL \div3|Equal0~26_combout\ : std_logic;
SIGNAL \div3|Equal0~25_combout\ : std_logic;
SIGNAL \div3|Equal0~27_combout\ : std_logic;
SIGNAL \div3|Equal0~29_combout\ : std_logic;
SIGNAL \div3|Equal0~6_combout\ : std_logic;
SIGNAL \div3|Equal0~4_combout\ : std_logic;
SIGNAL \div3|Equal0~5_combout\ : std_logic;
SIGNAL \div3|Equal0~7_combout\ : std_logic;
SIGNAL \div3|Equal0~30_combout\ : std_logic;
SIGNAL \div3|div_counter[0]~27\ : std_logic;
SIGNAL \div3|div_counter[1]~28_combout\ : std_logic;
SIGNAL \div3|div_counter[1]~29\ : std_logic;
SIGNAL \div3|div_counter[2]~30_combout\ : std_logic;
SIGNAL \div3|div_counter[2]~31\ : std_logic;
SIGNAL \div3|div_counter[3]~32_combout\ : std_logic;
SIGNAL \div3|div_counter[3]~33\ : std_logic;
SIGNAL \div3|div_counter[4]~34_combout\ : std_logic;
SIGNAL \div3|div_counter[4]~35\ : std_logic;
SIGNAL \div3|div_counter[5]~36_combout\ : std_logic;
SIGNAL \div3|div_counter[5]~37\ : std_logic;
SIGNAL \div3|div_counter[6]~38_combout\ : std_logic;
SIGNAL \div3|div_counter[6]~39\ : std_logic;
SIGNAL \div3|div_counter[7]~40_combout\ : std_logic;
SIGNAL \div3|div_counter[7]~41\ : std_logic;
SIGNAL \div3|div_counter[8]~42_combout\ : std_logic;
SIGNAL \div3|div_counter[8]~43\ : std_logic;
SIGNAL \div3|div_counter[9]~44_combout\ : std_logic;
SIGNAL \div3|div_counter[9]~45\ : std_logic;
SIGNAL \div3|div_counter[10]~46_combout\ : std_logic;
SIGNAL \div3|div_counter[10]~47\ : std_logic;
SIGNAL \div3|div_counter[11]~48_combout\ : std_logic;
SIGNAL \div3|div_counter[11]~49\ : std_logic;
SIGNAL \div3|div_counter[12]~50_combout\ : std_logic;
SIGNAL \div3|div_counter[12]~51\ : std_logic;
SIGNAL \div3|div_counter[13]~52_combout\ : std_logic;
SIGNAL \div3|div_counter[13]~53\ : std_logic;
SIGNAL \div3|div_counter[14]~54_combout\ : std_logic;
SIGNAL \div3|div_counter[14]~55\ : std_logic;
SIGNAL \div3|div_counter[15]~56_combout\ : std_logic;
SIGNAL \div3|div_counter[15]~57\ : std_logic;
SIGNAL \div3|div_counter[16]~58_combout\ : std_logic;
SIGNAL \div3|div_counter[16]~59\ : std_logic;
SIGNAL \div3|div_counter[17]~60_combout\ : std_logic;
SIGNAL \div3|div_counter[17]~61\ : std_logic;
SIGNAL \div3|div_counter[18]~62_combout\ : std_logic;
SIGNAL \div3|div_counter[18]~63\ : std_logic;
SIGNAL \div3|div_counter[19]~64_combout\ : std_logic;
SIGNAL \div3|div_counter[19]~65\ : std_logic;
SIGNAL \div3|div_counter[20]~66_combout\ : std_logic;
SIGNAL \div3|div_counter[20]~67\ : std_logic;
SIGNAL \div3|div_counter[21]~68_combout\ : std_logic;
SIGNAL \div3|div_counter[21]~69\ : std_logic;
SIGNAL \div3|div_counter[22]~70_combout\ : std_logic;
SIGNAL \div3|div_counter[22]~71\ : std_logic;
SIGNAL \div3|div_counter[23]~72_combout\ : std_logic;
SIGNAL \div3|divided_clk~7_combout\ : std_logic;
SIGNAL \div3|divided_clk~5_combout\ : std_logic;
SIGNAL \div3|divided_clk~4_combout\ : std_logic;
SIGNAL \div3|Equal1~2_combout\ : std_logic;
SIGNAL \div3|divided_clk~2_combout\ : std_logic;
SIGNAL \div3|divided_clk~0_combout\ : std_logic;
SIGNAL \div3|divided_clk~0clkctrl_outclk\ : std_logic;
SIGNAL \up_down_switch[3]~input_o\ : std_logic;
SIGNAL \counter3|num_out[0]~6_combout\ : std_logic;
SIGNAL \counter3|num_out~2_combout\ : std_logic;
SIGNAL \counter3|num_out~3_combout\ : std_logic;
SIGNAL \counter3|num_out~0_combout\ : std_logic;
SIGNAL \counter3|num_out~1_combout\ : std_logic;
SIGNAL \counter3|num_out~4_combout\ : std_logic;
SIGNAL \counter3|num_out~5_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.judge1~feeder_combout\ : std_logic;
SIGNAL \current_state.judge1~q\ : std_logic;
SIGNAL \current_state.judge2~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \system_clk_divider|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \counter3|num_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter0|num_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter2|num_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter1|num_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div3|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \div1|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \div2|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \div0|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \decoder3|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_decoded_out[6]~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_up_down_switch <= up_down_switch;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_start_button <= start_button;
ww_stop_button <= stop_button;
ww_reset <= reset;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div1|divided_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div1|divided_clk~combout\);

\div0|divided_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div0|divided_clk~combout\);

\div3|divided_clk~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div3|divided_clk~0_combout\);

\div2|divided_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div2|divided_clk~combout\);

\system_clk_divider|div_counter[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \system_clk_divider|div_counter\(25));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\decoder3|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder3|decoded_out[6]~6_combout\;
\decoder2|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder2|decoded_out[6]~6_combout\;
\decoder1|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder1|decoded_out[6]~6_combout\;
\decoder0|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder0|decoded_out[6]~6_combout\;

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\HEX0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\HEX1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|ALT_INV_decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\HEX3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LED[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~1_combout\,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~3_combout\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LED[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~5_combout\,
	devoe => ww_devoe,
	o => \LED[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LED[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~5_combout\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y18_N6
\div0|div_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[0]~26_combout\ = \div0|div_counter\(0) $ (VCC)
-- \div0|div_counter[0]~27\ = CARRY(\div0|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(0),
	datad => VCC,
	combout => \div0|div_counter[0]~26_combout\,
	cout => \div0|div_counter[0]~27\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X20_Y21_N6
\system_clk_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~0_combout\ = \system_clk_divider|div_counter\(0) $ (VCC)
-- \system_clk_divider|Add0~1\ = CARRY(\system_clk_divider|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(0),
	datad => VCC,
	combout => \system_clk_divider|Add0~0_combout\,
	cout => \system_clk_divider|Add0~1\);

-- Location: FF_X20_Y21_N7
\system_clk_divider|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(0));

-- Location: LCCOMB_X20_Y21_N8
\system_clk_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~2_combout\ = (\system_clk_divider|div_counter\(1) & (!\system_clk_divider|Add0~1\)) # (!\system_clk_divider|div_counter\(1) & ((\system_clk_divider|Add0~1\) # (GND)))
-- \system_clk_divider|Add0~3\ = CARRY((!\system_clk_divider|Add0~1\) # (!\system_clk_divider|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(1),
	datad => VCC,
	cin => \system_clk_divider|Add0~1\,
	combout => \system_clk_divider|Add0~2_combout\,
	cout => \system_clk_divider|Add0~3\);

-- Location: FF_X20_Y21_N9
\system_clk_divider|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(1));

-- Location: LCCOMB_X20_Y21_N10
\system_clk_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~4_combout\ = (\system_clk_divider|div_counter\(2) & (\system_clk_divider|Add0~3\ $ (GND))) # (!\system_clk_divider|div_counter\(2) & (!\system_clk_divider|Add0~3\ & VCC))
-- \system_clk_divider|Add0~5\ = CARRY((\system_clk_divider|div_counter\(2) & !\system_clk_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(2),
	datad => VCC,
	cin => \system_clk_divider|Add0~3\,
	combout => \system_clk_divider|Add0~4_combout\,
	cout => \system_clk_divider|Add0~5\);

-- Location: FF_X20_Y21_N11
\system_clk_divider|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(2));

-- Location: LCCOMB_X20_Y21_N12
\system_clk_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~6_combout\ = (\system_clk_divider|div_counter\(3) & (!\system_clk_divider|Add0~5\)) # (!\system_clk_divider|div_counter\(3) & ((\system_clk_divider|Add0~5\) # (GND)))
-- \system_clk_divider|Add0~7\ = CARRY((!\system_clk_divider|Add0~5\) # (!\system_clk_divider|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(3),
	datad => VCC,
	cin => \system_clk_divider|Add0~5\,
	combout => \system_clk_divider|Add0~6_combout\,
	cout => \system_clk_divider|Add0~7\);

-- Location: FF_X20_Y21_N13
\system_clk_divider|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(3));

-- Location: LCCOMB_X20_Y21_N14
\system_clk_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~8_combout\ = (\system_clk_divider|div_counter\(4) & (\system_clk_divider|Add0~7\ $ (GND))) # (!\system_clk_divider|div_counter\(4) & (!\system_clk_divider|Add0~7\ & VCC))
-- \system_clk_divider|Add0~9\ = CARRY((\system_clk_divider|div_counter\(4) & !\system_clk_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(4),
	datad => VCC,
	cin => \system_clk_divider|Add0~7\,
	combout => \system_clk_divider|Add0~8_combout\,
	cout => \system_clk_divider|Add0~9\);

-- Location: FF_X20_Y21_N15
\system_clk_divider|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(4));

-- Location: LCCOMB_X20_Y21_N16
\system_clk_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~10_combout\ = (\system_clk_divider|div_counter\(5) & (!\system_clk_divider|Add0~9\)) # (!\system_clk_divider|div_counter\(5) & ((\system_clk_divider|Add0~9\) # (GND)))
-- \system_clk_divider|Add0~11\ = CARRY((!\system_clk_divider|Add0~9\) # (!\system_clk_divider|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(5),
	datad => VCC,
	cin => \system_clk_divider|Add0~9\,
	combout => \system_clk_divider|Add0~10_combout\,
	cout => \system_clk_divider|Add0~11\);

-- Location: FF_X20_Y21_N17
\system_clk_divider|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(5));

-- Location: LCCOMB_X20_Y21_N2
\system_clk_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~6_combout\ = (\system_clk_divider|div_counter\(4) & (\system_clk_divider|div_counter\(3) & (\system_clk_divider|div_counter\(2) & \system_clk_divider|div_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(4),
	datab => \system_clk_divider|div_counter\(3),
	datac => \system_clk_divider|div_counter\(2),
	datad => \system_clk_divider|div_counter\(5),
	combout => \system_clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y21_N18
\system_clk_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~12_combout\ = (\system_clk_divider|div_counter\(6) & (\system_clk_divider|Add0~11\ $ (GND))) # (!\system_clk_divider|div_counter\(6) & (!\system_clk_divider|Add0~11\ & VCC))
-- \system_clk_divider|Add0~13\ = CARRY((\system_clk_divider|div_counter\(6) & !\system_clk_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(6),
	datad => VCC,
	cin => \system_clk_divider|Add0~11\,
	combout => \system_clk_divider|Add0~12_combout\,
	cout => \system_clk_divider|Add0~13\);

-- Location: FF_X20_Y21_N19
\system_clk_divider|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(6));

-- Location: LCCOMB_X20_Y21_N20
\system_clk_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~14_combout\ = (\system_clk_divider|div_counter\(7) & (!\system_clk_divider|Add0~13\)) # (!\system_clk_divider|div_counter\(7) & ((\system_clk_divider|Add0~13\) # (GND)))
-- \system_clk_divider|Add0~15\ = CARRY((!\system_clk_divider|Add0~13\) # (!\system_clk_divider|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(7),
	datad => VCC,
	cin => \system_clk_divider|Add0~13\,
	combout => \system_clk_divider|Add0~14_combout\,
	cout => \system_clk_divider|Add0~15\);

-- Location: LCCOMB_X20_Y21_N22
\system_clk_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~16_combout\ = (\system_clk_divider|div_counter\(8) & (\system_clk_divider|Add0~15\ $ (GND))) # (!\system_clk_divider|div_counter\(8) & (!\system_clk_divider|Add0~15\ & VCC))
-- \system_clk_divider|Add0~17\ = CARRY((\system_clk_divider|div_counter\(8) & !\system_clk_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(8),
	datad => VCC,
	cin => \system_clk_divider|Add0~15\,
	combout => \system_clk_divider|Add0~16_combout\,
	cout => \system_clk_divider|Add0~17\);

-- Location: FF_X20_Y21_N23
\system_clk_divider|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(8));

-- Location: LCCOMB_X20_Y21_N24
\system_clk_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~18_combout\ = (\system_clk_divider|div_counter\(9) & (!\system_clk_divider|Add0~17\)) # (!\system_clk_divider|div_counter\(9) & ((\system_clk_divider|Add0~17\) # (GND)))
-- \system_clk_divider|Add0~19\ = CARRY((!\system_clk_divider|Add0~17\) # (!\system_clk_divider|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(9),
	datad => VCC,
	cin => \system_clk_divider|Add0~17\,
	combout => \system_clk_divider|Add0~18_combout\,
	cout => \system_clk_divider|Add0~19\);

-- Location: FF_X20_Y21_N25
\system_clk_divider|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(9));

-- Location: LCCOMB_X20_Y21_N26
\system_clk_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~20_combout\ = (\system_clk_divider|div_counter\(10) & (\system_clk_divider|Add0~19\ $ (GND))) # (!\system_clk_divider|div_counter\(10) & (!\system_clk_divider|Add0~19\ & VCC))
-- \system_clk_divider|Add0~21\ = CARRY((\system_clk_divider|div_counter\(10) & !\system_clk_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(10),
	datad => VCC,
	cin => \system_clk_divider|Add0~19\,
	combout => \system_clk_divider|Add0~20_combout\,
	cout => \system_clk_divider|Add0~21\);

-- Location: FF_X20_Y21_N27
\system_clk_divider|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(10));

-- Location: LCCOMB_X20_Y21_N28
\system_clk_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~22_combout\ = (\system_clk_divider|div_counter\(11) & (!\system_clk_divider|Add0~21\)) # (!\system_clk_divider|div_counter\(11) & ((\system_clk_divider|Add0~21\) # (GND)))
-- \system_clk_divider|Add0~23\ = CARRY((!\system_clk_divider|Add0~21\) # (!\system_clk_divider|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(11),
	datad => VCC,
	cin => \system_clk_divider|Add0~21\,
	combout => \system_clk_divider|Add0~22_combout\,
	cout => \system_clk_divider|Add0~23\);

-- Location: FF_X20_Y21_N29
\system_clk_divider|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(11));

-- Location: LCCOMB_X20_Y21_N30
\system_clk_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~24_combout\ = (\system_clk_divider|div_counter\(12) & (\system_clk_divider|Add0~23\ $ (GND))) # (!\system_clk_divider|div_counter\(12) & (!\system_clk_divider|Add0~23\ & VCC))
-- \system_clk_divider|Add0~25\ = CARRY((\system_clk_divider|div_counter\(12) & !\system_clk_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(12),
	datad => VCC,
	cin => \system_clk_divider|Add0~23\,
	combout => \system_clk_divider|Add0~24_combout\,
	cout => \system_clk_divider|Add0~25\);

-- Location: LCCOMB_X19_Y20_N24
\system_clk_divider|div_counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~15_combout\ = (\system_clk_divider|Add0~24_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datab => \system_clk_divider|Add0~24_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	combout => \system_clk_divider|div_counter~15_combout\);

-- Location: FF_X19_Y20_N25
\system_clk_divider|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(12));

-- Location: LCCOMB_X20_Y20_N0
\system_clk_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~26_combout\ = (\system_clk_divider|div_counter\(13) & (!\system_clk_divider|Add0~25\)) # (!\system_clk_divider|div_counter\(13) & ((\system_clk_divider|Add0~25\) # (GND)))
-- \system_clk_divider|Add0~27\ = CARRY((!\system_clk_divider|Add0~25\) # (!\system_clk_divider|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(13),
	datad => VCC,
	cin => \system_clk_divider|Add0~25\,
	combout => \system_clk_divider|Add0~26_combout\,
	cout => \system_clk_divider|Add0~27\);

-- Location: LCCOMB_X19_Y20_N6
\system_clk_divider|div_counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~14_combout\ = (\system_clk_divider|Add0~26_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datab => \system_clk_divider|Add0~26_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	combout => \system_clk_divider|div_counter~14_combout\);

-- Location: FF_X19_Y20_N7
\system_clk_divider|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(13));

-- Location: LCCOMB_X20_Y20_N2
\system_clk_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~28_combout\ = (\system_clk_divider|div_counter\(14) & (\system_clk_divider|Add0~27\ $ (GND))) # (!\system_clk_divider|div_counter\(14) & (!\system_clk_divider|Add0~27\ & VCC))
-- \system_clk_divider|Add0~29\ = CARRY((\system_clk_divider|div_counter\(14) & !\system_clk_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(14),
	datad => VCC,
	cin => \system_clk_divider|Add0~27\,
	combout => \system_clk_divider|Add0~28_combout\,
	cout => \system_clk_divider|Add0~29\);

-- Location: LCCOMB_X19_Y20_N28
\system_clk_divider|div_counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~13_combout\ = (\system_clk_divider|Add0~28_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Add0~28_combout\,
	combout => \system_clk_divider|div_counter~13_combout\);

-- Location: FF_X19_Y20_N29
\system_clk_divider|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(14));

-- Location: LCCOMB_X20_Y20_N4
\system_clk_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~30_combout\ = (\system_clk_divider|div_counter\(15) & (!\system_clk_divider|Add0~29\)) # (!\system_clk_divider|div_counter\(15) & ((\system_clk_divider|Add0~29\) # (GND)))
-- \system_clk_divider|Add0~31\ = CARRY((!\system_clk_divider|Add0~29\) # (!\system_clk_divider|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(15),
	datad => VCC,
	cin => \system_clk_divider|Add0~29\,
	combout => \system_clk_divider|Add0~30_combout\,
	cout => \system_clk_divider|Add0~31\);

-- Location: LCCOMB_X19_Y20_N26
\system_clk_divider|div_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~12_combout\ = (\system_clk_divider|Add0~30_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datab => \system_clk_divider|Add0~30_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	combout => \system_clk_divider|div_counter~12_combout\);

-- Location: FF_X19_Y20_N27
\system_clk_divider|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(15));

-- Location: LCCOMB_X20_Y20_N6
\system_clk_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~32_combout\ = (\system_clk_divider|div_counter\(16) & (\system_clk_divider|Add0~31\ $ (GND))) # (!\system_clk_divider|div_counter\(16) & (!\system_clk_divider|Add0~31\ & VCC))
-- \system_clk_divider|Add0~33\ = CARRY((\system_clk_divider|div_counter\(16) & !\system_clk_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(16),
	datad => VCC,
	cin => \system_clk_divider|Add0~31\,
	combout => \system_clk_divider|Add0~32_combout\,
	cout => \system_clk_divider|Add0~33\);

-- Location: FF_X20_Y20_N7
\system_clk_divider|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~32_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(16));

-- Location: LCCOMB_X20_Y20_N8
\system_clk_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~34_combout\ = (\system_clk_divider|div_counter\(17) & (!\system_clk_divider|Add0~33\)) # (!\system_clk_divider|div_counter\(17) & ((\system_clk_divider|Add0~33\) # (GND)))
-- \system_clk_divider|Add0~35\ = CARRY((!\system_clk_divider|Add0~33\) # (!\system_clk_divider|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(17),
	datad => VCC,
	cin => \system_clk_divider|Add0~33\,
	combout => \system_clk_divider|Add0~34_combout\,
	cout => \system_clk_divider|Add0~35\);

-- Location: LCCOMB_X19_Y20_N8
\system_clk_divider|div_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~11_combout\ = (\system_clk_divider|Add0~34_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Add0~34_combout\,
	combout => \system_clk_divider|div_counter~11_combout\);

-- Location: FF_X19_Y20_N9
\system_clk_divider|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(17));

-- Location: LCCOMB_X20_Y20_N10
\system_clk_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~36_combout\ = (\system_clk_divider|div_counter\(18) & (\system_clk_divider|Add0~35\ $ (GND))) # (!\system_clk_divider|div_counter\(18) & (!\system_clk_divider|Add0~35\ & VCC))
-- \system_clk_divider|Add0~37\ = CARRY((\system_clk_divider|div_counter\(18) & !\system_clk_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(18),
	datad => VCC,
	cin => \system_clk_divider|Add0~35\,
	combout => \system_clk_divider|Add0~36_combout\,
	cout => \system_clk_divider|Add0~37\);

-- Location: FF_X20_Y20_N11
\system_clk_divider|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~36_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(18));

-- Location: LCCOMB_X20_Y20_N12
\system_clk_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~38_combout\ = (\system_clk_divider|div_counter\(19) & (!\system_clk_divider|Add0~37\)) # (!\system_clk_divider|div_counter\(19) & ((\system_clk_divider|Add0~37\) # (GND)))
-- \system_clk_divider|Add0~39\ = CARRY((!\system_clk_divider|Add0~37\) # (!\system_clk_divider|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(19),
	datad => VCC,
	cin => \system_clk_divider|Add0~37\,
	combout => \system_clk_divider|Add0~38_combout\,
	cout => \system_clk_divider|Add0~39\);

-- Location: LCCOMB_X20_Y20_N26
\system_clk_divider|div_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~10_combout\ = (\system_clk_divider|Add0~38_combout\ & ((!\system_clk_divider|Equal0~7_combout\) # (!\system_clk_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Add0~38_combout\,
	datab => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Equal0~7_combout\,
	combout => \system_clk_divider|div_counter~10_combout\);

-- Location: FF_X20_Y20_N27
\system_clk_divider|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(19));

-- Location: LCCOMB_X20_Y20_N14
\system_clk_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~40_combout\ = (\system_clk_divider|div_counter\(20) & (\system_clk_divider|Add0~39\ $ (GND))) # (!\system_clk_divider|div_counter\(20) & (!\system_clk_divider|Add0~39\ & VCC))
-- \system_clk_divider|Add0~41\ = CARRY((\system_clk_divider|div_counter\(20) & !\system_clk_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_clk_divider|div_counter\(20),
	datad => VCC,
	cin => \system_clk_divider|Add0~39\,
	combout => \system_clk_divider|Add0~40_combout\,
	cout => \system_clk_divider|Add0~41\);

-- Location: LCCOMB_X20_Y20_N28
\system_clk_divider|div_counter~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~21_combout\ = (\system_clk_divider|Add0~40_combout\ & ((!\system_clk_divider|Equal0~7_combout\) # (!\system_clk_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~4_combout\,
	datac => \system_clk_divider|Add0~40_combout\,
	datad => \system_clk_divider|Equal0~7_combout\,
	combout => \system_clk_divider|div_counter~21_combout\);

-- Location: FF_X20_Y20_N29
\system_clk_divider|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(20));

-- Location: LCCOMB_X20_Y20_N16
\system_clk_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~42_combout\ = (\system_clk_divider|div_counter\(21) & (!\system_clk_divider|Add0~41\)) # (!\system_clk_divider|div_counter\(21) & ((\system_clk_divider|Add0~41\) # (GND)))
-- \system_clk_divider|Add0~43\ = CARRY((!\system_clk_divider|Add0~41\) # (!\system_clk_divider|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(21),
	datad => VCC,
	cin => \system_clk_divider|Add0~41\,
	combout => \system_clk_divider|Add0~42_combout\,
	cout => \system_clk_divider|Add0~43\);

-- Location: LCCOMB_X19_Y20_N14
\system_clk_divider|div_counter~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~20_combout\ = (\system_clk_divider|Add0~42_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Add0~42_combout\,
	combout => \system_clk_divider|div_counter~20_combout\);

-- Location: FF_X19_Y20_N15
\system_clk_divider|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(21));

-- Location: LCCOMB_X20_Y20_N18
\system_clk_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~44_combout\ = (\system_clk_divider|div_counter\(22) & (\system_clk_divider|Add0~43\ $ (GND))) # (!\system_clk_divider|div_counter\(22) & (!\system_clk_divider|Add0~43\ & VCC))
-- \system_clk_divider|Add0~45\ = CARRY((\system_clk_divider|div_counter\(22) & !\system_clk_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(22),
	datad => VCC,
	cin => \system_clk_divider|Add0~43\,
	combout => \system_clk_divider|Add0~44_combout\,
	cout => \system_clk_divider|Add0~45\);

-- Location: LCCOMB_X19_Y20_N16
\system_clk_divider|div_counter~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~19_combout\ = (\system_clk_divider|Add0~44_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Add0~44_combout\,
	combout => \system_clk_divider|div_counter~19_combout\);

-- Location: FF_X19_Y20_N17
\system_clk_divider|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(22));

-- Location: LCCOMB_X20_Y20_N20
\system_clk_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~46_combout\ = (\system_clk_divider|div_counter\(23) & (!\system_clk_divider|Add0~45\)) # (!\system_clk_divider|div_counter\(23) & ((\system_clk_divider|Add0~45\) # (GND)))
-- \system_clk_divider|Add0~47\ = CARRY((!\system_clk_divider|Add0~45\) # (!\system_clk_divider|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(23),
	datad => VCC,
	cin => \system_clk_divider|Add0~45\,
	combout => \system_clk_divider|Add0~46_combout\,
	cout => \system_clk_divider|Add0~47\);

-- Location: LCCOMB_X20_Y20_N30
\system_clk_divider|div_counter~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~18_combout\ = (\system_clk_divider|Add0~46_combout\ & ((!\system_clk_divider|Equal0~7_combout\) # (!\system_clk_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~4_combout\,
	datab => \system_clk_divider|Equal0~7_combout\,
	datad => \system_clk_divider|Add0~46_combout\,
	combout => \system_clk_divider|div_counter~18_combout\);

-- Location: FF_X20_Y20_N31
\system_clk_divider|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(23));

-- Location: LCCOMB_X20_Y20_N22
\system_clk_divider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~48_combout\ = (\system_clk_divider|div_counter\(24) & (\system_clk_divider|Add0~47\ $ (GND))) # (!\system_clk_divider|div_counter\(24) & (!\system_clk_divider|Add0~47\ & VCC))
-- \system_clk_divider|Add0~49\ = CARRY((\system_clk_divider|div_counter\(24) & !\system_clk_divider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(24),
	datad => VCC,
	cin => \system_clk_divider|Add0~47\,
	combout => \system_clk_divider|Add0~48_combout\,
	cout => \system_clk_divider|Add0~49\);

-- Location: FF_X20_Y20_N23
\system_clk_divider|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|Add0~48_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(24));

-- Location: LCCOMB_X19_Y20_N18
\system_clk_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~0_combout\ = (\system_clk_divider|div_counter\(22) & (\system_clk_divider|div_counter\(23) & (\system_clk_divider|div_counter\(25) & !\system_clk_divider|div_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(22),
	datab => \system_clk_divider|div_counter\(23),
	datac => \system_clk_divider|div_counter\(25),
	datad => \system_clk_divider|div_counter\(24),
	combout => \system_clk_divider|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y20_N20
\system_clk_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~2_combout\ = (\system_clk_divider|div_counter\(15) & (\system_clk_divider|div_counter\(17) & (\system_clk_divider|div_counter\(14) & !\system_clk_divider|div_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(15),
	datab => \system_clk_divider|div_counter\(17),
	datac => \system_clk_divider|div_counter\(14),
	datad => \system_clk_divider|div_counter\(16),
	combout => \system_clk_divider|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y20_N22
\system_clk_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~3_combout\ = (\system_clk_divider|div_counter\(13) & (\system_clk_divider|div_counter\(12) & (!\system_clk_divider|div_counter\(11) & !\system_clk_divider|div_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(13),
	datab => \system_clk_divider|div_counter\(12),
	datac => \system_clk_divider|div_counter\(11),
	datad => \system_clk_divider|div_counter\(10),
	combout => \system_clk_divider|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y20_N10
\system_clk_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~1_combout\ = (!\system_clk_divider|div_counter\(18) & (\system_clk_divider|div_counter\(20) & (\system_clk_divider|div_counter\(21) & \system_clk_divider|div_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(18),
	datab => \system_clk_divider|div_counter\(20),
	datac => \system_clk_divider|div_counter\(21),
	datad => \system_clk_divider|div_counter\(19),
	combout => \system_clk_divider|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y20_N12
\system_clk_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~4_combout\ = (\system_clk_divider|Equal0~0_combout\ & (\system_clk_divider|Equal0~2_combout\ & (\system_clk_divider|Equal0~3_combout\ & \system_clk_divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~0_combout\,
	datab => \system_clk_divider|Equal0~2_combout\,
	datac => \system_clk_divider|Equal0~3_combout\,
	datad => \system_clk_divider|Equal0~1_combout\,
	combout => \system_clk_divider|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y20_N0
\system_clk_divider|div_counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~16_combout\ = (\system_clk_divider|Add0~14_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	datad => \system_clk_divider|Add0~14_combout\,
	combout => \system_clk_divider|div_counter~16_combout\);

-- Location: FF_X19_Y20_N1
\system_clk_divider|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(7));

-- Location: LCCOMB_X20_Y21_N0
\system_clk_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~5_combout\ = (!\system_clk_divider|div_counter\(7) & (\system_clk_divider|div_counter\(6) & (!\system_clk_divider|div_counter\(8) & !\system_clk_divider|div_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(7),
	datab => \system_clk_divider|div_counter\(6),
	datac => \system_clk_divider|div_counter\(8),
	datad => \system_clk_divider|div_counter\(9),
	combout => \system_clk_divider|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y21_N4
\system_clk_divider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Equal0~7_combout\ = (\system_clk_divider|div_counter\(1) & (\system_clk_divider|Equal0~6_combout\ & (\system_clk_divider|div_counter\(0) & \system_clk_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|div_counter\(1),
	datab => \system_clk_divider|Equal0~6_combout\,
	datac => \system_clk_divider|div_counter\(0),
	datad => \system_clk_divider|Equal0~5_combout\,
	combout => \system_clk_divider|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y20_N24
\system_clk_divider|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|Add0~50_combout\ = \system_clk_divider|Add0~49\ $ (\system_clk_divider|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \system_clk_divider|div_counter\(25),
	cin => \system_clk_divider|Add0~49\,
	combout => \system_clk_divider|Add0~50_combout\);

-- Location: LCCOMB_X19_Y20_N30
\system_clk_divider|div_counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_clk_divider|div_counter~17_combout\ = (\system_clk_divider|Add0~50_combout\ & ((!\system_clk_divider|Equal0~4_combout\) # (!\system_clk_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_clk_divider|Equal0~7_combout\,
	datab => \system_clk_divider|Add0~50_combout\,
	datac => \system_clk_divider|Equal0~4_combout\,
	combout => \system_clk_divider|div_counter~17_combout\);

-- Location: FF_X19_Y20_N31
\system_clk_divider|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \system_clk_divider|div_counter~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_clk_divider|div_counter\(25));

-- Location: IOIBUF_X0_Y23_N15
\stop_button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop_button,
	o => \stop_button~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\start_button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_button,
	o => \start_button~input_o\);

-- Location: CLKCTRL_G14
\system_clk_divider|div_counter[25]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \system_clk_divider|div_counter[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \system_clk_divider|div_counter[25]~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y19_N14
\current_state.game_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.game_ready~0_combout\ = (\current_state.game_ready~q\) # (!\start_button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.game_ready~q\,
	datad => \start_button~input_o\,
	combout => \current_state.game_ready~0_combout\);

-- Location: FF_X15_Y19_N15
\current_state.game_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter[25]~clkctrl_outclk\,
	d => \current_state.game_ready~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.game_ready~q\);

-- Location: LCCOMB_X16_Y19_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\stop_button~input_o\ & ((\current_state.spinning~q\) # ((!\start_button~input_o\ & !\current_state.game_ready~q\)))) # (!\stop_button~input_o\ & (!\start_button~input_o\ & ((!\current_state.game_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_button~input_o\,
	datab => \start_button~input_o\,
	datac => \current_state.spinning~q\,
	datad => \current_state.game_ready~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X16_Y19_N25
\current_state.spinning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.spinning~q\);

-- Location: LCCOMB_X16_Y19_N18
\next_state.T0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.T0~0_combout\ = (!\stop_button~input_o\ & \current_state.spinning~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_button~input_o\,
	datad => \current_state.spinning~q\,
	combout => \next_state.T0~0_combout\);

-- Location: FF_X16_Y19_N19
\current_state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	d => \next_state.T0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T0~q\);

-- Location: FF_X16_Y19_N17
\current_state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T0~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T1~q\);

-- Location: FF_X16_Y19_N31
\current_state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T2~q\);

-- Location: FF_X16_Y19_N27
\current_state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T3~q\);

-- Location: FF_X16_Y19_N1
\current_state.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T3~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T4~q\);

-- Location: FF_X16_Y19_N9
\current_state.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T4~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T5~q\);

-- Location: LCCOMB_X16_Y19_N22
\WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (!\current_state.T2~q\ & (!\current_state.T4~q\ & (!\current_state.T3~q\ & !\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T4~q\,
	datac => \current_state.T3~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr9~0_combout\);

-- Location: FF_X16_Y19_N3
\current_state.T6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T5~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T6~q\);

-- Location: LCCOMB_X16_Y19_N14
\WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~1_combout\ = (!\current_state.T5~q\ & (\WideOr9~0_combout\ & !\current_state.T6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.T5~q\,
	datac => \WideOr9~0_combout\,
	datad => \current_state.T6~q\,
	combout => \WideOr9~1_combout\);

-- Location: LCCOMB_X16_Y19_N20
\WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (!\current_state.T3~q\ & (!\current_state.T4~q\ & (!\current_state.T5~q\ & !\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T3~q\,
	datab => \current_state.T4~q\,
	datac => \current_state.T5~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr11~0_combout\);

-- Location: FF_X16_Y19_N7
\current_state.T7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter\(25),
	asdata => \current_state.T6~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.T7~q\);

-- Location: LCCOMB_X16_Y19_N12
WideOr10 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = (!\current_state.T7~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.T7~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr10~combout\);

-- Location: LCCOMB_X16_Y19_N30
\div0|div_upper_bound[23]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[23]~0_combout\ = (!\current_state.spinning~q\ & !\current_state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.spinning~q\,
	datad => \current_state.T0~q\,
	combout => \div0|div_upper_bound[23]~0_combout\);

-- Location: LCCOMB_X16_Y19_N28
\WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (!\current_state.T2~q\ & (!\current_state.T1~q\ & (!\current_state.T7~q\ & !\current_state.spinning~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T1~q\,
	datac => \current_state.T7~q\,
	datad => \current_state.spinning~q\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X14_Y17_N24
\div0|div_upper_bound~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound~18_combout\ = (\div0|div_upper_bound[23]~0_combout\ & ((\WideOr11~0_combout\ & (\WideOr10~0_combout\ & !\WideOr9~1_combout\)) # (!\WideOr11~0_combout\ & (!\WideOr10~0_combout\ & \WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr10~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound~18_combout\);

-- Location: LCCOMB_X15_Y17_N20
\div0|div_upper_bound[17]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[17]~19_combout\ = (\WideOr11~0_combout\ & ((\WideOr10~combout\ & ((\div0|div_upper_bound~18_combout\))) # (!\WideOr10~combout\ & (!\WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr10~combout\,
	datad => \div0|div_upper_bound~18_combout\,
	combout => \div0|div_upper_bound[17]~19_combout\);

-- Location: LCCOMB_X15_Y17_N22
\div0|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~19_combout\ = \div0|div_counter\(17) $ (((!\current_state.spinning~q\ & ((\current_state.T0~q\) # (\div0|div_upper_bound[17]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T0~q\,
	datab => \div0|div_counter\(17),
	datac => \current_state.spinning~q\,
	datad => \div0|div_upper_bound[17]~19_combout\,
	combout => \div0|Equal0~19_combout\);

-- Location: LCCOMB_X15_Y19_N0
\div0|div_upper_bound[9]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[9]~15_combout\ = (\WideOr10~combout\ & ((\current_state.T0~q\) # ((!\WideOr11~0_combout\ & !\WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \current_state.T0~q\,
	datac => \WideOr9~1_combout\,
	datad => \WideOr10~combout\,
	combout => \div0|div_upper_bound[9]~15_combout\);

-- Location: LCCOMB_X15_Y18_N4
\div0|div_upper_bound~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound~16_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (\WideOr9~1_combout\ & (\WideOr11~0_combout\ $ (\WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr10~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound~16_combout\);

-- Location: LCCOMB_X15_Y18_N12
\div0|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~2_combout\ = (\WideOr10~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & (\WideOr11~0_combout\ & !\WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|Equal1~2_combout\);

-- Location: LCCOMB_X15_Y17_N0
\div0|div_upper_bound[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[9]~17_combout\ = (!\div0|div_upper_bound~16_combout\ & (!\div0|Equal1~2_combout\ & ((\WideOr10~combout\) # (\WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~combout\,
	datab => \WideOr9~1_combout\,
	datac => \div0|div_upper_bound~16_combout\,
	datad => \div0|Equal1~2_combout\,
	combout => \div0|div_upper_bound[9]~17_combout\);

-- Location: LCCOMB_X15_Y17_N14
\div0|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~18_combout\ = \div0|div_counter\(9) $ (((\current_state.spinning~q\) # ((\div0|div_upper_bound[9]~15_combout\) # (\div0|div_upper_bound[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \div0|div_counter\(9),
	datac => \div0|div_upper_bound[9]~15_combout\,
	datad => \div0|div_upper_bound[9]~17_combout\,
	combout => \div0|Equal0~18_combout\);

-- Location: LCCOMB_X15_Y17_N28
\div0|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~20_combout\ = \div0|div_counter\(15) $ (((!\WideOr9~1_combout\ & ((\WideOr10~combout\) # (!\WideOr11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(15),
	datab => \WideOr11~0_combout\,
	datac => \WideOr10~combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|Equal0~20_combout\);

-- Location: LCCOMB_X15_Y19_N26
\WideOr9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~2_combout\ = (!\current_state.T5~q\ & !\current_state.T6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.T5~q\,
	datad => \current_state.T6~q\,
	combout => \WideOr9~2_combout\);

-- Location: LCCOMB_X15_Y19_N16
\div0|div_upper_bound[16]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[16]~20_combout\ = (\div0|div_upper_bound[23]~0_combout\ & ((\WideOr10~0_combout\) # ((\WideOr9~2_combout\ & \WideOr9~0_combout\)))) # (!\div0|div_upper_bound[23]~0_combout\ & (((!\WideOr9~0_combout\) # (!\WideOr9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \WideOr9~2_combout\,
	datad => \WideOr9~0_combout\,
	combout => \div0|div_upper_bound[16]~20_combout\);

-- Location: LCCOMB_X15_Y17_N6
\div0|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~21_combout\ = (!\div0|Equal0~20_combout\ & (\div0|div_counter\(1) $ (((!\WideOr9~1_combout\ & !\div0|div_upper_bound[16]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \div0|Equal0~20_combout\,
	datac => \div0|div_upper_bound[16]~20_combout\,
	datad => \div0|div_counter\(1),
	combout => \div0|Equal0~21_combout\);

-- Location: LCCOMB_X15_Y17_N16
\div0|div_upper_bound[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[5]~21_combout\ = (\WideOr11~0_combout\ & (\WideOr9~1_combout\ & ((\current_state.spinning~q\) # (!\WideOr10~combout\)))) # (!\WideOr11~0_combout\ & (((\WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr10~combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[5]~21_combout\);

-- Location: LCCOMB_X15_Y18_N20
\div0|div_upper_bound[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[10]~12_combout\ = (\WideOr11~0_combout\ & ((\WideOr9~1_combout\ & ((\div0|div_upper_bound[23]~0_combout\))) # (!\WideOr9~1_combout\ & (\WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \WideOr10~combout\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[10]~12_combout\);

-- Location: LCCOMB_X15_Y18_N18
\div0|div_upper_bound[10]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[10]~13_combout\ = (\div0|div_upper_bound[10]~12_combout\) # ((\current_state.spinning~q\ & !\WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datac => \WideOr11~0_combout\,
	datad => \div0|div_upper_bound[10]~12_combout\,
	combout => \div0|div_upper_bound[10]~13_combout\);

-- Location: LCCOMB_X15_Y17_N10
\div0|div_upper_bound[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[5]~22_combout\ = (\div0|div_upper_bound[10]~13_combout\ & (!\div0|Equal1~2_combout\)) # (!\div0|div_upper_bound[10]~13_combout\ & ((\div0|div_upper_bound[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|Equal1~2_combout\,
	datac => \div0|div_upper_bound[5]~21_combout\,
	datad => \div0|div_upper_bound[10]~13_combout\,
	combout => \div0|div_upper_bound[5]~22_combout\);

-- Location: LCCOMB_X15_Y17_N8
\div0|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~22_combout\ = (\div0|Equal0~21_combout\ & (\div0|div_counter\(5) $ (!\div0|div_upper_bound[5]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~21_combout\,
	datac => \div0|div_counter\(5),
	datad => \div0|div_upper_bound[5]~22_combout\,
	combout => \div0|Equal0~22_combout\);

-- Location: LCCOMB_X15_Y18_N10
\div0|div_upper_bound[14]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[14]~11_combout\ = (\div0|div_upper_bound[23]~0_combout\ & ((\WideOr9~1_combout\) # ((!\WideOr11~0_combout\ & !\WideOr10~0_combout\)))) # (!\div0|div_upper_bound[23]~0_combout\ & ((\WideOr11~0_combout\) # ((!\WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr10~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[14]~11_combout\);

-- Location: LCCOMB_X15_Y18_N8
\div0|div_upper_bound[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[10]~14_combout\ = ((!\current_state.spinning~q\ & (\WideOr10~combout\ & \WideOr9~1_combout\))) # (!\WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr10~combout\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[10]~14_combout\);

-- Location: LCCOMB_X15_Y18_N2
\div0|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~16_combout\ = \div0|div_counter\(10) $ (((\div0|div_upper_bound[10]~13_combout\ & (\div0|Equal1~2_combout\)) # (!\div0|div_upper_bound[10]~13_combout\ & ((\div0|div_upper_bound[10]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~2_combout\,
	datab => \div0|div_counter\(10),
	datac => \div0|div_upper_bound[10]~14_combout\,
	datad => \div0|div_upper_bound[10]~13_combout\,
	combout => \div0|Equal0~16_combout\);

-- Location: LCCOMB_X15_Y18_N6
\div0|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~17_combout\ = (!\div0|Equal0~16_combout\ & (\div0|div_upper_bound[14]~11_combout\ $ (!\div0|div_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_upper_bound[14]~11_combout\,
	datac => \div0|div_counter\(14),
	datad => \div0|Equal0~16_combout\,
	combout => \div0|Equal0~17_combout\);

-- Location: LCCOMB_X15_Y17_N26
\div0|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~23_combout\ = (!\div0|Equal0~19_combout\ & (!\div0|Equal0~18_combout\ & (\div0|Equal0~22_combout\ & \div0|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~19_combout\,
	datab => \div0|Equal0~18_combout\,
	datac => \div0|Equal0~22_combout\,
	datad => \div0|Equal0~17_combout\,
	combout => \div0|Equal0~23_combout\);

-- Location: LCCOMB_X17_Y17_N30
\div0|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~1_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (\WideOr11~0_combout\ & (\WideOr9~1_combout\ & !\WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \WideOr10~0_combout\,
	combout => \div0|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y17_N8
\div0|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~3_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (!\WideOr11~0_combout\ & (!\WideOr9~1_combout\ & \WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \WideOr10~0_combout\,
	combout => \div0|Equal1~3_combout\);

-- Location: LCCOMB_X17_Y17_N4
\div0|div_upper_bound[20]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[20]~7_combout\ = (\div0|Equal1~3_combout\) # (\div0|Equal1~1_combout\ $ (((\WideOr11~0_combout\ & !\WideOr9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \WideOr9~1_combout\,
	datac => \div0|Equal1~1_combout\,
	datad => \div0|Equal1~3_combout\,
	combout => \div0|div_upper_bound[20]~7_combout\);

-- Location: LCCOMB_X17_Y17_N24
\div0|div_upper_bound[20]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[20]~5_combout\ = (\WideOr11~0_combout\ & (((!\WideOr9~1_combout\)))) # (!\WideOr11~0_combout\ & (!\WideOr10~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & \WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[20]~5_combout\);

-- Location: LCCOMB_X17_Y17_N12
\div0|div_upper_bound[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[20]~6_combout\ = (\WideOr9~1_combout\ & ((\div0|Equal1~3_combout\) # (\div0|Equal1~1_combout\ $ (\div0|div_upper_bound[20]~5_combout\)))) # (!\WideOr9~1_combout\ & (((\div0|div_upper_bound[20]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \div0|Equal1~3_combout\,
	datac => \div0|Equal1~1_combout\,
	datad => \div0|div_upper_bound[20]~5_combout\,
	combout => \div0|div_upper_bound[20]~6_combout\);

-- Location: LCCOMB_X17_Y17_N14
\div0|div_upper_bound[20]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[20]~8_combout\ = (\div0|div_upper_bound[23]~0_combout\ & ((\WideOr10~0_combout\ & (\div0|div_upper_bound[20]~7_combout\)) # (!\WideOr10~0_combout\ & ((\div0|div_upper_bound[20]~6_combout\))))) # (!\div0|div_upper_bound[23]~0_combout\ 
-- & (\WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \div0|div_upper_bound[20]~7_combout\,
	datad => \div0|div_upper_bound[20]~6_combout\,
	combout => \div0|div_upper_bound[20]~8_combout\);

-- Location: LCCOMB_X17_Y17_N20
\div0|div_upper_bound[12]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[12]~9_combout\ = (\WideOr9~1_combout\ & ((\div0|Equal1~3_combout\) # (\div0|Equal1~1_combout\ $ (\div0|div_upper_bound[20]~5_combout\)))) # (!\WideOr9~1_combout\ & (((!\div0|div_upper_bound[20]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \div0|Equal1~3_combout\,
	datac => \div0|Equal1~1_combout\,
	datad => \div0|div_upper_bound[20]~5_combout\,
	combout => \div0|div_upper_bound[12]~9_combout\);

-- Location: LCCOMB_X17_Y17_N6
\div0|div_upper_bound[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[12]~10_combout\ = (\div0|div_upper_bound[23]~0_combout\ & ((\WideOr10~0_combout\ & (\div0|div_upper_bound[20]~7_combout\)) # (!\WideOr10~0_combout\ & ((\div0|div_upper_bound[12]~9_combout\))))) # 
-- (!\div0|div_upper_bound[23]~0_combout\ & (\WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \div0|div_upper_bound[20]~7_combout\,
	datad => \div0|div_upper_bound[12]~9_combout\,
	combout => \div0|div_upper_bound[12]~10_combout\);

-- Location: LCCOMB_X17_Y17_N10
\div0|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~15_combout\ = (\div0|div_counter\(12) & (\div0|div_upper_bound[12]~10_combout\ & (\div0|div_counter\(20) $ (!\div0|div_upper_bound[20]~8_combout\)))) # (!\div0|div_counter\(12) & (!\div0|div_upper_bound[12]~10_combout\ & 
-- (\div0|div_counter\(20) $ (!\div0|div_upper_bound[20]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(12),
	datab => \div0|div_counter\(20),
	datac => \div0|div_upper_bound[20]~8_combout\,
	datad => \div0|div_upper_bound[12]~10_combout\,
	combout => \div0|Equal0~15_combout\);

-- Location: LCCOMB_X15_Y19_N24
\div0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~2_combout\ = (\current_state.T6~q\ & (!\current_state.T7~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\))) # (!\current_state.T6~q\ & ((\current_state.T7~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\)) # (!\current_state.T7~q\ & 
-- (\current_state.T2~q\ $ (\current_state.T1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T6~q\,
	datab => \current_state.T7~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T1~q\,
	combout => \div0|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y19_N30
\div0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~3_combout\ = (!\current_state.T5~q\ & (!\current_state.T3~q\ & (!\current_state.T4~q\ & \div0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T5~q\,
	datab => \current_state.T3~q\,
	datac => \current_state.T4~q\,
	datad => \div0|Equal0~2_combout\,
	combout => \div0|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y18_N0
\div0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~4_combout\ = (\WideOr11~0_combout\ & (!\div0|div_counter\(6) & (\div0|Equal0~3_combout\ $ (!\div0|div_counter\(13))))) # (!\WideOr11~0_combout\ & (\div0|div_counter\(6) & (\div0|Equal0~3_combout\ $ (!\div0|div_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \div0|div_counter\(6),
	datac => \div0|Equal0~3_combout\,
	datad => \div0|div_counter\(13),
	combout => \div0|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y19_N6
\div0|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~6_combout\ = (!\current_state.T5~q\ & (!\current_state.T6~q\ & ((\current_state.spinning~q\) # (\current_state.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T5~q\,
	datac => \current_state.T6~q\,
	datad => \current_state.T0~q\,
	combout => \div0|Equal1~6_combout\);

-- Location: LCCOMB_X16_Y19_N10
\div0|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~7_combout\ = (\div0|Equal1~6_combout\ & (\WideOr11~0_combout\ & (\WideOr9~0_combout\ & \WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~6_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr10~0_combout\,
	combout => \div0|Equal1~7_combout\);

-- Location: LCCOMB_X15_Y18_N30
\div0|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~8_combout\ = (!\WideOr10~0_combout\ & (!\div0|div_upper_bound[23]~0_combout\ & (\WideOr11~0_combout\ & \WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|Equal1~8_combout\);

-- Location: LCCOMB_X17_Y17_N16
\div0|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~5_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (!\WideOr11~0_combout\ & (!\WideOr9~1_combout\ & !\WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \WideOr10~0_combout\,
	combout => \div0|Equal1~5_combout\);

-- Location: LCCOMB_X16_Y18_N2
\div0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~5_combout\ = \div0|div_counter\(2) $ (((\div0|Equal1~7_combout\) # ((\div0|Equal1~8_combout\) # (!\div0|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(2),
	datab => \div0|Equal1~7_combout\,
	datac => \div0|Equal1~8_combout\,
	datad => \div0|Equal1~5_combout\,
	combout => \div0|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y18_N26
\div0|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~4_combout\ = (!\WideOr10~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & (\WideOr11~0_combout\ & !\WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|Equal1~4_combout\);

-- Location: LCCOMB_X15_Y18_N16
\div0|div_upper_bound[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[3]~3_combout\ = (\WideOr11~0_combout\ & (!\div0|div_upper_bound[23]~0_combout\ & (\WideOr10~0_combout\ & \WideOr9~1_combout\))) # (!\WideOr11~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & (!\WideOr10~0_combout\ & 
-- !\WideOr9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr10~0_combout\,
	datad => \WideOr9~1_combout\,
	combout => \div0|div_upper_bound[3]~3_combout\);

-- Location: LCCOMB_X15_Y18_N14
\div0|div_upper_bound[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[0]~4_combout\ = (\div0|Equal1~8_combout\) # ((\div0|div_upper_bound[3]~3_combout\ & (\div0|Equal1~7_combout\)) # (!\div0|div_upper_bound[3]~3_combout\ & ((!\div0|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~8_combout\,
	datab => \div0|Equal1~7_combout\,
	datac => \div0|Equal1~4_combout\,
	datad => \div0|div_upper_bound[3]~3_combout\,
	combout => \div0|div_upper_bound[0]~4_combout\);

-- Location: LCCOMB_X15_Y17_N12
\div0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~6_combout\ = (\div0|Equal0~4_combout\ & (!\div0|Equal0~5_combout\ & (\div0|div_counter\(0) $ (!\div0|div_upper_bound[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~4_combout\,
	datab => \div0|Equal0~5_combout\,
	datac => \div0|div_counter\(0),
	datad => \div0|div_upper_bound[0]~4_combout\,
	combout => \div0|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y18_N4
\WideOr11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr11~1_combout\ = (!\current_state.T3~q\ & (!\current_state.T4~q\ & !\current_state.T5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T3~q\,
	datac => \current_state.T4~q\,
	datad => \current_state.T5~q\,
	combout => \WideOr11~1_combout\);

-- Location: LCCOMB_X15_Y18_N24
\div0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~7_combout\ = \div0|div_counter\(3) $ ((((\div0|Equal1~8_combout\) # (\div0|div_upper_bound[3]~3_combout\)) # (!\div0|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~4_combout\,
	datab => \div0|div_counter\(3),
	datac => \div0|Equal1~8_combout\,
	datad => \div0|div_upper_bound[3]~3_combout\,
	combout => \div0|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y18_N22
\div0|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~8_combout\ = (!\div0|Equal0~7_combout\ & (\div0|div_counter\(11) $ (((!\WideOr11~1_combout\ & \div0|div_upper_bound[23]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~1_combout\,
	datab => \div0|div_counter\(11),
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \div0|Equal0~7_combout\,
	combout => \div0|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y17_N18
\div0|div_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[22]~70_combout\ = (\div0|div_counter\(22) & (\div0|div_counter[21]~69\ $ (GND))) # (!\div0|div_counter\(22) & (!\div0|div_counter[21]~69\ & VCC))
-- \div0|div_counter[22]~71\ = CARRY((\div0|div_counter\(22) & !\div0|div_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(22),
	datad => VCC,
	cin => \div0|div_counter[21]~69\,
	combout => \div0|div_counter[22]~70_combout\,
	cout => \div0|div_counter[22]~71\);

-- Location: LCCOMB_X16_Y17_N20
\div0|div_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[23]~72_combout\ = (\div0|div_counter\(23) & (!\div0|div_counter[22]~71\)) # (!\div0|div_counter\(23) & ((\div0|div_counter[22]~71\) # (GND)))
-- \div0|div_counter[23]~73\ = CARRY((!\div0|div_counter[22]~71\) # (!\div0|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(23),
	datad => VCC,
	cin => \div0|div_counter[22]~71\,
	combout => \div0|div_counter[23]~72_combout\,
	cout => \div0|div_counter[23]~73\);

-- Location: FF_X16_Y17_N21
\div0|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div0|div_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(23));

-- Location: LCCOMB_X15_Y19_N12
\div0|div_upper_bound[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[23]~1_combout\ = (!\current_state.T7~q\ & (!\current_state.T2~q\ & (\div0|div_upper_bound[23]~0_combout\ & !\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T7~q\,
	datab => \current_state.T2~q\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \current_state.T1~q\,
	combout => \div0|div_upper_bound[23]~1_combout\);

-- Location: LCCOMB_X15_Y19_N2
\div0|div_upper_bound[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[23]~2_combout\ = (\div0|div_upper_bound[23]~1_combout\ & (((\WideOr10~0_combout\ & !\WideOr9~1_combout\)) # (!\WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \div0|div_upper_bound[23]~1_combout\,
	combout => \div0|div_upper_bound[23]~2_combout\);

-- Location: LCCOMB_X16_Y17_N28
\div0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~0_combout\ = \div0|div_counter\(22) $ (((\WideOr9~1_combout\) # ((!\div0|div_upper_bound[23]~0_combout\) # (!\WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \WideOr10~0_combout\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \div0|div_counter\(22),
	combout => \div0|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\div0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~1_combout\ = (!\div0|Equal0~0_combout\ & (\div0|div_counter\(23) $ (!\div0|div_upper_bound[23]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(23),
	datac => \div0|div_upper_bound[23]~2_combout\,
	datad => \div0|Equal0~0_combout\,
	combout => \div0|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y17_N22
\div0|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~9_combout\ = \div0|div_counter\(18) $ (((\current_state.T5~q\) # ((\current_state.T4~q\) # (\current_state.T3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T5~q\,
	datab => \current_state.T4~q\,
	datac => \current_state.T3~q\,
	datad => \div0|div_counter\(18),
	combout => \div0|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y17_N22
\div0|div_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[24]~74_combout\ = (\div0|div_counter\(24) & (\div0|div_counter[23]~73\ $ (GND))) # (!\div0|div_counter\(24) & (!\div0|div_counter[23]~73\ & VCC))
-- \div0|div_counter[24]~75\ = CARRY((\div0|div_counter\(24) & !\div0|div_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(24),
	datad => VCC,
	cin => \div0|div_counter[23]~73\,
	combout => \div0|div_counter[24]~74_combout\,
	cout => \div0|div_counter[24]~75\);

-- Location: FF_X16_Y17_N23
\div0|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div0|div_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(24));

-- Location: LCCOMB_X16_Y17_N24
\div0|div_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[25]~76_combout\ = \div0|div_counter[24]~75\ $ (\div0|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div0|div_counter\(25),
	cin => \div0|div_counter[24]~75\,
	combout => \div0|div_counter[25]~76_combout\);

-- Location: FF_X16_Y17_N25
\div0|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(25));

-- Location: LCCOMB_X17_Y17_N2
\div0|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~11_combout\ = (\div0|div_counter\(19) & !\div0|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div0|div_counter\(19),
	datad => \div0|div_counter\(25),
	combout => \div0|Equal0~11_combout\);

-- Location: LCCOMB_X17_Y17_N26
\div0|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~10_combout\ = (\div0|Equal1~1_combout\ & (\div0|div_counter\(24) & (\div0|Equal1~5_combout\ $ (!\div0|div_counter\(7))))) # (!\div0|Equal1~1_combout\ & (!\div0|div_counter\(24) & (\div0|Equal1~5_combout\ $ (!\div0|div_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~1_combout\,
	datab => \div0|Equal1~5_combout\,
	datac => \div0|div_counter\(7),
	datad => \div0|div_counter\(24),
	combout => \div0|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y17_N28
\div0|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~12_combout\ = \div0|div_counter\(4) $ (((\div0|Equal1~8_combout\) # ((!\div0|Equal1~7_combout\ & !\div0|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~7_combout\,
	datab => \div0|Equal1~5_combout\,
	datac => \div0|Equal1~8_combout\,
	datad => \div0|div_counter\(4),
	combout => \div0|Equal0~12_combout\);

-- Location: LCCOMB_X17_Y17_N18
\div0|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~13_combout\ = (\div0|Equal0~9_combout\ & (\div0|Equal0~11_combout\ & (\div0|Equal0~10_combout\ & !\div0|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~9_combout\,
	datab => \div0|Equal0~11_combout\,
	datac => \div0|Equal0~10_combout\,
	datad => \div0|Equal0~12_combout\,
	combout => \div0|Equal0~13_combout\);

-- Location: LCCOMB_X15_Y17_N30
\div0|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~14_combout\ = (\div0|Equal0~6_combout\ & (\div0|Equal0~8_combout\ & (\div0|Equal0~1_combout\ & \div0|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~6_combout\,
	datab => \div0|Equal0~8_combout\,
	datac => \div0|Equal0~1_combout\,
	datad => \div0|Equal0~13_combout\,
	combout => \div0|Equal0~14_combout\);

-- Location: LCCOMB_X15_Y19_N8
\div0|div_upper_bound[16]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[16]~25_combout\ = (\WideOr10~0_combout\ & (((\WideOr9~1_combout\ & !\div0|div_upper_bound[23]~0_combout\)))) # (!\WideOr10~0_combout\ & (\WideOr11~0_combout\ & (!\WideOr9~1_combout\ & \div0|div_upper_bound[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \WideOr10~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \div0|div_upper_bound[23]~0_combout\,
	combout => \div0|div_upper_bound[16]~25_combout\);

-- Location: LCCOMB_X16_Y17_N26
\div0|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~24_combout\ = \div0|div_counter\(16) $ (((\div0|div_upper_bound[16]~25_combout\) # ((\div0|Equal1~1_combout\ & \div0|div_upper_bound[16]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~1_combout\,
	datab => \div0|div_counter\(16),
	datac => \div0|div_upper_bound[16]~20_combout\,
	datad => \div0|div_upper_bound[16]~25_combout\,
	combout => \div0|Equal0~24_combout\);

-- Location: LCCOMB_X15_Y19_N22
\div0|div_upper_bound[21]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[21]~23_combout\ = (\WideOr11~0_combout\ & (((!\WideOr9~0_combout\)) # (!\WideOr9~2_combout\))) # (!\WideOr11~0_combout\ & (((!\WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~2_combout\,
	datab => \WideOr10~combout\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr9~0_combout\,
	combout => \div0|div_upper_bound[21]~23_combout\);

-- Location: LCCOMB_X15_Y17_N4
\div0|div_upper_bound[21]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[21]~24_combout\ = (\div0|div_upper_bound[10]~13_combout\ & (\div0|Equal1~1_combout\ $ ((\div0|div_upper_bound~18_combout\)))) # (!\div0|div_upper_bound[10]~13_combout\ & (((\div0|div_upper_bound[21]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal1~1_combout\,
	datab => \div0|div_upper_bound~18_combout\,
	datac => \div0|div_upper_bound[21]~23_combout\,
	datad => \div0|div_upper_bound[10]~13_combout\,
	combout => \div0|div_upper_bound[21]~24_combout\);

-- Location: LCCOMB_X15_Y18_N0
\div0|div_upper_bound[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[9]~26_combout\ = (!\div0|div_upper_bound~16_combout\ & !\div0|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div0|div_upper_bound~16_combout\,
	datad => \div0|Equal1~2_combout\,
	combout => \div0|div_upper_bound[9]~26_combout\);

-- Location: LCCOMB_X15_Y18_N28
\div0|div_upper_bound[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_upper_bound[8]~27_combout\ = (\WideOr9~1_combout\ & (((\div0|div_upper_bound[9]~26_combout\)))) # (!\WideOr9~1_combout\ & ((\WideOr10~combout\ & (\WideOr11~0_combout\ & \div0|div_upper_bound[9]~26_combout\)) # (!\WideOr10~combout\ & 
-- (!\WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~1_combout\,
	datab => \WideOr10~combout\,
	datac => \WideOr11~0_combout\,
	datad => \div0|div_upper_bound[9]~26_combout\,
	combout => \div0|div_upper_bound[8]~27_combout\);

-- Location: LCCOMB_X15_Y17_N18
\div0|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~25_combout\ = \div0|div_counter\(8) $ (((\current_state.spinning~q\) # ((!\current_state.T0~q\ & \div0|div_upper_bound[8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(8),
	datab => \current_state.T0~q\,
	datac => \current_state.spinning~q\,
	datad => \div0|div_upper_bound[8]~27_combout\,
	combout => \div0|Equal0~25_combout\);

-- Location: LCCOMB_X15_Y17_N24
\div0|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~26_combout\ = (!\div0|Equal0~24_combout\ & (!\div0|Equal0~25_combout\ & (\div0|div_counter\(21) $ (!\div0|div_upper_bound[21]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(21),
	datab => \div0|Equal0~24_combout\,
	datac => \div0|div_upper_bound[21]~24_combout\,
	datad => \div0|Equal0~25_combout\,
	combout => \div0|Equal0~26_combout\);

-- Location: LCCOMB_X15_Y17_N2
\div0|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal0~27_combout\ = (\div0|Equal0~23_combout\ & (\div0|Equal0~15_combout\ & (\div0|Equal0~14_combout\ & \div0|Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|Equal0~23_combout\,
	datab => \div0|Equal0~15_combout\,
	datac => \div0|Equal0~14_combout\,
	datad => \div0|Equal0~26_combout\,
	combout => \div0|Equal0~27_combout\);

-- Location: FF_X16_Y18_N7
\div0|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(0));

-- Location: LCCOMB_X16_Y18_N8
\div0|div_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[1]~28_combout\ = (\div0|div_counter\(1) & (!\div0|div_counter[0]~27\)) # (!\div0|div_counter\(1) & ((\div0|div_counter[0]~27\) # (GND)))
-- \div0|div_counter[1]~29\ = CARRY((!\div0|div_counter[0]~27\) # (!\div0|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(1),
	datad => VCC,
	cin => \div0|div_counter[0]~27\,
	combout => \div0|div_counter[1]~28_combout\,
	cout => \div0|div_counter[1]~29\);

-- Location: FF_X16_Y18_N9
\div0|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(1));

-- Location: LCCOMB_X16_Y18_N10
\div0|div_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[2]~30_combout\ = (\div0|div_counter\(2) & (\div0|div_counter[1]~29\ $ (GND))) # (!\div0|div_counter\(2) & (!\div0|div_counter[1]~29\ & VCC))
-- \div0|div_counter[2]~31\ = CARRY((\div0|div_counter\(2) & !\div0|div_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(2),
	datad => VCC,
	cin => \div0|div_counter[1]~29\,
	combout => \div0|div_counter[2]~30_combout\,
	cout => \div0|div_counter[2]~31\);

-- Location: FF_X16_Y18_N11
\div0|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(2));

-- Location: LCCOMB_X16_Y18_N12
\div0|div_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[3]~32_combout\ = (\div0|div_counter\(3) & (!\div0|div_counter[2]~31\)) # (!\div0|div_counter\(3) & ((\div0|div_counter[2]~31\) # (GND)))
-- \div0|div_counter[3]~33\ = CARRY((!\div0|div_counter[2]~31\) # (!\div0|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(3),
	datad => VCC,
	cin => \div0|div_counter[2]~31\,
	combout => \div0|div_counter[3]~32_combout\,
	cout => \div0|div_counter[3]~33\);

-- Location: FF_X16_Y18_N13
\div0|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(3));

-- Location: LCCOMB_X16_Y18_N14
\div0|div_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[4]~34_combout\ = (\div0|div_counter\(4) & (\div0|div_counter[3]~33\ $ (GND))) # (!\div0|div_counter\(4) & (!\div0|div_counter[3]~33\ & VCC))
-- \div0|div_counter[4]~35\ = CARRY((\div0|div_counter\(4) & !\div0|div_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(4),
	datad => VCC,
	cin => \div0|div_counter[3]~33\,
	combout => \div0|div_counter[4]~34_combout\,
	cout => \div0|div_counter[4]~35\);

-- Location: FF_X16_Y18_N15
\div0|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(4));

-- Location: LCCOMB_X16_Y18_N16
\div0|div_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[5]~36_combout\ = (\div0|div_counter\(5) & (!\div0|div_counter[4]~35\)) # (!\div0|div_counter\(5) & ((\div0|div_counter[4]~35\) # (GND)))
-- \div0|div_counter[5]~37\ = CARRY((!\div0|div_counter[4]~35\) # (!\div0|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(5),
	datad => VCC,
	cin => \div0|div_counter[4]~35\,
	combout => \div0|div_counter[5]~36_combout\,
	cout => \div0|div_counter[5]~37\);

-- Location: FF_X16_Y18_N17
\div0|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(5));

-- Location: LCCOMB_X16_Y18_N18
\div0|div_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[6]~38_combout\ = (\div0|div_counter\(6) & (\div0|div_counter[5]~37\ $ (GND))) # (!\div0|div_counter\(6) & (!\div0|div_counter[5]~37\ & VCC))
-- \div0|div_counter[6]~39\ = CARRY((\div0|div_counter\(6) & !\div0|div_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(6),
	datad => VCC,
	cin => \div0|div_counter[5]~37\,
	combout => \div0|div_counter[6]~38_combout\,
	cout => \div0|div_counter[6]~39\);

-- Location: FF_X16_Y18_N19
\div0|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(6));

-- Location: LCCOMB_X16_Y18_N20
\div0|div_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[7]~40_combout\ = (\div0|div_counter\(7) & (!\div0|div_counter[6]~39\)) # (!\div0|div_counter\(7) & ((\div0|div_counter[6]~39\) # (GND)))
-- \div0|div_counter[7]~41\ = CARRY((!\div0|div_counter[6]~39\) # (!\div0|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(7),
	datad => VCC,
	cin => \div0|div_counter[6]~39\,
	combout => \div0|div_counter[7]~40_combout\,
	cout => \div0|div_counter[7]~41\);

-- Location: FF_X16_Y18_N21
\div0|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(7));

-- Location: LCCOMB_X16_Y18_N22
\div0|div_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[8]~42_combout\ = (\div0|div_counter\(8) & (\div0|div_counter[7]~41\ $ (GND))) # (!\div0|div_counter\(8) & (!\div0|div_counter[7]~41\ & VCC))
-- \div0|div_counter[8]~43\ = CARRY((\div0|div_counter\(8) & !\div0|div_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(8),
	datad => VCC,
	cin => \div0|div_counter[7]~41\,
	combout => \div0|div_counter[8]~42_combout\,
	cout => \div0|div_counter[8]~43\);

-- Location: FF_X16_Y18_N23
\div0|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(8));

-- Location: LCCOMB_X16_Y18_N24
\div0|div_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[9]~44_combout\ = (\div0|div_counter\(9) & (!\div0|div_counter[8]~43\)) # (!\div0|div_counter\(9) & ((\div0|div_counter[8]~43\) # (GND)))
-- \div0|div_counter[9]~45\ = CARRY((!\div0|div_counter[8]~43\) # (!\div0|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(9),
	datad => VCC,
	cin => \div0|div_counter[8]~43\,
	combout => \div0|div_counter[9]~44_combout\,
	cout => \div0|div_counter[9]~45\);

-- Location: FF_X16_Y18_N25
\div0|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(9));

-- Location: LCCOMB_X16_Y18_N26
\div0|div_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[10]~46_combout\ = (\div0|div_counter\(10) & (\div0|div_counter[9]~45\ $ (GND))) # (!\div0|div_counter\(10) & (!\div0|div_counter[9]~45\ & VCC))
-- \div0|div_counter[10]~47\ = CARRY((\div0|div_counter\(10) & !\div0|div_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(10),
	datad => VCC,
	cin => \div0|div_counter[9]~45\,
	combout => \div0|div_counter[10]~46_combout\,
	cout => \div0|div_counter[10]~47\);

-- Location: FF_X16_Y18_N27
\div0|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(10));

-- Location: LCCOMB_X16_Y18_N28
\div0|div_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[11]~48_combout\ = (\div0|div_counter\(11) & (!\div0|div_counter[10]~47\)) # (!\div0|div_counter\(11) & ((\div0|div_counter[10]~47\) # (GND)))
-- \div0|div_counter[11]~49\ = CARRY((!\div0|div_counter[10]~47\) # (!\div0|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(11),
	datad => VCC,
	cin => \div0|div_counter[10]~47\,
	combout => \div0|div_counter[11]~48_combout\,
	cout => \div0|div_counter[11]~49\);

-- Location: FF_X16_Y18_N29
\div0|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(11));

-- Location: LCCOMB_X16_Y18_N30
\div0|div_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[12]~50_combout\ = (\div0|div_counter\(12) & (\div0|div_counter[11]~49\ $ (GND))) # (!\div0|div_counter\(12) & (!\div0|div_counter[11]~49\ & VCC))
-- \div0|div_counter[12]~51\ = CARRY((\div0|div_counter\(12) & !\div0|div_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(12),
	datad => VCC,
	cin => \div0|div_counter[11]~49\,
	combout => \div0|div_counter[12]~50_combout\,
	cout => \div0|div_counter[12]~51\);

-- Location: FF_X16_Y18_N31
\div0|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(12));

-- Location: LCCOMB_X16_Y17_N0
\div0|div_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[13]~52_combout\ = (\div0|div_counter\(13) & (!\div0|div_counter[12]~51\)) # (!\div0|div_counter\(13) & ((\div0|div_counter[12]~51\) # (GND)))
-- \div0|div_counter[13]~53\ = CARRY((!\div0|div_counter[12]~51\) # (!\div0|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(13),
	datad => VCC,
	cin => \div0|div_counter[12]~51\,
	combout => \div0|div_counter[13]~52_combout\,
	cout => \div0|div_counter[13]~53\);

-- Location: FF_X16_Y17_N1
\div0|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(13));

-- Location: LCCOMB_X16_Y17_N2
\div0|div_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[14]~54_combout\ = (\div0|div_counter\(14) & (\div0|div_counter[13]~53\ $ (GND))) # (!\div0|div_counter\(14) & (!\div0|div_counter[13]~53\ & VCC))
-- \div0|div_counter[14]~55\ = CARRY((\div0|div_counter\(14) & !\div0|div_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(14),
	datad => VCC,
	cin => \div0|div_counter[13]~53\,
	combout => \div0|div_counter[14]~54_combout\,
	cout => \div0|div_counter[14]~55\);

-- Location: FF_X16_Y17_N3
\div0|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(14));

-- Location: LCCOMB_X16_Y17_N4
\div0|div_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[15]~56_combout\ = (\div0|div_counter\(15) & (!\div0|div_counter[14]~55\)) # (!\div0|div_counter\(15) & ((\div0|div_counter[14]~55\) # (GND)))
-- \div0|div_counter[15]~57\ = CARRY((!\div0|div_counter[14]~55\) # (!\div0|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(15),
	datad => VCC,
	cin => \div0|div_counter[14]~55\,
	combout => \div0|div_counter[15]~56_combout\,
	cout => \div0|div_counter[15]~57\);

-- Location: FF_X16_Y17_N5
\div0|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(15));

-- Location: LCCOMB_X16_Y17_N6
\div0|div_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[16]~58_combout\ = (\div0|div_counter\(16) & (\div0|div_counter[15]~57\ $ (GND))) # (!\div0|div_counter\(16) & (!\div0|div_counter[15]~57\ & VCC))
-- \div0|div_counter[16]~59\ = CARRY((\div0|div_counter\(16) & !\div0|div_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(16),
	datad => VCC,
	cin => \div0|div_counter[15]~57\,
	combout => \div0|div_counter[16]~58_combout\,
	cout => \div0|div_counter[16]~59\);

-- Location: FF_X16_Y17_N7
\div0|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(16));

-- Location: LCCOMB_X16_Y17_N8
\div0|div_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[17]~60_combout\ = (\div0|div_counter\(17) & (!\div0|div_counter[16]~59\)) # (!\div0|div_counter\(17) & ((\div0|div_counter[16]~59\) # (GND)))
-- \div0|div_counter[17]~61\ = CARRY((!\div0|div_counter[16]~59\) # (!\div0|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(17),
	datad => VCC,
	cin => \div0|div_counter[16]~59\,
	combout => \div0|div_counter[17]~60_combout\,
	cout => \div0|div_counter[17]~61\);

-- Location: FF_X16_Y17_N9
\div0|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(17));

-- Location: LCCOMB_X16_Y17_N10
\div0|div_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[18]~62_combout\ = (\div0|div_counter\(18) & (\div0|div_counter[17]~61\ $ (GND))) # (!\div0|div_counter\(18) & (!\div0|div_counter[17]~61\ & VCC))
-- \div0|div_counter[18]~63\ = CARRY((\div0|div_counter\(18) & !\div0|div_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(18),
	datad => VCC,
	cin => \div0|div_counter[17]~61\,
	combout => \div0|div_counter[18]~62_combout\,
	cout => \div0|div_counter[18]~63\);

-- Location: FF_X16_Y17_N11
\div0|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(18));

-- Location: LCCOMB_X16_Y17_N12
\div0|div_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[19]~64_combout\ = (\div0|div_counter\(19) & (!\div0|div_counter[18]~63\)) # (!\div0|div_counter\(19) & ((\div0|div_counter[18]~63\) # (GND)))
-- \div0|div_counter[19]~65\ = CARRY((!\div0|div_counter[18]~63\) # (!\div0|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(19),
	datad => VCC,
	cin => \div0|div_counter[18]~63\,
	combout => \div0|div_counter[19]~64_combout\,
	cout => \div0|div_counter[19]~65\);

-- Location: FF_X16_Y17_N13
\div0|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(19));

-- Location: LCCOMB_X16_Y17_N14
\div0|div_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[20]~66_combout\ = (\div0|div_counter\(20) & (\div0|div_counter[19]~65\ $ (GND))) # (!\div0|div_counter\(20) & (!\div0|div_counter[19]~65\ & VCC))
-- \div0|div_counter[20]~67\ = CARRY((\div0|div_counter\(20) & !\div0|div_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(20),
	datad => VCC,
	cin => \div0|div_counter[19]~65\,
	combout => \div0|div_counter[20]~66_combout\,
	cout => \div0|div_counter[20]~67\);

-- Location: FF_X16_Y17_N15
\div0|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(20));

-- Location: LCCOMB_X16_Y17_N16
\div0|div_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|div_counter[21]~68_combout\ = (\div0|div_counter\(21) & (!\div0|div_counter[20]~67\)) # (!\div0|div_counter\(21) & ((\div0|div_counter[20]~67\) # (GND)))
-- \div0|div_counter[21]~69\ = CARRY((!\div0|div_counter[20]~67\) # (!\div0|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(21),
	datad => VCC,
	cin => \div0|div_counter[20]~67\,
	combout => \div0|div_counter[21]~68_combout\,
	cout => \div0|div_counter[21]~69\);

-- Location: FF_X16_Y17_N17
\div0|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(21));

-- Location: FF_X16_Y17_N19
\div0|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div0|div_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \div0|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div0|div_counter\(22));

-- Location: LCCOMB_X17_Y18_N14
\div0|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|Equal1~0_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (\WideOr11~0_combout\ & (\WideOr9~1_combout\ & \WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \WideOr9~1_combout\,
	datad => \WideOr10~0_combout\,
	combout => \div0|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y18_N30
\div0|divided_clk~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~9_combout\ = (!\div0|Equal1~0_combout\ & \div0|div_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div0|Equal1~0_combout\,
	datad => \div0|div_counter\(22),
	combout => \div0|divided_clk~9_combout\);

-- Location: LCCOMB_X17_Y17_N0
\div0|divided_clk~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~7_combout\ = (\div0|Equal1~1_combout\ & ((!\div0|div_counter\(24)))) # (!\div0|Equal1~1_combout\ & (!\div0|divided_clk~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|divided_clk~9_combout\,
	datac => \div0|Equal1~1_combout\,
	datad => \div0|div_counter\(24),
	combout => \div0|divided_clk~7_combout\);

-- Location: LCCOMB_X17_Y18_N4
\div0|divided_clk~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~5_combout\ = (\div0|Equal1~2_combout\ & (\div0|div_counter\(23))) # (!\div0|Equal1~2_combout\ & ((!\div0|divided_clk~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(23),
	datac => \div0|Equal1~2_combout\,
	datad => \div0|divided_clk~7_combout\,
	combout => \div0|divided_clk~5_combout\);

-- Location: LCCOMB_X17_Y18_N18
\div0|divided_clk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~4_combout\ = (\div0|Equal1~3_combout\ & (!\div0|div_counter\(23))) # (!\div0|Equal1~3_combout\ & ((!\div0|divided_clk~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_counter\(23),
	datac => \div0|divided_clk~5_combout\,
	datad => \div0|Equal1~3_combout\,
	combout => \div0|divided_clk~4_combout\);

-- Location: LCCOMB_X17_Y18_N26
\div0|divided_clk~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~3_combout\ = (\div0|Equal1~4_combout\ & (!\div0|div_counter\(22))) # (!\div0|Equal1~4_combout\ & ((\div0|divided_clk~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(22),
	datac => \div0|Equal1~4_combout\,
	datad => \div0|divided_clk~4_combout\,
	combout => \div0|divided_clk~3_combout\);

-- Location: LCCOMB_X17_Y18_N10
\div0|divided_clk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~2_combout\ = (\div0|Equal1~5_combout\ & (\div0|div_counter\(22))) # (!\div0|Equal1~5_combout\ & ((!\div0|divided_clk~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(22),
	datac => \div0|divided_clk~3_combout\,
	datad => \div0|Equal1~5_combout\,
	combout => \div0|divided_clk~2_combout\);

-- Location: LCCOMB_X17_Y18_N12
\div0|divided_clk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~1_combout\ = (\div0|Equal1~7_combout\ & (!\div0|div_counter\(22))) # (!\div0|Equal1~7_combout\ & ((!\div0|divided_clk~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(22),
	datac => \div0|Equal1~7_combout\,
	datad => \div0|divided_clk~2_combout\,
	combout => \div0|divided_clk~1_combout\);

-- Location: LCCOMB_X17_Y18_N2
\div0|divided_clk\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div0|divided_clk~combout\ = LCELL((\div0|Equal1~8_combout\ & (\div0|div_counter\(22))) # (!\div0|Equal1~8_combout\ & ((!\div0|divided_clk~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div0|div_counter\(22),
	datac => \div0|Equal1~8_combout\,
	datad => \div0|divided_clk~1_combout\,
	combout => \div0|divided_clk~combout\);

-- Location: CLKCTRL_G17
\div0|divided_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div0|divided_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div0|divided_clk~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\up_down_switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down_switch(0),
	o => \up_down_switch[0]~input_o\);

-- Location: LCCOMB_X27_Y28_N24
\counter0|num_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out[0]~6_combout\ = !\counter0|num_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|num_out\(0),
	combout => \counter0|num_out[0]~6_combout\);

-- Location: FF_X27_Y28_N25
\counter0|num_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div0|divided_clk~clkctrl_outclk\,
	d => \counter0|num_out[0]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|num_out\(0));

-- Location: LCCOMB_X27_Y28_N12
\counter0|num_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~0_combout\ = (\up_down_switch[0]~input_o\ & ((!\counter0|num_out\(0)) # (!\counter0|num_out\(1)))) # (!\up_down_switch[0]~input_o\ & ((\counter0|num_out\(1)) # (\counter0|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[0]~input_o\,
	datac => \counter0|num_out\(1),
	datad => \counter0|num_out\(0),
	combout => \counter0|num_out~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\counter0|num_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~1_combout\ = (\counter0|num_out\(2) & (((\counter0|num_out~0_combout\)))) # (!\counter0|num_out\(2) & (!\counter0|num_out~0_combout\ & ((\counter0|num_out\(3)) # (\counter0|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(0),
	datac => \counter0|num_out\(2),
	datad => \counter0|num_out~0_combout\,
	combout => \counter0|num_out~1_combout\);

-- Location: FF_X27_Y28_N9
\counter0|num_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div0|divided_clk~clkctrl_outclk\,
	d => \counter0|num_out~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|num_out\(2));

-- Location: LCCOMB_X27_Y28_N18
\counter0|num_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~2_combout\ = (!\counter0|num_out\(2) & !\counter0|num_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|num_out\(2),
	datad => \counter0|num_out\(3),
	combout => \counter0|num_out~2_combout\);

-- Location: LCCOMB_X27_Y28_N30
\counter0|num_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~3_combout\ = (\counter0|num_out\(1) & (\up_down_switch[0]~input_o\ $ ((\counter0|num_out\(0))))) # (!\counter0|num_out\(1) & (!\counter0|num_out~2_combout\ & (\up_down_switch[0]~input_o\ $ (!\counter0|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[0]~input_o\,
	datab => \counter0|num_out\(0),
	datac => \counter0|num_out\(1),
	datad => \counter0|num_out~2_combout\,
	combout => \counter0|num_out~3_combout\);

-- Location: FF_X27_Y28_N31
\counter0|num_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div0|divided_clk~clkctrl_outclk\,
	d => \counter0|num_out~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|num_out\(1));

-- Location: LCCOMB_X27_Y28_N16
\counter0|num_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~4_combout\ = (\up_down_switch[0]~input_o\ & ((!\counter0|num_out\(0)) # (!\counter0|num_out\(2)))) # (!\up_down_switch[0]~input_o\ & ((\counter0|num_out\(2)) # (\counter0|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[0]~input_o\,
	datac => \counter0|num_out\(2),
	datad => \counter0|num_out\(0),
	combout => \counter0|num_out~4_combout\);

-- Location: LCCOMB_X27_Y28_N2
\counter0|num_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter0|num_out~5_combout\ = (\counter0|num_out\(1) & (\counter0|num_out\(3) $ (((\counter0|num_out\(0) & !\counter0|num_out~4_combout\))))) # (!\counter0|num_out\(1) & (\counter0|num_out\(3) & ((\counter0|num_out\(0)) # 
-- (\counter0|num_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(1),
	datab => \counter0|num_out\(0),
	datac => \counter0|num_out\(3),
	datad => \counter0|num_out~4_combout\,
	combout => \counter0|num_out~5_combout\);

-- Location: FF_X27_Y28_N3
\counter0|num_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div0|divided_clk~clkctrl_outclk\,
	d => \counter0|num_out~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|num_out\(3));

-- Location: LCCOMB_X27_Y28_N28
\decoder0|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[0]~0_combout\ = (\counter0|num_out\(3) & (\counter0|num_out\(0) & (\counter0|num_out\(1) $ (\counter0|num_out\(2))))) # (!\counter0|num_out\(3) & (!\counter0|num_out\(1) & (\counter0|num_out\(0) $ (\counter0|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\decoder0|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[1]~1_combout\ = (\counter0|num_out\(3) & ((\counter0|num_out\(0) & (\counter0|num_out\(1))) # (!\counter0|num_out\(0) & ((\counter0|num_out\(2)))))) # (!\counter0|num_out\(3) & (\counter0|num_out\(2) & (\counter0|num_out\(1) $ 
-- (\counter0|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X27_Y28_N4
\decoder0|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[2]~2_combout\ = (\counter0|num_out\(3) & (\counter0|num_out\(2) & ((\counter0|num_out\(1)) # (!\counter0|num_out\(0))))) # (!\counter0|num_out\(3) & (\counter0|num_out\(1) & (!\counter0|num_out\(0) & !\counter0|num_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X27_Y28_N10
\decoder0|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[3]~3_combout\ = (\counter0|num_out\(1) & ((\counter0|num_out\(0) & ((\counter0|num_out\(2)))) # (!\counter0|num_out\(0) & (\counter0|num_out\(3) & !\counter0|num_out\(2))))) # (!\counter0|num_out\(1) & (!\counter0|num_out\(3) & 
-- (\counter0|num_out\(0) $ (\counter0|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X27_Y28_N20
\decoder0|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[4]~4_combout\ = (\counter0|num_out\(1) & (!\counter0|num_out\(3) & (\counter0|num_out\(0)))) # (!\counter0|num_out\(1) & ((\counter0|num_out\(2) & (!\counter0|num_out\(3))) # (!\counter0|num_out\(2) & ((\counter0|num_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X27_Y28_N14
\decoder0|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[5]~5_combout\ = (\counter0|num_out\(1) & (!\counter0|num_out\(3) & ((\counter0|num_out\(0)) # (!\counter0|num_out\(2))))) # (!\counter0|num_out\(1) & (\counter0|num_out\(0) & (\counter0|num_out\(3) $ (!\counter0|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X27_Y28_N0
\decoder0|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[6]~6_combout\ = (\counter0|num_out\(0) & ((\counter0|num_out\(3)) # (\counter0|num_out\(1) $ (\counter0|num_out\(2))))) # (!\counter0|num_out\(0) & ((\counter0|num_out\(1)) # (\counter0|num_out\(3) $ (\counter0|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(3),
	datab => \counter0|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(2),
	combout => \decoder0|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X15_Y23_N6
\div1|div_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[0]~26_combout\ = \div1|div_counter\(0) $ (VCC)
-- \div1|div_counter[0]~27\ = CARRY(\div1|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(0),
	datad => VCC,
	combout => \div1|div_counter[0]~26_combout\,
	cout => \div1|div_counter[0]~27\);

-- Location: LCCOMB_X14_Y22_N30
\div1|div_upper_bound[18]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[18]~11_combout\ = (\current_state.T1~q\) # ((\current_state.spinning~q\) # ((\current_state.T2~q\) # (\current_state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \current_state.spinning~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T3~q\,
	combout => \div1|div_upper_bound[18]~11_combout\);

-- Location: LCCOMB_X16_Y19_N4
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\current_state.T3~q\) # ((\current_state.T5~q\) # ((\current_state.T2~q\) # (\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T3~q\,
	datab => \current_state.T5~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X14_Y22_N12
\div1|div_upper_bound[23]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[23]~7_combout\ = (!\current_state.T1~q\ & !\current_state.T4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.T1~q\,
	datad => \current_state.T4~q\,
	combout => \div1|div_upper_bound[23]~7_combout\);

-- Location: LCCOMB_X15_Y22_N18
\div1|div_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[22]~70_combout\ = (\div1|div_counter\(22) & (\div1|div_counter[21]~69\ $ (GND))) # (!\div1|div_counter\(22) & (!\div1|div_counter[21]~69\ & VCC))
-- \div1|div_counter[22]~71\ = CARRY((\div1|div_counter\(22) & !\div1|div_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(22),
	datad => VCC,
	cin => \div1|div_counter[21]~69\,
	combout => \div1|div_counter[22]~70_combout\,
	cout => \div1|div_counter[22]~71\);

-- Location: LCCOMB_X15_Y22_N20
\div1|div_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[23]~72_combout\ = (\div1|div_counter\(23) & (!\div1|div_counter[22]~71\)) # (!\div1|div_counter\(23) & ((\div1|div_counter[22]~71\) # (GND)))
-- \div1|div_counter[23]~73\ = CARRY((!\div1|div_counter[22]~71\) # (!\div1|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(23),
	datad => VCC,
	cin => \div1|div_counter[22]~71\,
	combout => \div1|div_counter[23]~72_combout\,
	cout => \div1|div_counter[23]~73\);

-- Location: FF_X15_Y22_N21
\div1|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div1|div_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(23));

-- Location: LCCOMB_X14_Y22_N6
\div1|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~9_combout\ = \div1|div_counter\(23) $ (((!\div1|div_upper_bound[23]~7_combout\ & (\div0|div_upper_bound[23]~0_combout\ & !\WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[23]~7_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div1|div_counter\(23),
	datad => \WideOr7~0_combout\,
	combout => \div1|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y22_N20
\div1|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~10_combout\ = (!\div1|Equal0~9_combout\ & (\div1|div_counter\(21) $ (((\current_state.T0~q\) # (!\WideOr7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \div1|div_counter\(21),
	datac => \current_state.T0~q\,
	datad => \div1|Equal0~9_combout\,
	combout => \div1|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y22_N28
\div1|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~11_combout\ = (\div1|Equal0~10_combout\ & (\div1|div_counter\(18) $ (((!\div1|div_upper_bound[18]~11_combout\ & \current_state.T4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[18]~11_combout\,
	datab => \current_state.T4~q\,
	datac => \div1|div_counter\(18),
	datad => \div1|Equal0~10_combout\,
	combout => \div1|Equal0~11_combout\);

-- Location: LCCOMB_X15_Y20_N0
\div1|div_upper_bound[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[23]~2_combout\ = (!\current_state.T4~q\ & (!\current_state.T1~q\ & !\current_state.spinning~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T4~q\,
	datac => \current_state.T1~q\,
	datad => \current_state.spinning~q\,
	combout => \div1|div_upper_bound[23]~2_combout\);

-- Location: LCCOMB_X16_Y22_N6
\div1|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~7_combout\ = (!\WideOr7~0_combout\ & (\WideOr9~0_combout\ & (!\div1|div_upper_bound[23]~2_combout\ & !\div0|div_upper_bound[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \WideOr9~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \div0|div_upper_bound[23]~0_combout\,
	combout => \div1|Equal1~7_combout\);

-- Location: LCCOMB_X16_Y22_N24
\div1|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~4_combout\ = (\div1|div_upper_bound[23]~2_combout\ & (!\WideOr9~0_combout\ & (\WideOr7~0_combout\ & \div0|div_upper_bound[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[23]~2_combout\,
	datab => \WideOr9~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => \div0|div_upper_bound[23]~0_combout\,
	combout => \div1|Equal1~4_combout\);

-- Location: LCCOMB_X16_Y22_N12
\div1|div_upper_bound[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[3]~3_combout\ = (\WideOr7~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & (!\div1|div_upper_bound[23]~2_combout\ & !\WideOr9~0_combout\))) # (!\WideOr7~0_combout\ & (!\div0|div_upper_bound[23]~0_combout\ & 
-- (\div1|div_upper_bound[23]~2_combout\ & \WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \WideOr9~0_combout\,
	combout => \div1|div_upper_bound[3]~3_combout\);

-- Location: LCCOMB_X16_Y22_N10
\div1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~0_combout\ = \div1|div_counter\(3) $ (((\div1|Equal1~7_combout\) # ((\div1|Equal1~4_combout\ & !\div1|div_upper_bound[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~7_combout\,
	datab => \div1|Equal1~4_combout\,
	datac => \div1|div_counter\(3),
	datad => \div1|div_upper_bound[3]~3_combout\,
	combout => \div1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N20
\div1|div_upper_bound[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[8]~5_combout\ = (\WideOr9~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & (\WideOr7~0_combout\ $ (!\div1|div_upper_bound[23]~2_combout\)))) # (!\WideOr9~0_combout\ & (\WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \WideOr9~0_combout\,
	combout => \div1|div_upper_bound[8]~5_combout\);

-- Location: LCCOMB_X16_Y22_N16
\div1|div_upper_bound[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[8]~6_combout\ = (\WideOr9~0_combout\ & (((!\div1|div_upper_bound[8]~5_combout\)))) # (!\WideOr9~0_combout\ & (\div1|div_upper_bound[8]~5_combout\ & ((\current_state.T4~q\) # (\current_state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T4~q\,
	datab => \WideOr9~0_combout\,
	datac => \current_state.T1~q\,
	datad => \div1|div_upper_bound[8]~5_combout\,
	combout => \div1|div_upper_bound[8]~6_combout\);

-- Location: LCCOMB_X16_Y22_N26
\div1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~1_combout\ = \div1|div_counter\(8) $ (((\current_state.spinning~q\) # ((!\current_state.T0~q\ & \div1|div_upper_bound[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T0~q\,
	datab => \current_state.spinning~q\,
	datac => \div1|div_counter\(8),
	datad => \div1|div_upper_bound[8]~6_combout\,
	combout => \div1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y23_N30
\div1|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~6_combout\ = (!\div0|div_upper_bound[23]~0_combout\ & (!\WideOr7~0_combout\ & (\div1|div_upper_bound[23]~2_combout\ & \WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr7~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \WideOr9~0_combout\,
	combout => \div1|Equal1~6_combout\);

-- Location: LCCOMB_X16_Y22_N28
\div1|div_upper_bound[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[0]~4_combout\ = (\div1|Equal1~7_combout\ & (((\div1|Equal1~6_combout\)))) # (!\div1|Equal1~7_combout\ & ((\div1|div_upper_bound[3]~3_combout\ & ((\div1|Equal1~6_combout\))) # (!\div1|div_upper_bound[3]~3_combout\ & 
-- (!\div1|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~7_combout\,
	datab => \div1|Equal1~4_combout\,
	datac => \div1|Equal1~6_combout\,
	datad => \div1|div_upper_bound[3]~3_combout\,
	combout => \div1|div_upper_bound[0]~4_combout\);

-- Location: LCCOMB_X16_Y22_N0
\div1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~2_combout\ = (\div1|Equal0~0_combout\ & (!\div1|Equal0~1_combout\ & (\div1|div_counter\(0) $ (!\div1|div_upper_bound[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal0~0_combout\,
	datab => \div1|div_counter\(0),
	datac => \div1|Equal0~1_combout\,
	datad => \div1|div_upper_bound[0]~4_combout\,
	combout => \div1|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y20_N26
\div1|div_upper_bound[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[16]~10_combout\ = (\div1|div_upper_bound[23]~2_combout\ & (\WideOr7~0_combout\ $ (((!\div0|div_upper_bound[23]~0_combout\ & \WideOr9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|div_upper_bound[16]~10_combout\);

-- Location: LCCOMB_X15_Y20_N8
\div1|div_upper_bound[14]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[14]~9_combout\ = (\WideOr9~0_combout\) # ((\WideOr7~0_combout\ & ((!\div1|div_upper_bound[23]~2_combout\))) # (!\WideOr7~0_combout\ & (!\div0|div_upper_bound[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|div_upper_bound[14]~9_combout\);

-- Location: LCCOMB_X15_Y20_N12
\div1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~6_combout\ = (\div1|div_upper_bound[16]~10_combout\ & (\div1|div_counter\(16) & (\div1|div_counter\(14) $ (!\div1|div_upper_bound[14]~9_combout\)))) # (!\div1|div_upper_bound[16]~10_combout\ & (!\div1|div_counter\(16) & 
-- (\div1|div_counter\(14) $ (!\div1|div_upper_bound[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[16]~10_combout\,
	datab => \div1|div_counter\(14),
	datac => \div1|div_counter\(16),
	datad => \div1|div_upper_bound[14]~9_combout\,
	combout => \div1|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y20_N10
\div1|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~8_combout\ = (\WideOr9~0_combout\ & (!\WideOr7~0_combout\ & ((\current_state.spinning~q\) # (\current_state.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|Equal1~8_combout\);

-- Location: LCCOMB_X15_Y20_N6
\div1|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~5_combout\ = (!\div1|div_upper_bound[23]~2_combout\ & (!\WideOr9~0_combout\ & (\div0|div_upper_bound[23]~0_combout\ & \WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[23]~2_combout\,
	datab => \WideOr9~0_combout\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|Equal1~5_combout\);

-- Location: LCCOMB_X15_Y20_N16
\div1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~3_combout\ = \div1|div_counter\(2) $ (((\div1|Equal1~8_combout\ & (!\div1|div_upper_bound[23]~2_combout\)) # (!\div1|Equal1~8_combout\ & ((\div1|Equal1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~8_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \div1|Equal1~5_combout\,
	datad => \div1|div_counter\(2),
	combout => \div1|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y20_N14
\div1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~4_combout\ = (\div1|Equal0~3_combout\ & (\div1|div_counter\(4) $ (((\div1|Equal1~8_combout\) # (\div1|Equal1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~8_combout\,
	datab => \div1|Equal1~5_combout\,
	datac => \div1|div_counter\(4),
	datad => \div1|Equal0~3_combout\,
	combout => \div1|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y20_N2
\div1|div_upper_bound[10]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[10]~8_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (!\WideOr9~0_combout\ & ((!\div1|div_upper_bound[23]~7_combout\) # (!\WideOr7~0_combout\)))) # (!\div0|div_upper_bound[23]~0_combout\ & 
-- (((!\div1|div_upper_bound[23]~7_combout\)) # (!\WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr7~0_combout\,
	datac => \WideOr9~0_combout\,
	datad => \div1|div_upper_bound[23]~7_combout\,
	combout => \div1|div_upper_bound[10]~8_combout\);

-- Location: LCCOMB_X15_Y20_N30
\div1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~5_combout\ = (\div1|Equal1~5_combout\ & (\div1|div_counter\(7) & (\div1|div_counter\(10) $ (!\div1|div_upper_bound[10]~8_combout\)))) # (!\div1|Equal1~5_combout\ & (!\div1|div_counter\(7) & (\div1|div_counter\(10) $ 
-- (!\div1|div_upper_bound[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~5_combout\,
	datab => \div1|div_counter\(10),
	datac => \div1|div_counter\(7),
	datad => \div1|div_upper_bound[10]~8_combout\,
	combout => \div1|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y22_N22
\div1|div_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[24]~74_combout\ = (\div1|div_counter\(24) & (\div1|div_counter[23]~73\ $ (GND))) # (!\div1|div_counter\(24) & (!\div1|div_counter[23]~73\ & VCC))
-- \div1|div_counter[24]~75\ = CARRY((\div1|div_counter\(24) & !\div1|div_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(24),
	datad => VCC,
	cin => \div1|div_counter[23]~73\,
	combout => \div1|div_counter[24]~74_combout\,
	cout => \div1|div_counter[24]~75\);

-- Location: FF_X15_Y22_N23
\div1|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div1|div_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(24));

-- Location: LCCOMB_X15_Y20_N18
\div1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~2_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (\div1|div_upper_bound[23]~2_combout\ & (\WideOr9~0_combout\ & \WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|Equal1~2_combout\);

-- Location: LCCOMB_X16_Y22_N18
\div1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~7_combout\ = (\div1|div_counter\(19) & (!\div1|Equal1~7_combout\ & (\div1|div_counter\(24) $ (!\div1|Equal1~2_combout\)))) # (!\div1|div_counter\(19) & (\div1|Equal1~7_combout\ & (\div1|div_counter\(24) $ (!\div1|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(19),
	datab => \div1|div_counter\(24),
	datac => \div1|Equal1~2_combout\,
	datad => \div1|Equal1~7_combout\,
	combout => \div1|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y20_N22
\div1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~8_combout\ = (\div1|Equal0~6_combout\ & (\div1|Equal0~4_combout\ & (\div1|Equal0~5_combout\ & \div1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal0~6_combout\,
	datab => \div1|Equal0~4_combout\,
	datac => \div1|Equal0~5_combout\,
	datad => \div1|Equal0~7_combout\,
	combout => \div1|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y20_N20
\div1|div_upper_bound~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound~17_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (\WideOr9~0_combout\ & (\div1|div_upper_bound[23]~2_combout\ $ (!\WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \div1|div_upper_bound~17_combout\);

-- Location: LCCOMB_X15_Y20_N4
\div1|div_upper_bound[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[9]~18_combout\ = (!\current_state.T1~q\ & (!\current_state.T2~q\ & (!\current_state.T3~q\ & !\div1|div_upper_bound~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \current_state.T2~q\,
	datac => \current_state.T3~q\,
	datad => \div1|div_upper_bound~17_combout\,
	combout => \div1|div_upper_bound[9]~18_combout\);

-- Location: LCCOMB_X15_Y20_N28
\div1|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~24_combout\ = \div1|div_counter\(9) $ (((!\current_state.spinning~q\ & ((\current_state.T0~q\) # (\div1|div_upper_bound[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T0~q\,
	datab => \current_state.spinning~q\,
	datac => \div1|div_upper_bound[9]~18_combout\,
	datad => \div1|div_counter\(9),
	combout => \div1|Equal0~24_combout\);

-- Location: LCCOMB_X14_Y22_N26
\div1|div_upper_bound[15]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[15]~19_combout\ = (!\current_state.T2~q\ & (!\current_state.T5~q\ & !\current_state.T3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datac => \current_state.T5~q\,
	datad => \current_state.T3~q\,
	combout => \div1|div_upper_bound[15]~19_combout\);

-- Location: LCCOMB_X14_Y22_N8
\div1|div_upper_bound[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[20]~20_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (!\current_state.T1~q\ & (\div1|div_upper_bound[15]~19_combout\ $ (!\current_state.T4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[15]~19_combout\,
	datab => \current_state.T4~q\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \current_state.T1~q\,
	combout => \div1|div_upper_bound[20]~20_combout\);

-- Location: LCCOMB_X14_Y22_N14
\div1|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~25_combout\ = \div1|div_counter\(20) $ (((\div1|Equal1~8_combout\) # (\div1|div_upper_bound[20]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(20),
	datac => \div1|Equal1~8_combout\,
	datad => \div1|div_upper_bound[20]~20_combout\,
	combout => \div1|Equal0~25_combout\);

-- Location: LCCOMB_X14_Y19_N8
\div1|div_upper_bound[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[11]~15_combout\ = (\current_state.T2~q\) # ((\current_state.T3~q\) # ((!\current_state.spinning~q\ & !\current_state.T4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.spinning~q\,
	datac => \current_state.T4~q\,
	datad => \current_state.T3~q\,
	combout => \div1|div_upper_bound[11]~15_combout\);

-- Location: LCCOMB_X14_Y23_N0
\div1|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~16_combout\ = \div1|div_counter\(11) $ (((\current_state.T1~q\) # (\div1|div_upper_bound[11]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datac => \div1|div_upper_bound[11]~15_combout\,
	datad => \div1|div_counter\(11),
	combout => \div1|Equal0~16_combout\);

-- Location: LCCOMB_X16_Y19_N2
WideOr5 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\current_state.T2~q\) # ((\current_state.T3~q\) # (\current_state.T0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T3~q\,
	datad => \current_state.T0~q\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X16_Y23_N20
\div1|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~17_combout\ = \div1|div_counter\(17) $ (((!\WideOr5~combout\) # (!\div1|div_upper_bound[23]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(17),
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \WideOr5~combout\,
	combout => \div1|Equal0~17_combout\);

-- Location: LCCOMB_X15_Y22_N30
\div1|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~18_combout\ = \div1|div_counter\(22) $ (((!\WideOr7~0_combout\ & (!\WideOr9~0_combout\ & \div0|div_upper_bound[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \WideOr9~0_combout\,
	datac => \div0|div_upper_bound[23]~0_combout\,
	datad => \div1|div_counter\(22),
	combout => \div1|Equal0~18_combout\);

-- Location: LCCOMB_X14_Y22_N24
\div1|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~20_combout\ = (\current_state.T1~q\ & ((!\current_state.T4~q\))) # (!\current_state.T1~q\ & ((\current_state.spinning~q\) # (\current_state.T4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datac => \current_state.spinning~q\,
	datad => \current_state.T4~q\,
	combout => \div1|Equal0~20_combout\);

-- Location: LCCOMB_X14_Y22_N22
\div1|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~21_combout\ = (!\current_state.T2~q\ & (!\current_state.T3~q\ & (!\current_state.T5~q\ & \div1|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T3~q\,
	datac => \current_state.T5~q\,
	datad => \div1|Equal0~20_combout\,
	combout => \div1|Equal0~21_combout\);

-- Location: LCCOMB_X15_Y22_N24
\div1|div_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[25]~76_combout\ = \div1|div_counter[24]~75\ $ (\div1|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div1|div_counter\(25),
	cin => \div1|div_counter[24]~75\,
	combout => \div1|div_counter[25]~76_combout\);

-- Location: FF_X15_Y22_N25
\div1|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(25));

-- Location: LCCOMB_X14_Y22_N16
\div1|div_upper_bound[13]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[13]~16_combout\ = (\current_state.T5~q\ & (!\current_state.T3~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\))) # (!\current_state.T5~q\ & ((\current_state.T3~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\)) # 
-- (!\current_state.T3~q\ & (\current_state.T2~q\ $ (\current_state.T1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T5~q\,
	datab => \current_state.T3~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T1~q\,
	combout => \div1|div_upper_bound[13]~16_combout\);

-- Location: LCCOMB_X14_Y22_N10
\div1|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~19_combout\ = (!\div1|div_counter\(25) & (\div1|div_counter\(13) $ (!\div1|div_upper_bound[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(25),
	datac => \div1|div_counter\(13),
	datad => \div1|div_upper_bound[13]~16_combout\,
	combout => \div1|Equal0~19_combout\);

-- Location: LCCOMB_X14_Y22_N0
\div1|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~22_combout\ = (\div1|Equal0~19_combout\ & (\div1|div_counter\(15) $ (!\div1|Equal0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(15),
	datac => \div1|Equal0~21_combout\,
	datad => \div1|Equal0~19_combout\,
	combout => \div1|Equal0~22_combout\);

-- Location: LCCOMB_X15_Y23_N4
\div1|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~23_combout\ = (!\div1|Equal0~16_combout\ & (\div1|Equal0~17_combout\ & (\div1|Equal0~18_combout\ & \div1|Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal0~16_combout\,
	datab => \div1|Equal0~17_combout\,
	datac => \div1|Equal0~18_combout\,
	datad => \div1|Equal0~22_combout\,
	combout => \div1|Equal0~23_combout\);

-- Location: LCCOMB_X16_Y23_N18
\div1|div_upper_bound[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[10]~21_combout\ = (!\current_state.spinning~q\ & (!\current_state.T0~q\ & \WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.spinning~q\,
	datac => \current_state.T0~q\,
	datad => \WideOr9~0_combout\,
	combout => \div1|div_upper_bound[10]~21_combout\);

-- Location: LCCOMB_X16_Y23_N8
\div1|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~12_combout\ = \div1|div_counter\(1) $ (((\WideOr9~0_combout\) # (!\WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr9~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => \div1|div_counter\(1),
	combout => \div1|Equal0~12_combout\);

-- Location: LCCOMB_X16_Y23_N24
\div1|div_upper_bound[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[5]~12_combout\ = (\WideOr7~0_combout\ & (\current_state.T0~q\)) # (!\WideOr7~0_combout\ & ((!\div1|div_upper_bound[23]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T0~q\,
	datab => \WideOr7~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	combout => \div1|div_upper_bound[5]~12_combout\);

-- Location: LCCOMB_X16_Y23_N16
\div1|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~13_combout\ = (!\div1|Equal0~12_combout\ & (\div1|div_counter\(5) $ (((!\div1|div_upper_bound[10]~21_combout\ & !\div1|div_upper_bound[5]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(5),
	datab => \div1|div_upper_bound[10]~21_combout\,
	datac => \div1|Equal0~12_combout\,
	datad => \div1|div_upper_bound[5]~12_combout\,
	combout => \div1|Equal0~13_combout\);

-- Location: LCCOMB_X15_Y20_N24
\div1|div_upper_bound[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[6]~13_combout\ = (\div0|div_upper_bound[23]~0_combout\ & (((!\WideOr7~0_combout\ & !\div1|div_upper_bound[23]~2_combout\)) # (!\div1|div_upper_bound[23]~7_combout\))) # (!\div0|div_upper_bound[23]~0_combout\ & (!\WideOr7~0_combout\ & 
-- (!\div1|div_upper_bound[23]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \WideOr7~0_combout\,
	datac => \div1|div_upper_bound[23]~2_combout\,
	datad => \div1|div_upper_bound[23]~7_combout\,
	combout => \div1|div_upper_bound[6]~13_combout\);

-- Location: LCCOMB_X14_Y22_N18
\div1|div_upper_bound[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_upper_bound[12]~14_combout\ = ((\current_state.T5~q\ & (!\current_state.T3~q\ & !\current_state.T2~q\))) # (!\div1|div_upper_bound[23]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T5~q\,
	datab => \current_state.T3~q\,
	datac => \current_state.T2~q\,
	datad => \div1|div_upper_bound[23]~7_combout\,
	combout => \div1|div_upper_bound[12]~14_combout\);

-- Location: LCCOMB_X16_Y23_N28
\div1|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~14_combout\ = \div1|div_counter\(12) $ (((\div1|Equal1~6_combout\) # ((\div0|div_upper_bound[23]~0_combout\ & \div1|div_upper_bound[12]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div0|div_upper_bound[23]~0_combout\,
	datab => \div1|div_counter\(12),
	datac => \div1|Equal1~6_combout\,
	datad => \div1|div_upper_bound[12]~14_combout\,
	combout => \div1|Equal0~14_combout\);

-- Location: LCCOMB_X16_Y23_N22
\div1|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~15_combout\ = (\div1|Equal0~13_combout\ & (!\div1|Equal0~14_combout\ & (\div1|div_counter\(6) $ (!\div1|div_upper_bound[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(6),
	datab => \div1|Equal0~13_combout\,
	datac => \div1|div_upper_bound[6]~13_combout\,
	datad => \div1|Equal0~14_combout\,
	combout => \div1|Equal0~15_combout\);

-- Location: LCCOMB_X15_Y23_N2
\div1|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~26_combout\ = (!\div1|Equal0~24_combout\ & (!\div1|Equal0~25_combout\ & (\div1|Equal0~23_combout\ & \div1|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal0~24_combout\,
	datab => \div1|Equal0~25_combout\,
	datac => \div1|Equal0~23_combout\,
	datad => \div1|Equal0~15_combout\,
	combout => \div1|Equal0~26_combout\);

-- Location: LCCOMB_X15_Y23_N0
\div1|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal0~27_combout\ = (\div1|Equal0~11_combout\ & (\div1|Equal0~2_combout\ & (\div1|Equal0~8_combout\ & \div1|Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal0~11_combout\,
	datab => \div1|Equal0~2_combout\,
	datac => \div1|Equal0~8_combout\,
	datad => \div1|Equal0~26_combout\,
	combout => \div1|Equal0~27_combout\);

-- Location: FF_X15_Y23_N7
\div1|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(0));

-- Location: LCCOMB_X15_Y23_N8
\div1|div_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[1]~28_combout\ = (\div1|div_counter\(1) & (!\div1|div_counter[0]~27\)) # (!\div1|div_counter\(1) & ((\div1|div_counter[0]~27\) # (GND)))
-- \div1|div_counter[1]~29\ = CARRY((!\div1|div_counter[0]~27\) # (!\div1|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(1),
	datad => VCC,
	cin => \div1|div_counter[0]~27\,
	combout => \div1|div_counter[1]~28_combout\,
	cout => \div1|div_counter[1]~29\);

-- Location: FF_X15_Y23_N9
\div1|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(1));

-- Location: LCCOMB_X15_Y23_N10
\div1|div_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[2]~30_combout\ = (\div1|div_counter\(2) & (\div1|div_counter[1]~29\ $ (GND))) # (!\div1|div_counter\(2) & (!\div1|div_counter[1]~29\ & VCC))
-- \div1|div_counter[2]~31\ = CARRY((\div1|div_counter\(2) & !\div1|div_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(2),
	datad => VCC,
	cin => \div1|div_counter[1]~29\,
	combout => \div1|div_counter[2]~30_combout\,
	cout => \div1|div_counter[2]~31\);

-- Location: FF_X15_Y23_N11
\div1|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(2));

-- Location: LCCOMB_X15_Y23_N12
\div1|div_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[3]~32_combout\ = (\div1|div_counter\(3) & (!\div1|div_counter[2]~31\)) # (!\div1|div_counter\(3) & ((\div1|div_counter[2]~31\) # (GND)))
-- \div1|div_counter[3]~33\ = CARRY((!\div1|div_counter[2]~31\) # (!\div1|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(3),
	datad => VCC,
	cin => \div1|div_counter[2]~31\,
	combout => \div1|div_counter[3]~32_combout\,
	cout => \div1|div_counter[3]~33\);

-- Location: FF_X15_Y23_N13
\div1|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(3));

-- Location: LCCOMB_X15_Y23_N14
\div1|div_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[4]~34_combout\ = (\div1|div_counter\(4) & (\div1|div_counter[3]~33\ $ (GND))) # (!\div1|div_counter\(4) & (!\div1|div_counter[3]~33\ & VCC))
-- \div1|div_counter[4]~35\ = CARRY((\div1|div_counter\(4) & !\div1|div_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(4),
	datad => VCC,
	cin => \div1|div_counter[3]~33\,
	combout => \div1|div_counter[4]~34_combout\,
	cout => \div1|div_counter[4]~35\);

-- Location: FF_X15_Y23_N15
\div1|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(4));

-- Location: LCCOMB_X15_Y23_N16
\div1|div_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[5]~36_combout\ = (\div1|div_counter\(5) & (!\div1|div_counter[4]~35\)) # (!\div1|div_counter\(5) & ((\div1|div_counter[4]~35\) # (GND)))
-- \div1|div_counter[5]~37\ = CARRY((!\div1|div_counter[4]~35\) # (!\div1|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(5),
	datad => VCC,
	cin => \div1|div_counter[4]~35\,
	combout => \div1|div_counter[5]~36_combout\,
	cout => \div1|div_counter[5]~37\);

-- Location: FF_X15_Y23_N17
\div1|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(5));

-- Location: LCCOMB_X15_Y23_N18
\div1|div_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[6]~38_combout\ = (\div1|div_counter\(6) & (\div1|div_counter[5]~37\ $ (GND))) # (!\div1|div_counter\(6) & (!\div1|div_counter[5]~37\ & VCC))
-- \div1|div_counter[6]~39\ = CARRY((\div1|div_counter\(6) & !\div1|div_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(6),
	datad => VCC,
	cin => \div1|div_counter[5]~37\,
	combout => \div1|div_counter[6]~38_combout\,
	cout => \div1|div_counter[6]~39\);

-- Location: FF_X15_Y23_N19
\div1|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(6));

-- Location: LCCOMB_X15_Y23_N20
\div1|div_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[7]~40_combout\ = (\div1|div_counter\(7) & (!\div1|div_counter[6]~39\)) # (!\div1|div_counter\(7) & ((\div1|div_counter[6]~39\) # (GND)))
-- \div1|div_counter[7]~41\ = CARRY((!\div1|div_counter[6]~39\) # (!\div1|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(7),
	datad => VCC,
	cin => \div1|div_counter[6]~39\,
	combout => \div1|div_counter[7]~40_combout\,
	cout => \div1|div_counter[7]~41\);

-- Location: FF_X15_Y23_N21
\div1|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(7));

-- Location: LCCOMB_X15_Y23_N22
\div1|div_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[8]~42_combout\ = (\div1|div_counter\(8) & (\div1|div_counter[7]~41\ $ (GND))) # (!\div1|div_counter\(8) & (!\div1|div_counter[7]~41\ & VCC))
-- \div1|div_counter[8]~43\ = CARRY((\div1|div_counter\(8) & !\div1|div_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(8),
	datad => VCC,
	cin => \div1|div_counter[7]~41\,
	combout => \div1|div_counter[8]~42_combout\,
	cout => \div1|div_counter[8]~43\);

-- Location: FF_X15_Y23_N23
\div1|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(8));

-- Location: LCCOMB_X15_Y23_N24
\div1|div_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[9]~44_combout\ = (\div1|div_counter\(9) & (!\div1|div_counter[8]~43\)) # (!\div1|div_counter\(9) & ((\div1|div_counter[8]~43\) # (GND)))
-- \div1|div_counter[9]~45\ = CARRY((!\div1|div_counter[8]~43\) # (!\div1|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(9),
	datad => VCC,
	cin => \div1|div_counter[8]~43\,
	combout => \div1|div_counter[9]~44_combout\,
	cout => \div1|div_counter[9]~45\);

-- Location: FF_X15_Y23_N25
\div1|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(9));

-- Location: LCCOMB_X15_Y23_N26
\div1|div_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[10]~46_combout\ = (\div1|div_counter\(10) & (\div1|div_counter[9]~45\ $ (GND))) # (!\div1|div_counter\(10) & (!\div1|div_counter[9]~45\ & VCC))
-- \div1|div_counter[10]~47\ = CARRY((\div1|div_counter\(10) & !\div1|div_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(10),
	datad => VCC,
	cin => \div1|div_counter[9]~45\,
	combout => \div1|div_counter[10]~46_combout\,
	cout => \div1|div_counter[10]~47\);

-- Location: FF_X15_Y23_N27
\div1|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(10));

-- Location: LCCOMB_X15_Y23_N28
\div1|div_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[11]~48_combout\ = (\div1|div_counter\(11) & (!\div1|div_counter[10]~47\)) # (!\div1|div_counter\(11) & ((\div1|div_counter[10]~47\) # (GND)))
-- \div1|div_counter[11]~49\ = CARRY((!\div1|div_counter[10]~47\) # (!\div1|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(11),
	datad => VCC,
	cin => \div1|div_counter[10]~47\,
	combout => \div1|div_counter[11]~48_combout\,
	cout => \div1|div_counter[11]~49\);

-- Location: FF_X15_Y23_N29
\div1|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(11));

-- Location: LCCOMB_X15_Y23_N30
\div1|div_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[12]~50_combout\ = (\div1|div_counter\(12) & (\div1|div_counter[11]~49\ $ (GND))) # (!\div1|div_counter\(12) & (!\div1|div_counter[11]~49\ & VCC))
-- \div1|div_counter[12]~51\ = CARRY((\div1|div_counter\(12) & !\div1|div_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(12),
	datad => VCC,
	cin => \div1|div_counter[11]~49\,
	combout => \div1|div_counter[12]~50_combout\,
	cout => \div1|div_counter[12]~51\);

-- Location: FF_X15_Y23_N31
\div1|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(12));

-- Location: LCCOMB_X15_Y22_N0
\div1|div_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[13]~52_combout\ = (\div1|div_counter\(13) & (!\div1|div_counter[12]~51\)) # (!\div1|div_counter\(13) & ((\div1|div_counter[12]~51\) # (GND)))
-- \div1|div_counter[13]~53\ = CARRY((!\div1|div_counter[12]~51\) # (!\div1|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(13),
	datad => VCC,
	cin => \div1|div_counter[12]~51\,
	combout => \div1|div_counter[13]~52_combout\,
	cout => \div1|div_counter[13]~53\);

-- Location: FF_X15_Y22_N1
\div1|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(13));

-- Location: LCCOMB_X15_Y22_N2
\div1|div_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[14]~54_combout\ = (\div1|div_counter\(14) & (\div1|div_counter[13]~53\ $ (GND))) # (!\div1|div_counter\(14) & (!\div1|div_counter[13]~53\ & VCC))
-- \div1|div_counter[14]~55\ = CARRY((\div1|div_counter\(14) & !\div1|div_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(14),
	datad => VCC,
	cin => \div1|div_counter[13]~53\,
	combout => \div1|div_counter[14]~54_combout\,
	cout => \div1|div_counter[14]~55\);

-- Location: FF_X15_Y22_N3
\div1|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(14));

-- Location: LCCOMB_X15_Y22_N4
\div1|div_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[15]~56_combout\ = (\div1|div_counter\(15) & (!\div1|div_counter[14]~55\)) # (!\div1|div_counter\(15) & ((\div1|div_counter[14]~55\) # (GND)))
-- \div1|div_counter[15]~57\ = CARRY((!\div1|div_counter[14]~55\) # (!\div1|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(15),
	datad => VCC,
	cin => \div1|div_counter[14]~55\,
	combout => \div1|div_counter[15]~56_combout\,
	cout => \div1|div_counter[15]~57\);

-- Location: FF_X15_Y22_N5
\div1|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(15));

-- Location: LCCOMB_X15_Y22_N6
\div1|div_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[16]~58_combout\ = (\div1|div_counter\(16) & (\div1|div_counter[15]~57\ $ (GND))) # (!\div1|div_counter\(16) & (!\div1|div_counter[15]~57\ & VCC))
-- \div1|div_counter[16]~59\ = CARRY((\div1|div_counter\(16) & !\div1|div_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(16),
	datad => VCC,
	cin => \div1|div_counter[15]~57\,
	combout => \div1|div_counter[16]~58_combout\,
	cout => \div1|div_counter[16]~59\);

-- Location: FF_X15_Y22_N7
\div1|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(16));

-- Location: LCCOMB_X15_Y22_N8
\div1|div_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[17]~60_combout\ = (\div1|div_counter\(17) & (!\div1|div_counter[16]~59\)) # (!\div1|div_counter\(17) & ((\div1|div_counter[16]~59\) # (GND)))
-- \div1|div_counter[17]~61\ = CARRY((!\div1|div_counter[16]~59\) # (!\div1|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(17),
	datad => VCC,
	cin => \div1|div_counter[16]~59\,
	combout => \div1|div_counter[17]~60_combout\,
	cout => \div1|div_counter[17]~61\);

-- Location: FF_X16_Y23_N27
\div1|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \div1|div_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(17));

-- Location: LCCOMB_X15_Y22_N10
\div1|div_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[18]~62_combout\ = (\div1|div_counter\(18) & (\div1|div_counter[17]~61\ $ (GND))) # (!\div1|div_counter\(18) & (!\div1|div_counter[17]~61\ & VCC))
-- \div1|div_counter[18]~63\ = CARRY((\div1|div_counter\(18) & !\div1|div_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(18),
	datad => VCC,
	cin => \div1|div_counter[17]~61\,
	combout => \div1|div_counter[18]~62_combout\,
	cout => \div1|div_counter[18]~63\);

-- Location: FF_X15_Y22_N11
\div1|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(18));

-- Location: LCCOMB_X15_Y22_N12
\div1|div_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[19]~64_combout\ = (\div1|div_counter\(19) & (!\div1|div_counter[18]~63\)) # (!\div1|div_counter\(19) & ((\div1|div_counter[18]~63\) # (GND)))
-- \div1|div_counter[19]~65\ = CARRY((!\div1|div_counter[18]~63\) # (!\div1|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(19),
	datad => VCC,
	cin => \div1|div_counter[18]~63\,
	combout => \div1|div_counter[19]~64_combout\,
	cout => \div1|div_counter[19]~65\);

-- Location: FF_X15_Y22_N13
\div1|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(19));

-- Location: LCCOMB_X15_Y22_N14
\div1|div_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[20]~66_combout\ = (\div1|div_counter\(20) & (\div1|div_counter[19]~65\ $ (GND))) # (!\div1|div_counter\(20) & (!\div1|div_counter[19]~65\ & VCC))
-- \div1|div_counter[20]~67\ = CARRY((\div1|div_counter\(20) & !\div1|div_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(20),
	datad => VCC,
	cin => \div1|div_counter[19]~65\,
	combout => \div1|div_counter[20]~66_combout\,
	cout => \div1|div_counter[20]~67\);

-- Location: FF_X15_Y22_N15
\div1|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(20));

-- Location: LCCOMB_X15_Y22_N16
\div1|div_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|div_counter[21]~68_combout\ = (\div1|div_counter\(21) & (!\div1|div_counter[20]~67\)) # (!\div1|div_counter\(21) & ((\div1|div_counter[20]~67\) # (GND)))
-- \div1|div_counter[21]~69\ = CARRY((!\div1|div_counter[20]~67\) # (!\div1|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(21),
	datad => VCC,
	cin => \div1|div_counter[20]~67\,
	combout => \div1|div_counter[21]~68_combout\,
	cout => \div1|div_counter[21]~69\);

-- Location: FF_X15_Y22_N17
\div1|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(21));

-- Location: FF_X15_Y22_N19
\div1|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div1|div_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \div1|Equal0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1|div_counter\(22));

-- Location: LCCOMB_X15_Y22_N28
\div1|divided_clk~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~9_combout\ = (\div1|div_counter\(22) & ((\WideOr7~0_combout\) # ((!\div1|div_upper_bound[10]~21_combout\) # (!\div1|div_upper_bound[23]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~0_combout\,
	datab => \div1|div_upper_bound[23]~2_combout\,
	datac => \div1|div_upper_bound[10]~21_combout\,
	datad => \div1|div_counter\(22),
	combout => \div1|divided_clk~9_combout\);

-- Location: LCCOMB_X15_Y22_N26
\div1|divided_clk~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~7_combout\ = (\div1|Equal1~2_combout\ & (!\div1|div_counter\(24))) # (!\div1|Equal1~2_combout\ & ((!\div1|divided_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_counter\(24),
	datab => \div1|divided_clk~9_combout\,
	datad => \div1|Equal1~2_combout\,
	combout => \div1|divided_clk~7_combout\);

-- Location: LCCOMB_X16_Y22_N8
\div1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|Equal1~3_combout\ = (!\div1|div_upper_bound[23]~2_combout\ & (!\WideOr9~0_combout\ & (!\WideOr7~0_combout\ & \div0|div_upper_bound[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|div_upper_bound[23]~2_combout\,
	datab => \WideOr9~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => \div0|div_upper_bound[23]~0_combout\,
	combout => \div1|Equal1~3_combout\);

-- Location: LCCOMB_X16_Y22_N22
\div1|divided_clk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~4_combout\ = (\div1|Equal1~3_combout\ & ((!\div1|div_counter\(23)))) # (!\div1|Equal1~3_combout\ & (\div1|divided_clk~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|divided_clk~7_combout\,
	datac => \div1|Equal1~3_combout\,
	datad => \div1|div_counter\(23),
	combout => \div1|divided_clk~4_combout\);

-- Location: LCCOMB_X16_Y22_N4
\div1|divided_clk~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~3_combout\ = (\div1|Equal1~4_combout\ & ((!\div1|div_counter\(22)))) # (!\div1|Equal1~4_combout\ & (\div1|divided_clk~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1|Equal1~4_combout\,
	datac => \div1|divided_clk~4_combout\,
	datad => \div1|div_counter\(22),
	combout => \div1|divided_clk~3_combout\);

-- Location: LCCOMB_X16_Y22_N14
\div1|divided_clk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~2_combout\ = (\div1|Equal1~5_combout\ & ((\div1|div_counter\(22)))) # (!\div1|Equal1~5_combout\ & (!\div1|divided_clk~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~5_combout\,
	datac => \div1|divided_clk~3_combout\,
	datad => \div1|div_counter\(22),
	combout => \div1|divided_clk~2_combout\);

-- Location: LCCOMB_X16_Y22_N30
\div1|divided_clk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~1_combout\ = (\div1|Equal1~6_combout\ & ((!\div1|div_counter\(22)))) # (!\div1|Equal1~6_combout\ & (!\div1|divided_clk~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1|Equal1~6_combout\,
	datac => \div1|divided_clk~2_combout\,
	datad => \div1|div_counter\(22),
	combout => \div1|divided_clk~1_combout\);

-- Location: LCCOMB_X16_Y22_N2
\div1|divided_clk\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div1|divided_clk~combout\ = LCELL((\div1|Equal1~7_combout\ & (\div1|div_counter\(22))) # (!\div1|Equal1~7_combout\ & ((!\div1|divided_clk~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1|div_counter\(22),
	datac => \div1|divided_clk~1_combout\,
	datad => \div1|Equal1~7_combout\,
	combout => \div1|divided_clk~combout\);

-- Location: CLKCTRL_G13
\div1|divided_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div1|divided_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div1|divided_clk~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N16
\counter1|num_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out[0]~6_combout\ = !\counter1|num_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1|num_out\(0),
	combout => \counter1|num_out[0]~6_combout\);

-- Location: FF_X22_Y28_N17
\counter1|num_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1|divided_clk~clkctrl_outclk\,
	d => \counter1|num_out[0]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|num_out\(0));

-- Location: IOIBUF_X0_Y27_N1
\up_down_switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down_switch(1),
	o => \up_down_switch[1]~input_o\);

-- Location: LCCOMB_X22_Y28_N2
\counter1|num_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~2_combout\ = (!\counter1|num_out\(2) & !\counter1|num_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(3),
	combout => \counter1|num_out~2_combout\);

-- Location: LCCOMB_X22_Y28_N26
\counter1|num_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~3_combout\ = (\counter1|num_out\(1) & (\up_down_switch[1]~input_o\ $ ((\counter1|num_out\(0))))) # (!\counter1|num_out\(1) & (!\counter1|num_out~2_combout\ & (\up_down_switch[1]~input_o\ $ (!\counter1|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[1]~input_o\,
	datab => \counter1|num_out\(0),
	datac => \counter1|num_out\(1),
	datad => \counter1|num_out~2_combout\,
	combout => \counter1|num_out~3_combout\);

-- Location: FF_X22_Y28_N27
\counter1|num_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1|divided_clk~clkctrl_outclk\,
	d => \counter1|num_out~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|num_out\(1));

-- Location: LCCOMB_X22_Y28_N12
\counter1|num_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~0_combout\ = (\up_down_switch[1]~input_o\ & (\counter1|num_out\(1) & \counter1|num_out\(0))) # (!\up_down_switch[1]~input_o\ & ((\counter1|num_out\(1)) # (\counter1|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[1]~input_o\,
	datac => \counter1|num_out\(1),
	datad => \counter1|num_out\(0),
	combout => \counter1|num_out~0_combout\);

-- Location: LCCOMB_X22_Y28_N8
\counter1|num_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~1_combout\ = (\up_down_switch[1]~input_o\ & ((\counter1|num_out\(2) $ (\counter1|num_out~0_combout\)))) # (!\up_down_switch[1]~input_o\ & ((\counter1|num_out\(2) & ((\counter1|num_out~0_combout\))) # (!\counter1|num_out\(2) & 
-- (\counter1|num_out\(3) & !\counter1|num_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[1]~input_o\,
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out~0_combout\,
	combout => \counter1|num_out~1_combout\);

-- Location: FF_X22_Y28_N9
\counter1|num_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1|divided_clk~clkctrl_outclk\,
	d => \counter1|num_out~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|num_out\(2));

-- Location: LCCOMB_X22_Y28_N0
\counter1|num_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~4_combout\ = (\up_down_switch[1]~input_o\ & ((!\counter1|num_out\(0)) # (!\counter1|num_out\(1)))) # (!\up_down_switch[1]~input_o\ & ((\counter1|num_out\(1)) # (\counter1|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[1]~input_o\,
	datac => \counter1|num_out\(1),
	datad => \counter1|num_out\(0),
	combout => \counter1|num_out~4_combout\);

-- Location: LCCOMB_X22_Y28_N18
\counter1|num_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|num_out~5_combout\ = (\counter1|num_out\(0) & (\counter1|num_out\(3) $ (((\counter1|num_out\(2) & !\counter1|num_out~4_combout\))))) # (!\counter1|num_out\(0) & (\counter1|num_out\(3) & ((\counter1|num_out\(2)) # 
-- (\counter1|num_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(2),
	datac => \counter1|num_out\(3),
	datad => \counter1|num_out~4_combout\,
	combout => \counter1|num_out~5_combout\);

-- Location: FF_X22_Y28_N19
\counter1|num_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1|divided_clk~clkctrl_outclk\,
	d => \counter1|num_out~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|num_out\(3));

-- Location: LCCOMB_X22_Y28_N4
\decoder1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[0]~0_combout\ = (\counter1|num_out\(3) & (\counter1|num_out\(0) & (\counter1|num_out\(2) $ (\counter1|num_out\(1))))) # (!\counter1|num_out\(3) & (!\counter1|num_out\(1) & (\counter1|num_out\(0) $ (\counter1|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X22_Y28_N22
\decoder1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[1]~1_combout\ = (\counter1|num_out\(3) & ((\counter1|num_out\(0) & ((\counter1|num_out\(1)))) # (!\counter1|num_out\(0) & (\counter1|num_out\(2))))) # (!\counter1|num_out\(3) & (\counter1|num_out\(2) & (\counter1|num_out\(0) $ 
-- (\counter1|num_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X22_Y28_N28
\decoder1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[2]~2_combout\ = (\counter1|num_out\(3) & (\counter1|num_out\(2) & ((\counter1|num_out\(1)) # (!\counter1|num_out\(0))))) # (!\counter1|num_out\(3) & (!\counter1|num_out\(0) & (!\counter1|num_out\(2) & \counter1|num_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X22_Y28_N14
\decoder1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[3]~3_combout\ = (\counter1|num_out\(1) & ((\counter1|num_out\(0) & ((\counter1|num_out\(2)))) # (!\counter1|num_out\(0) & (\counter1|num_out\(3) & !\counter1|num_out\(2))))) # (!\counter1|num_out\(1) & (!\counter1|num_out\(3) & 
-- (\counter1|num_out\(0) $ (\counter1|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X22_Y28_N20
\decoder1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[4]~4_combout\ = (\counter1|num_out\(1) & (\counter1|num_out\(0) & (!\counter1|num_out\(3)))) # (!\counter1|num_out\(1) & ((\counter1|num_out\(2) & ((!\counter1|num_out\(3)))) # (!\counter1|num_out\(2) & (\counter1|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X22_Y28_N6
\decoder1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[5]~5_combout\ = (\counter1|num_out\(0) & (\counter1|num_out\(3) $ (((\counter1|num_out\(1)) # (!\counter1|num_out\(2)))))) # (!\counter1|num_out\(0) & (!\counter1|num_out\(3) & (!\counter1|num_out\(2) & \counter1|num_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X22_Y28_N24
\decoder1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[6]~6_combout\ = (\counter1|num_out\(0) & ((\counter1|num_out\(3)) # (\counter1|num_out\(2) $ (\counter1|num_out\(1))))) # (!\counter1|num_out\(0) & ((\counter1|num_out\(1)) # (\counter1|num_out\(3) $ (\counter1|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(0),
	datab => \counter1|num_out\(3),
	datac => \counter1|num_out\(2),
	datad => \counter1|num_out\(1),
	combout => \decoder1|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X16_Y21_N6
\div2|div_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[0]~26_combout\ = \div2|div_counter\(0) $ (VCC)
-- \div2|div_counter[0]~27\ = CARRY(\div2|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(0),
	datad => VCC,
	combout => \div2|div_counter[0]~26_combout\,
	cout => \div2|div_counter[0]~27\);

-- Location: LCCOMB_X16_Y20_N28
\div2|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~8_combout\ = (\div2|div_counter\(19) & (\div2|div_counter\(15) $ (((!\current_state.T2~q\ & !\current_state.T0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(19),
	datab => \div2|div_counter\(15),
	datac => \current_state.T2~q\,
	datad => \current_state.T0~q\,
	combout => \div2|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y20_N18
\div2|div_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[22]~70_combout\ = (\div2|div_counter\(22) & (\div2|div_counter[21]~69\ $ (GND))) # (!\div2|div_counter\(22) & (!\div2|div_counter[21]~69\ & VCC))
-- \div2|div_counter[22]~71\ = CARRY((\div2|div_counter\(22) & !\div2|div_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(22),
	datad => VCC,
	cin => \div2|div_counter[21]~69\,
	combout => \div2|div_counter[22]~70_combout\,
	cout => \div2|div_counter[22]~71\);

-- Location: LCCOMB_X16_Y20_N20
\div2|div_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[23]~72_combout\ = (\div2|div_counter\(23) & (!\div2|div_counter[22]~71\)) # (!\div2|div_counter\(23) & ((\div2|div_counter[22]~71\) # (GND)))
-- \div2|div_counter[23]~73\ = CARRY((!\div2|div_counter[22]~71\) # (!\div2|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(23),
	datad => VCC,
	cin => \div2|div_counter[22]~71\,
	combout => \div2|div_counter[23]~72_combout\,
	cout => \div2|div_counter[23]~73\);

-- Location: FF_X16_Y20_N21
\div2|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div2|div_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(23));

-- Location: LCCOMB_X16_Y20_N22
\div2|div_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[24]~74_combout\ = (\div2|div_counter\(24) & (\div2|div_counter[23]~73\ $ (GND))) # (!\div2|div_counter\(24) & (!\div2|div_counter[23]~73\ & VCC))
-- \div2|div_counter[24]~75\ = CARRY((\div2|div_counter\(24) & !\div2|div_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(24),
	datad => VCC,
	cin => \div2|div_counter[23]~73\,
	combout => \div2|div_counter[24]~74_combout\,
	cout => \div2|div_counter[24]~75\);

-- Location: FF_X16_Y20_N23
\div2|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div2|div_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(24));

-- Location: LCCOMB_X16_Y20_N24
\div2|div_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[25]~76_combout\ = \div2|div_counter[24]~75\ $ (\div2|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div2|div_counter\(25),
	cin => \div2|div_counter[24]~75\,
	combout => \div2|div_counter[25]~76_combout\);

-- Location: FF_X16_Y20_N25
\div2|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(25));

-- Location: LCCOMB_X15_Y21_N12
\div2|div_upper_bound[21]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[21]~8_combout\ = (!\current_state.T2~q\ & (!\current_state.spinning~q\ & (!\current_state.T0~q\ & !\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.spinning~q\,
	datac => \current_state.T0~q\,
	datad => \current_state.T1~q\,
	combout => \div2|div_upper_bound[21]~8_combout\);

-- Location: LCCOMB_X16_Y19_N0
WideOr3 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (!\current_state.T2~q\ & (!\current_state.T0~q\ & !\current_state.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T0~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X16_Y19_N8
WideOr4 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (!\current_state.T3~q\ & (!\current_state.T0~q\ & (!\current_state.T4~q\ & !\current_state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T3~q\,
	datab => \current_state.T0~q\,
	datac => \current_state.T4~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X15_Y21_N22
\div2|div_upper_bound[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[5]~9_combout\ = (\div2|div_upper_bound[21]~8_combout\) # ((\WideOr5~combout\ & ((\WideOr4~combout\))) # (!\WideOr5~combout\ & (\WideOr3~combout\ & !\WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_upper_bound[21]~8_combout\,
	datab => \WideOr3~combout\,
	datac => \WideOr5~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[5]~9_combout\);

-- Location: LCCOMB_X15_Y21_N24
\div2|div_upper_bound[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[10]~10_combout\ = (!\div2|div_upper_bound[21]~8_combout\ & ((\WideOr5~combout\) # ((\WideOr3~combout\ & \WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_upper_bound[21]~8_combout\,
	datab => \WideOr3~combout\,
	datac => \WideOr5~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[10]~10_combout\);

-- Location: LCCOMB_X15_Y21_N26
\div2|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~5_combout\ = (\div2|div_counter\(5) & (\div2|div_upper_bound[5]~9_combout\ & (\div2|div_counter\(10) $ (!\div2|div_upper_bound[10]~10_combout\)))) # (!\div2|div_counter\(5) & (!\div2|div_upper_bound[5]~9_combout\ & (\div2|div_counter\(10) $ 
-- (!\div2|div_upper_bound[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(5),
	datab => \div2|div_counter\(10),
	datac => \div2|div_upper_bound[5]~9_combout\,
	datad => \div2|div_upper_bound[10]~10_combout\,
	combout => \div2|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y21_N6
\div2|div_upper_bound[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[14]~12_combout\ = (\WideOr3~combout\) # ((\WideOr4~combout\ & (\current_state.spinning~q\)) # (!\WideOr4~combout\ & ((\WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr5~combout\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[14]~12_combout\);

-- Location: LCCOMB_X17_Y21_N28
\div2|div_upper_bound[12]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[12]~11_combout\ = (\WideOr3~combout\ & ((\current_state.spinning~q\) # ((!\WideOr4~combout\)))) # (!\WideOr3~combout\ & (\WideOr5~combout\ & ((!\WideOr4~combout\) # (!\current_state.spinning~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr5~combout\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[12]~11_combout\);

-- Location: LCCOMB_X17_Y21_N18
\div2|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~6_combout\ = (\div2|div_upper_bound[14]~12_combout\ & (\div2|div_counter\(14) & (\div2|div_counter\(12) $ (!\div2|div_upper_bound[12]~11_combout\)))) # (!\div2|div_upper_bound[14]~12_combout\ & (!\div2|div_counter\(14) & 
-- (\div2|div_counter\(12) $ (!\div2|div_upper_bound[12]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_upper_bound[14]~12_combout\,
	datab => \div2|div_counter\(12),
	datac => \div2|div_counter\(14),
	datad => \div2|div_upper_bound[12]~11_combout\,
	combout => \div2|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y21_N10
\div2|div_upper_bound[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[8]~18_combout\ = (\WideOr4~combout\ & (!\current_state.spinning~q\ & (!\WideOr5~combout\))) # (!\WideOr4~combout\ & ((\WideOr3~combout\ & (\current_state.spinning~q\)) # (!\WideOr3~combout\ & ((\WideOr5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr5~combout\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[8]~18_combout\);

-- Location: LCCOMB_X17_Y21_N26
\div2|div_upper_bound~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound~4_combout\ = (!\current_state.spinning~q\ & (\WideOr3~combout\ & (\WideOr4~combout\ $ (!\WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|div_upper_bound~4_combout\);

-- Location: LCCOMB_X17_Y20_N2
\div2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~2_combout\ = (!\WideOr4~combout\ & (!\current_state.spinning~q\ & (\WideOr3~combout\ & \WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~2_combout\);

-- Location: LCCOMB_X17_Y21_N2
\div2|div_upper_bound[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[9]~5_combout\ = (\WideOr4~combout\) # ((\WideOr3~combout\ & (!\div2|div_upper_bound~4_combout\ & !\div2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~combout\,
	datab => \WideOr4~combout\,
	datac => \div2|div_upper_bound~4_combout\,
	datad => \div2|Equal1~2_combout\,
	combout => \div2|div_upper_bound[9]~5_combout\);

-- Location: LCCOMB_X17_Y21_N14
\div2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~0_combout\ = (\div2|div_upper_bound[8]~18_combout\ & (\div2|div_counter\(8) & (\div2|div_counter\(9) $ (!\div2|div_upper_bound[9]~5_combout\)))) # (!\div2|div_upper_bound[8]~18_combout\ & (!\div2|div_counter\(8) & (\div2|div_counter\(9) $ 
-- (!\div2|div_upper_bound[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_upper_bound[8]~18_combout\,
	datab => \div2|div_counter\(9),
	datac => \div2|div_counter\(8),
	datad => \div2|div_upper_bound[9]~5_combout\,
	combout => \div2|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y21_N0
\div2|div_upper_bound[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[1]~7_combout\ = (\WideOr4~combout\) # ((\WideOr3~combout\ & ((\current_state.spinning~q\) # (!\WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr5~combout\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[1]~7_combout\);

-- Location: LCCOMB_X17_Y21_N30
\div2|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~6_combout\ = (\WideOr4~combout\ & (\current_state.spinning~q\ & (\WideOr3~combout\ & !\WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~6_combout\);

-- Location: LCCOMB_X17_Y20_N24
\div2|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~5_combout\ = (!\WideOr4~combout\ & (!\current_state.spinning~q\ & (!\WideOr3~combout\ & \WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~5_combout\);

-- Location: LCCOMB_X17_Y21_N22
\div2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~3_combout\ = \div2|div_counter\(2) $ (((\div2|Equal1~6_combout\) # ((!\div2|Equal1~5_combout\ & !\div2|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~6_combout\,
	datab => \div2|div_counter\(2),
	datac => \div2|Equal1~5_combout\,
	datad => \div2|Equal1~2_combout\,
	combout => \div2|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y19_N0
\div2|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~4_combout\ = (!\WideOr4~combout\ & (!\current_state.spinning~q\ & (!\WideOr3~combout\ & !\WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~4_combout\);

-- Location: LCCOMB_X17_Y21_N8
\div2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~1_combout\ = \div2|div_counter\(4) $ (((\div2|Equal1~6_combout\) # ((\div2|Equal1~5_combout\) # (\div2|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~6_combout\,
	datab => \div2|div_counter\(4),
	datac => \div2|Equal1~5_combout\,
	datad => \div2|Equal1~2_combout\,
	combout => \div2|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y21_N24
\div2|div_upper_bound[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[3]~6_combout\ = (\WideOr4~combout\ & (\current_state.spinning~q\ & (\WideOr3~combout\ & !\WideOr5~combout\))) # (!\WideOr4~combout\ & (!\current_state.spinning~q\ & (!\WideOr3~combout\ & \WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|div_upper_bound[3]~6_combout\);

-- Location: LCCOMB_X17_Y21_N16
\div2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~2_combout\ = (\div2|Equal0~1_combout\ & (\div2|div_counter\(3) $ (((\div2|Equal1~4_combout\ & !\div2|div_upper_bound[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(3),
	datab => \div2|Equal1~4_combout\,
	datac => \div2|Equal0~1_combout\,
	datad => \div2|div_upper_bound[3]~6_combout\,
	combout => \div2|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y21_N12
\div2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~4_combout\ = (!\div2|Equal0~3_combout\ & (\div2|Equal0~2_combout\ & (\div2|div_counter\(1) $ (!\div2|div_upper_bound[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(1),
	datab => \div2|div_upper_bound[1]~7_combout\,
	datac => \div2|Equal0~3_combout\,
	datad => \div2|Equal0~2_combout\,
	combout => \div2|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y21_N20
\div2|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~7_combout\ = (\div2|Equal0~5_combout\ & (\div2|Equal0~6_combout\ & (\div2|Equal0~0_combout\ & \div2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~5_combout\,
	datab => \div2|Equal0~6_combout\,
	datac => \div2|Equal0~0_combout\,
	datad => \div2|Equal0~4_combout\,
	combout => \div2|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y21_N20
\div2|div_upper_bound[16]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[16]~13_combout\ = (!\WideOr5~combout\ & (\WideOr4~combout\ $ (((!\current_state.spinning~q\) # (!\WideOr3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~combout\,
	datab => \WideOr3~combout\,
	datac => \WideOr4~combout\,
	datad => \current_state.spinning~q\,
	combout => \div2|div_upper_bound[16]~13_combout\);

-- Location: LCCOMB_X15_Y21_N6
\div2|div_upper_bound[17]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[17]~14_combout\ = (\WideOr5~combout\ & (\WideOr3~combout\ & (!\WideOr4~combout\ & !\current_state.spinning~q\))) # (!\WideOr5~combout\ & ((\WideOr4~combout\ & ((\current_state.spinning~q\))) # (!\WideOr4~combout\ & 
-- (!\WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~combout\,
	datab => \WideOr3~combout\,
	datac => \WideOr4~combout\,
	datad => \current_state.spinning~q\,
	combout => \div2|div_upper_bound[17]~14_combout\);

-- Location: LCCOMB_X15_Y21_N16
\div2|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~9_combout\ = (\div2|div_counter\(17) & (\div2|div_upper_bound[17]~14_combout\ & (\div2|div_counter\(16) $ (!\div2|div_upper_bound[16]~13_combout\)))) # (!\div2|div_counter\(17) & (!\div2|div_upper_bound[17]~14_combout\ & 
-- (\div2|div_counter\(16) $ (!\div2|div_upper_bound[16]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(17),
	datab => \div2|div_counter\(16),
	datac => \div2|div_upper_bound[16]~13_combout\,
	datad => \div2|div_upper_bound[17]~14_combout\,
	combout => \div2|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y20_N12
\div2|div_upper_bound[20]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[20]~15_combout\ = (\WideOr4~combout\ & ((\current_state.spinning~q\ & (\WideOr3~combout\)) # (!\current_state.spinning~q\ & (!\WideOr3~combout\ & \WideOr5~combout\)))) # (!\WideOr4~combout\ & (((\WideOr3~combout\) # 
-- (!\WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|div_upper_bound[20]~15_combout\);

-- Location: LCCOMB_X17_Y20_N28
\div2|div_upper_bound[23]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[23]~16_combout\ = (\WideOr5~combout\ & ((\WideOr4~combout\) # ((!\current_state.spinning~q\ & \WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr5~combout\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[23]~16_combout\);

-- Location: LCCOMB_X17_Y20_N16
\div2|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~10_combout\ = (\div2|div_upper_bound[20]~15_combout\ & (\div2|div_counter\(20) & (\div2|div_upper_bound[23]~16_combout\ $ (!\div2|div_counter\(23))))) # (!\div2|div_upper_bound[20]~15_combout\ & (!\div2|div_counter\(20) & 
-- (\div2|div_upper_bound[23]~16_combout\ $ (!\div2|div_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_upper_bound[20]~15_combout\,
	datab => \div2|div_upper_bound[23]~16_combout\,
	datac => \div2|div_counter\(20),
	datad => \div2|div_counter\(23),
	combout => \div2|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y21_N4
\div2|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~19_combout\ = \div2|div_counter\(0) $ (((\div2|div_upper_bound[3]~6_combout\ & (\div2|Equal1~6_combout\)) # (!\div2|div_upper_bound[3]~6_combout\ & ((!\div2|Equal1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~6_combout\,
	datab => \div2|div_upper_bound[3]~6_combout\,
	datac => \div2|div_counter\(0),
	datad => \div2|Equal1~4_combout\,
	combout => \div2|Equal0~19_combout\);

-- Location: LCCOMB_X17_Y19_N18
\div2|div_upper_bound[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_upper_bound[6]~17_combout\ = (\WideOr5~combout\ & (!\WideOr3~combout\ & ((\WideOr4~combout\) # (!\current_state.spinning~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr4~combout\,
	combout => \div2|div_upper_bound[6]~17_combout\);

-- Location: LCCOMB_X17_Y19_N16
\div2|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~20_combout\ = \div2|div_counter\(6) $ (\div2|div_upper_bound[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div2|div_counter\(6),
	datad => \div2|div_upper_bound[6]~17_combout\,
	combout => \div2|Equal0~20_combout\);

-- Location: LCCOMB_X17_Y20_N26
\div2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~1_combout\ = (!\WideOr4~combout\ & (!\current_state.spinning~q\ & (\WideOr3~combout\ & !\WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y20_N18
\div2|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~11_combout\ = (\div2|Equal1~1_combout\ & (\div2|div_counter\(24) & (\div2|Equal1~5_combout\ $ (!\div2|div_counter\(7))))) # (!\div2|Equal1~1_combout\ & (!\div2|div_counter\(24) & (\div2|Equal1~5_combout\ $ (!\div2|div_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~1_combout\,
	datab => \div2|Equal1~5_combout\,
	datac => \div2|div_counter\(7),
	datad => \div2|div_counter\(24),
	combout => \div2|Equal0~11_combout\);

-- Location: LCCOMB_X15_Y21_N18
\div2|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~12_combout\ = (\current_state.T2~q\ & (((!\div2|div_counter\(11) & !\div2|div_counter\(18))))) # (!\current_state.T2~q\ & (\div2|div_counter\(18) & (\current_state.T3~q\ $ (\div2|div_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.T3~q\,
	datac => \div2|div_counter\(11),
	datad => \div2|div_counter\(18),
	combout => \div2|Equal0~12_combout\);

-- Location: LCCOMB_X15_Y21_N10
\div2|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~14_combout\ = (\current_state.T4~q\ & (\current_state.spinning~q\ & ((\div2|div_counter\(11))))) # (!\current_state.T4~q\ & (((\current_state.T3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T4~q\,
	datab => \current_state.spinning~q\,
	datac => \current_state.T3~q\,
	datad => \div2|div_counter\(11),
	combout => \div2|Equal0~14_combout\);

-- Location: LCCOMB_X15_Y21_N30
\div2|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~16_combout\ = (\current_state.T4~q\ & (\div2|div_counter\(13) $ (((\current_state.T1~q\) # (\current_state.T0~q\))))) # (!\current_state.T4~q\ & ((\current_state.T1~q\ & (\current_state.T0~q\ $ (\div2|div_counter\(13)))) # 
-- (!\current_state.T1~q\ & (\current_state.T0~q\ & \div2|div_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T4~q\,
	datab => \current_state.T1~q\,
	datac => \current_state.T0~q\,
	datad => \div2|div_counter\(13),
	combout => \div2|Equal0~16_combout\);

-- Location: LCCOMB_X15_Y21_N28
\div2|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~15_combout\ = (\current_state.T4~q\ & ((\div2|div_counter\(13)) # ((!\current_state.T1~q\ & !\current_state.T0~q\)))) # (!\current_state.T4~q\ & (\current_state.T1~q\ $ (\current_state.T0~q\ $ (\div2|div_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T4~q\,
	datab => \current_state.T1~q\,
	datac => \current_state.T0~q\,
	datad => \div2|div_counter\(13),
	combout => \div2|Equal0~15_combout\);

-- Location: LCCOMB_X15_Y21_N4
\div2|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~17_combout\ = (\div2|Equal0~16_combout\ & (\div2|div_counter\(21) $ (((\div2|Equal0~14_combout\ & \div2|Equal0~15_combout\))))) # (!\div2|Equal0~16_combout\ & (!\div2|Equal0~15_combout\ & (\div2|Equal0~14_combout\ $ 
-- (!\div2|div_counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~14_combout\,
	datab => \div2|div_counter\(21),
	datac => \div2|Equal0~16_combout\,
	datad => \div2|Equal0~15_combout\,
	combout => \div2|Equal0~17_combout\);

-- Location: LCCOMB_X15_Y21_N8
\div2|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~13_combout\ = (\div2|Equal0~12_combout\ & ((\current_state.spinning~q\) # ((\WideOr3~combout\) # (!\WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \WideOr3~combout\,
	datac => \WideOr4~combout\,
	datad => \div2|Equal0~12_combout\,
	combout => \div2|Equal0~13_combout\);

-- Location: LCCOMB_X15_Y21_N14
\div2|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~18_combout\ = (\div2|Equal0~17_combout\ & ((\div2|Equal0~13_combout\ & ((\div2|div_counter\(22)))) # (!\div2|Equal0~13_combout\ & (\div2|Equal0~12_combout\ & !\div2|div_counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~12_combout\,
	datab => \div2|Equal0~17_combout\,
	datac => \div2|Equal0~13_combout\,
	datad => \div2|div_counter\(22),
	combout => \div2|Equal0~18_combout\);

-- Location: LCCOMB_X16_Y21_N0
\div2|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~21_combout\ = (!\div2|Equal0~19_combout\ & (!\div2|Equal0~20_combout\ & (\div2|Equal0~11_combout\ & \div2|Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~19_combout\,
	datab => \div2|Equal0~20_combout\,
	datac => \div2|Equal0~11_combout\,
	datad => \div2|Equal0~18_combout\,
	combout => \div2|Equal0~21_combout\);

-- Location: LCCOMB_X16_Y21_N2
\div2|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~22_combout\ = (\div2|Equal0~9_combout\ & (\div2|Equal0~10_combout\ & \div2|Equal0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~9_combout\,
	datac => \div2|Equal0~10_combout\,
	datad => \div2|Equal0~21_combout\,
	combout => \div2|Equal0~22_combout\);

-- Location: LCCOMB_X16_Y21_N4
\div2|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal0~23_combout\ = (\div2|Equal0~8_combout\ & (!\div2|div_counter\(25) & (\div2|Equal0~7_combout\ & \div2|Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal0~8_combout\,
	datab => \div2|div_counter\(25),
	datac => \div2|Equal0~7_combout\,
	datad => \div2|Equal0~22_combout\,
	combout => \div2|Equal0~23_combout\);

-- Location: FF_X16_Y21_N7
\div2|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(0));

-- Location: LCCOMB_X16_Y21_N8
\div2|div_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[1]~28_combout\ = (\div2|div_counter\(1) & (!\div2|div_counter[0]~27\)) # (!\div2|div_counter\(1) & ((\div2|div_counter[0]~27\) # (GND)))
-- \div2|div_counter[1]~29\ = CARRY((!\div2|div_counter[0]~27\) # (!\div2|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(1),
	datad => VCC,
	cin => \div2|div_counter[0]~27\,
	combout => \div2|div_counter[1]~28_combout\,
	cout => \div2|div_counter[1]~29\);

-- Location: FF_X16_Y21_N9
\div2|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(1));

-- Location: LCCOMB_X16_Y21_N10
\div2|div_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[2]~30_combout\ = (\div2|div_counter\(2) & (\div2|div_counter[1]~29\ $ (GND))) # (!\div2|div_counter\(2) & (!\div2|div_counter[1]~29\ & VCC))
-- \div2|div_counter[2]~31\ = CARRY((\div2|div_counter\(2) & !\div2|div_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(2),
	datad => VCC,
	cin => \div2|div_counter[1]~29\,
	combout => \div2|div_counter[2]~30_combout\,
	cout => \div2|div_counter[2]~31\);

-- Location: FF_X16_Y21_N11
\div2|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(2));

-- Location: LCCOMB_X16_Y21_N12
\div2|div_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[3]~32_combout\ = (\div2|div_counter\(3) & (!\div2|div_counter[2]~31\)) # (!\div2|div_counter\(3) & ((\div2|div_counter[2]~31\) # (GND)))
-- \div2|div_counter[3]~33\ = CARRY((!\div2|div_counter[2]~31\) # (!\div2|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(3),
	datad => VCC,
	cin => \div2|div_counter[2]~31\,
	combout => \div2|div_counter[3]~32_combout\,
	cout => \div2|div_counter[3]~33\);

-- Location: FF_X16_Y21_N13
\div2|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(3));

-- Location: LCCOMB_X16_Y21_N14
\div2|div_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[4]~34_combout\ = (\div2|div_counter\(4) & (\div2|div_counter[3]~33\ $ (GND))) # (!\div2|div_counter\(4) & (!\div2|div_counter[3]~33\ & VCC))
-- \div2|div_counter[4]~35\ = CARRY((\div2|div_counter\(4) & !\div2|div_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(4),
	datad => VCC,
	cin => \div2|div_counter[3]~33\,
	combout => \div2|div_counter[4]~34_combout\,
	cout => \div2|div_counter[4]~35\);

-- Location: FF_X16_Y21_N15
\div2|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(4));

-- Location: LCCOMB_X16_Y21_N16
\div2|div_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[5]~36_combout\ = (\div2|div_counter\(5) & (!\div2|div_counter[4]~35\)) # (!\div2|div_counter\(5) & ((\div2|div_counter[4]~35\) # (GND)))
-- \div2|div_counter[5]~37\ = CARRY((!\div2|div_counter[4]~35\) # (!\div2|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(5),
	datad => VCC,
	cin => \div2|div_counter[4]~35\,
	combout => \div2|div_counter[5]~36_combout\,
	cout => \div2|div_counter[5]~37\);

-- Location: FF_X16_Y21_N17
\div2|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(5));

-- Location: LCCOMB_X16_Y21_N18
\div2|div_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[6]~38_combout\ = (\div2|div_counter\(6) & (\div2|div_counter[5]~37\ $ (GND))) # (!\div2|div_counter\(6) & (!\div2|div_counter[5]~37\ & VCC))
-- \div2|div_counter[6]~39\ = CARRY((\div2|div_counter\(6) & !\div2|div_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(6),
	datad => VCC,
	cin => \div2|div_counter[5]~37\,
	combout => \div2|div_counter[6]~38_combout\,
	cout => \div2|div_counter[6]~39\);

-- Location: FF_X16_Y21_N19
\div2|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(6));

-- Location: LCCOMB_X16_Y21_N20
\div2|div_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[7]~40_combout\ = (\div2|div_counter\(7) & (!\div2|div_counter[6]~39\)) # (!\div2|div_counter\(7) & ((\div2|div_counter[6]~39\) # (GND)))
-- \div2|div_counter[7]~41\ = CARRY((!\div2|div_counter[6]~39\) # (!\div2|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(7),
	datad => VCC,
	cin => \div2|div_counter[6]~39\,
	combout => \div2|div_counter[7]~40_combout\,
	cout => \div2|div_counter[7]~41\);

-- Location: FF_X16_Y21_N21
\div2|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(7));

-- Location: LCCOMB_X16_Y21_N22
\div2|div_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[8]~42_combout\ = (\div2|div_counter\(8) & (\div2|div_counter[7]~41\ $ (GND))) # (!\div2|div_counter\(8) & (!\div2|div_counter[7]~41\ & VCC))
-- \div2|div_counter[8]~43\ = CARRY((\div2|div_counter\(8) & !\div2|div_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(8),
	datad => VCC,
	cin => \div2|div_counter[7]~41\,
	combout => \div2|div_counter[8]~42_combout\,
	cout => \div2|div_counter[8]~43\);

-- Location: FF_X16_Y21_N23
\div2|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(8));

-- Location: LCCOMB_X16_Y21_N24
\div2|div_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[9]~44_combout\ = (\div2|div_counter\(9) & (!\div2|div_counter[8]~43\)) # (!\div2|div_counter\(9) & ((\div2|div_counter[8]~43\) # (GND)))
-- \div2|div_counter[9]~45\ = CARRY((!\div2|div_counter[8]~43\) # (!\div2|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(9),
	datad => VCC,
	cin => \div2|div_counter[8]~43\,
	combout => \div2|div_counter[9]~44_combout\,
	cout => \div2|div_counter[9]~45\);

-- Location: FF_X16_Y21_N25
\div2|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(9));

-- Location: LCCOMB_X16_Y21_N26
\div2|div_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[10]~46_combout\ = (\div2|div_counter\(10) & (\div2|div_counter[9]~45\ $ (GND))) # (!\div2|div_counter\(10) & (!\div2|div_counter[9]~45\ & VCC))
-- \div2|div_counter[10]~47\ = CARRY((\div2|div_counter\(10) & !\div2|div_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(10),
	datad => VCC,
	cin => \div2|div_counter[9]~45\,
	combout => \div2|div_counter[10]~46_combout\,
	cout => \div2|div_counter[10]~47\);

-- Location: FF_X16_Y21_N27
\div2|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(10));

-- Location: LCCOMB_X16_Y21_N28
\div2|div_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[11]~48_combout\ = (\div2|div_counter\(11) & (!\div2|div_counter[10]~47\)) # (!\div2|div_counter\(11) & ((\div2|div_counter[10]~47\) # (GND)))
-- \div2|div_counter[11]~49\ = CARRY((!\div2|div_counter[10]~47\) # (!\div2|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(11),
	datad => VCC,
	cin => \div2|div_counter[10]~47\,
	combout => \div2|div_counter[11]~48_combout\,
	cout => \div2|div_counter[11]~49\);

-- Location: FF_X16_Y21_N29
\div2|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(11));

-- Location: LCCOMB_X16_Y21_N30
\div2|div_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[12]~50_combout\ = (\div2|div_counter\(12) & (\div2|div_counter[11]~49\ $ (GND))) # (!\div2|div_counter\(12) & (!\div2|div_counter[11]~49\ & VCC))
-- \div2|div_counter[12]~51\ = CARRY((\div2|div_counter\(12) & !\div2|div_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(12),
	datad => VCC,
	cin => \div2|div_counter[11]~49\,
	combout => \div2|div_counter[12]~50_combout\,
	cout => \div2|div_counter[12]~51\);

-- Location: FF_X16_Y21_N31
\div2|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(12));

-- Location: LCCOMB_X16_Y20_N0
\div2|div_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[13]~52_combout\ = (\div2|div_counter\(13) & (!\div2|div_counter[12]~51\)) # (!\div2|div_counter\(13) & ((\div2|div_counter[12]~51\) # (GND)))
-- \div2|div_counter[13]~53\ = CARRY((!\div2|div_counter[12]~51\) # (!\div2|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(13),
	datad => VCC,
	cin => \div2|div_counter[12]~51\,
	combout => \div2|div_counter[13]~52_combout\,
	cout => \div2|div_counter[13]~53\);

-- Location: FF_X16_Y20_N1
\div2|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(13));

-- Location: LCCOMB_X16_Y20_N2
\div2|div_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[14]~54_combout\ = (\div2|div_counter\(14) & (\div2|div_counter[13]~53\ $ (GND))) # (!\div2|div_counter\(14) & (!\div2|div_counter[13]~53\ & VCC))
-- \div2|div_counter[14]~55\ = CARRY((\div2|div_counter\(14) & !\div2|div_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(14),
	datad => VCC,
	cin => \div2|div_counter[13]~53\,
	combout => \div2|div_counter[14]~54_combout\,
	cout => \div2|div_counter[14]~55\);

-- Location: FF_X16_Y20_N3
\div2|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(14));

-- Location: LCCOMB_X16_Y20_N4
\div2|div_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[15]~56_combout\ = (\div2|div_counter\(15) & (!\div2|div_counter[14]~55\)) # (!\div2|div_counter\(15) & ((\div2|div_counter[14]~55\) # (GND)))
-- \div2|div_counter[15]~57\ = CARRY((!\div2|div_counter[14]~55\) # (!\div2|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(15),
	datad => VCC,
	cin => \div2|div_counter[14]~55\,
	combout => \div2|div_counter[15]~56_combout\,
	cout => \div2|div_counter[15]~57\);

-- Location: FF_X16_Y20_N5
\div2|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(15));

-- Location: LCCOMB_X16_Y20_N6
\div2|div_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[16]~58_combout\ = (\div2|div_counter\(16) & (\div2|div_counter[15]~57\ $ (GND))) # (!\div2|div_counter\(16) & (!\div2|div_counter[15]~57\ & VCC))
-- \div2|div_counter[16]~59\ = CARRY((\div2|div_counter\(16) & !\div2|div_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(16),
	datad => VCC,
	cin => \div2|div_counter[15]~57\,
	combout => \div2|div_counter[16]~58_combout\,
	cout => \div2|div_counter[16]~59\);

-- Location: FF_X16_Y20_N7
\div2|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(16));

-- Location: LCCOMB_X16_Y20_N8
\div2|div_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[17]~60_combout\ = (\div2|div_counter\(17) & (!\div2|div_counter[16]~59\)) # (!\div2|div_counter\(17) & ((\div2|div_counter[16]~59\) # (GND)))
-- \div2|div_counter[17]~61\ = CARRY((!\div2|div_counter[16]~59\) # (!\div2|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(17),
	datad => VCC,
	cin => \div2|div_counter[16]~59\,
	combout => \div2|div_counter[17]~60_combout\,
	cout => \div2|div_counter[17]~61\);

-- Location: FF_X16_Y20_N9
\div2|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(17));

-- Location: LCCOMB_X16_Y20_N10
\div2|div_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[18]~62_combout\ = (\div2|div_counter\(18) & (\div2|div_counter[17]~61\ $ (GND))) # (!\div2|div_counter\(18) & (!\div2|div_counter[17]~61\ & VCC))
-- \div2|div_counter[18]~63\ = CARRY((\div2|div_counter\(18) & !\div2|div_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(18),
	datad => VCC,
	cin => \div2|div_counter[17]~61\,
	combout => \div2|div_counter[18]~62_combout\,
	cout => \div2|div_counter[18]~63\);

-- Location: FF_X16_Y20_N11
\div2|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(18));

-- Location: LCCOMB_X16_Y20_N12
\div2|div_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[19]~64_combout\ = (\div2|div_counter\(19) & (!\div2|div_counter[18]~63\)) # (!\div2|div_counter\(19) & ((\div2|div_counter[18]~63\) # (GND)))
-- \div2|div_counter[19]~65\ = CARRY((!\div2|div_counter[18]~63\) # (!\div2|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div2|div_counter\(19),
	datad => VCC,
	cin => \div2|div_counter[18]~63\,
	combout => \div2|div_counter[19]~64_combout\,
	cout => \div2|div_counter[19]~65\);

-- Location: FF_X16_Y20_N13
\div2|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(19));

-- Location: LCCOMB_X16_Y20_N14
\div2|div_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[20]~66_combout\ = (\div2|div_counter\(20) & (\div2|div_counter[19]~65\ $ (GND))) # (!\div2|div_counter\(20) & (!\div2|div_counter[19]~65\ & VCC))
-- \div2|div_counter[20]~67\ = CARRY((\div2|div_counter\(20) & !\div2|div_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(20),
	datad => VCC,
	cin => \div2|div_counter[19]~65\,
	combout => \div2|div_counter[20]~66_combout\,
	cout => \div2|div_counter[20]~67\);

-- Location: FF_X16_Y20_N15
\div2|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(20));

-- Location: LCCOMB_X16_Y20_N16
\div2|div_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|div_counter[21]~68_combout\ = (\div2|div_counter\(21) & (!\div2|div_counter[20]~67\)) # (!\div2|div_counter\(21) & ((\div2|div_counter[20]~67\) # (GND)))
-- \div2|div_counter[21]~69\ = CARRY((!\div2|div_counter[20]~67\) # (!\div2|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(21),
	datad => VCC,
	cin => \div2|div_counter[20]~67\,
	combout => \div2|div_counter[21]~68_combout\,
	cout => \div2|div_counter[21]~69\);

-- Location: FF_X16_Y20_N17
\div2|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(21));

-- Location: FF_X16_Y20_N19
\div2|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div2|div_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \div2|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div2|div_counter\(22));

-- Location: LCCOMB_X16_Y20_N30
\div2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~0_combout\ = (!\current_state.spinning~q\ & (!\current_state.T0~q\ & (!\current_state.T2~q\ & !\current_state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T3~q\,
	combout => \div2|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y20_N26
\div2|divided_clk~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~9_combout\ = (\div2|div_counter\(22) & (((!\WideOr3~combout\) # (!\WideOr4~combout\)) # (!\div2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~0_combout\,
	datab => \div2|div_counter\(22),
	datac => \WideOr4~combout\,
	datad => \WideOr3~combout\,
	combout => \div2|divided_clk~9_combout\);

-- Location: LCCOMB_X17_Y20_N8
\div2|divided_clk~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~7_combout\ = (\div2|Equal1~1_combout\ & ((!\div2|div_counter\(24)))) # (!\div2|Equal1~1_combout\ & (!\div2|divided_clk~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div2|Equal1~1_combout\,
	datac => \div2|divided_clk~9_combout\,
	datad => \div2|div_counter\(24),
	combout => \div2|divided_clk~7_combout\);

-- Location: LCCOMB_X17_Y20_N4
\div2|divided_clk~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~6_combout\ = (\div2|Equal1~2_combout\ & ((!\div2|div_counter\(23)))) # (!\div2|Equal1~2_combout\ & (\div2|divided_clk~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div2|Equal1~2_combout\,
	datac => \div2|divided_clk~7_combout\,
	datad => \div2|div_counter\(23),
	combout => \div2|divided_clk~6_combout\);

-- Location: LCCOMB_X17_Y20_N22
\div2|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|Equal1~3_combout\ = (\WideOr4~combout\ & (!\current_state.spinning~q\ & (!\WideOr3~combout\ & \WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \current_state.spinning~q\,
	datac => \WideOr3~combout\,
	datad => \WideOr5~combout\,
	combout => \div2|Equal1~3_combout\);

-- Location: LCCOMB_X17_Y20_N30
\div2|divided_clk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~4_combout\ = (\div2|Equal1~3_combout\ & ((!\div2|div_counter\(23)))) # (!\div2|Equal1~3_combout\ & (\div2|divided_clk~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div2|divided_clk~6_combout\,
	datac => \div2|Equal1~3_combout\,
	datad => \div2|div_counter\(23),
	combout => \div2|divided_clk~4_combout\);

-- Location: LCCOMB_X17_Y20_N14
\div2|divided_clk~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~3_combout\ = (\div2|Equal1~4_combout\ & ((!\div2|div_counter\(22)))) # (!\div2|Equal1~4_combout\ & (\div2|divided_clk~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div2|Equal1~4_combout\,
	datac => \div2|divided_clk~4_combout\,
	datad => \div2|div_counter\(22),
	combout => \div2|divided_clk~3_combout\);

-- Location: LCCOMB_X17_Y20_N10
\div2|divided_clk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~2_combout\ = (\div2|Equal1~5_combout\ & (\div2|div_counter\(22))) # (!\div2|Equal1~5_combout\ & ((!\div2|divided_clk~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(22),
	datac => \div2|divided_clk~3_combout\,
	datad => \div2|Equal1~5_combout\,
	combout => \div2|divided_clk~2_combout\);

-- Location: LCCOMB_X17_Y20_N0
\div2|divided_clk\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div2|divided_clk~combout\ = LCELL((\div2|Equal1~6_combout\ & (\div2|div_counter\(22))) # (!\div2|Equal1~6_combout\ & ((\div2|divided_clk~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div2|div_counter\(22),
	datac => \div2|Equal1~6_combout\,
	datad => \div2|divided_clk~2_combout\,
	combout => \div2|divided_clk~combout\);

-- Location: CLKCTRL_G10
\div2|divided_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div2|divided_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div2|divided_clk~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y27_N24
\counter2|num_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out[0]~6_combout\ = !\counter2|num_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2|num_out\(0),
	combout => \counter2|num_out[0]~6_combout\);

-- Location: FF_X26_Y27_N25
\counter2|num_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div2|divided_clk~clkctrl_outclk\,
	d => \counter2|num_out[0]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|num_out\(0));

-- Location: IOIBUF_X0_Y25_N22
\up_down_switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down_switch(2),
	o => \up_down_switch[2]~input_o\);

-- Location: LCCOMB_X26_Y27_N0
\counter2|num_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~4_combout\ = (\counter2|num_out\(1) & ((\counter2|num_out\(0)) # (!\counter2|num_out\(2)))) # (!\counter2|num_out\(1) & (!\counter2|num_out\(2) & \counter2|num_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(1),
	datac => \counter2|num_out\(2),
	datad => \counter2|num_out\(0),
	combout => \counter2|num_out~4_combout\);

-- Location: LCCOMB_X26_Y27_N10
\counter2|num_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~5_combout\ = (\up_down_switch[2]~input_o\ & (\counter2|num_out\(3) $ (((\counter2|num_out\(2) & \counter2|num_out~4_combout\))))) # (!\up_down_switch[2]~input_o\ & (\counter2|num_out\(3) & ((\counter2|num_out\(2)) # 
-- (\counter2|num_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[2]~input_o\,
	datab => \counter2|num_out\(2),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out~4_combout\,
	combout => \counter2|num_out~5_combout\);

-- Location: FF_X26_Y27_N11
\counter2|num_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div2|divided_clk~clkctrl_outclk\,
	d => \counter2|num_out~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|num_out\(3));

-- Location: LCCOMB_X26_Y27_N12
\counter2|num_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~0_combout\ = (\up_down_switch[2]~input_o\ & ((!\counter2|num_out\(0)) # (!\counter2|num_out\(1)))) # (!\up_down_switch[2]~input_o\ & ((\counter2|num_out\(1)) # (\counter2|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[2]~input_o\,
	datac => \counter2|num_out\(1),
	datad => \counter2|num_out\(0),
	combout => \counter2|num_out~0_combout\);

-- Location: LCCOMB_X26_Y27_N8
\counter2|num_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~1_combout\ = (\counter2|num_out\(2) & (((\counter2|num_out~0_combout\)))) # (!\counter2|num_out\(2) & (!\counter2|num_out~0_combout\ & ((\counter2|num_out\(3)) # (\counter2|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(3),
	datab => \counter2|num_out\(0),
	datac => \counter2|num_out\(2),
	datad => \counter2|num_out~0_combout\,
	combout => \counter2|num_out~1_combout\);

-- Location: FF_X26_Y27_N9
\counter2|num_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div2|divided_clk~clkctrl_outclk\,
	d => \counter2|num_out~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|num_out\(2));

-- Location: LCCOMB_X26_Y27_N6
\counter2|num_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~2_combout\ = (!\counter2|num_out\(2) & !\counter2|num_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2|num_out\(2),
	datad => \counter2|num_out\(3),
	combout => \counter2|num_out~2_combout\);

-- Location: LCCOMB_X26_Y27_N22
\counter2|num_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|num_out~3_combout\ = (\counter2|num_out\(1) & (\up_down_switch[2]~input_o\ $ ((\counter2|num_out\(0))))) # (!\counter2|num_out\(1) & (!\counter2|num_out~2_combout\ & (\up_down_switch[2]~input_o\ $ (!\counter2|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[2]~input_o\,
	datab => \counter2|num_out\(0),
	datac => \counter2|num_out\(1),
	datad => \counter2|num_out~2_combout\,
	combout => \counter2|num_out~3_combout\);

-- Location: FF_X26_Y27_N23
\counter2|num_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div2|divided_clk~clkctrl_outclk\,
	d => \counter2|num_out~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|num_out\(1));

-- Location: LCCOMB_X26_Y27_N28
\decoder2|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[0]~0_combout\ = (\counter2|num_out\(3) & (\counter2|num_out\(0) & (\counter2|num_out\(1) $ (\counter2|num_out\(2))))) # (!\counter2|num_out\(3) & (!\counter2|num_out\(1) & (\counter2|num_out\(0) $ (\counter2|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\decoder2|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[1]~1_combout\ = (\counter2|num_out\(1) & ((\counter2|num_out\(0) & (\counter2|num_out\(3))) # (!\counter2|num_out\(0) & ((\counter2|num_out\(2)))))) # (!\counter2|num_out\(1) & (\counter2|num_out\(2) & (\counter2|num_out\(0) $ 
-- (\counter2|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X26_Y27_N4
\decoder2|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[2]~2_combout\ = (\counter2|num_out\(3) & (\counter2|num_out\(2) & ((\counter2|num_out\(1)) # (!\counter2|num_out\(0))))) # (!\counter2|num_out\(3) & (!\counter2|num_out\(0) & (\counter2|num_out\(1) & !\counter2|num_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X26_Y27_N18
\decoder2|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[3]~3_combout\ = (\counter2|num_out\(1) & ((\counter2|num_out\(0) & ((\counter2|num_out\(2)))) # (!\counter2|num_out\(0) & (\counter2|num_out\(3) & !\counter2|num_out\(2))))) # (!\counter2|num_out\(1) & (!\counter2|num_out\(3) & 
-- (\counter2|num_out\(0) $ (\counter2|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X26_Y27_N20
\decoder2|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[4]~4_combout\ = (\counter2|num_out\(1) & (\counter2|num_out\(0) & (!\counter2|num_out\(3)))) # (!\counter2|num_out\(1) & ((\counter2|num_out\(2) & ((!\counter2|num_out\(3)))) # (!\counter2|num_out\(2) & (\counter2|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X26_Y28_N8
\decoder2|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[5]~5_combout\ = (\counter2|num_out\(1) & (!\counter2|num_out\(3) & ((\counter2|num_out\(0)) # (!\counter2|num_out\(2))))) # (!\counter2|num_out\(1) & (\counter2|num_out\(0) & (\counter2|num_out\(2) $ (!\counter2|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(1),
	datab => \counter2|num_out\(2),
	datac => \counter2|num_out\(0),
	datad => \counter2|num_out\(3),
	combout => \decoder2|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X26_Y27_N30
\decoder2|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[6]~6_combout\ = (\counter2|num_out\(0) & ((\counter2|num_out\(3)) # (\counter2|num_out\(1) $ (\counter2|num_out\(2))))) # (!\counter2|num_out\(0) & ((\counter2|num_out\(1)) # (\counter2|num_out\(3) $ (\counter2|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter2|num_out\(3),
	datad => \counter2|num_out\(2),
	combout => \decoder2|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X19_Y18_N6
\div3|div_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[0]~26_combout\ = \div3|div_counter\(0) $ (VCC)
-- \div3|div_counter[0]~27\ = CARRY(\div3|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(0),
	datad => VCC,
	combout => \div3|div_counter[0]~26_combout\,
	cout => \div3|div_counter[0]~27\);

-- Location: LCCOMB_X16_Y19_N16
\div3|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal1~3_combout\ = (\current_state.spinning~q\) # ((\current_state.T0~q\ & ((\current_state.T2~q\) # (\current_state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T2~q\,
	datab => \current_state.spinning~q\,
	datac => \current_state.T1~q\,
	datad => \current_state.T0~q\,
	combout => \div3|Equal1~3_combout\);

-- Location: LCCOMB_X20_Y17_N20
\div3|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~8_combout\ = (\div3|div_counter\(5) & (!\div3|div_counter\(7) & !\div3|Equal1~3_combout\)) # (!\div3|div_counter\(5) & (\div3|div_counter\(7) & \div3|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(5),
	datac => \div3|div_counter\(7),
	datad => \div3|Equal1~3_combout\,
	combout => \div3|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y19_N26
\WideOr10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = (!\current_state.spinning~q\ & (!\current_state.T2~q\ & !\current_state.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.spinning~q\,
	datac => \current_state.T2~q\,
	datad => \current_state.T1~q\,
	combout => \WideOr10~1_combout\);

-- Location: LCCOMB_X20_Y17_N26
\div3|div_upper_bound~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_upper_bound~0_combout\ = (\current_state.spinning~q\) # ((\current_state.T1~q\) # ((\current_state.T2~q\ & \current_state.T0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T2~q\,
	datac => \current_state.T1~q\,
	datad => \current_state.T0~q\,
	combout => \div3|div_upper_bound~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\div3|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~18_combout\ = (\div3|div_upper_bound~0_combout\ & (!\div3|div_counter\(2) & !\div3|div_counter\(4))) # (!\div3|div_upper_bound~0_combout\ & (\div3|div_counter\(2) & \div3|div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_upper_bound~0_combout\,
	datac => \div3|div_counter\(2),
	datad => \div3|div_counter\(4),
	combout => \div3|Equal0~18_combout\);

-- Location: LCCOMB_X20_Y17_N28
\div3|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~15_combout\ = (\current_state.T1~q\ & (\div3|div_counter\(20) & ((\div3|div_counter\(23))))) # (!\current_state.T1~q\ & (!\div3|div_counter\(23) & (\div3|div_counter\(20) $ (\WideOr10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(20),
	datab => \current_state.T1~q\,
	datac => \WideOr10~1_combout\,
	datad => \div3|div_counter\(23),
	combout => \div3|Equal0~15_combout\);

-- Location: LCCOMB_X20_Y17_N8
\div3|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~19_combout\ = (\div3|Equal0~18_combout\ & ((\div0|div_upper_bound[23]~0_combout\ & ((\div3|Equal0~15_combout\))) # (!\div0|div_upper_bound[23]~0_combout\ & (!\WideOr10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~1_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div3|Equal0~18_combout\,
	datad => \div3|Equal0~15_combout\,
	combout => \div3|Equal0~19_combout\);

-- Location: LCCOMB_X20_Y17_N16
\div3|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~10_combout\ = (\current_state.spinning~q\) # ((\current_state.T1~q\ & (\current_state.T0~q\)) # (!\current_state.T1~q\ & ((\current_state.T2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \current_state.T1~q\,
	datad => \current_state.T2~q\,
	combout => \div3|Equal0~10_combout\);

-- Location: LCCOMB_X20_Y17_N6
\div3|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~11_combout\ = (\current_state.T1~q\ & (!\div3|div_counter\(9) & (\div3|div_counter\(17) $ (\div3|Equal0~10_combout\)))) # (!\current_state.T1~q\ & (!\div3|div_counter\(17) & (\div3|div_counter\(9) $ (\div3|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(17),
	datab => \current_state.T1~q\,
	datac => \div3|div_counter\(9),
	datad => \div3|Equal0~10_combout\,
	combout => \div3|Equal0~11_combout\);

-- Location: LCCOMB_X20_Y17_N4
\div3|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~12_combout\ = (\div0|div_upper_bound[23]~0_combout\) # ((!\div3|div_counter\(20) & (!\div3|div_counter\(23) & \div3|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(20),
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div3|div_counter\(23),
	datad => \div3|Equal0~11_combout\,
	combout => \div3|Equal0~12_combout\);

-- Location: LCCOMB_X19_Y17_N26
\div3|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~20_combout\ = (\div3|div_counter\(18)) # (\div3|div_counter\(20) $ (\div3|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(18),
	datac => \div3|div_counter\(20),
	datad => \div3|div_counter\(23),
	combout => \div3|Equal0~20_combout\);

-- Location: LCCOMB_X20_Y17_N2
\div3|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~9_combout\ = \div3|div_counter\(17) $ (((!\current_state.spinning~q\ & (!\current_state.T0~q\ & \current_state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \current_state.T1~q\,
	datad => \div3|div_counter\(17),
	combout => \div3|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y17_N14
\div3|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~21_combout\ = (!\div3|Equal0~9_combout\ & ((\div3|div_upper_bound~0_combout\ & (!\div3|div_counter\(4) & !\div3|div_counter\(2))) # (!\div3|div_upper_bound~0_combout\ & (\div3|div_counter\(4) & \div3|div_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_upper_bound~0_combout\,
	datab => \div3|div_counter\(4),
	datac => \div3|div_counter\(2),
	datad => \div3|Equal0~9_combout\,
	combout => \div3|Equal0~21_combout\);

-- Location: LCCOMB_X20_Y17_N10
\div3|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~14_combout\ = \div3|div_counter\(9) $ (((!\current_state.T1~q\ & (!\current_state.spinning~q\ & !\current_state.T2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \current_state.spinning~q\,
	datac => \div3|div_counter\(9),
	datad => \current_state.T2~q\,
	combout => \div3|Equal0~14_combout\);

-- Location: LCCOMB_X20_Y17_N12
\div3|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~22_combout\ = (!\div3|Equal0~20_combout\ & (\div3|Equal0~8_combout\ & (\div3|Equal0~21_combout\ & !\div3|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal0~20_combout\,
	datab => \div3|Equal0~8_combout\,
	datac => \div3|Equal0~21_combout\,
	datad => \div3|Equal0~14_combout\,
	combout => \div3|Equal0~22_combout\);

-- Location: LCCOMB_X20_Y17_N30
\div3|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~23_combout\ = (!\div3|Equal0~19_combout\ & (!\div3|Equal0~12_combout\ & \div3|Equal0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div3|Equal0~19_combout\,
	datac => \div3|Equal0~12_combout\,
	datad => \div3|Equal0~22_combout\,
	combout => \div3|Equal0~23_combout\);

-- Location: LCCOMB_X20_Y17_N0
\div3|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~13_combout\ = (\div3|div_counter\(18) & ((\div3|div_upper_bound~0_combout\ & (!\div3|div_counter\(4) & !\div3|div_counter\(2))) # (!\div3|div_upper_bound~0_combout\ & (\div3|div_counter\(4) & \div3|div_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_upper_bound~0_combout\,
	datab => \div3|div_counter\(4),
	datac => \div3|div_counter\(2),
	datad => \div3|div_counter\(18),
	combout => \div3|Equal0~13_combout\);

-- Location: LCCOMB_X20_Y17_N18
\div3|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~16_combout\ = (\div3|Equal0~14_combout\) # ((\div0|div_upper_bound[23]~0_combout\ & ((!\div3|Equal0~15_combout\))) # (!\div0|div_upper_bound[23]~0_combout\ & (\WideOr10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~1_combout\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div3|Equal0~15_combout\,
	datad => \div3|Equal0~14_combout\,
	combout => \div3|Equal0~16_combout\);

-- Location: LCCOMB_X20_Y17_N24
\div3|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~17_combout\ = (!\div3|Equal0~9_combout\ & (\div3|Equal0~13_combout\ & (\div3|Equal0~12_combout\ & !\div3|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal0~9_combout\,
	datab => \div3|Equal0~13_combout\,
	datac => \div3|Equal0~12_combout\,
	datad => \div3|Equal0~16_combout\,
	combout => \div3|Equal0~17_combout\);

-- Location: LCCOMB_X19_Y17_N30
\div3|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~24_combout\ = (\div3|div_counter\(22) & (\div3|Equal0~8_combout\ & ((\div3|Equal0~17_combout\)))) # (!\div3|div_counter\(22) & (((\div3|Equal0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal0~8_combout\,
	datab => \div3|div_counter\(22),
	datac => \div3|Equal0~23_combout\,
	datad => \div3|Equal0~17_combout\,
	combout => \div3|Equal0~24_combout\);

-- Location: LCCOMB_X20_Y18_N8
\div3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~2_combout\ = \div3|div_counter\(8) $ (((\div0|div_upper_bound[23]~0_combout\ & (!\current_state.T1~q\ & \WideOr10~1_combout\)) # (!\div0|div_upper_bound[23]~0_combout\ & ((!\WideOr10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr10~1_combout\,
	datad => \div3|div_counter\(8),
	combout => \div3|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y18_N14
\div3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~1_combout\ = \div3|div_counter\(11) $ (((\div0|div_upper_bound[23]~0_combout\ & (\current_state.T1~q\ & !\WideOr10~1_combout\)) # (!\div0|div_upper_bound[23]~0_combout\ & ((\WideOr10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \WideOr10~1_combout\,
	datad => \div3|div_counter\(11),
	combout => \div3|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y19_N30
\div3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal1~1_combout\ = (\current_state.T1~q\ & (!\current_state.T0~q\ & !\current_state.spinning~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.T1~q\,
	datac => \current_state.T0~q\,
	datad => \current_state.spinning~q\,
	combout => \div3|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y18_N12
\div3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~0_combout\ = (\div3|div_counter\(0) & (!\div3|Equal1~3_combout\ & (\div3|Equal1~1_combout\ $ (\div3|div_counter\(1))))) # (!\div3|div_counter\(0) & (((\div3|Equal1~3_combout\ & !\div3|div_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal1~1_combout\,
	datab => \div3|div_counter\(0),
	datac => \div3|Equal1~3_combout\,
	datad => \div3|div_counter\(1),
	combout => \div3|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\div3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~3_combout\ = (!\div3|Equal0~2_combout\ & (\div3|Equal0~1_combout\ & \div3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div3|Equal0~2_combout\,
	datac => \div3|Equal0~1_combout\,
	datad => \div3|Equal0~0_combout\,
	combout => \div3|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y17_N20
\div3|div_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[23]~72_combout\ = (\div3|div_counter\(23) & (!\div3|div_counter[22]~71\)) # (!\div3|div_counter\(23) & ((\div3|div_counter[22]~71\) # (GND)))
-- \div3|div_counter[23]~73\ = CARRY((!\div3|div_counter[22]~71\) # (!\div3|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(23),
	datad => VCC,
	cin => \div3|div_counter[22]~71\,
	combout => \div3|div_counter[23]~72_combout\,
	cout => \div3|div_counter[23]~73\);

-- Location: LCCOMB_X19_Y17_N22
\div3|div_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[24]~74_combout\ = (\div3|div_counter\(24) & (\div3|div_counter[23]~73\ $ (GND))) # (!\div3|div_counter\(24) & (!\div3|div_counter[23]~73\ & VCC))
-- \div3|div_counter[24]~75\ = CARRY((\div3|div_counter\(24) & !\div3|div_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(24),
	datad => VCC,
	cin => \div3|div_counter[23]~73\,
	combout => \div3|div_counter[24]~74_combout\,
	cout => \div3|div_counter[24]~75\);

-- Location: FF_X19_Y17_N23
\div3|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div3|div_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(24));

-- Location: LCCOMB_X19_Y17_N24
\div3|div_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[25]~76_combout\ = \div3|div_counter[24]~75\ $ (\div3|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div3|div_counter\(25),
	cin => \div3|div_counter[24]~75\,
	combout => \div3|div_counter[25]~76_combout\);

-- Location: FF_X19_Y17_N25
\div3|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(25));

-- Location: LCCOMB_X19_Y19_N26
\div3|Equal0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~28_combout\ = (\div3|div_counter\(3) & (\div3|div_counter\(15) $ (((!\current_state.spinning~q\ & !\current_state.T0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \div3|div_counter\(15),
	datad => \div3|div_counter\(3),
	combout => \div3|Equal0~28_combout\);

-- Location: LCCOMB_X20_Y19_N26
\div3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal1~0_combout\ = (!\current_state.T1~q\ & (\current_state.T2~q\ & (!\current_state.T0~q\ & !\current_state.spinning~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \current_state.T2~q\,
	datac => \current_state.T0~q\,
	datad => \current_state.spinning~q\,
	combout => \div3|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\div3|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~26_combout\ = \div3|div_counter\(21) $ (((\current_state.spinning~q\) # ((\current_state.T1~q\) # (\current_state.T2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T1~q\,
	datac => \current_state.T2~q\,
	datad => \div3|div_counter\(21),
	combout => \div3|Equal0~26_combout\);

-- Location: LCCOMB_X19_Y19_N20
\div3|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~25_combout\ = (\div3|div_counter\(10) & (\div3|div_counter\(6) & ((\current_state.spinning~q\) # (\current_state.T0~q\)))) # (!\div3|div_counter\(10) & (!\current_state.spinning~q\ & (!\current_state.T0~q\ & !\div3|div_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.T0~q\,
	datac => \div3|div_counter\(10),
	datad => \div3|div_counter\(6),
	combout => \div3|Equal0~25_combout\);

-- Location: LCCOMB_X19_Y19_N16
\div3|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~27_combout\ = (!\div3|Equal0~26_combout\ & (\div3|Equal0~25_combout\ & (\div3|div_counter\(24) $ (!\div3|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(24),
	datab => \div3|Equal1~0_combout\,
	datac => \div3|Equal0~26_combout\,
	datad => \div3|Equal0~25_combout\,
	combout => \div3|Equal0~27_combout\);

-- Location: LCCOMB_X19_Y19_N0
\div3|Equal0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~29_combout\ = (\div3|div_counter\(19) & (!\div3|div_counter\(25) & (\div3|Equal0~28_combout\ & \div3|Equal0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(19),
	datab => \div3|div_counter\(25),
	datac => \div3|Equal0~28_combout\,
	datad => \div3|Equal0~27_combout\,
	combout => \div3|Equal0~29_combout\);

-- Location: LCCOMB_X19_Y19_N8
\div3|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~6_combout\ = \div3|div_counter\(13) $ (((!\WideOr10~1_combout\ & ((!\div0|div_upper_bound[23]~0_combout\) # (!\current_state.T1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \div0|div_upper_bound[23]~0_combout\,
	datac => \div3|div_counter\(13),
	datad => \WideOr10~1_combout\,
	combout => \div3|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y19_N12
\div3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~4_combout\ = \div3|div_counter\(14) $ (((!\current_state.T0~q\) # (!\WideOr10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~1_combout\,
	datac => \current_state.T0~q\,
	datad => \div3|div_counter\(14),
	combout => \div3|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y19_N18
\div3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~5_combout\ = (!\div3|Equal0~4_combout\ & (\div3|div_counter\(16) $ (((\div3|Equal1~3_combout\) # (!\div3|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal1~3_combout\,
	datab => \div3|Equal1~0_combout\,
	datac => \div3|div_counter\(16),
	datad => \div3|Equal0~4_combout\,
	combout => \div3|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y19_N22
\div3|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~7_combout\ = (!\div3|Equal0~6_combout\ & (\div3|Equal0~5_combout\ & (\div3|div_counter\(12) $ (\div2|div_upper_bound[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(12),
	datab => \div2|div_upper_bound[21]~8_combout\,
	datac => \div3|Equal0~6_combout\,
	datad => \div3|Equal0~5_combout\,
	combout => \div3|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y17_N28
\div3|Equal0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal0~30_combout\ = (\div3|Equal0~24_combout\ & (\div3|Equal0~3_combout\ & (\div3|Equal0~29_combout\ & \div3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal0~24_combout\,
	datab => \div3|Equal0~3_combout\,
	datac => \div3|Equal0~29_combout\,
	datad => \div3|Equal0~7_combout\,
	combout => \div3|Equal0~30_combout\);

-- Location: FF_X19_Y18_N7
\div3|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(0));

-- Location: LCCOMB_X19_Y18_N8
\div3|div_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[1]~28_combout\ = (\div3|div_counter\(1) & (!\div3|div_counter[0]~27\)) # (!\div3|div_counter\(1) & ((\div3|div_counter[0]~27\) # (GND)))
-- \div3|div_counter[1]~29\ = CARRY((!\div3|div_counter[0]~27\) # (!\div3|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(1),
	datad => VCC,
	cin => \div3|div_counter[0]~27\,
	combout => \div3|div_counter[1]~28_combout\,
	cout => \div3|div_counter[1]~29\);

-- Location: FF_X19_Y18_N9
\div3|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(1));

-- Location: LCCOMB_X19_Y18_N10
\div3|div_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[2]~30_combout\ = (\div3|div_counter\(2) & (\div3|div_counter[1]~29\ $ (GND))) # (!\div3|div_counter\(2) & (!\div3|div_counter[1]~29\ & VCC))
-- \div3|div_counter[2]~31\ = CARRY((\div3|div_counter\(2) & !\div3|div_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(2),
	datad => VCC,
	cin => \div3|div_counter[1]~29\,
	combout => \div3|div_counter[2]~30_combout\,
	cout => \div3|div_counter[2]~31\);

-- Location: FF_X19_Y18_N11
\div3|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(2));

-- Location: LCCOMB_X19_Y18_N12
\div3|div_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[3]~32_combout\ = (\div3|div_counter\(3) & (!\div3|div_counter[2]~31\)) # (!\div3|div_counter\(3) & ((\div3|div_counter[2]~31\) # (GND)))
-- \div3|div_counter[3]~33\ = CARRY((!\div3|div_counter[2]~31\) # (!\div3|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(3),
	datad => VCC,
	cin => \div3|div_counter[2]~31\,
	combout => \div3|div_counter[3]~32_combout\,
	cout => \div3|div_counter[3]~33\);

-- Location: FF_X19_Y18_N13
\div3|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(3));

-- Location: LCCOMB_X19_Y18_N14
\div3|div_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[4]~34_combout\ = (\div3|div_counter\(4) & (\div3|div_counter[3]~33\ $ (GND))) # (!\div3|div_counter\(4) & (!\div3|div_counter[3]~33\ & VCC))
-- \div3|div_counter[4]~35\ = CARRY((\div3|div_counter\(4) & !\div3|div_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(4),
	datad => VCC,
	cin => \div3|div_counter[3]~33\,
	combout => \div3|div_counter[4]~34_combout\,
	cout => \div3|div_counter[4]~35\);

-- Location: FF_X19_Y18_N15
\div3|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(4));

-- Location: LCCOMB_X19_Y18_N16
\div3|div_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[5]~36_combout\ = (\div3|div_counter\(5) & (!\div3|div_counter[4]~35\)) # (!\div3|div_counter\(5) & ((\div3|div_counter[4]~35\) # (GND)))
-- \div3|div_counter[5]~37\ = CARRY((!\div3|div_counter[4]~35\) # (!\div3|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(5),
	datad => VCC,
	cin => \div3|div_counter[4]~35\,
	combout => \div3|div_counter[5]~36_combout\,
	cout => \div3|div_counter[5]~37\);

-- Location: FF_X19_Y18_N17
\div3|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(5));

-- Location: LCCOMB_X19_Y18_N18
\div3|div_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[6]~38_combout\ = (\div3|div_counter\(6) & (\div3|div_counter[5]~37\ $ (GND))) # (!\div3|div_counter\(6) & (!\div3|div_counter[5]~37\ & VCC))
-- \div3|div_counter[6]~39\ = CARRY((\div3|div_counter\(6) & !\div3|div_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(6),
	datad => VCC,
	cin => \div3|div_counter[5]~37\,
	combout => \div3|div_counter[6]~38_combout\,
	cout => \div3|div_counter[6]~39\);

-- Location: FF_X19_Y18_N19
\div3|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(6));

-- Location: LCCOMB_X19_Y18_N20
\div3|div_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[7]~40_combout\ = (\div3|div_counter\(7) & (!\div3|div_counter[6]~39\)) # (!\div3|div_counter\(7) & ((\div3|div_counter[6]~39\) # (GND)))
-- \div3|div_counter[7]~41\ = CARRY((!\div3|div_counter[6]~39\) # (!\div3|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(7),
	datad => VCC,
	cin => \div3|div_counter[6]~39\,
	combout => \div3|div_counter[7]~40_combout\,
	cout => \div3|div_counter[7]~41\);

-- Location: FF_X19_Y18_N21
\div3|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(7));

-- Location: LCCOMB_X19_Y18_N22
\div3|div_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[8]~42_combout\ = (\div3|div_counter\(8) & (\div3|div_counter[7]~41\ $ (GND))) # (!\div3|div_counter\(8) & (!\div3|div_counter[7]~41\ & VCC))
-- \div3|div_counter[8]~43\ = CARRY((\div3|div_counter\(8) & !\div3|div_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(8),
	datad => VCC,
	cin => \div3|div_counter[7]~41\,
	combout => \div3|div_counter[8]~42_combout\,
	cout => \div3|div_counter[8]~43\);

-- Location: FF_X19_Y18_N23
\div3|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(8));

-- Location: LCCOMB_X19_Y18_N24
\div3|div_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[9]~44_combout\ = (\div3|div_counter\(9) & (!\div3|div_counter[8]~43\)) # (!\div3|div_counter\(9) & ((\div3|div_counter[8]~43\) # (GND)))
-- \div3|div_counter[9]~45\ = CARRY((!\div3|div_counter[8]~43\) # (!\div3|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(9),
	datad => VCC,
	cin => \div3|div_counter[8]~43\,
	combout => \div3|div_counter[9]~44_combout\,
	cout => \div3|div_counter[9]~45\);

-- Location: FF_X19_Y18_N25
\div3|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(9));

-- Location: LCCOMB_X19_Y18_N26
\div3|div_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[10]~46_combout\ = (\div3|div_counter\(10) & (\div3|div_counter[9]~45\ $ (GND))) # (!\div3|div_counter\(10) & (!\div3|div_counter[9]~45\ & VCC))
-- \div3|div_counter[10]~47\ = CARRY((\div3|div_counter\(10) & !\div3|div_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(10),
	datad => VCC,
	cin => \div3|div_counter[9]~45\,
	combout => \div3|div_counter[10]~46_combout\,
	cout => \div3|div_counter[10]~47\);

-- Location: FF_X19_Y18_N27
\div3|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(10));

-- Location: LCCOMB_X19_Y18_N28
\div3|div_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[11]~48_combout\ = (\div3|div_counter\(11) & (!\div3|div_counter[10]~47\)) # (!\div3|div_counter\(11) & ((\div3|div_counter[10]~47\) # (GND)))
-- \div3|div_counter[11]~49\ = CARRY((!\div3|div_counter[10]~47\) # (!\div3|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(11),
	datad => VCC,
	cin => \div3|div_counter[10]~47\,
	combout => \div3|div_counter[11]~48_combout\,
	cout => \div3|div_counter[11]~49\);

-- Location: FF_X19_Y18_N29
\div3|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(11));

-- Location: LCCOMB_X19_Y18_N30
\div3|div_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[12]~50_combout\ = (\div3|div_counter\(12) & (\div3|div_counter[11]~49\ $ (GND))) # (!\div3|div_counter\(12) & (!\div3|div_counter[11]~49\ & VCC))
-- \div3|div_counter[12]~51\ = CARRY((\div3|div_counter\(12) & !\div3|div_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(12),
	datad => VCC,
	cin => \div3|div_counter[11]~49\,
	combout => \div3|div_counter[12]~50_combout\,
	cout => \div3|div_counter[12]~51\);

-- Location: FF_X19_Y18_N31
\div3|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(12));

-- Location: LCCOMB_X19_Y17_N0
\div3|div_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[13]~52_combout\ = (\div3|div_counter\(13) & (!\div3|div_counter[12]~51\)) # (!\div3|div_counter\(13) & ((\div3|div_counter[12]~51\) # (GND)))
-- \div3|div_counter[13]~53\ = CARRY((!\div3|div_counter[12]~51\) # (!\div3|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(13),
	datad => VCC,
	cin => \div3|div_counter[12]~51\,
	combout => \div3|div_counter[13]~52_combout\,
	cout => \div3|div_counter[13]~53\);

-- Location: FF_X19_Y17_N1
\div3|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(13));

-- Location: LCCOMB_X19_Y17_N2
\div3|div_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[14]~54_combout\ = (\div3|div_counter\(14) & (\div3|div_counter[13]~53\ $ (GND))) # (!\div3|div_counter\(14) & (!\div3|div_counter[13]~53\ & VCC))
-- \div3|div_counter[14]~55\ = CARRY((\div3|div_counter\(14) & !\div3|div_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(14),
	datad => VCC,
	cin => \div3|div_counter[13]~53\,
	combout => \div3|div_counter[14]~54_combout\,
	cout => \div3|div_counter[14]~55\);

-- Location: FF_X19_Y17_N3
\div3|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(14));

-- Location: LCCOMB_X19_Y17_N4
\div3|div_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[15]~56_combout\ = (\div3|div_counter\(15) & (!\div3|div_counter[14]~55\)) # (!\div3|div_counter\(15) & ((\div3|div_counter[14]~55\) # (GND)))
-- \div3|div_counter[15]~57\ = CARRY((!\div3|div_counter[14]~55\) # (!\div3|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(15),
	datad => VCC,
	cin => \div3|div_counter[14]~55\,
	combout => \div3|div_counter[15]~56_combout\,
	cout => \div3|div_counter[15]~57\);

-- Location: FF_X19_Y17_N5
\div3|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(15));

-- Location: LCCOMB_X19_Y17_N6
\div3|div_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[16]~58_combout\ = (\div3|div_counter\(16) & (\div3|div_counter[15]~57\ $ (GND))) # (!\div3|div_counter\(16) & (!\div3|div_counter[15]~57\ & VCC))
-- \div3|div_counter[16]~59\ = CARRY((\div3|div_counter\(16) & !\div3|div_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(16),
	datad => VCC,
	cin => \div3|div_counter[15]~57\,
	combout => \div3|div_counter[16]~58_combout\,
	cout => \div3|div_counter[16]~59\);

-- Location: FF_X19_Y17_N7
\div3|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(16));

-- Location: LCCOMB_X19_Y17_N8
\div3|div_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[17]~60_combout\ = (\div3|div_counter\(17) & (!\div3|div_counter[16]~59\)) # (!\div3|div_counter\(17) & ((\div3|div_counter[16]~59\) # (GND)))
-- \div3|div_counter[17]~61\ = CARRY((!\div3|div_counter[16]~59\) # (!\div3|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(17),
	datad => VCC,
	cin => \div3|div_counter[16]~59\,
	combout => \div3|div_counter[17]~60_combout\,
	cout => \div3|div_counter[17]~61\);

-- Location: FF_X19_Y17_N9
\div3|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(17));

-- Location: LCCOMB_X19_Y17_N10
\div3|div_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[18]~62_combout\ = (\div3|div_counter\(18) & (\div3|div_counter[17]~61\ $ (GND))) # (!\div3|div_counter\(18) & (!\div3|div_counter[17]~61\ & VCC))
-- \div3|div_counter[18]~63\ = CARRY((\div3|div_counter\(18) & !\div3|div_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(18),
	datad => VCC,
	cin => \div3|div_counter[17]~61\,
	combout => \div3|div_counter[18]~62_combout\,
	cout => \div3|div_counter[18]~63\);

-- Location: FF_X19_Y17_N11
\div3|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(18));

-- Location: LCCOMB_X19_Y17_N12
\div3|div_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[19]~64_combout\ = (\div3|div_counter\(19) & (!\div3|div_counter[18]~63\)) # (!\div3|div_counter\(19) & ((\div3|div_counter[18]~63\) # (GND)))
-- \div3|div_counter[19]~65\ = CARRY((!\div3|div_counter[18]~63\) # (!\div3|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(19),
	datad => VCC,
	cin => \div3|div_counter[18]~63\,
	combout => \div3|div_counter[19]~64_combout\,
	cout => \div3|div_counter[19]~65\);

-- Location: FF_X19_Y17_N13
\div3|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(19));

-- Location: LCCOMB_X19_Y17_N14
\div3|div_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[20]~66_combout\ = (\div3|div_counter\(20) & (\div3|div_counter[19]~65\ $ (GND))) # (!\div3|div_counter\(20) & (!\div3|div_counter[19]~65\ & VCC))
-- \div3|div_counter[20]~67\ = CARRY((\div3|div_counter\(20) & !\div3|div_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(20),
	datad => VCC,
	cin => \div3|div_counter[19]~65\,
	combout => \div3|div_counter[20]~66_combout\,
	cout => \div3|div_counter[20]~67\);

-- Location: FF_X19_Y17_N15
\div3|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(20));

-- Location: LCCOMB_X19_Y17_N16
\div3|div_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[21]~68_combout\ = (\div3|div_counter\(21) & (!\div3|div_counter[20]~67\)) # (!\div3|div_counter\(21) & ((\div3|div_counter[20]~67\) # (GND)))
-- \div3|div_counter[21]~69\ = CARRY((!\div3|div_counter[20]~67\) # (!\div3|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div3|div_counter\(21),
	datad => VCC,
	cin => \div3|div_counter[20]~67\,
	combout => \div3|div_counter[21]~68_combout\,
	cout => \div3|div_counter[21]~69\);

-- Location: FF_X19_Y17_N17
\div3|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(21));

-- Location: LCCOMB_X19_Y17_N18
\div3|div_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|div_counter[22]~70_combout\ = (\div3|div_counter\(22) & (\div3|div_counter[21]~69\ $ (GND))) # (!\div3|div_counter\(22) & (!\div3|div_counter[21]~69\ & VCC))
-- \div3|div_counter[22]~71\ = CARRY((\div3|div_counter\(22) & !\div3|div_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(22),
	datad => VCC,
	cin => \div3|div_counter[21]~69\,
	combout => \div3|div_counter[22]~70_combout\,
	cout => \div3|div_counter[22]~71\);

-- Location: FF_X19_Y17_N19
\div3|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div3|div_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(22));

-- Location: FF_X19_Y17_N21
\div3|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div3|div_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \div3|Equal0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div3|div_counter\(23));

-- Location: LCCOMB_X20_Y19_N14
\div3|divided_clk~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|divided_clk~7_combout\ = (\div3|div_counter\(22) & ((\current_state.T1~q\) # ((!\div0|div_upper_bound[23]~0_combout\) # (!\WideOr10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \div3|div_counter\(22),
	datac => \WideOr10~1_combout\,
	datad => \div0|div_upper_bound[23]~0_combout\,
	combout => \div3|divided_clk~7_combout\);

-- Location: LCCOMB_X20_Y19_N8
\div3|divided_clk~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|divided_clk~5_combout\ = (\div3|Equal1~0_combout\ & ((!\div3|div_counter\(24)))) # (!\div3|Equal1~0_combout\ & (!\div3|divided_clk~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal1~0_combout\,
	datac => \div3|divided_clk~7_combout\,
	datad => \div3|div_counter\(24),
	combout => \div3|divided_clk~5_combout\);

-- Location: LCCOMB_X20_Y19_N4
\div3|divided_clk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|divided_clk~4_combout\ = (\div3|Equal1~1_combout\ & ((!\div3|div_counter\(23)))) # (!\div3|Equal1~1_combout\ & (\div3|divided_clk~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|Equal1~1_combout\,
	datac => \div3|divided_clk~5_combout\,
	datad => \div3|div_counter\(23),
	combout => \div3|divided_clk~4_combout\);

-- Location: LCCOMB_X20_Y19_N24
\div3|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|Equal1~2_combout\ = (!\current_state.T1~q\ & (!\current_state.T2~q\ & (\current_state.T0~q\ & !\current_state.spinning~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.T1~q\,
	datab => \current_state.T2~q\,
	datac => \current_state.T0~q\,
	datad => \current_state.spinning~q\,
	combout => \div3|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y19_N16
\div3|divided_clk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|divided_clk~2_combout\ = (\div3|Equal1~2_combout\ & (!\div3|div_counter\(23))) # (!\div3|Equal1~2_combout\ & ((\div3|divided_clk~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div3|div_counter\(23),
	datac => \div3|divided_clk~4_combout\,
	datad => \div3|Equal1~2_combout\,
	combout => \div3|divided_clk~2_combout\);

-- Location: LCCOMB_X20_Y19_N18
\div3|divided_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div3|divided_clk~0_combout\ = LCELL((\div3|Equal1~3_combout\ & ((\div3|div_counter\(22)))) # (!\div3|Equal1~3_combout\ & (!\div3|divided_clk~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div3|divided_clk~2_combout\,
	datac => \div3|div_counter\(22),
	datad => \div3|Equal1~3_combout\,
	combout => \div3|divided_clk~0_combout\);

-- Location: CLKCTRL_G11
\div3|divided_clk~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div3|divided_clk~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div3|divided_clk~0clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N8
\up_down_switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down_switch(3),
	o => \up_down_switch[3]~input_o\);

-- Location: LCCOMB_X29_Y27_N12
\counter3|num_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out[0]~6_combout\ = !\counter3|num_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter3|num_out\(0),
	combout => \counter3|num_out[0]~6_combout\);

-- Location: FF_X29_Y27_N13
\counter3|num_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div3|divided_clk~0clkctrl_outclk\,
	d => \counter3|num_out[0]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|num_out\(0));

-- Location: LCCOMB_X29_Y27_N0
\counter3|num_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~2_combout\ = (!\counter3|num_out\(2) & !\counter3|num_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter3|num_out\(2),
	datad => \counter3|num_out\(3),
	combout => \counter3|num_out~2_combout\);

-- Location: LCCOMB_X29_Y27_N22
\counter3|num_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~3_combout\ = (\counter3|num_out\(1) & (\counter3|num_out\(0) $ ((\up_down_switch[3]~input_o\)))) # (!\counter3|num_out\(1) & (!\counter3|num_out~2_combout\ & (\counter3|num_out\(0) $ (!\up_down_switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(0),
	datab => \up_down_switch[3]~input_o\,
	datac => \counter3|num_out\(1),
	datad => \counter3|num_out~2_combout\,
	combout => \counter3|num_out~3_combout\);

-- Location: FF_X29_Y27_N23
\counter3|num_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div3|divided_clk~0clkctrl_outclk\,
	d => \counter3|num_out~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|num_out\(1));

-- Location: LCCOMB_X29_Y27_N6
\counter3|num_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~0_combout\ = (\up_down_switch[3]~input_o\ & ((!\counter3|num_out\(0)) # (!\counter3|num_out\(1)))) # (!\up_down_switch[3]~input_o\ & ((\counter3|num_out\(1)) # (\counter3|num_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[3]~input_o\,
	datac => \counter3|num_out\(1),
	datad => \counter3|num_out\(0),
	combout => \counter3|num_out~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\counter3|num_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~1_combout\ = (\counter3|num_out\(2) & (((\counter3|num_out~0_combout\)))) # (!\counter3|num_out\(2) & (!\counter3|num_out~0_combout\ & ((\counter3|num_out\(0)) # (\counter3|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(0),
	datab => \counter3|num_out\(3),
	datac => \counter3|num_out\(2),
	datad => \counter3|num_out~0_combout\,
	combout => \counter3|num_out~1_combout\);

-- Location: FF_X29_Y27_N9
\counter3|num_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div3|divided_clk~0clkctrl_outclk\,
	d => \counter3|num_out~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|num_out\(2));

-- Location: LCCOMB_X29_Y27_N2
\counter3|num_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~4_combout\ = (\counter3|num_out\(1) & ((\counter3|num_out\(0)) # (!\counter3|num_out\(2)))) # (!\counter3|num_out\(1) & (!\counter3|num_out\(2) & \counter3|num_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(1),
	datac => \counter3|num_out\(2),
	datad => \counter3|num_out\(0),
	combout => \counter3|num_out~4_combout\);

-- Location: LCCOMB_X29_Y27_N18
\counter3|num_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|num_out~5_combout\ = (\up_down_switch[3]~input_o\ & (\counter3|num_out\(3) $ (((\counter3|num_out\(2) & \counter3|num_out~4_combout\))))) # (!\up_down_switch[3]~input_o\ & (\counter3|num_out\(3) & ((\counter3|num_out\(2)) # 
-- (\counter3|num_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down_switch[3]~input_o\,
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(3),
	datad => \counter3|num_out~4_combout\,
	combout => \counter3|num_out~5_combout\);

-- Location: FF_X29_Y27_N19
\counter3|num_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div3|divided_clk~0clkctrl_outclk\,
	d => \counter3|num_out~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|num_out\(3));

-- Location: LCCOMB_X29_Y27_N4
\decoder3|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[0]~0_combout\ = (\counter3|num_out\(3) & (\counter3|num_out\(0) & (\counter3|num_out\(2) $ (\counter3|num_out\(1))))) # (!\counter3|num_out\(3) & (!\counter3|num_out\(1) & (\counter3|num_out\(2) $ (\counter3|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X29_Y27_N30
\decoder3|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[1]~1_combout\ = (\counter3|num_out\(3) & ((\counter3|num_out\(0) & ((\counter3|num_out\(1)))) # (!\counter3|num_out\(0) & (\counter3|num_out\(2))))) # (!\counter3|num_out\(3) & (\counter3|num_out\(2) & (\counter3|num_out\(0) $ 
-- (\counter3|num_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X29_Y27_N20
\decoder3|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[2]~2_combout\ = (\counter3|num_out\(3) & (\counter3|num_out\(2) & ((\counter3|num_out\(1)) # (!\counter3|num_out\(0))))) # (!\counter3|num_out\(3) & (!\counter3|num_out\(2) & (!\counter3|num_out\(0) & \counter3|num_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X29_Y27_N14
\decoder3|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[3]~3_combout\ = (\counter3|num_out\(1) & ((\counter3|num_out\(2) & ((\counter3|num_out\(0)))) # (!\counter3|num_out\(2) & (\counter3|num_out\(3) & !\counter3|num_out\(0))))) # (!\counter3|num_out\(1) & (!\counter3|num_out\(3) & 
-- (\counter3|num_out\(2) $ (\counter3|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X29_Y27_N28
\decoder3|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[4]~4_combout\ = (\counter3|num_out\(1) & (!\counter3|num_out\(3) & ((\counter3|num_out\(0))))) # (!\counter3|num_out\(1) & ((\counter3|num_out\(2) & (!\counter3|num_out\(3))) # (!\counter3|num_out\(2) & ((\counter3|num_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X29_Y27_N26
\decoder3|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[5]~5_combout\ = (\counter3|num_out\(2) & (\counter3|num_out\(0) & (\counter3|num_out\(3) $ (\counter3|num_out\(1))))) # (!\counter3|num_out\(2) & (!\counter3|num_out\(3) & ((\counter3|num_out\(0)) # (\counter3|num_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X29_Y27_N24
\decoder3|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[6]~6_combout\ = (\counter3|num_out\(0) & ((\counter3|num_out\(3)) # (\counter3|num_out\(2) $ (\counter3|num_out\(1))))) # (!\counter3|num_out\(0) & ((\counter3|num_out\(1)) # (\counter3|num_out\(3) $ (\counter3|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(3),
	datab => \counter3|num_out\(2),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \decoder3|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X26_Y28_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\counter3|num_out\(2) & (\counter2|num_out\(2) & (\counter3|num_out\(3) $ (!\counter2|num_out\(3))))) # (!\counter3|num_out\(2) & (!\counter2|num_out\(2) & (\counter3|num_out\(3) $ (!\counter2|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(2),
	datab => \counter2|num_out\(2),
	datac => \counter3|num_out\(3),
	datad => \counter2|num_out\(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y28_N26
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\counter1|num_out\(2) & (\counter3|num_out\(2) & (\counter3|num_out\(3) $ (!\counter1|num_out\(3))))) # (!\counter1|num_out\(2) & (!\counter3|num_out\(2) & (\counter3|num_out\(3) $ (!\counter1|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(2),
	datab => \counter3|num_out\(3),
	datac => \counter1|num_out\(3),
	datad => \counter3|num_out\(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y28_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\counter3|num_out\(0) & (\counter0|num_out\(0) & (\counter3|num_out\(1) $ (!\counter0|num_out\(1))))) # (!\counter3|num_out\(0) & (!\counter0|num_out\(0) & (\counter3|num_out\(1) $ (!\counter0|num_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(0),
	datab => \counter3|num_out\(1),
	datac => \counter0|num_out\(0),
	datad => \counter0|num_out\(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\counter1|num_out\(1) & (\counter3|num_out\(1) & (\counter1|num_out\(0) $ (!\counter3|num_out\(0))))) # (!\counter1|num_out\(1) & (!\counter3|num_out\(1) & (\counter1|num_out\(0) $ (!\counter3|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(1),
	datab => \counter1|num_out\(0),
	datac => \counter3|num_out\(0),
	datad => \counter3|num_out\(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\counter3|num_out\(2) & (\counter0|num_out\(2) & (\counter3|num_out\(3) $ (!\counter0|num_out\(3))))) # (!\counter3|num_out\(2) & (!\counter0|num_out\(2) & (\counter3|num_out\(3) $ (!\counter0|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(2),
	datab => \counter3|num_out\(3),
	datac => \counter0|num_out\(3),
	datad => \counter0|num_out\(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y28_N2
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal1~1_combout\ & (\Equal2~0_combout\ & (\Equal1~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X15_Y19_N4
\current_state.judge1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.judge1~feeder_combout\ = \current_state.T7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.T7~q\,
	combout => \current_state.judge1~feeder_combout\);

-- Location: FF_X15_Y19_N5
\current_state.judge1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter[25]~clkctrl_outclk\,
	d => \current_state.judge1~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.judge1~q\);

-- Location: FF_X15_Y19_N19
\current_state.judge2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clk_divider|div_counter[25]~clkctrl_outclk\,
	asdata => \current_state.judge1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.judge2~q\);

-- Location: LCCOMB_X15_Y19_N18
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\system_clk_divider|div_counter\(25) & ((\current_state.judge1~q\) # (\current_state.judge2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.judge1~q\,
	datac => \current_state.judge2~q\,
	datad => \system_clk_divider|div_counter\(25),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\counter3|num_out\(1) & (\counter2|num_out\(1) & (\counter2|num_out\(0) $ (!\counter3|num_out\(0))))) # (!\counter3|num_out\(1) & (!\counter2|num_out\(1) & (\counter2|num_out\(0) $ (!\counter3|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|num_out\(1),
	datab => \counter2|num_out\(0),
	datac => \counter3|num_out\(0),
	datad => \counter2|num_out\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y28_N6
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Equal0~1_combout\ & (\Selector3~0_combout\ & (\Selector4~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X26_Y28_N12
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal1~1_combout\ & (!\Equal1~0_combout\ & ((!\Equal2~1_combout\) # (!\Equal2~0_combout\)))) # (!\Equal1~1_combout\ & (((!\Equal2~1_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X26_Y28_N22
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\Selector2~0_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X22_Y28_N30
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\counter2|num_out\(1) & (\counter1|num_out\(1) & (\counter2|num_out\(0) $ (!\counter1|num_out\(0))))) # (!\counter2|num_out\(1) & (!\counter1|num_out\(1) & (\counter2|num_out\(0) $ (!\counter1|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(1),
	datab => \counter2|num_out\(0),
	datac => \counter1|num_out\(0),
	datad => \counter1|num_out\(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y28_N4
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\counter1|num_out\(2) & (\counter2|num_out\(2) & (\counter1|num_out\(3) $ (!\counter2|num_out\(3))))) # (!\counter1|num_out\(2) & (!\counter2|num_out\(2) & (\counter1|num_out\(3) $ (!\counter2|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(2),
	datab => \counter2|num_out\(2),
	datac => \counter1|num_out\(3),
	datad => \counter2|num_out\(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X27_Y28_N22
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\counter0|num_out\(0) & (\counter2|num_out\(0) & (\counter2|num_out\(1) $ (!\counter0|num_out\(1))))) # (!\counter0|num_out\(0) & (!\counter2|num_out\(0) & (\counter2|num_out\(1) $ (!\counter0|num_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(0),
	datab => \counter2|num_out\(1),
	datac => \counter0|num_out\(1),
	datad => \counter2|num_out\(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X26_Y28_N10
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\counter2|num_out\(3) & (\counter0|num_out\(3) & (\counter2|num_out\(2) $ (!\counter0|num_out\(2))))) # (!\counter2|num_out\(3) & (!\counter0|num_out\(3) & (\counter2|num_out\(2) $ (!\counter0|num_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|num_out\(3),
	datab => \counter2|num_out\(2),
	datac => \counter0|num_out\(3),
	datad => \counter0|num_out\(2),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X26_Y28_N20
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Equal3~0_combout\ & (\Equal3~1_combout\ & (\Equal4~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X26_Y28_N14
\Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector4~0_combout\ & ((\Selector3~1_combout\) # ((\Selector3~2_combout\) # (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector3~2_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X26_Y28_N18
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\counter1|num_out\(2) & (\counter0|num_out\(2) & (\counter0|num_out\(3) $ (!\counter1|num_out\(3))))) # (!\counter1|num_out\(2) & (!\counter0|num_out\(2) & (\counter0|num_out\(3) $ (!\counter1|num_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|num_out\(2),
	datab => \counter0|num_out\(2),
	datac => \counter0|num_out\(3),
	datad => \counter1|num_out\(3),
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X23_Y28_N4
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\counter0|num_out\(1) & (\counter1|num_out\(1) & (\counter1|num_out\(0) $ (!\counter0|num_out\(0))))) # (!\counter0|num_out\(1) & (!\counter1|num_out\(1) & (\counter1|num_out\(0) $ (!\counter0|num_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|num_out\(1),
	datab => \counter1|num_out\(0),
	datac => \counter1|num_out\(1),
	datad => \counter0|num_out\(0),
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X26_Y28_N16
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Equal4~1_combout\ & ((\Equal4~0_combout\) # ((\Selector2~3_combout\ & \Selector2~2_combout\)))) # (!\Equal4~1_combout\ & (\Selector2~3_combout\ & ((\Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Selector2~3_combout\,
	datac => \Equal4~0_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X26_Y28_N28
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Equal3~0_combout\ & ((\Equal3~1_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\)))) # (!\Equal3~0_combout\ & (\Equal0~1_combout\ & ((\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X26_Y28_N30
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector4~0_combout\ & (((\Selector2~4_combout\) # (\Selector2~1_combout\)) # (!\Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector2~4_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~5_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(8) <= \LED[8]~output_o\;

ww_LED(9) <= \LED[9]~output_o\;
END structure;


