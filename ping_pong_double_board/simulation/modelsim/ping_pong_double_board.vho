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

-- DATE "01/06/2022 17:07:41"

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

ENTITY 	ping_pong_double_board_master IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0);
	B_score : OUT std_logic_vector(3 DOWNTO 0);
	B_LED_control : OUT std_logic_vector(3 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	A_button : IN std_logic;
	B_button : IN std_logic
	);
END ping_pong_double_board_master;

-- Design Ports Information
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
-- B_score[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_button	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_button	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ping_pong_double_board_master IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B_score : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_LED_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A_button : std_logic;
SIGNAL ww_B_button : std_logic;
SIGNAL \clk_div_counter[22]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \B_score[0]~output_o\ : std_logic;
SIGNAL \B_score[1]~output_o\ : std_logic;
SIGNAL \B_score[2]~output_o\ : std_logic;
SIGNAL \B_score[3]~output_o\ : std_logic;
SIGNAL \B_LED_control[0]~output_o\ : std_logic;
SIGNAL \B_LED_control[1]~output_o\ : std_logic;
SIGNAL \B_LED_control[2]~output_o\ : std_logic;
SIGNAL \B_LED_control[3]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \clk_div_counter~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \clk_div_counter~9_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_div_counter~8_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_div_counter~7_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clk_div_counter~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clk_div_counter~5_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_div_counter~4_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_div_counter~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_div_counter~2_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_div_counter~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_counter~11_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_div_counter~0_combout\ : std_logic;
SIGNAL \clk_div_counter[22]~clkctrl_outclk\ : std_logic;
SIGNAL \A_button~input_o\ : std_logic;
SIGNAL \score_of_A[0]~3_combout\ : std_logic;
SIGNAL \B_button~input_o\ : std_logic;
SIGNAL \current_state~66_combout\ : std_logic;
SIGNAL \current_state.game_ready~0_combout\ : std_logic;
SIGNAL \current_state.game_ready~q\ : std_logic;
SIGNAL \current_state~80_combout\ : std_logic;
SIGNAL \current_state.AB17~q\ : std_logic;
SIGNAL \current_state~86_combout\ : std_logic;
SIGNAL \current_state.AB18~q\ : std_logic;
SIGNAL \current_state~94_combout\ : std_logic;
SIGNAL \current_state~75_combout\ : std_logic;
SIGNAL \current_state.B_hit_turn~q\ : std_logic;
SIGNAL \current_state~95_combout\ : std_logic;
SIGNAL \current_state~96_combout\ : std_logic;
SIGNAL \current_state.A_wait~q\ : std_logic;
SIGNAL \current_state~69_combout\ : std_logic;
SIGNAL \current_state~70_combout\ : std_logic;
SIGNAL \current_state.AB0~q\ : std_logic;
SIGNAL \current_state~67_combout\ : std_logic;
SIGNAL \current_state.AB1~q\ : std_logic;
SIGNAL \current_state~64_combout\ : std_logic;
SIGNAL \current_state.AB2~q\ : std_logic;
SIGNAL \current_state~62_combout\ : std_logic;
SIGNAL \current_state.AB3~q\ : std_logic;
SIGNAL \current_state~60_combout\ : std_logic;
SIGNAL \current_state.AB4~q\ : std_logic;
SIGNAL \current_state~58_combout\ : std_logic;
SIGNAL \current_state.AB5~q\ : std_logic;
SIGNAL \current_state~56_combout\ : std_logic;
SIGNAL \current_state.AB6~q\ : std_logic;
SIGNAL \current_state~54_combout\ : std_logic;
SIGNAL \current_state.AB7~q\ : std_logic;
SIGNAL \current_state~52_combout\ : std_logic;
SIGNAL \current_state.AB8~q\ : std_logic;
SIGNAL \current_state~50_combout\ : std_logic;
SIGNAL \current_state.AB9~q\ : std_logic;
SIGNAL \current_state~88_combout\ : std_logic;
SIGNAL \current_state.AB10~q\ : std_logic;
SIGNAL \current_state~73_combout\ : std_logic;
SIGNAL \current_state.AB11~q\ : std_logic;
SIGNAL \current_state~92_combout\ : std_logic;
SIGNAL \current_state.AB12~q\ : std_logic;
SIGNAL \current_state~82_combout\ : std_logic;
SIGNAL \current_state.AB13~q\ : std_logic;
SIGNAL \current_state~84_combout\ : std_logic;
SIGNAL \current_state.AB14~q\ : std_logic;
SIGNAL \current_state~78_combout\ : std_logic;
SIGNAL \current_state.AB15~q\ : std_logic;
SIGNAL \current_state~90_combout\ : std_logic;
SIGNAL \current_state.AB16~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \score_of_A[2]~0_combout\ : std_logic;
SIGNAL \score_of_A[2]~2_combout\ : std_logic;
SIGNAL \score_of_A[3]~1_combout\ : std_logic;
SIGNAL \dec1|Equal15~0_combout\ : std_logic;
SIGNAL \current_state~97_combout\ : std_logic;
SIGNAL \current_state~98_combout\ : std_logic;
SIGNAL \current_state~99_combout\ : std_logic;
SIGNAL \current_state.B_wait~q\ : std_logic;
SIGNAL \current_state~76_combout\ : std_logic;
SIGNAL \current_state~77_combout\ : std_logic;
SIGNAL \current_state.BA0~q\ : std_logic;
SIGNAL \current_state~87_combout\ : std_logic;
SIGNAL \current_state.BA1~q\ : std_logic;
SIGNAL \current_state~81_combout\ : std_logic;
SIGNAL \current_state.BA2~q\ : std_logic;
SIGNAL \current_state~91_combout\ : std_logic;
SIGNAL \current_state.BA3~q\ : std_logic;
SIGNAL \current_state~79_combout\ : std_logic;
SIGNAL \current_state.BA4~q\ : std_logic;
SIGNAL \current_state~85_combout\ : std_logic;
SIGNAL \current_state.BA5~q\ : std_logic;
SIGNAL \current_state~83_combout\ : std_logic;
SIGNAL \current_state.BA6~q\ : std_logic;
SIGNAL \current_state~93_combout\ : std_logic;
SIGNAL \current_state.BA7~q\ : std_logic;
SIGNAL \current_state~74_combout\ : std_logic;
SIGNAL \current_state.BA8~q\ : std_logic;
SIGNAL \current_state~89_combout\ : std_logic;
SIGNAL \current_state.BA9~q\ : std_logic;
SIGNAL \current_state~51_combout\ : std_logic;
SIGNAL \current_state.BA10~q\ : std_logic;
SIGNAL \current_state~53_combout\ : std_logic;
SIGNAL \current_state.BA11~q\ : std_logic;
SIGNAL \current_state~55_combout\ : std_logic;
SIGNAL \current_state.BA12~q\ : std_logic;
SIGNAL \current_state~57_combout\ : std_logic;
SIGNAL \current_state.BA13~q\ : std_logic;
SIGNAL \current_state~59_combout\ : std_logic;
SIGNAL \current_state.BA14~q\ : std_logic;
SIGNAL \current_state~61_combout\ : std_logic;
SIGNAL \current_state.BA15~q\ : std_logic;
SIGNAL \current_state~63_combout\ : std_logic;
SIGNAL \current_state.BA16~q\ : std_logic;
SIGNAL \current_state~65_combout\ : std_logic;
SIGNAL \current_state.BA17~q\ : std_logic;
SIGNAL \current_state~68_combout\ : std_logic;
SIGNAL \current_state.BA18~q\ : std_logic;
SIGNAL \current_state~71_combout\ : std_logic;
SIGNAL \current_state.A_hit_turn~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \score_of_B[0]~0_combout\ : std_logic;
SIGNAL \score_of_B[1]~1_combout\ : std_logic;
SIGNAL \score_of_B[1]~2_combout\ : std_logic;
SIGNAL \score_of_B[2]~3_combout\ : std_logic;
SIGNAL \score_of_B[3]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \current_state~72_combout\ : std_logic;
SIGNAL \current_state.finished_by_B~q\ : std_logic;
SIGNAL \current_state~49_combout\ : std_logic;
SIGNAL \current_state.finished_by_A~q\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr16~1_combout\ : std_logic;
SIGNAL \WideOr19~combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \WideOr17~1_combout\ : std_logic;
SIGNAL \WideOr18~combout\ : std_logic;
SIGNAL \WideOr17~2_combout\ : std_logic;
SIGNAL \WideOr17~3_combout\ : std_logic;
SIGNAL \WideOr16~3_combout\ : std_logic;
SIGNAL \WideOr16~2_combout\ : std_logic;
SIGNAL \WideOr16~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL score_of_B : std_logic_vector(3 DOWNTO 0);
SIGNAL score_of_A : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_div_counter : std_logic_vector(22 DOWNTO 0);
SIGNAL \dec1|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr16~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr17~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr19~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
LED <= ww_LED;
B_score <= ww_B_score;
B_LED_control <= ww_B_LED_control;
HEX3 <= ww_HEX3;
ww_A_button <= A_button;
ww_B_button <= B_button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div_counter[22]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clk_div_counter(22));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dec1|ALT_INV_decoded_out[6]~6_combout\ <= NOT \dec1|decoded_out[6]~6_combout\;
\ALT_INV_WideOr16~4_combout\ <= NOT \WideOr16~4_combout\;
\ALT_INV_WideOr17~3_combout\ <= NOT \WideOr17~3_combout\;
\ALT_INV_WideOr18~combout\ <= NOT \WideOr18~combout\;
\ALT_INV_WideOr19~combout\ <= NOT \WideOr19~combout\;

