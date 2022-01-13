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

-- DATE "01/13/2022 18:28:40"

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

ENTITY 	slot_machine_single_digit IS
    PORT (
	clk : IN std_logic;
	answer_switch : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	start_button : IN std_logic;
	stop_button : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END slot_machine_single_digit;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- answer_switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- answer_switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- answer_switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- answer_switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop_button	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_button	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF slot_machine_single_digit IS
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
SIGNAL ww_answer_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start_button : std_logic;
SIGNAL ww_stop_button : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_divider|divided_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
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
SIGNAL \answer_switch[3]~input_o\ : std_logic;
SIGNAL \answer_switch[2]~input_o\ : std_logic;
SIGNAL \answer_switch[1]~input_o\ : std_logic;
SIGNAL \answer_switch[0]~input_o\ : std_logic;
SIGNAL \decoder2|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|div_counter[0]~26_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk_divider|div_counter[22]~71\ : std_logic;
SIGNAL \clk_divider|div_counter[23]~72_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[23]~73\ : std_logic;
SIGNAL \clk_divider|div_counter[24]~74_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[24]~75\ : std_logic;
SIGNAL \clk_divider|div_counter[25]~76_combout\ : std_logic;
SIGNAL \Hz_select[0]~0_combout\ : std_logic;
SIGNAL \function_counter~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \function_counter~5_combout\ : std_logic;
SIGNAL \function_counter~3_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.mid_slowdown~q\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.slow_slowdown~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.finish_slowdown~q\ : std_logic;
SIGNAL \start_button~input_o\ : std_logic;
SIGNAL \current_state.game_ready~0_combout\ : std_logic;
SIGNAL \current_state.game_ready~q\ : std_logic;
SIGNAL \stop_button~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.spinning~q\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \function_counter~4_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.fast_slowdown~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[8]~46_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~1_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[3]~39_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~2_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~9_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~22_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~23_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~24_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~10_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~25_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~26_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~43_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~44_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~45_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~46_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~41_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~42_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[15]~40_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[15]~48_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[10]~41_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[5]~37_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~4_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~27_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~28_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~29_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~39_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~40_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[16]~44_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[1]~42_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[16]~43_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~37_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~32_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~38_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[6]~51_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[5]~45_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~33_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~34_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[9]~50_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[9]~49_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~3_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~30_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~31_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~35_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[14]~31_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[11]~30_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~15_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[21]~38_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound~36_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~20_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~6_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[3]~32_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[3]~33_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~16_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~8_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[0]~34_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~17_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[2]~47_combout\ : std_logic;
SIGNAL \clk_divider|div_upper_bound[13]~35_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~7_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~18_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~19_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~21_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~36_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[0]~27\ : std_logic;
SIGNAL \clk_divider|div_counter[1]~28_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[1]~29\ : std_logic;
SIGNAL \clk_divider|div_counter[2]~30_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[2]~31\ : std_logic;
SIGNAL \clk_divider|div_counter[3]~32_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[3]~33\ : std_logic;
SIGNAL \clk_divider|div_counter[4]~34_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[4]~35\ : std_logic;
SIGNAL \clk_divider|div_counter[5]~36_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[5]~37\ : std_logic;
SIGNAL \clk_divider|div_counter[6]~38_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[6]~39\ : std_logic;
SIGNAL \clk_divider|div_counter[7]~40_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[7]~41\ : std_logic;
SIGNAL \clk_divider|div_counter[8]~42_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[8]~43\ : std_logic;
SIGNAL \clk_divider|div_counter[9]~44_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[9]~45\ : std_logic;
SIGNAL \clk_divider|div_counter[10]~46_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[10]~47\ : std_logic;
SIGNAL \clk_divider|div_counter[11]~48_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[11]~49\ : std_logic;
SIGNAL \clk_divider|div_counter[12]~50_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[12]~51\ : std_logic;
SIGNAL \clk_divider|div_counter[13]~52_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[13]~53\ : std_logic;
SIGNAL \clk_divider|div_counter[14]~54_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[14]~55\ : std_logic;
SIGNAL \clk_divider|div_counter[15]~56_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[15]~57\ : std_logic;
SIGNAL \clk_divider|div_counter[16]~58_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[16]~59\ : std_logic;
SIGNAL \clk_divider|div_counter[17]~60_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[17]~61\ : std_logic;
SIGNAL \clk_divider|div_counter[18]~62_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[18]~63\ : std_logic;
SIGNAL \clk_divider|div_counter[19]~64_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[19]~65\ : std_logic;
SIGNAL \clk_divider|div_counter[20]~66_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[20]~67\ : std_logic;
SIGNAL \clk_divider|div_counter[21]~68_combout\ : std_logic;
SIGNAL \clk_divider|div_counter[21]~69\ : std_logic;
SIGNAL \clk_divider|div_counter[22]~70_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~0_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~9_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~8_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~7_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~6_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~5_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~5_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~4_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~3_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~2_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~1_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~0_combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~combout\ : std_logic;
SIGNAL \clk_divider|divided_clk~clkctrl_outclk\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \game_number[2]~3_combout\ : std_logic;
SIGNAL \game_number[2]~1_combout\ : std_logic;
SIGNAL \game_number[3]~2_combout\ : std_logic;
SIGNAL \game_number~0_combout\ : std_logic;
SIGNAL \game_number~4_combout\ : std_logic;
SIGNAL \decoder|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \current_state.winning~q\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL game_number : std_logic_vector(3 DOWNTO 0);
SIGNAL function_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL Hz_select : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|div_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \decoder|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_decoded_out[6]~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_answer_switch <= answer_switch;
HEX0 <= ww_HEX0;
HEX3 <= ww_HEX3;
ww_start_button <= start_button;
ww_stop_button <= stop_button;
ww_reset <= reset;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_divider|divided_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|divided_clk~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\decoder|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder|decoded_out[6]~6_combout\;
\decoder2|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder2|decoded_out[6]~6_combout\;

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|decoded_out[0]~0_combout\,
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
	i => \decoder2|decoded_out[1]~1_combout\,
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
	i => \decoder2|decoded_out[2]~2_combout\,
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
	i => \decoder2|decoded_out[3]~3_combout\,
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
	i => \decoder2|decoded_out[4]~4_combout\,
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
	i => \decoder2|decoded_out[5]~5_combout\,
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
	i => \decoder2|ALT_INV_decoded_out[6]~6_combout\,
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

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoded_out[0]~0_combout\,
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
	i => \decoder|decoded_out[1]~1_combout\,
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
	i => \decoder|decoded_out[2]~2_combout\,
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
	i => \decoder|decoded_out[3]~3_combout\,
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
	i => \decoder|decoded_out[4]~4_combout\,
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
	i => \decoder|decoded_out[5]~5_combout\,
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
	i => \decoder|ALT_INV_decoded_out[6]~6_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
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
	i => \LED~0_combout\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\answer_switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_answer_switch(3),
	o => \answer_switch[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\answer_switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_answer_switch(2),
	o => \answer_switch[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\answer_switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_answer_switch(1),
	o => \answer_switch[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\answer_switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_answer_switch(0),
	o => \answer_switch[0]~input_o\);

-- Location: LCCOMB_X10_Y25_N0
\decoder2|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[0]~0_combout\ = (\answer_switch[3]~input_o\ & (\answer_switch[0]~input_o\ & (\answer_switch[2]~input_o\ $ (\answer_switch[1]~input_o\)))) # (!\answer_switch[3]~input_o\ & (!\answer_switch[1]~input_o\ & (\answer_switch[2]~input_o\ $ 
-- (\answer_switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X10_Y25_N22
\decoder2|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[1]~1_combout\ = (\answer_switch[3]~input_o\ & ((\answer_switch[0]~input_o\ & ((\answer_switch[1]~input_o\))) # (!\answer_switch[0]~input_o\ & (\answer_switch[2]~input_o\)))) # (!\answer_switch[3]~input_o\ & 
-- (\answer_switch[2]~input_o\ & (\answer_switch[1]~input_o\ $ (\answer_switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X10_Y25_N24
\decoder2|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[2]~2_combout\ = (\answer_switch[3]~input_o\ & (\answer_switch[2]~input_o\ & ((\answer_switch[1]~input_o\) # (!\answer_switch[0]~input_o\)))) # (!\answer_switch[3]~input_o\ & (!\answer_switch[2]~input_o\ & (\answer_switch[1]~input_o\ 
-- & !\answer_switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X10_Y25_N10
\decoder2|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[3]~3_combout\ = (\answer_switch[1]~input_o\ & ((\answer_switch[2]~input_o\ & ((\answer_switch[0]~input_o\))) # (!\answer_switch[2]~input_o\ & (\answer_switch[3]~input_o\ & !\answer_switch[0]~input_o\)))) # 
-- (!\answer_switch[1]~input_o\ & (!\answer_switch[3]~input_o\ & (\answer_switch[2]~input_o\ $ (\answer_switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X10_Y25_N12
\decoder2|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[4]~4_combout\ = (\answer_switch[1]~input_o\ & (!\answer_switch[3]~input_o\ & ((\answer_switch[0]~input_o\)))) # (!\answer_switch[1]~input_o\ & ((\answer_switch[2]~input_o\ & (!\answer_switch[3]~input_o\)) # 
-- (!\answer_switch[2]~input_o\ & ((\answer_switch[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X10_Y25_N18
\decoder2|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[5]~5_combout\ = (\answer_switch[2]~input_o\ & (\answer_switch[0]~input_o\ & (\answer_switch[3]~input_o\ $ (\answer_switch[1]~input_o\)))) # (!\answer_switch[2]~input_o\ & (!\answer_switch[3]~input_o\ & ((\answer_switch[1]~input_o\) # 
-- (\answer_switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X10_Y25_N8
\decoder2|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[6]~6_combout\ = (\answer_switch[0]~input_o\ & ((\answer_switch[3]~input_o\) # (\answer_switch[2]~input_o\ $ (\answer_switch[1]~input_o\)))) # (!\answer_switch[0]~input_o\ & ((\answer_switch[1]~input_o\) # (\answer_switch[3]~input_o\ 
-- $ (\answer_switch[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[3]~input_o\,
	datab => \answer_switch[2]~input_o\,
	datac => \answer_switch[1]~input_o\,
	datad => \answer_switch[0]~input_o\,
	combout => \decoder2|decoded_out[6]~6_combout\);

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

-- Location: LCCOMB_X23_Y24_N6
\clk_divider|div_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[0]~26_combout\ = \clk_divider|div_counter\(0) $ (VCC)
-- \clk_divider|div_counter[0]~27\ = CARRY(\clk_divider|div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(0),
	datad => VCC,
	combout => \clk_divider|div_counter[0]~26_combout\,
	cout => \clk_divider|div_counter[0]~27\);

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

-- Location: LCCOMB_X23_Y23_N18
\clk_divider|div_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[22]~70_combout\ = (\clk_divider|div_counter\(22) & (\clk_divider|div_counter[21]~69\ $ (GND))) # (!\clk_divider|div_counter\(22) & (!\clk_divider|div_counter[21]~69\ & VCC))
-- \clk_divider|div_counter[22]~71\ = CARRY((\clk_divider|div_counter\(22) & !\clk_divider|div_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(22),
	datad => VCC,
	cin => \clk_divider|div_counter[21]~69\,
	combout => \clk_divider|div_counter[22]~70_combout\,
	cout => \clk_divider|div_counter[22]~71\);

-- Location: LCCOMB_X23_Y23_N20
\clk_divider|div_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[23]~72_combout\ = (\clk_divider|div_counter\(23) & (!\clk_divider|div_counter[22]~71\)) # (!\clk_divider|div_counter\(23) & ((\clk_divider|div_counter[22]~71\) # (GND)))
-- \clk_divider|div_counter[23]~73\ = CARRY((!\clk_divider|div_counter[22]~71\) # (!\clk_divider|div_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(23),
	datad => VCC,
	cin => \clk_divider|div_counter[22]~71\,
	combout => \clk_divider|div_counter[23]~72_combout\,
	cout => \clk_divider|div_counter[23]~73\);

-- Location: FF_X23_Y23_N21
\clk_divider|div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_divider|div_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(23));

-- Location: LCCOMB_X23_Y23_N22
\clk_divider|div_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[24]~74_combout\ = (\clk_divider|div_counter\(24) & (\clk_divider|div_counter[23]~73\ $ (GND))) # (!\clk_divider|div_counter\(24) & (!\clk_divider|div_counter[23]~73\ & VCC))
-- \clk_divider|div_counter[24]~75\ = CARRY((\clk_divider|div_counter\(24) & !\clk_divider|div_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(24),
	datad => VCC,
	cin => \clk_divider|div_counter[23]~73\,
	combout => \clk_divider|div_counter[24]~74_combout\,
	cout => \clk_divider|div_counter[24]~75\);

-- Location: FF_X23_Y23_N23
\clk_divider|div_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_divider|div_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(24));

-- Location: LCCOMB_X23_Y23_N24
\clk_divider|div_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[25]~76_combout\ = \clk_divider|div_counter[24]~75\ $ (\clk_divider|div_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|div_counter\(25),
	cin => \clk_divider|div_counter[24]~75\,
	combout => \clk_divider|div_counter[25]~76_combout\);

-- Location: FF_X23_Y23_N25
\clk_divider|div_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_divider|div_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(25));

-- Location: LCCOMB_X21_Y24_N20
\Hz_select[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hz_select[0]~0_combout\ = !Hz_select(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Hz_select(0),
	combout => \Hz_select[0]~0_combout\);

-- Location: LCCOMB_X20_Y25_N24
\function_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \function_counter~2_combout\ = (!\Selector8~6_combout\ & !function_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datac => function_counter(0),
	combout => \function_counter~2_combout\);

-- Location: FF_X20_Y25_N25
\function_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \function_counter~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => function_counter(0));

-- Location: LCCOMB_X21_Y25_N24
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (function_counter(1) & function_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\function_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \function_counter~5_combout\ = (!\Selector8~6_combout\ & (function_counter(2) $ (((function_counter(1) & function_counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datab => function_counter(1),
	datac => function_counter(2),
	datad => function_counter(0),
	combout => \function_counter~5_combout\);

-- Location: FF_X20_Y25_N19
\function_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \function_counter~5_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => function_counter(2));

-- Location: LCCOMB_X20_Y25_N4
\function_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \function_counter~3_combout\ = (!\Selector8~6_combout\ & (function_counter(3) $ (((\Add2~0_combout\ & function_counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datab => \Add2~0_combout\,
	datac => function_counter(3),
	datad => function_counter(2),
	combout => \function_counter~3_combout\);

-- Location: FF_X20_Y25_N5
\function_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \function_counter~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => function_counter(3));

-- Location: LCCOMB_X20_Y25_N28
\Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (!function_counter(1) & (function_counter(0) & (!function_counter(3) & function_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(0),
	datac => function_counter(3),
	datad => function_counter(2),
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X20_Y25_N16
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!function_counter(1) & (!function_counter(2) & (function_counter(0) & !function_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(2),
	datac => function_counter(0),
	datad => function_counter(3),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X19_Y25_N10
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (function_counter(2) & function_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => function_counter(2),
	datad => function_counter(3),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (function_counter(1)) # (((function_counter(0)) # (!function_counter(3))) # (!function_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(2),
	datac => function_counter(0),
	datad => function_counter(3),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X20_Y25_N8
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector8~1_combout\ & ((\Selector9~0_combout\) # ((\Selector3~0_combout\ & \current_state.mid_slowdown~q\)))) # (!\Selector8~1_combout\ & (\Selector3~0_combout\ & (\current_state.mid_slowdown~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datab => \Selector3~0_combout\,
	datac => \current_state.mid_slowdown~q\,
	datad => \Selector9~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X20_Y25_N9
\current_state.mid_slowdown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.mid_slowdown~q\);

-- Location: LCCOMB_X20_Y25_N2
\Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (!function_counter(1) & (!function_counter(0) & \current_state.mid_slowdown~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(0),
	datac => \current_state.mid_slowdown~q\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X20_Y25_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector8~1_combout\ & ((\Selector8~2_combout\) # ((!\Selector8~3_combout\ & \current_state.slow_slowdown~q\)))) # (!\Selector8~1_combout\ & (!\Selector8~3_combout\ & (\current_state.slow_slowdown~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datab => \Selector8~3_combout\,
	datac => \current_state.slow_slowdown~q\,
	datad => \Selector8~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X20_Y25_N23
\current_state.slow_slowdown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.slow_slowdown~q\);

-- Location: LCCOMB_X19_Y25_N8
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector8~3_combout\ & ((\current_state.slow_slowdown~q\) # ((!\Equal7~0_combout\ & \current_state.finish_slowdown~q\)))) # (!\Selector8~3_combout\ & (!\Equal7~0_combout\ & (\current_state.finish_slowdown~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~3_combout\,
	datab => \Equal7~0_combout\,
	datac => \current_state.finish_slowdown~q\,
	datad => \current_state.slow_slowdown~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X19_Y25_N9
\current_state.finish_slowdown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.finish_slowdown~q\);

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

-- Location: LCCOMB_X17_Y25_N8
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

-- Location: FF_X17_Y25_N9
\current_state.game_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \current_state.game_ready~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.game_ready~q\);

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

-- Location: LCCOMB_X19_Y25_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.game_ready~q\ & (\stop_button~input_o\ & (\current_state.spinning~q\))) # (!\current_state.game_ready~q\ & (((\stop_button~input_o\ & \current_state.spinning~q\)) # (!\start_button~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.game_ready~q\,
	datab => \stop_button~input_o\,
	datac => \current_state.spinning~q\,
	datad => \start_button~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X19_Y25_N7
\current_state.spinning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.spinning~q\);

-- Location: LCCOMB_X20_Y25_N20
\Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (\current_state.slow_slowdown~q\ & (!\Selector8~3_combout\ & ((\stop_button~input_o\) # (!\current_state.spinning~q\)))) # (!\current_state.slow_slowdown~q\ & (((\stop_button~input_o\)) # (!\current_state.spinning~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.slow_slowdown~q\,
	datab => \current_state.spinning~q\,
	datac => \stop_button~input_o\,
	datad => \Selector8~3_combout\,
	combout => \Selector8~5_combout\);

-- Location: LCCOMB_X20_Y25_N26
\Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (function_counter(2) & (function_counter(3) & ((\Selector9~0_combout\) # (\Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(2),
	datab => \Selector9~0_combout\,
	datac => \Selector8~2_combout\,
	datad => function_counter(3),
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = ((\Selector8~4_combout\) # ((\current_state.finish_slowdown~q\ & \Equal7~0_combout\))) # (!\Selector8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.finish_slowdown~q\,
	datab => \Selector8~5_combout\,
	datac => \Equal7~0_combout\,
	datad => \Selector8~4_combout\,
	combout => \Selector8~6_combout\);

-- Location: LCCOMB_X20_Y25_N30
\function_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \function_counter~4_combout\ = (!\Selector8~6_combout\ & (function_counter(1) $ (function_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datac => function_counter(1),
	datad => function_counter(0),
	combout => \function_counter~4_combout\);

-- Location: FF_X20_Y25_N31
\function_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \function_counter~4_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => function_counter(1));

-- Location: LCCOMB_X19_Y25_N4
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.spinning~q\ & !\stop_button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datad => \stop_button~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X19_Y25_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector8~0_combout\) # ((\current_state.fast_slowdown~q\ & ((!\Add2~0_combout\) # (!\Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector8~1_combout\,
	datac => \current_state.fast_slowdown~q\,
	datad => \Add2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X19_Y25_N25
\current_state.fast_slowdown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.fast_slowdown~q\);

-- Location: LCCOMB_X20_Y25_N14
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (function_counter(1) & (function_counter(0) & \current_state.fast_slowdown~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => function_counter(1),
	datab => function_counter(0),
	datad => \current_state.fast_slowdown~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (function_counter(2)) # (function_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => function_counter(2),
	datad => function_counter(3),
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~0_combout\) # (((\Selector9~1_combout\ & \Selector8~2_combout\)) # (!\Selector8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector9~1_combout\,
	datac => \Selector8~2_combout\,
	datad => \Selector8~5_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X21_Y23_N31
\Hz_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	asdata => \Hz_select[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hz_select(0));

-- Location: LCCOMB_X21_Y23_N20
\clk_divider|div_upper_bound[8]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[8]~46_combout\ = Hz_select(0) $ (!Hz_select(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datac => Hz_select(1),
	combout => \clk_divider|div_upper_bound[8]~46_combout\);

-- Location: FF_X21_Y23_N21
\Hz_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \clk_divider|div_upper_bound[8]~46_combout\,
	clrn => \reset~input_o\,
	ena => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hz_select(1));

-- Location: LCCOMB_X21_Y23_N26
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Hz_select(2) $ (((Hz_select(1) & !Hz_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(0),
	combout => \Add0~0_combout\);

-- Location: FF_X21_Y23_N27
\Hz_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset~input_o\,
	ena => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hz_select(2));

-- Location: LCCOMB_X21_Y23_N0
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = Hz_select(3) $ (((Hz_select(1) & (!Hz_select(2) & !Hz_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(2),
	datac => Hz_select(3),
	datad => Hz_select(0),
	combout => \Add0~1_combout\);

-- Location: FF_X21_Y23_N1
\Hz_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Add0~1_combout\,
	clrn => \reset~input_o\,
	ena => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hz_select(3));

-- Location: LCCOMB_X20_Y23_N20
\clk_divider|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~1_combout\ = (Hz_select(1) & (Hz_select(3) & (Hz_select(0) & !Hz_select(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(2),
	combout => \clk_divider|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y23_N24
\clk_divider|div_upper_bound[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[3]~39_combout\ = (Hz_select(1) & (((Hz_select(3)) # (Hz_select(2))) # (!Hz_select(0)))) # (!Hz_select(1) & ((Hz_select(0)) # ((!Hz_select(2)) # (!Hz_select(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(0),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound[3]~39_combout\);

-- Location: LCCOMB_X20_Y23_N6
\clk_divider|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~2_combout\ = (!Hz_select(1) & (Hz_select(3) & (!Hz_select(0) & !Hz_select(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(2),
	combout => \clk_divider|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y23_N16
\clk_divider|Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~9_combout\ = (!Hz_select(2) & (!Hz_select(3) & (Hz_select(0) & Hz_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(1),
	combout => \clk_divider|Equal1~9_combout\);

-- Location: LCCOMB_X20_Y23_N4
\clk_divider|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~22_combout\ = (\clk_divider|Equal1~2_combout\ & (\clk_divider|div_counter\(24) & (\clk_divider|Equal1~9_combout\ $ (\clk_divider|div_counter\(19))))) # (!\clk_divider|Equal1~2_combout\ & (!\clk_divider|div_counter\(24) & 
-- (\clk_divider|Equal1~9_combout\ $ (\clk_divider|div_counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~2_combout\,
	datab => \clk_divider|Equal1~9_combout\,
	datac => \clk_divider|div_counter\(24),
	datad => \clk_divider|div_counter\(19),
	combout => \clk_divider|Equal0~22_combout\);

-- Location: LCCOMB_X20_Y23_N14
\clk_divider|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~23_combout\ = (\clk_divider|Equal0~22_combout\ & (\clk_divider|div_upper_bound[3]~39_combout\ $ (!\clk_divider|div_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_upper_bound[3]~39_combout\,
	datac => \clk_divider|Equal0~22_combout\,
	datad => \clk_divider|div_counter\(3),
	combout => \clk_divider|Equal0~23_combout\);

-- Location: LCCOMB_X20_Y23_N28
\clk_divider|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~24_combout\ = (Hz_select(1) & (((!Hz_select(3) & !Hz_select(2))))) # (!Hz_select(1) & (Hz_select(0) & (Hz_select(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(0),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|Equal0~24_combout\);

-- Location: LCCOMB_X21_Y23_N30
\clk_divider|Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~10_combout\ = (!Hz_select(2) & (!Hz_select(3) & (!Hz_select(0) & !Hz_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(1),
	combout => \clk_divider|Equal1~10_combout\);

-- Location: LCCOMB_X20_Y23_N16
\clk_divider|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~25_combout\ = \clk_divider|div_counter\(4) $ (((\clk_divider|Equal1~10_combout\) # (!\clk_divider|Equal0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~24_combout\,
	datac => \clk_divider|Equal1~10_combout\,
	datad => \clk_divider|div_counter\(4),
	combout => \clk_divider|Equal0~25_combout\);

-- Location: LCCOMB_X20_Y23_N18
\clk_divider|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~26_combout\ = (\clk_divider|Equal0~23_combout\ & (!\clk_divider|Equal0~25_combout\ & (\clk_divider|div_counter\(25) $ (!\clk_divider|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(25),
	datab => \clk_divider|Equal1~1_combout\,
	datac => \clk_divider|Equal0~23_combout\,
	datad => \clk_divider|Equal0~25_combout\,
	combout => \clk_divider|Equal0~26_combout\);

-- Location: LCCOMB_X24_Y23_N24
\clk_divider|Equal0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~43_combout\ = (Hz_select(1) & ((Hz_select(2) & ((Hz_select(3)))) # (!Hz_select(2) & ((Hz_select(0)) # (!Hz_select(3)))))) # (!Hz_select(1) & (Hz_select(3) & ((!Hz_select(2)) # (!Hz_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|Equal0~43_combout\);

-- Location: LCCOMB_X24_Y23_N22
\clk_divider|Equal0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~44_combout\ = \clk_divider|div_counter\(20) $ (\clk_divider|Equal0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(20),
	datad => \clk_divider|Equal0~43_combout\,
	combout => \clk_divider|Equal0~44_combout\);

-- Location: LCCOMB_X21_Y23_N8
\clk_divider|Equal0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~45_combout\ = (Hz_select(0) & (((Hz_select(3))))) # (!Hz_select(0) & ((Hz_select(1) & (Hz_select(2) $ (!Hz_select(3)))) # (!Hz_select(1) & (!Hz_select(2) & Hz_select(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|Equal0~45_combout\);

-- Location: LCCOMB_X24_Y23_N28
\clk_divider|Equal0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~46_combout\ = \clk_divider|Equal0~45_combout\ $ (\clk_divider|div_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Equal0~45_combout\,
	datad => \clk_divider|div_counter\(12),
	combout => \clk_divider|Equal0~46_combout\);

-- Location: LCCOMB_X24_Y23_N4
\clk_divider|Equal0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~41_combout\ = \clk_divider|div_counter\(23) $ (((Hz_select(0) & (Hz_select(3) & !Hz_select(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => \clk_divider|div_counter\(23),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|Equal0~41_combout\);

-- Location: LCCOMB_X24_Y23_N26
\clk_divider|Equal0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~42_combout\ = \clk_divider|Equal0~41_combout\ $ (((Hz_select(2) & (Hz_select(3) & Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => \clk_divider|Equal0~41_combout\,
	datad => Hz_select(1),
	combout => \clk_divider|Equal0~42_combout\);

-- Location: LCCOMB_X21_Y23_N14
\clk_divider|div_upper_bound[15]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[15]~40_combout\ = (Hz_select(2) & (Hz_select(3) & ((Hz_select(0)) # (Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[15]~40_combout\);

-- Location: LCCOMB_X24_Y23_N30
\clk_divider|div_upper_bound[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[15]~48_combout\ = (Hz_select(0) & (!Hz_select(2) & Hz_select(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datac => Hz_select(2),
	datad => Hz_select(1),
	combout => \clk_divider|div_upper_bound[15]~48_combout\);

-- Location: LCCOMB_X24_Y23_N10
\clk_divider|div_upper_bound[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[10]~41_combout\ = (Hz_select(2) & (Hz_select(0) & ((Hz_select(3))))) # (!Hz_select(2) & (((Hz_select(1) & !Hz_select(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(0),
	datac => Hz_select(1),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[10]~41_combout\);

-- Location: LCCOMB_X22_Y23_N12
\clk_divider|div_upper_bound[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[5]~37_combout\ = (Hz_select(2) & (((!Hz_select(0) & Hz_select(1))) # (!Hz_select(3)))) # (!Hz_select(2) & ((Hz_select(3)) # ((Hz_select(0) & !Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[5]~37_combout\);

-- Location: LCCOMB_X22_Y23_N24
\clk_divider|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~4_combout\ = (Hz_select(2) & (Hz_select(1) & (Hz_select(3) & !Hz_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(1),
	datac => Hz_select(3),
	datad => Hz_select(0),
	combout => \clk_divider|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y23_N20
\clk_divider|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~27_combout\ = \clk_divider|div_counter\(10) $ (((\clk_divider|div_upper_bound[10]~41_combout\) # ((\clk_divider|div_upper_bound[5]~37_combout\ & \clk_divider|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[10]~41_combout\,
	datab => \clk_divider|div_upper_bound[5]~37_combout\,
	datac => \clk_divider|div_counter\(10),
	datad => \clk_divider|Equal1~4_combout\,
	combout => \clk_divider|Equal0~27_combout\);

-- Location: LCCOMB_X24_Y23_N18
\clk_divider|Equal0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~28_combout\ = (!\clk_divider|Equal0~27_combout\ & (\clk_divider|div_counter\(15) $ (((!\clk_divider|div_upper_bound[15]~40_combout\ & !\clk_divider|div_upper_bound[15]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[15]~40_combout\,
	datab => \clk_divider|div_counter\(15),
	datac => \clk_divider|div_upper_bound[15]~48_combout\,
	datad => \clk_divider|Equal0~27_combout\,
	combout => \clk_divider|Equal0~28_combout\);

-- Location: LCCOMB_X24_Y23_N8
\clk_divider|Equal0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~29_combout\ = (!\clk_divider|Equal0~44_combout\ & (!\clk_divider|Equal0~46_combout\ & (!\clk_divider|Equal0~42_combout\ & \clk_divider|Equal0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~44_combout\,
	datab => \clk_divider|Equal0~46_combout\,
	datac => \clk_divider|Equal0~42_combout\,
	datad => \clk_divider|Equal0~28_combout\,
	combout => \clk_divider|Equal0~29_combout\);

-- Location: LCCOMB_X22_Y23_N8
\clk_divider|Equal0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~39_combout\ = (Hz_select(3) & (Hz_select(0) $ (((Hz_select(2)))))) # (!Hz_select(3) & ((Hz_select(2)) # ((!Hz_select(0) & Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datab => Hz_select(0),
	datac => Hz_select(1),
	datad => Hz_select(2),
	combout => \clk_divider|Equal0~39_combout\);

-- Location: LCCOMB_X22_Y23_N10
\clk_divider|Equal0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~40_combout\ = (\clk_divider|div_counter\(17) & (\clk_divider|Equal0~39_combout\ $ (((Hz_select(3)) # (!Hz_select(2)))))) # (!\clk_divider|div_counter\(17) & (\clk_divider|Equal0~39_combout\ & ((Hz_select(3)) # (!Hz_select(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datab => \clk_divider|div_counter\(17),
	datac => \clk_divider|Equal0~39_combout\,
	datad => Hz_select(2),
	combout => \clk_divider|Equal0~40_combout\);

-- Location: LCCOMB_X20_Y23_N12
\clk_divider|div_upper_bound[16]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[16]~44_combout\ = (!Hz_select(0) & ((Hz_select(2) & (Hz_select(3) & !Hz_select(1))) # (!Hz_select(2) & (!Hz_select(3) & Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(2),
	datac => Hz_select(3),
	datad => Hz_select(1),
	combout => \clk_divider|div_upper_bound[16]~44_combout\);

-- Location: LCCOMB_X21_Y23_N12
\clk_divider|div_upper_bound[1]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[1]~42_combout\ = (Hz_select(3) & (((Hz_select(1)) # (!Hz_select(2))))) # (!Hz_select(3) & ((Hz_select(2)) # ((Hz_select(0) & !Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(3),
	datac => Hz_select(2),
	datad => Hz_select(1),
	combout => \clk_divider|div_upper_bound[1]~42_combout\);

-- Location: LCCOMB_X20_Y23_N22
\clk_divider|div_upper_bound[16]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[16]~43_combout\ = (\clk_divider|div_upper_bound[1]~42_combout\ & \clk_divider|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|div_upper_bound[1]~42_combout\,
	datad => \clk_divider|Equal1~2_combout\,
	combout => \clk_divider|div_upper_bound[16]~43_combout\);

-- Location: LCCOMB_X21_Y23_N2
\clk_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~6_combout\ = (Hz_select(0) & (((Hz_select(2) & !Hz_select(1))) # (!Hz_select(3)))) # (!Hz_select(0) & (Hz_select(3) $ (((Hz_select(2)) # (!Hz_select(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(3),
	datac => Hz_select(2),
	datad => Hz_select(1),
	combout => \clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y23_N2
\clk_divider|Equal0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~37_combout\ = \clk_divider|div_counter\(8) $ (\clk_divider|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(8),
	datad => \clk_divider|Equal0~6_combout\,
	combout => \clk_divider|Equal0~37_combout\);

-- Location: LCCOMB_X20_Y23_N0
\clk_divider|Equal0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~32_combout\ = (!\clk_divider|Equal0~37_combout\ & (\clk_divider|div_counter\(16) $ (((!\clk_divider|div_upper_bound[16]~44_combout\ & !\clk_divider|div_upper_bound[16]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[16]~44_combout\,
	datab => \clk_divider|div_counter\(16),
	datac => \clk_divider|div_upper_bound[16]~43_combout\,
	datad => \clk_divider|Equal0~37_combout\,
	combout => \clk_divider|Equal0~32_combout\);

-- Location: LCCOMB_X22_Y23_N14
\clk_divider|Equal0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~38_combout\ = \clk_divider|div_counter\(18) $ ((((!Hz_select(0)) # (!Hz_select(1))) # (!Hz_select(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datab => Hz_select(1),
	datac => \clk_divider|div_counter\(18),
	datad => Hz_select(0),
	combout => \clk_divider|Equal0~38_combout\);

-- Location: LCCOMB_X22_Y23_N30
\clk_divider|div_upper_bound[6]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[6]~51_combout\ = (Hz_select(0) & ((Hz_select(2) & ((Hz_select(3)))) # (!Hz_select(2) & (Hz_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound[6]~51_combout\);

-- Location: LCCOMB_X22_Y23_N22
\clk_divider|div_upper_bound[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[5]~45_combout\ = (Hz_select(0) & (Hz_select(1) & (Hz_select(3) $ (!Hz_select(2))))) # (!Hz_select(0) & (!Hz_select(1) & (!Hz_select(3) & !Hz_select(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound[5]~45_combout\);

-- Location: LCCOMB_X22_Y23_N20
\clk_divider|Equal0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~33_combout\ = \clk_divider|div_counter\(5) $ (((\clk_divider|div_upper_bound[5]~45_combout\) # ((\clk_divider|div_upper_bound[5]~37_combout\ & !\clk_divider|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[5]~37_combout\,
	datab => \clk_divider|Equal1~4_combout\,
	datac => \clk_divider|div_upper_bound[5]~45_combout\,
	datad => \clk_divider|div_counter\(5),
	combout => \clk_divider|Equal0~33_combout\);

-- Location: LCCOMB_X22_Y23_N26
\clk_divider|Equal0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~34_combout\ = (!\clk_divider|Equal0~38_combout\ & (!\clk_divider|Equal0~33_combout\ & (\clk_divider|div_counter\(6) $ (!\clk_divider|div_upper_bound[6]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~38_combout\,
	datab => \clk_divider|div_counter\(6),
	datac => \clk_divider|div_upper_bound[6]~51_combout\,
	datad => \clk_divider|Equal0~33_combout\,
	combout => \clk_divider|Equal0~34_combout\);

-- Location: LCCOMB_X22_Y23_N0
\clk_divider|div_upper_bound[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[9]~50_combout\ = (Hz_select(1) & ((Hz_select(0) & ((Hz_select(2)))) # (!Hz_select(0) & ((!Hz_select(2)) # (!Hz_select(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datab => Hz_select(0),
	datac => Hz_select(1),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound[9]~50_combout\);

-- Location: LCCOMB_X22_Y23_N18
\clk_divider|div_upper_bound[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[9]~49_combout\ = (!Hz_select(3) & !Hz_select(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datad => Hz_select(1),
	combout => \clk_divider|div_upper_bound[9]~49_combout\);

-- Location: LCCOMB_X23_Y24_N4
\clk_divider|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~3_combout\ = (Hz_select(0) & (!Hz_select(2) & (!Hz_select(1) & Hz_select(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(2),
	datac => Hz_select(1),
	datad => Hz_select(3),
	combout => \clk_divider|Equal1~3_combout\);

-- Location: LCCOMB_X23_Y24_N0
\clk_divider|Equal0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~30_combout\ = \clk_divider|div_counter\(1) $ (((\clk_divider|div_upper_bound[1]~42_combout\ & ((\clk_divider|Equal1~3_combout\))) # (!\clk_divider|div_upper_bound[1]~42_combout\ & (Hz_select(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => \clk_divider|div_counter\(1),
	datac => \clk_divider|Equal1~3_combout\,
	datad => \clk_divider|div_upper_bound[1]~42_combout\,
	combout => \clk_divider|Equal0~30_combout\);

-- Location: LCCOMB_X22_Y23_N2
\clk_divider|Equal0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~31_combout\ = (\clk_divider|Equal0~30_combout\ & (\clk_divider|div_counter\(9) $ (((!\clk_divider|div_upper_bound[9]~50_combout\ & !\clk_divider|div_upper_bound[9]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(9),
	datab => \clk_divider|div_upper_bound[9]~50_combout\,
	datac => \clk_divider|div_upper_bound[9]~49_combout\,
	datad => \clk_divider|Equal0~30_combout\,
	combout => \clk_divider|Equal0~31_combout\);

-- Location: LCCOMB_X22_Y23_N6
\clk_divider|Equal0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~35_combout\ = (!\clk_divider|Equal0~40_combout\ & (\clk_divider|Equal0~32_combout\ & (\clk_divider|Equal0~34_combout\ & \clk_divider|Equal0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~40_combout\,
	datab => \clk_divider|Equal0~32_combout\,
	datac => \clk_divider|Equal0~34_combout\,
	datad => \clk_divider|Equal0~31_combout\,
	combout => \clk_divider|Equal0~35_combout\);

-- Location: LCCOMB_X21_Y23_N22
\clk_divider|div_upper_bound[14]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[14]~31_combout\ = (((Hz_select(0) & !Hz_select(1))) # (!Hz_select(3))) # (!Hz_select(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[14]~31_combout\);

-- Location: LCCOMB_X24_Y23_N16
\clk_divider|div_upper_bound[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[11]~30_combout\ = ((Hz_select(1) & (Hz_select(2) & !Hz_select(3))) # (!Hz_select(1) & ((Hz_select(2)) # (!Hz_select(3))))) # (!Hz_select(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[11]~30_combout\);

-- Location: LCCOMB_X23_Y23_N26
\clk_divider|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~15_combout\ = (\clk_divider|div_counter\(11) & (\clk_divider|div_upper_bound[11]~30_combout\ & (\clk_divider|div_counter\(14) $ (!\clk_divider|div_upper_bound[14]~31_combout\)))) # (!\clk_divider|div_counter\(11) & 
-- (!\clk_divider|div_upper_bound[11]~30_combout\ & (\clk_divider|div_counter\(14) $ (!\clk_divider|div_upper_bound[14]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(11),
	datab => \clk_divider|div_counter\(14),
	datac => \clk_divider|div_upper_bound[14]~31_combout\,
	datad => \clk_divider|div_upper_bound[11]~30_combout\,
	combout => \clk_divider|Equal0~15_combout\);

-- Location: LCCOMB_X22_Y23_N16
\clk_divider|div_upper_bound[21]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[21]~38_combout\ = (Hz_select(3) & (Hz_select(2) & !Hz_select(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(3),
	datac => Hz_select(2),
	datad => Hz_select(1),
	combout => \clk_divider|div_upper_bound[21]~38_combout\);

-- Location: LCCOMB_X22_Y23_N4
\clk_divider|div_upper_bound~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound~36_combout\ = (Hz_select(3) & (Hz_select(2) $ (((Hz_select(0)) # (!Hz_select(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(3),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound~36_combout\);

-- Location: LCCOMB_X22_Y23_N28
\clk_divider|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~20_combout\ = \clk_divider|div_counter\(21) $ (((\clk_divider|div_upper_bound[21]~38_combout\) # ((\clk_divider|div_upper_bound~36_combout\ & \clk_divider|div_upper_bound[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(21),
	datab => \clk_divider|div_upper_bound[21]~38_combout\,
	datac => \clk_divider|div_upper_bound~36_combout\,
	datad => \clk_divider|div_upper_bound[5]~37_combout\,
	combout => \clk_divider|Equal0~20_combout\);

-- Location: LCCOMB_X22_Y22_N22
\clk_divider|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~6_combout\ = (Hz_select(2) & (Hz_select(3) & (!Hz_select(1) & !Hz_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => Hz_select(1),
	datad => Hz_select(0),
	combout => \clk_divider|Equal1~6_combout\);

-- Location: LCCOMB_X22_Y22_N10
\clk_divider|div_upper_bound[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[3]~32_combout\ = (Hz_select(0) & (Hz_select(3) & (!Hz_select(1) & Hz_select(2)))) # (!Hz_select(0) & (!Hz_select(3) & (Hz_select(1) & !Hz_select(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(3),
	datac => Hz_select(1),
	datad => Hz_select(2),
	combout => \clk_divider|div_upper_bound[3]~32_combout\);

-- Location: LCCOMB_X22_Y22_N30
\clk_divider|div_upper_bound[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[3]~33_combout\ = (\clk_divider|Equal1~9_combout\) # ((\clk_divider|Equal1~10_combout\) # ((\clk_divider|div_upper_bound[3]~32_combout\) # (!\clk_divider|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|Equal1~10_combout\,
	datac => \clk_divider|Equal1~6_combout\,
	datad => \clk_divider|div_upper_bound[3]~32_combout\,
	combout => \clk_divider|div_upper_bound[3]~33_combout\);

-- Location: LCCOMB_X22_Y22_N0
\clk_divider|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~16_combout\ = \clk_divider|div_counter\(22) $ ((((!Hz_select(3)) # (!Hz_select(1))) # (!Hz_select(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => \clk_divider|div_counter\(22),
	datac => Hz_select(1),
	datad => Hz_select(3),
	combout => \clk_divider|Equal0~16_combout\);

-- Location: LCCOMB_X21_Y23_N18
\clk_divider|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~8_combout\ = (!Hz_select(2) & (!Hz_select(3) & (!Hz_select(0) & Hz_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(1),
	combout => \clk_divider|Equal1~8_combout\);

-- Location: LCCOMB_X22_Y22_N8
\clk_divider|div_upper_bound[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[0]~34_combout\ = (\clk_divider|Equal1~8_combout\) # ((\clk_divider|Equal1~10_combout\) # ((!\clk_divider|Equal1~9_combout\ & !\clk_divider|div_upper_bound[3]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~8_combout\,
	datab => \clk_divider|Equal1~10_combout\,
	datac => \clk_divider|Equal1~9_combout\,
	datad => \clk_divider|div_upper_bound[3]~32_combout\,
	combout => \clk_divider|div_upper_bound[0]~34_combout\);

-- Location: LCCOMB_X22_Y22_N26
\clk_divider|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~17_combout\ = (!\clk_divider|Equal0~16_combout\ & (\clk_divider|div_counter\(0) $ (((!\clk_divider|div_upper_bound[0]~34_combout\) # (!\clk_divider|div_upper_bound[3]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[3]~33_combout\,
	datab => \clk_divider|Equal0~16_combout\,
	datac => \clk_divider|div_upper_bound[0]~34_combout\,
	datad => \clk_divider|div_counter\(0),
	combout => \clk_divider|Equal0~17_combout\);

-- Location: LCCOMB_X21_Y23_N6
\clk_divider|div_upper_bound[2]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[2]~47_combout\ = ((Hz_select(1) & ((Hz_select(2)) # (Hz_select(3)))) # (!Hz_select(1) & ((!Hz_select(3))))) # (!Hz_select(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[2]~47_combout\);

-- Location: LCCOMB_X21_Y23_N10
\clk_divider|div_upper_bound[13]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_upper_bound[13]~35_combout\ = (Hz_select(3) & ((Hz_select(0) & (Hz_select(1) $ (Hz_select(2)))) # (!Hz_select(0) & ((Hz_select(2)) # (!Hz_select(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(0),
	datab => Hz_select(1),
	datac => Hz_select(2),
	datad => Hz_select(3),
	combout => \clk_divider|div_upper_bound[13]~35_combout\);

-- Location: LCCOMB_X21_Y23_N4
\clk_divider|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~7_combout\ = (Hz_select(2) & (Hz_select(3) & (Hz_select(0) & !Hz_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(3),
	datac => Hz_select(0),
	datad => Hz_select(1),
	combout => \clk_divider|Equal1~7_combout\);

-- Location: LCCOMB_X21_Y23_N24
\clk_divider|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~18_combout\ = (\clk_divider|div_upper_bound[13]~35_combout\ & (\clk_divider|div_counter\(13) & (\clk_divider|Equal1~7_combout\ $ (!\clk_divider|div_counter\(7))))) # (!\clk_divider|div_upper_bound[13]~35_combout\ & 
-- (!\clk_divider|div_counter\(13) & (\clk_divider|Equal1~7_combout\ $ (!\clk_divider|div_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[13]~35_combout\,
	datab => \clk_divider|Equal1~7_combout\,
	datac => \clk_divider|div_counter\(13),
	datad => \clk_divider|div_counter\(7),
	combout => \clk_divider|Equal0~18_combout\);

-- Location: LCCOMB_X21_Y23_N28
\clk_divider|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~19_combout\ = (\clk_divider|Equal0~18_combout\ & (\clk_divider|div_upper_bound[2]~47_combout\ $ (!\clk_divider|div_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_upper_bound[2]~47_combout\,
	datac => \clk_divider|div_counter\(2),
	datad => \clk_divider|Equal0~18_combout\,
	combout => \clk_divider|Equal0~19_combout\);

-- Location: LCCOMB_X23_Y23_N28
\clk_divider|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~21_combout\ = (\clk_divider|Equal0~15_combout\ & (!\clk_divider|Equal0~20_combout\ & (\clk_divider|Equal0~17_combout\ & \clk_divider|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~15_combout\,
	datab => \clk_divider|Equal0~20_combout\,
	datac => \clk_divider|Equal0~17_combout\,
	datad => \clk_divider|Equal0~19_combout\,
	combout => \clk_divider|Equal0~21_combout\);

-- Location: LCCOMB_X23_Y23_N30
\clk_divider|Equal0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~36_combout\ = (\clk_divider|Equal0~26_combout\ & (\clk_divider|Equal0~29_combout\ & (\clk_divider|Equal0~35_combout\ & \clk_divider|Equal0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~26_combout\,
	datab => \clk_divider|Equal0~29_combout\,
	datac => \clk_divider|Equal0~35_combout\,
	datad => \clk_divider|Equal0~21_combout\,
	combout => \clk_divider|Equal0~36_combout\);

-- Location: FF_X23_Y24_N7
\clk_divider|div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(0));

-- Location: LCCOMB_X23_Y24_N8
\clk_divider|div_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[1]~28_combout\ = (\clk_divider|div_counter\(1) & (!\clk_divider|div_counter[0]~27\)) # (!\clk_divider|div_counter\(1) & ((\clk_divider|div_counter[0]~27\) # (GND)))
-- \clk_divider|div_counter[1]~29\ = CARRY((!\clk_divider|div_counter[0]~27\) # (!\clk_divider|div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(1),
	datad => VCC,
	cin => \clk_divider|div_counter[0]~27\,
	combout => \clk_divider|div_counter[1]~28_combout\,
	cout => \clk_divider|div_counter[1]~29\);

-- Location: FF_X23_Y24_N9
\clk_divider|div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(1));

-- Location: LCCOMB_X23_Y24_N10
\clk_divider|div_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[2]~30_combout\ = (\clk_divider|div_counter\(2) & (\clk_divider|div_counter[1]~29\ $ (GND))) # (!\clk_divider|div_counter\(2) & (!\clk_divider|div_counter[1]~29\ & VCC))
-- \clk_divider|div_counter[2]~31\ = CARRY((\clk_divider|div_counter\(2) & !\clk_divider|div_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(2),
	datad => VCC,
	cin => \clk_divider|div_counter[1]~29\,
	combout => \clk_divider|div_counter[2]~30_combout\,
	cout => \clk_divider|div_counter[2]~31\);

-- Location: FF_X23_Y24_N11
\clk_divider|div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(2));

-- Location: LCCOMB_X23_Y24_N12
\clk_divider|div_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[3]~32_combout\ = (\clk_divider|div_counter\(3) & (!\clk_divider|div_counter[2]~31\)) # (!\clk_divider|div_counter\(3) & ((\clk_divider|div_counter[2]~31\) # (GND)))
-- \clk_divider|div_counter[3]~33\ = CARRY((!\clk_divider|div_counter[2]~31\) # (!\clk_divider|div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(3),
	datad => VCC,
	cin => \clk_divider|div_counter[2]~31\,
	combout => \clk_divider|div_counter[3]~32_combout\,
	cout => \clk_divider|div_counter[3]~33\);

-- Location: FF_X23_Y24_N13
\clk_divider|div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(3));

-- Location: LCCOMB_X23_Y24_N14
\clk_divider|div_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[4]~34_combout\ = (\clk_divider|div_counter\(4) & (\clk_divider|div_counter[3]~33\ $ (GND))) # (!\clk_divider|div_counter\(4) & (!\clk_divider|div_counter[3]~33\ & VCC))
-- \clk_divider|div_counter[4]~35\ = CARRY((\clk_divider|div_counter\(4) & !\clk_divider|div_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(4),
	datad => VCC,
	cin => \clk_divider|div_counter[3]~33\,
	combout => \clk_divider|div_counter[4]~34_combout\,
	cout => \clk_divider|div_counter[4]~35\);

-- Location: FF_X23_Y24_N15
\clk_divider|div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(4));

-- Location: LCCOMB_X23_Y24_N16
\clk_divider|div_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[5]~36_combout\ = (\clk_divider|div_counter\(5) & (!\clk_divider|div_counter[4]~35\)) # (!\clk_divider|div_counter\(5) & ((\clk_divider|div_counter[4]~35\) # (GND)))
-- \clk_divider|div_counter[5]~37\ = CARRY((!\clk_divider|div_counter[4]~35\) # (!\clk_divider|div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(5),
	datad => VCC,
	cin => \clk_divider|div_counter[4]~35\,
	combout => \clk_divider|div_counter[5]~36_combout\,
	cout => \clk_divider|div_counter[5]~37\);

-- Location: FF_X23_Y24_N17
\clk_divider|div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(5));

-- Location: LCCOMB_X23_Y24_N18
\clk_divider|div_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[6]~38_combout\ = (\clk_divider|div_counter\(6) & (\clk_divider|div_counter[5]~37\ $ (GND))) # (!\clk_divider|div_counter\(6) & (!\clk_divider|div_counter[5]~37\ & VCC))
-- \clk_divider|div_counter[6]~39\ = CARRY((\clk_divider|div_counter\(6) & !\clk_divider|div_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(6),
	datad => VCC,
	cin => \clk_divider|div_counter[5]~37\,
	combout => \clk_divider|div_counter[6]~38_combout\,
	cout => \clk_divider|div_counter[6]~39\);

-- Location: FF_X23_Y24_N19
\clk_divider|div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(6));

-- Location: LCCOMB_X23_Y24_N20
\clk_divider|div_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[7]~40_combout\ = (\clk_divider|div_counter\(7) & (!\clk_divider|div_counter[6]~39\)) # (!\clk_divider|div_counter\(7) & ((\clk_divider|div_counter[6]~39\) # (GND)))
-- \clk_divider|div_counter[7]~41\ = CARRY((!\clk_divider|div_counter[6]~39\) # (!\clk_divider|div_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(7),
	datad => VCC,
	cin => \clk_divider|div_counter[6]~39\,
	combout => \clk_divider|div_counter[7]~40_combout\,
	cout => \clk_divider|div_counter[7]~41\);

-- Location: FF_X22_Y24_N1
\clk_divider|div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_divider|div_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(7));

-- Location: LCCOMB_X23_Y24_N22
\clk_divider|div_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[8]~42_combout\ = (\clk_divider|div_counter\(8) & (\clk_divider|div_counter[7]~41\ $ (GND))) # (!\clk_divider|div_counter\(8) & (!\clk_divider|div_counter[7]~41\ & VCC))
-- \clk_divider|div_counter[8]~43\ = CARRY((\clk_divider|div_counter\(8) & !\clk_divider|div_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(8),
	datad => VCC,
	cin => \clk_divider|div_counter[7]~41\,
	combout => \clk_divider|div_counter[8]~42_combout\,
	cout => \clk_divider|div_counter[8]~43\);

-- Location: FF_X20_Y23_N27
\clk_divider|div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_divider|div_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(8));

-- Location: LCCOMB_X23_Y24_N24
\clk_divider|div_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[9]~44_combout\ = (\clk_divider|div_counter\(9) & (!\clk_divider|div_counter[8]~43\)) # (!\clk_divider|div_counter\(9) & ((\clk_divider|div_counter[8]~43\) # (GND)))
-- \clk_divider|div_counter[9]~45\ = CARRY((!\clk_divider|div_counter[8]~43\) # (!\clk_divider|div_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(9),
	datad => VCC,
	cin => \clk_divider|div_counter[8]~43\,
	combout => \clk_divider|div_counter[9]~44_combout\,
	cout => \clk_divider|div_counter[9]~45\);

-- Location: FF_X23_Y24_N25
\clk_divider|div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(9));

-- Location: LCCOMB_X23_Y24_N26
\clk_divider|div_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[10]~46_combout\ = (\clk_divider|div_counter\(10) & (\clk_divider|div_counter[9]~45\ $ (GND))) # (!\clk_divider|div_counter\(10) & (!\clk_divider|div_counter[9]~45\ & VCC))
-- \clk_divider|div_counter[10]~47\ = CARRY((\clk_divider|div_counter\(10) & !\clk_divider|div_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(10),
	datad => VCC,
	cin => \clk_divider|div_counter[9]~45\,
	combout => \clk_divider|div_counter[10]~46_combout\,
	cout => \clk_divider|div_counter[10]~47\);

-- Location: FF_X23_Y24_N27
\clk_divider|div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(10));

-- Location: LCCOMB_X23_Y24_N28
\clk_divider|div_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[11]~48_combout\ = (\clk_divider|div_counter\(11) & (!\clk_divider|div_counter[10]~47\)) # (!\clk_divider|div_counter\(11) & ((\clk_divider|div_counter[10]~47\) # (GND)))
-- \clk_divider|div_counter[11]~49\ = CARRY((!\clk_divider|div_counter[10]~47\) # (!\clk_divider|div_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(11),
	datad => VCC,
	cin => \clk_divider|div_counter[10]~47\,
	combout => \clk_divider|div_counter[11]~48_combout\,
	cout => \clk_divider|div_counter[11]~49\);

-- Location: FF_X23_Y24_N29
\clk_divider|div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(11));

-- Location: LCCOMB_X23_Y24_N30
\clk_divider|div_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[12]~50_combout\ = (\clk_divider|div_counter\(12) & (\clk_divider|div_counter[11]~49\ $ (GND))) # (!\clk_divider|div_counter\(12) & (!\clk_divider|div_counter[11]~49\ & VCC))
-- \clk_divider|div_counter[12]~51\ = CARRY((\clk_divider|div_counter\(12) & !\clk_divider|div_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(12),
	datad => VCC,
	cin => \clk_divider|div_counter[11]~49\,
	combout => \clk_divider|div_counter[12]~50_combout\,
	cout => \clk_divider|div_counter[12]~51\);

-- Location: FF_X23_Y24_N31
\clk_divider|div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(12));

-- Location: LCCOMB_X23_Y23_N0
\clk_divider|div_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[13]~52_combout\ = (\clk_divider|div_counter\(13) & (!\clk_divider|div_counter[12]~51\)) # (!\clk_divider|div_counter\(13) & ((\clk_divider|div_counter[12]~51\) # (GND)))
-- \clk_divider|div_counter[13]~53\ = CARRY((!\clk_divider|div_counter[12]~51\) # (!\clk_divider|div_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(13),
	datad => VCC,
	cin => \clk_divider|div_counter[12]~51\,
	combout => \clk_divider|div_counter[13]~52_combout\,
	cout => \clk_divider|div_counter[13]~53\);

-- Location: FF_X23_Y23_N1
\clk_divider|div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(13));

-- Location: LCCOMB_X23_Y23_N2
\clk_divider|div_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[14]~54_combout\ = (\clk_divider|div_counter\(14) & (\clk_divider|div_counter[13]~53\ $ (GND))) # (!\clk_divider|div_counter\(14) & (!\clk_divider|div_counter[13]~53\ & VCC))
-- \clk_divider|div_counter[14]~55\ = CARRY((\clk_divider|div_counter\(14) & !\clk_divider|div_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(14),
	datad => VCC,
	cin => \clk_divider|div_counter[13]~53\,
	combout => \clk_divider|div_counter[14]~54_combout\,
	cout => \clk_divider|div_counter[14]~55\);

-- Location: FF_X23_Y23_N3
\clk_divider|div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(14));

-- Location: LCCOMB_X23_Y23_N4
\clk_divider|div_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[15]~56_combout\ = (\clk_divider|div_counter\(15) & (!\clk_divider|div_counter[14]~55\)) # (!\clk_divider|div_counter\(15) & ((\clk_divider|div_counter[14]~55\) # (GND)))
-- \clk_divider|div_counter[15]~57\ = CARRY((!\clk_divider|div_counter[14]~55\) # (!\clk_divider|div_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(15),
	datad => VCC,
	cin => \clk_divider|div_counter[14]~55\,
	combout => \clk_divider|div_counter[15]~56_combout\,
	cout => \clk_divider|div_counter[15]~57\);

-- Location: FF_X23_Y23_N5
\clk_divider|div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(15));

-- Location: LCCOMB_X23_Y23_N6
\clk_divider|div_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[16]~58_combout\ = (\clk_divider|div_counter\(16) & (\clk_divider|div_counter[15]~57\ $ (GND))) # (!\clk_divider|div_counter\(16) & (!\clk_divider|div_counter[15]~57\ & VCC))
-- \clk_divider|div_counter[16]~59\ = CARRY((\clk_divider|div_counter\(16) & !\clk_divider|div_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(16),
	datad => VCC,
	cin => \clk_divider|div_counter[15]~57\,
	combout => \clk_divider|div_counter[16]~58_combout\,
	cout => \clk_divider|div_counter[16]~59\);

-- Location: FF_X23_Y23_N7
\clk_divider|div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(16));

-- Location: LCCOMB_X23_Y23_N8
\clk_divider|div_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[17]~60_combout\ = (\clk_divider|div_counter\(17) & (!\clk_divider|div_counter[16]~59\)) # (!\clk_divider|div_counter\(17) & ((\clk_divider|div_counter[16]~59\) # (GND)))
-- \clk_divider|div_counter[17]~61\ = CARRY((!\clk_divider|div_counter[16]~59\) # (!\clk_divider|div_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(17),
	datad => VCC,
	cin => \clk_divider|div_counter[16]~59\,
	combout => \clk_divider|div_counter[17]~60_combout\,
	cout => \clk_divider|div_counter[17]~61\);

-- Location: FF_X23_Y23_N9
\clk_divider|div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(17));

-- Location: LCCOMB_X23_Y23_N10
\clk_divider|div_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[18]~62_combout\ = (\clk_divider|div_counter\(18) & (\clk_divider|div_counter[17]~61\ $ (GND))) # (!\clk_divider|div_counter\(18) & (!\clk_divider|div_counter[17]~61\ & VCC))
-- \clk_divider|div_counter[18]~63\ = CARRY((\clk_divider|div_counter\(18) & !\clk_divider|div_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(18),
	datad => VCC,
	cin => \clk_divider|div_counter[17]~61\,
	combout => \clk_divider|div_counter[18]~62_combout\,
	cout => \clk_divider|div_counter[18]~63\);

-- Location: FF_X23_Y23_N11
\clk_divider|div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(18));

-- Location: LCCOMB_X23_Y23_N12
\clk_divider|div_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[19]~64_combout\ = (\clk_divider|div_counter\(19) & (!\clk_divider|div_counter[18]~63\)) # (!\clk_divider|div_counter\(19) & ((\clk_divider|div_counter[18]~63\) # (GND)))
-- \clk_divider|div_counter[19]~65\ = CARRY((!\clk_divider|div_counter[18]~63\) # (!\clk_divider|div_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(19),
	datad => VCC,
	cin => \clk_divider|div_counter[18]~63\,
	combout => \clk_divider|div_counter[19]~64_combout\,
	cout => \clk_divider|div_counter[19]~65\);

-- Location: FF_X23_Y23_N13
\clk_divider|div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(19));

-- Location: LCCOMB_X23_Y23_N14
\clk_divider|div_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[20]~66_combout\ = (\clk_divider|div_counter\(20) & (\clk_divider|div_counter[19]~65\ $ (GND))) # (!\clk_divider|div_counter\(20) & (!\clk_divider|div_counter[19]~65\ & VCC))
-- \clk_divider|div_counter[20]~67\ = CARRY((\clk_divider|div_counter\(20) & !\clk_divider|div_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(20),
	datad => VCC,
	cin => \clk_divider|div_counter[19]~65\,
	combout => \clk_divider|div_counter[20]~66_combout\,
	cout => \clk_divider|div_counter[20]~67\);

-- Location: FF_X23_Y23_N15
\clk_divider|div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(20));

-- Location: LCCOMB_X23_Y23_N16
\clk_divider|div_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|div_counter[21]~68_combout\ = (\clk_divider|div_counter\(21) & (!\clk_divider|div_counter[20]~67\)) # (!\clk_divider|div_counter\(21) & ((\clk_divider|div_counter[20]~67\) # (GND)))
-- \clk_divider|div_counter[21]~69\ = CARRY((!\clk_divider|div_counter[20]~67\) # (!\clk_divider|div_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(21),
	datad => VCC,
	cin => \clk_divider|div_counter[20]~67\,
	combout => \clk_divider|div_counter[21]~68_combout\,
	cout => \clk_divider|div_counter[21]~69\);

-- Location: FF_X23_Y23_N17
\clk_divider|div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|div_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(21));

-- Location: FF_X23_Y23_N19
\clk_divider|div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_divider|div_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \clk_divider|Equal0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|div_counter\(22));

-- Location: LCCOMB_X19_Y23_N0
\clk_divider|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~0_combout\ = (!Hz_select(2) & (Hz_select(1) & (Hz_select(3) & !Hz_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(2),
	datab => Hz_select(1),
	datac => Hz_select(3),
	datad => Hz_select(0),
	combout => \clk_divider|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y23_N6
\clk_divider|divided_clk~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~9_combout\ = (\clk_divider|div_counter\(22) & !\clk_divider|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|div_counter\(22),
	datad => \clk_divider|Equal1~0_combout\,
	combout => \clk_divider|divided_clk~9_combout\);

-- Location: LCCOMB_X20_Y23_N26
\clk_divider|divided_clk~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~8_combout\ = (\clk_divider|Equal1~1_combout\ & (\clk_divider|div_counter\(25))) # (!\clk_divider|Equal1~1_combout\ & ((\clk_divider|divided_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(25),
	datab => \clk_divider|divided_clk~9_combout\,
	datad => \clk_divider|Equal1~1_combout\,
	combout => \clk_divider|divided_clk~8_combout\);

-- Location: LCCOMB_X20_Y23_N8
\clk_divider|divided_clk~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~7_combout\ = (\clk_divider|Equal1~2_combout\ & (!\clk_divider|div_counter\(24))) # (!\clk_divider|Equal1~2_combout\ & ((!\clk_divider|divided_clk~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(24),
	datac => \clk_divider|divided_clk~8_combout\,
	datad => \clk_divider|Equal1~2_combout\,
	combout => \clk_divider|divided_clk~7_combout\);

-- Location: LCCOMB_X20_Y23_N10
\clk_divider|divided_clk~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~6_combout\ = (\clk_divider|Equal1~3_combout\ & (!\clk_divider|div_counter\(23))) # (!\clk_divider|Equal1~3_combout\ & ((\clk_divider|divided_clk~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(23),
	datac => \clk_divider|divided_clk~7_combout\,
	datad => \clk_divider|Equal1~3_combout\,
	combout => \clk_divider|divided_clk~6_combout\);

-- Location: LCCOMB_X20_Y23_N30
\clk_divider|divided_clk~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~5_combout\ = (\clk_divider|Equal1~4_combout\ & (\clk_divider|div_counter\(23))) # (!\clk_divider|Equal1~4_combout\ & ((!\clk_divider|divided_clk~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(23),
	datac => \clk_divider|Equal1~4_combout\,
	datad => \clk_divider|divided_clk~6_combout\,
	combout => \clk_divider|divided_clk~5_combout\);

-- Location: LCCOMB_X22_Y22_N24
\clk_divider|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~5_combout\ = (Hz_select(1) & (Hz_select(2) & (Hz_select(3) & Hz_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hz_select(1),
	datab => Hz_select(2),
	datac => Hz_select(3),
	datad => Hz_select(0),
	combout => \clk_divider|Equal1~5_combout\);

-- Location: LCCOMB_X22_Y22_N20
\clk_divider|divided_clk~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~4_combout\ = (\clk_divider|Equal1~5_combout\ & (!\clk_divider|div_counter\(23))) # (!\clk_divider|Equal1~5_combout\ & ((!\clk_divider|divided_clk~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|div_counter\(23),
	datac => \clk_divider|divided_clk~5_combout\,
	datad => \clk_divider|Equal1~5_combout\,
	combout => \clk_divider|divided_clk~4_combout\);

-- Location: LCCOMB_X22_Y22_N4
\clk_divider|divided_clk~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~3_combout\ = (\clk_divider|Equal1~6_combout\ & (!\clk_divider|div_counter\(22))) # (!\clk_divider|Equal1~6_combout\ & ((\clk_divider|divided_clk~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(22),
	datac => \clk_divider|Equal1~6_combout\,
	datad => \clk_divider|divided_clk~4_combout\,
	combout => \clk_divider|divided_clk~3_combout\);

-- Location: LCCOMB_X22_Y22_N6
\clk_divider|divided_clk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~2_combout\ = (\clk_divider|Equal1~7_combout\ & (\clk_divider|div_counter\(22))) # (!\clk_divider|Equal1~7_combout\ & ((!\clk_divider|divided_clk~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(22),
	datac => \clk_divider|divided_clk~3_combout\,
	datad => \clk_divider|Equal1~7_combout\,
	combout => \clk_divider|divided_clk~2_combout\);

-- Location: LCCOMB_X22_Y22_N18
\clk_divider|divided_clk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~1_combout\ = (\clk_divider|Equal1~8_combout\ & (!\clk_divider|div_counter\(22))) # (!\clk_divider|Equal1~8_combout\ & ((!\clk_divider|divided_clk~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(22),
	datac => \clk_divider|Equal1~8_combout\,
	datad => \clk_divider|divided_clk~2_combout\,
	combout => \clk_divider|divided_clk~1_combout\);

-- Location: LCCOMB_X22_Y22_N28
\clk_divider|divided_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~0_combout\ = (\clk_divider|Equal1~9_combout\ & (!\clk_divider|div_counter\(22))) # (!\clk_divider|Equal1~9_combout\ & ((\clk_divider|divided_clk~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(22),
	datac => \clk_divider|Equal1~9_combout\,
	datad => \clk_divider|divided_clk~1_combout\,
	combout => \clk_divider|divided_clk~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\clk_divider|divided_clk\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|divided_clk~combout\ = LCELL((\clk_divider|Equal1~10_combout\ & (\clk_divider|div_counter\(22))) # (!\clk_divider|Equal1~10_combout\ & ((!\clk_divider|divided_clk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|div_counter\(22),
	datac => \clk_divider|Equal1~10_combout\,
	datad => \clk_divider|divided_clk~0_combout\,
	combout => \clk_divider|divided_clk~combout\);

-- Location: CLKCTRL_G13
\clk_divider|divided_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|divided_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|divided_clk~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y25_N26
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.spinning~q\) # ((\current_state.slow_slowdown~q\) # ((\current_state.mid_slowdown~q\) # (\current_state.fast_slowdown~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.spinning~q\,
	datab => \current_state.slow_slowdown~q\,
	datac => \current_state.mid_slowdown~q\,
	datad => \current_state.fast_slowdown~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X19_Y25_N22
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\current_state.finish_slowdown~q\ & !\Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \current_state.finish_slowdown~q\,
	datad => \Equal7~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X19_Y25_N28
\game_number[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_number[2]~3_combout\ = game_number(2) $ (((game_number(0) & (\Selector0~1_combout\ & game_number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(0),
	datab => \Selector0~1_combout\,
	datac => game_number(2),
	datad => game_number(1),
	combout => \game_number[2]~3_combout\);

-- Location: FF_X19_Y25_N29
\game_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \game_number[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => game_number(2));

-- Location: LCCOMB_X19_Y25_N12
\game_number[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_number[2]~1_combout\ = (game_number(0) & game_number(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => game_number(0),
	datac => game_number(1),
	combout => \game_number[2]~1_combout\);

-- Location: LCCOMB_X19_Y25_N18
\game_number[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_number[3]~2_combout\ = game_number(3) $ (((\game_number[2]~1_combout\ & (\Selector0~1_combout\ & game_number(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_number[2]~1_combout\,
	datab => \Selector0~1_combout\,
	datac => game_number(3),
	datad => game_number(2),
	combout => \game_number[3]~2_combout\);

-- Location: FF_X19_Y25_N19
\game_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \game_number[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => game_number(3));

-- Location: LCCOMB_X19_Y25_N20
\game_number~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_number~0_combout\ = (!game_number(0) & (((game_number(2)) # (game_number(3))) # (!game_number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(2),
	datac => game_number(0),
	datad => game_number(3),
	combout => \game_number~0_combout\);

-- Location: FF_X19_Y25_N21
\game_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \game_number~0_combout\,
	clrn => \reset~input_o\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => game_number(0));

-- Location: LCCOMB_X19_Y25_N30
\game_number~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_number~4_combout\ = (game_number(0) & (((!game_number(1))))) # (!game_number(0) & (game_number(1) & ((game_number(2)) # (game_number(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(0),
	datab => game_number(2),
	datac => game_number(1),
	datad => game_number(3),
	combout => \game_number~4_combout\);

-- Location: FF_X19_Y25_N31
\game_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \game_number~4_combout\,
	clrn => \reset~input_o\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => game_number(1));

-- Location: LCCOMB_X29_Y25_N0
\decoder|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[0]~0_combout\ = (game_number(3) & (game_number(0) & (game_number(1) $ (game_number(2))))) # (!game_number(3) & (!game_number(1) & (game_number(0) $ (game_number(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X29_Y25_N22
\decoder|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[1]~1_combout\ = (game_number(1) & ((game_number(0) & (game_number(3))) # (!game_number(0) & ((game_number(2)))))) # (!game_number(1) & (game_number(2) & (game_number(3) $ (game_number(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X29_Y25_N8
\decoder|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[2]~2_combout\ = (game_number(3) & (game_number(2) & ((game_number(1)) # (!game_number(0))))) # (!game_number(3) & (game_number(1) & (!game_number(0) & !game_number(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X29_Y25_N18
\decoder|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[3]~3_combout\ = (game_number(1) & ((game_number(0) & ((game_number(2)))) # (!game_number(0) & (game_number(3) & !game_number(2))))) # (!game_number(1) & (!game_number(3) & (game_number(0) $ (game_number(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X29_Y25_N4
\decoder|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[4]~4_combout\ = (game_number(1) & (!game_number(3) & (game_number(0)))) # (!game_number(1) & ((game_number(2) & (!game_number(3))) # (!game_number(2) & ((game_number(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X29_Y25_N10
\decoder|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[5]~5_combout\ = (game_number(1) & (!game_number(3) & ((game_number(0)) # (!game_number(2))))) # (!game_number(1) & (game_number(0) & (game_number(3) $ (!game_number(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X29_Y25_N12
\decoder|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder|decoded_out[6]~6_combout\ = (game_number(0) & ((game_number(3)) # (game_number(1) $ (game_number(2))))) # (!game_number(0) & ((game_number(1)) # (game_number(3) $ (game_number(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(1),
	datab => game_number(3),
	datac => game_number(0),
	datad => game_number(2),
	combout => \decoder|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X19_Y25_N2
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\answer_switch[0]~input_o\ & (game_number(0) & (game_number(1) $ (!\answer_switch[1]~input_o\)))) # (!\answer_switch[0]~input_o\ & (!game_number(0) & (game_number(1) $ (!\answer_switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \answer_switch[0]~input_o\,
	datab => game_number(1),
	datac => \answer_switch[1]~input_o\,
	datad => game_number(0),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X19_Y25_N16
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (game_number(2) & (\answer_switch[2]~input_o\ & (\answer_switch[3]~input_o\ $ (!game_number(3))))) # (!game_number(2) & (!\answer_switch[2]~input_o\ & (\answer_switch[3]~input_o\ $ (!game_number(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => game_number(2),
	datab => \answer_switch[3]~input_o\,
	datac => game_number(3),
	datad => \answer_switch[2]~input_o\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X19_Y25_N14
\Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\ & (\Selector6~1_combout\ & (\current_state.finish_slowdown~q\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector6~1_combout\,
	datac => \current_state.finish_slowdown~q\,
	datad => \Equal7~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X19_Y25_N0
\Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~2_combout\) # ((!\Equal7~0_combout\ & \current_state.winning~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datac => \current_state.winning~q\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X19_Y25_N1
\current_state.winning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|divided_clk~clkctrl_outclk\,
	d => \Selector6~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.winning~q\);

-- Location: LCCOMB_X17_Y26_N28
\LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\clk_divider|divided_clk~combout\ & \current_state.winning~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|divided_clk~combout\,
	datad => \current_state.winning~q\,
	combout => \LED~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

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