-- Location: IOOBUF_X0_Y20_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr15~0_combout\,
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
	i => \WideOr14~0_combout\,
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
	i => \WideOr13~0_combout\,
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
	i => \WideOr12~0_combout\,
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
	i => \WideOr11~0_combout\,
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
	i => \WideOr10~0_combout\,
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
	i => \WideOr9~0_combout\,
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
	i => \WideOr8~0_combout\,
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
	i => \WideOr7~0_combout\,
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
	i => \WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\B_score[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => score_of_B(0),
	devoe => ww_devoe,
	o => \B_score[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\B_score[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => score_of_B(1),
	devoe => ww_devoe,
	o => \B_score[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\B_score[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => score_of_B(2),
	devoe => ww_devoe,
	o => \B_score[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\B_score[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => score_of_B(3),
	devoe => ww_devoe,
	o => \B_score[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\B_LED_control[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr19~combout\,
	devoe => ww_devoe,
	o => \B_LED_control[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\B_LED_control[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr18~combout\,
	devoe => ww_devoe,
	o => \B_LED_control[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\B_LED_control[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr17~3_combout\,
	devoe => ww_devoe,
	o => \B_LED_control[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\B_LED_control[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr16~4_combout\,
	devoe => ww_devoe,
	o => \B_LED_control[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[0]~0_combout\,
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
	i => \dec1|decoded_out[1]~1_combout\,
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
	i => \dec1|decoded_out[2]~2_combout\,
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
	i => \dec1|decoded_out[3]~3_combout\,
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
	i => \dec1|decoded_out[4]~4_combout\,
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
	i => \dec1|decoded_out[5]~5_combout\,
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
	i => \dec1|ALT_INV_decoded_out[6]~6_combout\,
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

-- Location: LCCOMB_X5_Y23_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_div_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_div_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X5_Y23_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_div_counter(1) & (!\Add0~1\)) # (!clk_div_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_div_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X5_Y23_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_div_counter(2) & (\Add0~3\ $ (GND))) # (!clk_div_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_div_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X5_Y23_N6
\clk_div_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~10_combout\ = (\Add0~4_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~10_combout\);

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

-- Location: FF_X5_Y23_N7
\clk_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(2));

-- Location: LCCOMB_X5_Y23_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_div_counter(3) & (!\Add0~5\)) # (!clk_div_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_div_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X5_Y23_N17
\clk_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(3));

-- Location: LCCOMB_X5_Y23_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_div_counter(4) & (\Add0~7\ $ (GND))) # (!clk_div_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_div_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X5_Y23_N0
\clk_div_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~9_combout\ = (\Add0~8_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~9_combout\);

-- Location: FF_X5_Y23_N1
\clk_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(4));

-- Location: LCCOMB_X5_Y23_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_div_counter(5) & (!\Add0~9\)) # (!clk_div_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_div_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X5_Y23_N21
\clk_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(5));

-- Location: LCCOMB_X5_Y23_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_div_counter(6) & (\Add0~11\ $ (GND))) # (!clk_div_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_div_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X5_Y23_N23
\clk_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(6));

-- Location: LCCOMB_X5_Y23_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_div_counter(7) & (!\Add0~13\)) # (!clk_div_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_div_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X5_Y23_N25
\clk_div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(7));

-- Location: LCCOMB_X5_Y23_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_div_counter(8) & (\Add0~15\ $ (GND))) # (!clk_div_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_div_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X5_Y23_N27
\clk_div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(8));

-- Location: LCCOMB_X5_Y23_N28
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_div_counter(9) & (!\Add0~17\)) # (!clk_div_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_div_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X5_Y23_N29
\clk_div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(9));

-- Location: LCCOMB_X5_Y23_N30
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_div_counter(10) & (\Add0~19\ $ (GND))) # (!clk_div_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_div_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X5_Y23_N31
\clk_div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(10));

-- Location: LCCOMB_X5_Y22_N0
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_div_counter(11) & (!\Add0~21\)) # (!clk_div_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_div_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X6_Y22_N24
\clk_div_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~8_combout\ = (\Add0~22_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~8_combout\);

-- Location: FF_X6_Y22_N25
\clk_div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(11));

-- Location: LCCOMB_X5_Y22_N2
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_div_counter(12) & (\Add0~23\ $ (GND))) # (!clk_div_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_div_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X5_Y22_N3
\clk_div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(12));

-- Location: LCCOMB_X5_Y22_N4
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_div_counter(13) & (!\Add0~25\)) # (!clk_div_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_div_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X5_Y22_N26
\clk_div_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~7_combout\ = (\Add0~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Add0~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~7_combout\);

-- Location: FF_X5_Y22_N27
\clk_div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(13));

-- Location: LCCOMB_X5_Y22_N6
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_div_counter(14) & (\Add0~27\ $ (GND))) # (!clk_div_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_div_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X5_Y22_N7
\clk_div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(14));

-- Location: LCCOMB_X5_Y22_N8
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_div_counter(15) & (!\Add0~29\)) # (!clk_div_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_div_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X5_Y22_N9
\clk_div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(15));

-- Location: LCCOMB_X5_Y22_N10
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_div_counter(16) & (\Add0~31\ $ (GND))) # (!clk_div_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_div_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X6_Y22_N22
\clk_div_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~6_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~32_combout\,
	combout => \clk_div_counter~6_combout\);

-- Location: FF_X6_Y22_N23
\clk_div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(16));

-- Location: LCCOMB_X5_Y22_N12
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_div_counter(17) & (!\Add0~33\)) # (!clk_div_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_div_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X6_Y22_N8
\clk_div_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~5_combout\ = (\Add0~34_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~34_combout\,
	combout => \clk_div_counter~5_combout\);

-- Location: FF_X6_Y22_N9
\clk_div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(17));

-- Location: LCCOMB_X5_Y22_N14
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_div_counter(18) & (\Add0~35\ $ (GND))) # (!clk_div_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_div_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X5_Y22_N24
\clk_div_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~4_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~4_combout\);

-- Location: FF_X5_Y22_N25
\clk_div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(18));

-- Location: LCCOMB_X5_Y22_N16
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_div_counter(19) & (!\Add0~37\)) # (!clk_div_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_div_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X5_Y22_N30
\clk_div_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~3_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~38_combout\,
	combout => \clk_div_counter~3_combout\);

-- Location: FF_X5_Y22_N31
\clk_div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(19));

-- Location: LCCOMB_X5_Y22_N18
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_div_counter(20) & (\Add0~39\ $ (GND))) # (!clk_div_counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_div_counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X6_Y22_N6
\clk_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~2_combout\ = (\Add0~40_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_div_counter~2_combout\);

-- Location: FF_X6_Y22_N7
\clk_div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(20));

-- Location: LCCOMB_X5_Y22_N20
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_div_counter(21) & (!\Add0~41\)) # (!clk_div_counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_div_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X6_Y22_N12
\clk_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~1_combout\ = (\Add0~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_div_counter~1_combout\);

-- Location: FF_X6_Y22_N13
\clk_div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(21));

-- Location: LCCOMB_X6_Y22_N10
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_div_counter(21) & (clk_div_counter(19) & (clk_div_counter(13) & clk_div_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(21),
	datab => clk_div_counter(19),
	datac => clk_div_counter(13),
	datad => clk_div_counter(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X6_Y22_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_div_counter(15) & (clk_div_counter(17) & (clk_div_counter(16) & clk_div_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(15),
	datab => clk_div_counter(17),
	datac => clk_div_counter(16),
	datad => clk_div_counter(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X6_Y22_N4
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_div_counter(12) & (clk_div_counter(11) & (!clk_div_counter(14) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(12),
	datab => clk_div_counter(11),
	datac => clk_div_counter(14),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X5_Y23_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_div_counter(8) & (!clk_div_counter(7) & (!clk_div_counter(10) & !clk_div_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(8),
	datab => clk_div_counter(7),
	datac => clk_div_counter(10),
	datad => clk_div_counter(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X6_Y22_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (clk_div_counter(22) & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => clk_div_counter(22),
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X5_Y23_N4
\clk_div_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~11_combout\ = (\Add0~0_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~11_combout\);

-- Location: FF_X5_Y23_N5
\clk_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(0));

-- Location: FF_X5_Y23_N13
\clk_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(1));

-- Location: LCCOMB_X5_Y23_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_div_counter(6) & (!clk_div_counter(3) & (clk_div_counter(4) & !clk_div_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(6),
	datab => clk_div_counter(3),
	datac => clk_div_counter(4),
	datad => clk_div_counter(5),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X6_Y23_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_div_counter(1) & (!clk_div_counter(0) & (clk_div_counter(2) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(1),
	datab => clk_div_counter(0),
	datac => clk_div_counter(2),
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X5_Y22_N22
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = clk_div_counter(22) $ (!\Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X5_Y22_N28
\clk_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~0_combout\ = (\Add0~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~0_combout\);

-- Location: FF_X5_Y22_N29
\clk_div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(22));

-- Location: CLKCTRL_G1
\clk_div_counter[22]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_counter[22]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_counter[22]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\A_button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_button,
	o => \A_button~input_o\);

-- Location: LCCOMB_X28_Y14_N22
\score_of_A[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_A[0]~3_combout\ = !score_of_A(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score_of_A(0),
	combout => \score_of_A[0]~3_combout\);

-- Location: IOIBUF_X28_Y0_N1
\B_button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_button,
	o => \B_button~input_o\);

-- Location: LCCOMB_X28_Y14_N18
\current_state~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~66_combout\ = (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~66_combout\);

-- Location: LCCOMB_X28_Y14_N2
\current_state.game_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.game_ready~0_combout\ = (\current_state.game_ready~q\) # ((\B_button~input_o\ $ (\A_button~input_o\)) # (!\current_state~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \A_button~input_o\,
	datac => \current_state.game_ready~q\,
	datad => \current_state~66_combout\,
	combout => \current_state.game_ready~0_combout\);

-- Location: FF_X28_Y14_N3
\current_state.game_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state.game_ready~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.game_ready~q\);

-- Location: LCCOMB_X28_Y14_N14
\current_state~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~80_combout\ = (\B_button~input_o\ & (\current_state.AB16~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.AB16~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~80_combout\);

-- Location: FF_X28_Y14_N15
\current_state.AB17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~80_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB17~q\);

-- Location: LCCOMB_X28_Y14_N28
\current_state~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~86_combout\ = (\B_button~input_o\ & (\current_state.AB17~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.AB17~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~86_combout\);

-- Location: FF_X28_Y14_N29
\current_state.AB18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~86_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB18~q\);

-- Location: LCCOMB_X28_Y14_N30
\current_state~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~94_combout\ = (!\B_button~input_o\ & ((\current_state.AB17~q\) # ((\current_state.AB18~q\) # (\current_state.AB16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.AB17~q\,
	datac => \current_state.AB18~q\,
	datad => \current_state.AB16~q\,
	combout => \current_state~94_combout\);

-- Location: LCCOMB_X28_Y14_N4
\current_state~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~75_combout\ = (\B_button~input_o\ & (\Equal2~0_combout\ & (\current_state.AB18~q\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \Equal2~0_combout\,
	datac => \current_state.AB18~q\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~75_combout\);

-- Location: FF_X28_Y14_N5
\current_state.B_hit_turn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~75_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.B_hit_turn~q\);

-- Location: LCCOMB_X29_Y14_N2
\current_state~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~95_combout\ = (\A_button~input_o\ & ((\current_state.A_wait~q\) # ((\B_button~input_o\ & \current_state.B_hit_turn~q\)))) # (!\A_button~input_o\ & (\B_button~input_o\ & (\current_state.B_hit_turn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_button~input_o\,
	datab => \B_button~input_o\,
	datac => \current_state.B_hit_turn~q\,
	datad => \current_state.A_wait~q\,
	combout => \current_state~95_combout\);

-- Location: LCCOMB_X28_Y14_N20
\current_state~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~96_combout\ = (!\dec1|Equal15~0_combout\ & (\Equal2~0_combout\ & ((\current_state~94_combout\) # (\current_state~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~94_combout\,
	datab => \dec1|Equal15~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \current_state~95_combout\,
	combout => \current_state~96_combout\);

-- Location: FF_X28_Y14_N21
\current_state.A_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~96_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.A_wait~q\);

-- Location: LCCOMB_X28_Y14_N8
\current_state~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~69_combout\ = (!\A_button~input_o\ & ((\current_state.A_wait~q\) # ((\B_button~input_o\ & !\current_state.game_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \A_button~input_o\,
	datac => \current_state.game_ready~q\,
	datad => \current_state.A_wait~q\,
	combout => \current_state~69_combout\);

-- Location: LCCOMB_X28_Y14_N10
\current_state~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~70_combout\ = (\current_state~69_combout\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state~69_combout\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~70_combout\);

-- Location: FF_X28_Y14_N11
\current_state.AB0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~70_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB0~q\);

-- Location: LCCOMB_X28_Y14_N12
\current_state~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~67_combout\ = (\current_state~66_combout\ & ((\current_state.AB0~q\) # ((\current_state.A_hit_turn~q\ & !\A_button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB0~q\,
	datab => \current_state.A_hit_turn~q\,
	datac => \A_button~input_o\,
	datad => \current_state~66_combout\,
	combout => \current_state~67_combout\);

-- Location: FF_X28_Y14_N13
\current_state.AB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~67_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB1~q\);

-- Location: LCCOMB_X27_Y14_N24
\current_state~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~64_combout\ = (!\dec1|Equal15~0_combout\ & (\current_state.AB1~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec1|Equal15~0_combout\,
	datac => \current_state.AB1~q\,
	datad => \Equal2~0_combout\,
	combout => \current_state~64_combout\);

-- Location: FF_X27_Y14_N25
\current_state.AB2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~64_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB2~q\);

-- Location: LCCOMB_X30_Y14_N16
\current_state~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~62_combout\ = (\Equal2~0_combout\ & (\current_state.AB2~q\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state.AB2~q\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~62_combout\);

-- Location: FF_X30_Y14_N17
\current_state.AB3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~62_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB3~q\);

-- Location: LCCOMB_X27_Y14_N2
\current_state~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~60_combout\ = (\current_state.AB3~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB3~q\,
	datab => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~60_combout\);

-- Location: FF_X27_Y14_N3
\current_state.AB4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~60_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB4~q\);

-- Location: LCCOMB_X30_Y14_N18
\current_state~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~58_combout\ = (\Equal2~0_combout\ & (\current_state.AB4~q\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \current_state.AB4~q\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~58_combout\);

-- Location: FF_X30_Y14_N19
\current_state.AB5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~58_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB5~q\);

-- Location: LCCOMB_X26_Y14_N30
\current_state~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~56_combout\ = (\current_state.AB5~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB5~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~56_combout\);

-- Location: FF_X26_Y14_N31
\current_state.AB6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~56_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB6~q\);

-- Location: LCCOMB_X26_Y14_N0
\current_state~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~54_combout\ = (\current_state.AB6~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB6~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~54_combout\);

-- Location: FF_X26_Y14_N1
\current_state.AB7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~54_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB7~q\);

-- Location: LCCOMB_X26_Y14_N2
\current_state~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~52_combout\ = (\current_state.AB7~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB7~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~52_combout\);

-- Location: FF_X26_Y14_N3
\current_state.AB8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~52_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB8~q\);

-- Location: LCCOMB_X26_Y14_N16
\current_state~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~50_combout\ = (\current_state.AB8~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB8~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~50_combout\);

-- Location: FF_X26_Y14_N17
\current_state.AB9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB9~q\);

-- Location: LCCOMB_X26_Y14_N14
\current_state~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~88_combout\ = (\current_state.AB9~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB9~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~88_combout\);

-- Location: FF_X26_Y14_N15
\current_state.AB10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~88_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB10~q\);

-- Location: LCCOMB_X26_Y14_N4
\current_state~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~73_combout\ = (\current_state.AB10~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB10~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~73_combout\);

-- Location: FF_X26_Y14_N5
\current_state.AB11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~73_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB11~q\);

-- Location: LCCOMB_X26_Y14_N12
\current_state~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~92_combout\ = (\current_state.AB11~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB11~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~92_combout\);

-- Location: FF_X26_Y14_N13
\current_state.AB12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~92_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB12~q\);

-- Location: LCCOMB_X27_Y14_N26
\current_state~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~82_combout\ = (\current_state.AB12~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB12~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~82_combout\);

-- Location: FF_X27_Y14_N27
\current_state.AB13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~82_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB13~q\);

-- Location: LCCOMB_X27_Y14_N8
\current_state~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~84_combout\ = (\current_state.AB13~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB13~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~84_combout\);

-- Location: FF_X27_Y14_N9
\current_state.AB14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~84_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB14~q\);

-- Location: LCCOMB_X27_Y14_N0
\current_state~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~78_combout\ = (!\dec1|Equal15~0_combout\ & (\current_state.AB14~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec1|Equal15~0_combout\,
	datac => \current_state.AB14~q\,
	datad => \Equal2~0_combout\,
	combout => \current_state~78_combout\);

-- Location: FF_X27_Y14_N1
\current_state.AB15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~78_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB15~q\);

-- Location: LCCOMB_X28_Y14_N24
\current_state~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~90_combout\ = (\current_state.AB15~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB15~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~90_combout\);

-- Location: FF_X28_Y14_N25
\current_state.AB16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~90_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB16~q\);

-- Location: LCCOMB_X28_Y14_N6
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\B_button~input_o\ & (\current_state.B_hit_turn~q\)) # (!\B_button~input_o\ & (((\current_state.AB17~q\) # (\current_state.AB18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.B_hit_turn~q\,
	datac => \current_state.AB17~q\,
	datad => \current_state.AB18~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X28_Y14_N16
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((!\B_button~input_o\ & \current_state.AB16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.AB16~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X28_Y14_N23
\score_of_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_A[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_A(0));

-- Location: LCCOMB_X28_Y14_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = score_of_A(1) $ (score_of_A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score_of_A(1),
	datad => score_of_A(0),
	combout => \Add1~0_combout\);

-- Location: FF_X28_Y14_N1
\score_of_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \reset~input_o\,
	ena => \Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_A(1));

-- Location: LCCOMB_X27_Y14_N6
\score_of_A[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_A[2]~0_combout\ = (score_of_A(1) & score_of_A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score_of_A(1),
	datad => score_of_A(0),
	combout => \score_of_A[2]~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\score_of_A[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_A[2]~2_combout\ = score_of_A(2) $ (((score_of_A(1) & (score_of_A(0) & \Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(0),
	datac => score_of_A(2),
	datad => \Selector6~1_combout\,
	combout => \score_of_A[2]~2_combout\);

-- Location: FF_X27_Y14_N5
\score_of_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_A[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_A(2));

-- Location: LCCOMB_X27_Y14_N22
\score_of_A[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_A[3]~1_combout\ = score_of_A(3) $ (((\score_of_A[2]~0_combout\ & (score_of_A(2) & \Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_of_A[2]~0_combout\,
	datab => score_of_A(2),
	datac => score_of_A(3),
	datad => \Selector6~1_combout\,
	combout => \score_of_A[3]~1_combout\);

-- Location: FF_X27_Y14_N23
\score_of_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_A[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_A(3));

-- Location: LCCOMB_X27_Y14_N20
\dec1|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Equal15~0_combout\ = (score_of_A(3) & (!score_of_A(2) & (!score_of_A(1) & score_of_A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(3),
	datab => score_of_A(2),
	datac => score_of_A(1),
	datad => score_of_A(0),
	combout => \dec1|Equal15~0_combout\);

-- Location: LCCOMB_X29_Y14_N24
\current_state~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~97_combout\ = (!\A_button~input_o\ & ((\current_state.BA18~q\) # ((\current_state.BA17~q\) # (\current_state.BA16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA18~q\,
	datab => \current_state.BA17~q\,
	datac => \A_button~input_o\,
	datad => \current_state.BA16~q\,
	combout => \current_state~97_combout\);

-- Location: LCCOMB_X29_Y14_N26
\current_state~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~98_combout\ = (\A_button~input_o\ & ((\current_state.A_hit_turn~q\) # ((\current_state.B_wait~q\ & \B_button~input_o\)))) # (!\A_button~input_o\ & (\current_state.B_wait~q\ & (\B_button~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_button~input_o\,
	datab => \current_state.B_wait~q\,
	datac => \B_button~input_o\,
	datad => \current_state.A_hit_turn~q\,
	combout => \current_state~98_combout\);

-- Location: LCCOMB_X29_Y14_N14
\current_state~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~99_combout\ = (\Equal2~0_combout\ & (!\dec1|Equal15~0_combout\ & ((\current_state~97_combout\) # (\current_state~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state~97_combout\,
	datac => \current_state~98_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~99_combout\);

-- Location: FF_X29_Y14_N15
\current_state.B_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~99_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.B_wait~q\);

-- Location: LCCOMB_X29_Y14_N0
\current_state~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~76_combout\ = (!\B_button~input_o\ & ((\current_state.B_wait~q\) # ((!\current_state.game_ready~q\ & \A_button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.game_ready~q\,
	datab => \B_button~input_o\,
	datac => \current_state.B_wait~q\,
	datad => \A_button~input_o\,
	combout => \current_state~76_combout\);

-- Location: LCCOMB_X29_Y14_N10
\current_state~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~77_combout\ = (\Equal2~0_combout\ & (\current_state~76_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state~76_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~77_combout\);

-- Location: FF_X29_Y14_N11
\current_state.BA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~77_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA0~q\);

-- Location: LCCOMB_X28_Y14_N26
\current_state~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~87_combout\ = (\current_state~66_combout\ & ((\current_state.BA0~q\) # ((!\B_button~input_o\ & \current_state.B_hit_turn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_button~input_o\,
	datab => \current_state.BA0~q\,
	datac => \current_state.B_hit_turn~q\,
	datad => \current_state~66_combout\,
	combout => \current_state~87_combout\);

-- Location: FF_X28_Y14_N27
\current_state.BA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~87_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA1~q\);

-- Location: LCCOMB_X26_Y14_N18
\current_state~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~81_combout\ = (\current_state.BA1~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA1~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~81_combout\);

-- Location: FF_X26_Y14_N19
\current_state.BA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~81_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA2~q\);

-- Location: LCCOMB_X26_Y14_N22
\current_state~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~91_combout\ = (\current_state.BA2~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA2~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~91_combout\);

-- Location: FF_X26_Y14_N23
\current_state.BA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~91_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA3~q\);

-- Location: LCCOMB_X26_Y14_N8
\current_state~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~79_combout\ = (\current_state.BA3~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA3~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~79_combout\);

-- Location: FF_X26_Y14_N9
\current_state.BA4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~79_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA4~q\);

-- Location: LCCOMB_X26_Y14_N24
\current_state~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~85_combout\ = (\current_state.BA4~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA4~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~85_combout\);

-- Location: FF_X26_Y14_N25
\current_state.BA5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~85_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA5~q\);

-- Location: LCCOMB_X26_Y14_N20
\current_state~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~83_combout\ = (\current_state.BA5~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA5~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~83_combout\);

-- Location: FF_X26_Y14_N21
\current_state.BA6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~83_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA6~q\);

-- Location: LCCOMB_X26_Y14_N26
\current_state~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~93_combout\ = (\current_state.BA6~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA6~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~93_combout\);

-- Location: FF_X26_Y14_N27
\current_state.BA7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~93_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA7~q\);

-- Location: LCCOMB_X26_Y14_N6
\current_state~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~74_combout\ = (\current_state.BA7~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA7~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~74_combout\);

-- Location: FF_X26_Y14_N7
\current_state.BA8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~74_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA8~q\);

-- Location: LCCOMB_X26_Y14_N28
\current_state~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~89_combout\ = (\current_state.BA8~q\ & (!\dec1|Equal15~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA8~q\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \current_state~89_combout\);

-- Location: FF_X26_Y14_N29
\current_state.BA9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~89_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA9~q\);

-- Location: LCCOMB_X27_Y14_N18
\current_state~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~51_combout\ = (!\dec1|Equal15~0_combout\ & (\current_state.BA9~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec1|Equal15~0_combout\,
	datac => \current_state.BA9~q\,
	datad => \Equal2~0_combout\,
	combout => \current_state~51_combout\);

-- Location: FF_X27_Y14_N19
\current_state.BA10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~51_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA10~q\);

-- Location: LCCOMB_X27_Y14_N12
\current_state~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~53_combout\ = (\current_state.BA10~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA10~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~53_combout\);

-- Location: FF_X27_Y14_N13
\current_state.BA11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~53_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA11~q\);

-- Location: LCCOMB_X27_Y14_N14
\current_state~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~55_combout\ = (\current_state.BA11~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA11~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~55_combout\);

-- Location: FF_X27_Y14_N15
\current_state.BA12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~55_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA12~q\);

-- Location: LCCOMB_X27_Y14_N28
\current_state~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~57_combout\ = (!\dec1|Equal15~0_combout\ & (\current_state.BA12~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec1|Equal15~0_combout\,
	datac => \current_state.BA12~q\,
	datad => \Equal2~0_combout\,
	combout => \current_state~57_combout\);

-- Location: FF_X27_Y14_N29
\current_state.BA13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~57_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA13~q\);

-- Location: LCCOMB_X30_Y14_N28
\current_state~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~59_combout\ = (\Equal2~0_combout\ & (\current_state.BA13~q\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \current_state.BA13~q\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~59_combout\);

-- Location: FF_X30_Y14_N29
\current_state.BA14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~59_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA14~q\);

-- Location: LCCOMB_X30_Y14_N12
\current_state~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~61_combout\ = (\Equal2~0_combout\ & (\current_state.BA14~q\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state.BA14~q\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~61_combout\);

-- Location: FF_X30_Y14_N13
\current_state.BA15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~61_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA15~q\);

-- Location: LCCOMB_X30_Y14_N6
\current_state~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~63_combout\ = (\current_state.BA15~q\ & (\Equal2~0_combout\ & !\dec1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA15~q\,
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~63_combout\);

-- Location: FF_X30_Y14_N7
\current_state.BA16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~63_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA16~q\);

-- Location: LCCOMB_X29_Y14_N8
\current_state~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~65_combout\ = (\current_state.BA16~q\ & (\Equal2~0_combout\ & (\A_button~input_o\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA16~q\,
	datab => \Equal2~0_combout\,
	datac => \A_button~input_o\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~65_combout\);

-- Location: FF_X29_Y14_N9
\current_state.BA17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~65_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA17~q\);

-- Location: LCCOMB_X29_Y14_N6
\current_state~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~68_combout\ = (\Equal2~0_combout\ & (\current_state.BA17~q\ & (\A_button~input_o\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state.BA17~q\,
	datac => \A_button~input_o\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~68_combout\);

-- Location: FF_X29_Y14_N7
\current_state.BA18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~68_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA18~q\);

-- Location: LCCOMB_X29_Y14_N28
\current_state~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~71_combout\ = (\Equal2~0_combout\ & (\current_state.BA18~q\ & (\A_button~input_o\ & !\dec1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_state.BA18~q\,
	datac => \A_button~input_o\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~71_combout\);

-- Location: FF_X29_Y14_N29
\current_state.A_hit_turn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~71_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.A_hit_turn~q\);

-- Location: LCCOMB_X29_Y14_N30
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\A_button~input_o\ & (\current_state.A_hit_turn~q\)) # (!\A_button~input_o\ & (((\current_state.BA17~q\) # (\current_state.BA18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_button~input_o\,
	datab => \current_state.A_hit_turn~q\,
	datac => \current_state.BA17~q\,
	datad => \current_state.BA18~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X29_Y14_N18
\score_of_B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_B[0]~0_combout\ = score_of_B(0) $ (((\Selector7~0_combout\) # ((!\A_button~input_o\ & \current_state.BA16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \A_button~input_o\,
	datac => score_of_B(0),
	datad => \current_state.BA16~q\,
	combout => \score_of_B[0]~0_combout\);

-- Location: FF_X29_Y14_N19
\score_of_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_B[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_B(0));

-- Location: LCCOMB_X29_Y14_N16
\score_of_B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_B[1]~1_combout\ = (score_of_B(0) & ((\Selector7~0_combout\) # ((!\A_button~input_o\ & \current_state.BA16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_button~input_o\,
	datab => score_of_B(0),
	datac => \Selector7~0_combout\,
	datad => \current_state.BA16~q\,
	combout => \score_of_B[1]~1_combout\);

-- Location: LCCOMB_X29_Y14_N20
\score_of_B[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_B[1]~2_combout\ = score_of_B(1) $ (\score_of_B[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score_of_B(1),
	datad => \score_of_B[1]~1_combout\,
	combout => \score_of_B[1]~2_combout\);

-- Location: FF_X29_Y14_N21
\score_of_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_B[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_B(1));

-- Location: LCCOMB_X29_Y14_N22
\score_of_B[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_B[2]~3_combout\ = score_of_B(2) $ (((score_of_B(1) & \score_of_B[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score_of_B(1),
	datac => score_of_B(2),
	datad => \score_of_B[1]~1_combout\,
	combout => \score_of_B[2]~3_combout\);

-- Location: FF_X29_Y14_N23
\score_of_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_B[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_B(2));

-- Location: LCCOMB_X29_Y14_N4
\score_of_B[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_of_B[3]~4_combout\ = score_of_B(3) $ (((score_of_B(2) & (score_of_B(1) & \score_of_B[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_B(2),
	datab => score_of_B(1),
	datac => score_of_B(3),
	datad => \score_of_B[1]~1_combout\,
	combout => \score_of_B[3]~4_combout\);

-- Location: FF_X29_Y14_N5
\score_of_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \score_of_B[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score_of_B(3));

-- Location: LCCOMB_X29_Y14_N12
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (score_of_B(2)) # ((score_of_B(1)) # ((!score_of_B(0)) # (!score_of_B(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_B(2),
	datab => score_of_B(1),
	datac => score_of_B(3),
	datad => score_of_B(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X27_Y14_N30
\current_state~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~72_combout\ = (!\Equal2~0_combout\ & !\dec1|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \dec1|Equal15~0_combout\,
	combout => \current_state~72_combout\);

-- Location: FF_X27_Y14_N31
\current_state.finished_by_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~72_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.finished_by_B~q\);

-- Location: LCCOMB_X27_Y14_N16
\current_state~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~49_combout\ = (\dec1|Equal15~0_combout\) # ((\Equal2~0_combout\ & ((\current_state.finished_by_B~q\) # (\current_state.finished_by_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.finished_by_B~q\,
	datab => \dec1|Equal15~0_combout\,
	datac => \current_state.finished_by_A~q\,
	datad => \Equal2~0_combout\,
	combout => \current_state~49_combout\);

-- Location: FF_X27_Y14_N17
\current_state.finished_by_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[22]~clkctrl_outclk\,
	d => \current_state~49_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.finished_by_A~q\);

-- Location: LCCOMB_X26_Y16_N16
\WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (\current_state.finished_by_A~q\) # ((\current_state.AB9~q\) # (\current_state.BA10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.finished_by_A~q\,
	datac => \current_state.AB9~q\,
	datad => \current_state.BA10~q\,
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X27_Y16_N20
\WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (\current_state.AB8~q\) # ((\current_state.finished_by_A~q\) # (\current_state.BA11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB8~q\,
	datab => \current_state.finished_by_A~q\,
	datac => \current_state.BA11~q\,
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X26_Y15_N24
\WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\current_state.BA12~q\) # ((\current_state.AB7~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA12~q\,
	datac => \current_state.AB7~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\current_state.finished_by_A~q\) # ((\current_state.BA13~q\) # (\current_state.AB6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.finished_by_A~q\,
	datac => \current_state.BA13~q\,
	datad => \current_state.AB6~q\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X30_Y14_N14
\WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\current_state.BA14~q\) # ((\current_state.AB5~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA14~q\,
	datac => \current_state.AB5~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X30_Y14_N22
\WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\current_state.BA15~q\) # ((\current_state.AB4~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA15~q\,
	datac => \current_state.AB4~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X30_Y14_N4
\WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\current_state.BA16~q\) # ((\current_state.AB3~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA16~q\,
	datab => \current_state.AB3~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X30_Y14_N2
\WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\current_state.BA17~q\) # ((\current_state.AB2~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA17~q\,
	datab => \current_state.AB2~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X30_Y14_N24
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\current_state.AB1~q\) # ((\current_state.BA18~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB1~q\,
	datac => \current_state.BA18~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X30_Y14_N10
\WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\current_state.AB0~q\) # ((\current_state.A_hit_turn~q\) # (\current_state.finished_by_A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB0~q\,
	datac => \current_state.A_hit_turn~q\,
	datad => \current_state.finished_by_A~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\WideOr19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (\current_state.BA8~q\) # ((\current_state.AB11~q\) # (\current_state.finished_by_B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA8~q\,
	datac => \current_state.AB11~q\,
	datad => \current_state.finished_by_B~q\,
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\WideOr16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (!\current_state.AB15~q\ & (!\current_state.BA4~q\ & (!\current_state.BA0~q\ & !\current_state.B_hit_turn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB15~q\,
	datab => \current_state.BA4~q\,
	datac => \current_state.BA0~q\,
	datad => \current_state.B_hit_turn~q\,
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X26_Y14_N10
\WideOr16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~1_combout\ = (!\current_state.AB13~q\ & (!\current_state.BA2~q\ & (!\current_state.AB17~q\ & !\current_state.BA6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB13~q\,
	datab => \current_state.BA2~q\,
	datac => \current_state.AB17~q\,
	datad => \current_state.BA6~q\,
	combout => \WideOr16~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
WideOr19 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr19~combout\ = (\WideOr19~0_combout\) # ((!\WideOr16~1_combout\) # (!\WideOr16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr19~0_combout\,
	datac => \WideOr16~0_combout\,
	datad => \WideOr16~1_combout\,
	combout => \WideOr19~combout\);

-- Location: LCCOMB_X23_Y14_N24
\WideOr18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (\current_state.BA4~q\) # ((\current_state.BA5~q\) # ((\current_state.AB15~q\) # (\current_state.AB14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA4~q\,
	datab => \current_state.BA5~q\,
	datac => \current_state.AB15~q\,
	datad => \current_state.AB14~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\WideOr17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (!\current_state.BA8~q\ & (!\current_state.AB11~q\ & (!\current_state.BA0~q\ & !\current_state.B_hit_turn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA8~q\,
	datab => \current_state.AB11~q\,
	datac => \current_state.BA0~q\,
	datad => \current_state.B_hit_turn~q\,
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\WideOr17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr17~1_combout\ = (!\current_state.AB10~q\ & (!\current_state.BA1~q\ & (!\current_state.BA9~q\ & !\current_state.AB18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB10~q\,
	datab => \current_state.BA1~q\,
	datac => \current_state.BA9~q\,
	datad => \current_state.AB18~q\,
	combout => \WideOr17~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
WideOr18 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr18~combout\ = (\WideOr18~0_combout\) # ((!\WideOr17~1_combout\) # (!\WideOr17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr18~0_combout\,
	datac => \WideOr17~0_combout\,
	datad => \WideOr17~1_combout\,
	combout => \WideOr18~combout\);

-- Location: LCCOMB_X24_Y14_N12
\WideOr17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr17~2_combout\ = (\current_state.BA2~q\) # ((\current_state.BA3~q\) # ((\current_state.AB17~q\) # (\current_state.AB16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA2~q\,
	datab => \current_state.BA3~q\,
	datac => \current_state.AB17~q\,
	datad => \current_state.AB16~q\,
	combout => \WideOr17~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\WideOr17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr17~3_combout\ = (\WideOr17~2_combout\) # (((\current_state.finished_by_B~q\) # (!\WideOr17~0_combout\)) # (!\WideOr17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr17~2_combout\,
	datab => \WideOr17~1_combout\,
	datac => \WideOr17~0_combout\,
	datad => \current_state.finished_by_B~q\,
	combout => \WideOr17~3_combout\);

-- Location: LCCOMB_X24_Y14_N10
\WideOr16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~3_combout\ = (\current_state.BA7~q\) # ((\current_state.BA1~q\) # ((\current_state.AB12~q\) # (\current_state.AB18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA7~q\,
	datab => \current_state.BA1~q\,
	datac => \current_state.AB12~q\,
	datad => \current_state.AB18~q\,
	combout => \WideOr16~3_combout\);

-- Location: LCCOMB_X24_Y14_N24
\WideOr16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~2_combout\ = (\current_state.AB16~q\) # ((\current_state.AB14~q\) # ((\current_state.BA5~q\) # (\current_state.BA3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB16~q\,
	datab => \current_state.AB14~q\,
	datac => \current_state.BA5~q\,
	datad => \current_state.BA3~q\,
	combout => \WideOr16~2_combout\);

-- Location: LCCOMB_X24_Y14_N0
\WideOr16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~4_combout\ = (\WideOr16~3_combout\) # ((\WideOr16~2_combout\) # ((!\WideOr16~1_combout\) # (!\WideOr16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~3_combout\,
	datab => \WideOr16~2_combout\,
	datac => \WideOr16~0_combout\,
	datad => \WideOr16~1_combout\,
	combout => \WideOr16~4_combout\);

-- Location: LCCOMB_X30_Y14_N8
\dec1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~0_combout\ = (score_of_A(3) & (score_of_A(0) & (score_of_A(1) $ (score_of_A(2))))) # (!score_of_A(3) & (!score_of_A(1) & (score_of_A(2) $ (score_of_A(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(2),
	datad => score_of_A(0),
	combout => \dec1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X30_Y14_N26
\dec1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[1]~1_combout\ = (score_of_A(1) & ((score_of_A(0) & (score_of_A(3))) # (!score_of_A(0) & ((score_of_A(2)))))) # (!score_of_A(1) & (score_of_A(2) & (score_of_A(3) $ (score_of_A(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(2),
	datad => score_of_A(0),
	combout => \dec1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\dec1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~2_combout\ = (score_of_A(3) & (score_of_A(2) & ((score_of_A(1)) # (!score_of_A(0))))) # (!score_of_A(3) & (score_of_A(1) & (!score_of_A(0) & !score_of_A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(0),
	datad => score_of_A(2),
	combout => \dec1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X22_Y14_N10
\dec1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[3]~3_combout\ = (score_of_A(1) & ((score_of_A(0) & ((score_of_A(2)))) # (!score_of_A(0) & (score_of_A(3) & !score_of_A(2))))) # (!score_of_A(1) & (!score_of_A(3) & (score_of_A(0) $ (score_of_A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(0),
	datad => score_of_A(2),
	combout => \dec1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X30_Y14_N0
\dec1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[4]~4_combout\ = (score_of_A(1) & (!score_of_A(3) & ((score_of_A(0))))) # (!score_of_A(1) & ((score_of_A(2) & (!score_of_A(3))) # (!score_of_A(2) & ((score_of_A(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(2),
	datad => score_of_A(0),
	combout => \dec1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X30_Y14_N30
\dec1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[5]~5_combout\ = (score_of_A(1) & (!score_of_A(3) & ((score_of_A(0)) # (!score_of_A(2))))) # (!score_of_A(1) & (score_of_A(0) & (score_of_A(3) $ (!score_of_A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(1),
	datab => score_of_A(3),
	datac => score_of_A(2),
	datad => score_of_A(0),
	combout => \dec1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X27_Y14_N10
\dec1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~6_combout\ = (score_of_A(0) & ((score_of_A(3)) # (score_of_A(1) $ (score_of_A(2))))) # (!score_of_A(0) & ((score_of_A(1)) # (score_of_A(3) $ (score_of_A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_of_A(3),
	datab => score_of_A(1),
	datac => score_of_A(2),
	datad => score_of_A(0),
	combout => \dec1|decoded_out[6]~6_combout\);

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

ww_B_score(0) <= \B_score[0]~output_o\;

ww_B_score(1) <= \B_score[1]~output_o\;

ww_B_score(2) <= \B_score[2]~output_o\;

ww_B_score(3) <= \B_score[3]~output_o\;

ww_B_LED_control(0) <= \B_LED_control[0]~output_o\;

ww_B_LED_control(1) <= \B_LED_control[1]~output_o\;

ww_B_LED_control(2) <= \B_LED_control[2]~output_o\;

ww_B_LED_control(3) <= \B_LED_control[3]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;
END structure;


