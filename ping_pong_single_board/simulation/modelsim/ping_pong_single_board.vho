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

-- DATE "12/30/2021 19:03:05"

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

ENTITY 	ping_pong_single_board IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0);
	button_A : IN std_logic;
	button_B : IN std_logic;
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END ping_pong_single_board;

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
-- reset	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_B	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_A	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ping_pong_single_board IS
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
SIGNAL ww_button_A : std_logic;
SIGNAL ww_button_B : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \clk_div_counter~11_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \clk_div_counter~10_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_div_counter~9_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_div_counter~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_div_counter~7_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clk_div_counter~6_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clk_div_counter~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
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
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \clk_div_counter~0_combout\ : std_logic;
SIGNAL \clk_div_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \scoreOFA[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \button_B~input_o\ : std_logic;
SIGNAL \button_A~input_o\ : std_logic;
SIGNAL \scoreOFB[0]~3_combout\ : std_logic;
SIGNAL \current_state.game_ready~0_combout\ : std_logic;
SIGNAL \current_state.game_ready~q\ : std_logic;
SIGNAL \current_state~51_combout\ : std_logic;
SIGNAL \current_state.B_wait~q\ : std_logic;
SIGNAL \current_state~29_combout\ : std_logic;
SIGNAL \current_state~30_combout\ : std_logic;
SIGNAL \current_state.BA0~q\ : std_logic;
SIGNAL \current_state~28_combout\ : std_logic;
SIGNAL \current_state.B_hit_turn~q\ : std_logic;
SIGNAL \current_state~33_combout\ : std_logic;
SIGNAL \current_state.BA1~q\ : std_logic;
SIGNAL \current_state~35_combout\ : std_logic;
SIGNAL \current_state.BA2~q\ : std_logic;
SIGNAL \current_state~37_combout\ : std_logic;
SIGNAL \current_state.BA3~q\ : std_logic;
SIGNAL \current_state~39_combout\ : std_logic;
SIGNAL \current_state.BA4~q\ : std_logic;
SIGNAL \current_state~41_combout\ : std_logic;
SIGNAL \current_state.BA5~q\ : std_logic;
SIGNAL \current_state~43_combout\ : std_logic;
SIGNAL \current_state.BA6~q\ : std_logic;
SIGNAL \current_state~45_combout\ : std_logic;
SIGNAL \current_state.BA7~q\ : std_logic;
SIGNAL \current_state~47_combout\ : std_logic;
SIGNAL \current_state.BA8~q\ : std_logic;
SIGNAL \current_state~50_combout\ : std_logic;
SIGNAL \current_state.A_hit_turn~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \scoreOFB[2]~0_combout\ : std_logic;
SIGNAL \scoreOFB[2]~2_combout\ : std_logic;
SIGNAL \scoreOFB[3]~1_combout\ : std_logic;
SIGNAL \decoder0|Equal15~0_combout\ : std_logic;
SIGNAL \current_state~32_combout\ : std_logic;
SIGNAL \current_state~52_combout\ : std_logic;
SIGNAL \current_state.A_wait~q\ : std_logic;
SIGNAL \current_state~48_combout\ : std_logic;
SIGNAL \current_state~49_combout\ : std_logic;
SIGNAL \current_state.AB0~q\ : std_logic;
SIGNAL \current_state~46_combout\ : std_logic;
SIGNAL \current_state.AB1~q\ : std_logic;
SIGNAL \current_state~44_combout\ : std_logic;
SIGNAL \current_state.AB2~q\ : std_logic;
SIGNAL \current_state~42_combout\ : std_logic;
SIGNAL \current_state.AB3~q\ : std_logic;
SIGNAL \current_state~40_combout\ : std_logic;
SIGNAL \current_state.AB4~q\ : std_logic;
SIGNAL \current_state~38_combout\ : std_logic;
SIGNAL \current_state.AB5~q\ : std_logic;
SIGNAL \current_state~36_combout\ : std_logic;
SIGNAL \current_state.AB6~q\ : std_logic;
SIGNAL \current_state~34_combout\ : std_logic;
SIGNAL \current_state.AB7~q\ : std_logic;
SIGNAL \current_state~31_combout\ : std_logic;
SIGNAL \current_state.AB8~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \scoreOFA[2]~0_combout\ : std_logic;
SIGNAL \scoreOFA[2]~2_combout\ : std_logic;
SIGNAL \scoreOFA[3]~1_combout\ : std_logic;
SIGNAL \decoder3|Equal15~0_combout\ : std_logic;
SIGNAL \current_state.finished~0_combout\ : std_logic;
SIGNAL \current_state.finished~q\ : std_logic;
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
SIGNAL \decoder0|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder0|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[6]~6_combout\ : std_logic;
SIGNAL scoreOFB : std_logic_vector(3 DOWNTO 0);
SIGNAL scoreOFA : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_div_counter : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \decoder3|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_decoded_out[6]~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
LED <= ww_LED;
ww_button_A <= button_A;
ww_button_B <= button_B;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clk_div_counter(23));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\decoder3|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder3|decoded_out[6]~6_combout\;
\decoder0|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder0|decoded_out[6]~6_combout\;

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: LCCOMB_X33_Y18_N8
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

-- Location: FF_X33_Y18_N9
\clk_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(0));

-- Location: LCCOMB_X33_Y18_N10
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

-- Location: FF_X33_Y18_N11
\clk_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(1));

-- Location: LCCOMB_X33_Y18_N12
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

-- Location: FF_X33_Y18_N13
\clk_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(2));

-- Location: LCCOMB_X33_Y18_N14
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

-- Location: FF_X33_Y18_N15
\clk_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(3));

-- Location: LCCOMB_X33_Y18_N16
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

-- Location: FF_X33_Y18_N17
\clk_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(4));

-- Location: LCCOMB_X33_Y18_N18
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

-- Location: LCCOMB_X33_Y18_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_div_counter(6) & (\Add0~11\ $ (GND))) # (!clk_div_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_div_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X33_Y18_N21
\clk_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(6));

-- Location: LCCOMB_X33_Y18_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_div_counter(7) & (!\Add0~13\)) # (!clk_div_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_div_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X33_Y18_N23
\clk_div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(7));

-- Location: LCCOMB_X33_Y18_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_div_counter(8) & (\Add0~15\ $ (GND))) # (!clk_div_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_div_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X33_Y18_N25
\clk_div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(8));

-- Location: LCCOMB_X33_Y18_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_div_counter(9) & (!\Add0~17\)) # (!clk_div_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_div_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X33_Y18_N27
\clk_div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(9));

-- Location: LCCOMB_X33_Y18_N6
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_div_counter(7) & (!clk_div_counter(6) & (!clk_div_counter(9) & !clk_div_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(7),
	datab => clk_div_counter(6),
	datac => clk_div_counter(9),
	datad => clk_div_counter(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X33_Y18_N4
\clk_div_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~11_combout\ = (\Add0~10_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~10_combout\,
	combout => \clk_div_counter~11_combout\);

-- Location: FF_X33_Y18_N5
\clk_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(5));

-- Location: LCCOMB_X33_Y18_N0
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_div_counter(4) & (!clk_div_counter(5) & (clk_div_counter(2) & clk_div_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(4),
	datab => clk_div_counter(5),
	datac => clk_div_counter(2),
	datad => clk_div_counter(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X33_Y18_N28
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

-- Location: LCCOMB_X32_Y17_N0
\clk_div_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~10_combout\ = (\Add0~20_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~20_combout\,
	combout => \clk_div_counter~10_combout\);

-- Location: FF_X32_Y17_N1
\clk_div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(10));

-- Location: LCCOMB_X33_Y18_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_div_counter(11) & (!\Add0~21\)) # (!clk_div_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_div_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y17_N22
\clk_div_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~9_combout\ = (\Add0~22_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~22_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_div_counter~9_combout\);

-- Location: FF_X32_Y17_N23
\clk_div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(11));

-- Location: LCCOMB_X33_Y17_N0
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

-- Location: LCCOMB_X32_Y17_N28
\clk_div_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~8_combout\ = (\Add0~24_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_div_counter~8_combout\);

-- Location: FF_X32_Y17_N29
\clk_div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(12));

-- Location: LCCOMB_X33_Y17_N2
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

-- Location: LCCOMB_X32_Y17_N26
\clk_div_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~7_combout\ = (\Add0~26_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~26_combout\,
	combout => \clk_div_counter~7_combout\);

-- Location: FF_X32_Y17_N27
\clk_div_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(13));

-- Location: LCCOMB_X33_Y17_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_div_counter(14) & (\Add0~27\ $ (GND))) # (!clk_div_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_div_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X33_Y17_N5
\clk_div_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(14));

-- Location: LCCOMB_X33_Y17_N6
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

-- Location: LCCOMB_X32_Y17_N24
\clk_div_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~6_combout\ = (\Add0~30_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~30_combout\,
	combout => \clk_div_counter~6_combout\);

-- Location: FF_X32_Y17_N25
\clk_div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(15));

-- Location: LCCOMB_X33_Y17_N8
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

-- Location: FF_X33_Y17_N9
\clk_div_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(16));

-- Location: LCCOMB_X33_Y17_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_div_counter(17) & (!\Add0~33\)) # (!clk_div_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_div_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X32_Y17_N2
\clk_div_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~5_combout\ = (\Add0~34_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~34_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_div_counter~5_combout\);

-- Location: FF_X32_Y17_N3
\clk_div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(17));

-- Location: LCCOMB_X32_Y17_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_div_counter(14) & (clk_div_counter(15) & (!clk_div_counter(16) & clk_div_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(14),
	datab => clk_div_counter(15),
	datac => clk_div_counter(16),
	datad => clk_div_counter(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X33_Y17_N12
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

-- Location: LCCOMB_X33_Y17_N24
\clk_div_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~4_combout\ = (\Add0~36_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~36_combout\,
	combout => \clk_div_counter~4_combout\);

-- Location: FF_X33_Y17_N25
\clk_div_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(18));

-- Location: LCCOMB_X33_Y17_N14
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

-- Location: LCCOMB_X33_Y17_N30
\clk_div_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~3_combout\ = (\Add0~38_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~3_combout\);

-- Location: FF_X33_Y17_N31
\clk_div_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(19));

-- Location: LCCOMB_X33_Y17_N16
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

-- Location: LCCOMB_X32_Y17_N16
\clk_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~2_combout\ = (\Add0~40_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_div_counter~2_combout\);

-- Location: FF_X32_Y17_N17
\clk_div_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(20));

-- Location: LCCOMB_X33_Y17_N18
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

-- Location: LCCOMB_X33_Y17_N28
\clk_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~1_combout\ = (\Add0~42_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_div_counter~1_combout\);

-- Location: FF_X33_Y17_N29
\clk_div_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(21));

-- Location: LCCOMB_X33_Y17_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_div_counter(22) & (\Add0~43\ $ (GND))) # (!clk_div_counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_div_counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X33_Y17_N21
\clk_div_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(22));

-- Location: LCCOMB_X32_Y17_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_div_counter(22) & (clk_div_counter(23) & (clk_div_counter(1) & clk_div_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(22),
	datab => clk_div_counter(23),
	datac => clk_div_counter(1),
	datad => clk_div_counter(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y17_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_div_counter(19) & (clk_div_counter(18) & (clk_div_counter(21) & clk_div_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(19),
	datab => clk_div_counter(18),
	datac => clk_div_counter(21),
	datad => clk_div_counter(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y17_N20
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_div_counter(13) & (clk_div_counter(12) & (clk_div_counter(11) & clk_div_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(13),
	datab => clk_div_counter(12),
	datac => clk_div_counter(11),
	datad => clk_div_counter(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X32_Y17_N6
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = clk_div_counter(23) $ (\Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(23),
	cin => \Add0~45\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X33_Y17_N26
\clk_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~0_combout\ = (\Add0~46_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~46_combout\,
	datad => \Equal0~6_combout\,
	combout => \clk_div_counter~0_combout\);

-- Location: FF_X33_Y17_N27
\clk_div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(23));

-- Location: CLKCTRL_G8
\clk_div_counter[23]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y23_N20
\scoreOFA[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFA[0]~3_combout\ = !scoreOFA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scoreOFA(0),
	combout => \scoreOFA[0]~3_combout\);

-- Location: IOIBUF_X0_Y23_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\button_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_B,
	o => \button_B~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\button_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_A,
	o => \button_A~input_o\);

-- Location: LCCOMB_X3_Y23_N2
\scoreOFB[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFB[0]~3_combout\ = !scoreOFB(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scoreOFB(0),
	combout => \scoreOFB[0]~3_combout\);

-- Location: LCCOMB_X3_Y23_N10
\current_state.game_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.game_ready~0_combout\ = (\current_state.game_ready~q\) # ((\button_B~input_o\ $ (\button_A~input_o\)) # (!\current_state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_B~input_o\,
	datab => \button_A~input_o\,
	datac => \current_state.game_ready~q\,
	datad => \current_state~32_combout\,
	combout => \current_state.game_ready~0_combout\);

-- Location: FF_X3_Y23_N11
\current_state.game_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state.game_ready~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.game_ready~q\);

-- Location: LCCOMB_X3_Y23_N24
\current_state~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~51_combout\ = (\current_state~32_combout\ & (((\button_B~input_o\ & \current_state.B_wait~q\)) # (!\Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_B~input_o\,
	datab => \Selector7~0_combout\,
	datac => \current_state.B_wait~q\,
	datad => \current_state~32_combout\,
	combout => \current_state~51_combout\);

-- Location: FF_X3_Y23_N25
\current_state.B_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~51_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.B_wait~q\);

-- Location: LCCOMB_X2_Y23_N22
\current_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~29_combout\ = (!\button_B~input_o\ & ((\current_state.B_wait~q\) # ((\button_A~input_o\ & !\current_state.game_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_B~input_o\,
	datab => \button_A~input_o\,
	datac => \current_state.game_ready~q\,
	datad => \current_state.B_wait~q\,
	combout => \current_state~29_combout\);

-- Location: LCCOMB_X2_Y23_N24
\current_state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~30_combout\ = (\current_state~29_combout\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~29_combout\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~30_combout\);

-- Location: FF_X2_Y23_N25
\current_state.BA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA0~q\);

-- Location: LCCOMB_X4_Y23_N10
\current_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~28_combout\ = (!\decoder3|Equal15~0_combout\ & (\current_state.AB8~q\ & (\button_B~input_o\ & !\decoder0|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder3|Equal15~0_combout\,
	datab => \current_state.AB8~q\,
	datac => \button_B~input_o\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~28_combout\);

-- Location: FF_X4_Y23_N11
\current_state.B_hit_turn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.B_hit_turn~q\);

-- Location: LCCOMB_X3_Y23_N16
\current_state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~33_combout\ = (\current_state~32_combout\ & ((\current_state.BA0~q\) # ((!\button_B~input_o\ & \current_state.B_hit_turn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_B~input_o\,
	datab => \current_state.BA0~q\,
	datac => \current_state.B_hit_turn~q\,
	datad => \current_state~32_combout\,
	combout => \current_state~33_combout\);

-- Location: FF_X3_Y23_N17
\current_state.BA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~33_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA1~q\);

-- Location: LCCOMB_X3_Y23_N26
\current_state~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~35_combout\ = (\current_state.BA1~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA1~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~35_combout\);

-- Location: FF_X3_Y23_N27
\current_state.BA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~35_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA2~q\);

-- Location: LCCOMB_X4_Y23_N24
\current_state~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~37_combout\ = (!\decoder3|Equal15~0_combout\ & (\current_state.BA2~q\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder3|Equal15~0_combout\,
	datac => \current_state.BA2~q\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~37_combout\);

-- Location: FF_X4_Y23_N25
\current_state.BA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~37_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA3~q\);

-- Location: LCCOMB_X4_Y23_N30
\current_state~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~39_combout\ = (\current_state.BA3~q\ & (!\decoder3|Equal15~0_combout\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA3~q\,
	datac => \decoder3|Equal15~0_combout\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~39_combout\);

-- Location: FF_X4_Y23_N31
\current_state.BA4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~39_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA4~q\);

-- Location: LCCOMB_X4_Y23_N28
\current_state~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~41_combout\ = (\current_state.BA4~q\ & (!\decoder3|Equal15~0_combout\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA4~q\,
	datac => \decoder3|Equal15~0_combout\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~41_combout\);

-- Location: FF_X4_Y23_N29
\current_state.BA5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~41_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA5~q\);

-- Location: LCCOMB_X4_Y23_N14
\current_state~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~43_combout\ = (\current_state.BA5~q\ & (!\decoder3|Equal15~0_combout\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA5~q\,
	datac => \decoder3|Equal15~0_combout\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~43_combout\);

-- Location: FF_X4_Y23_N15
\current_state.BA6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~43_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA6~q\);

-- Location: LCCOMB_X3_Y23_N8
\current_state~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~45_combout\ = (\current_state.BA6~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA6~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~45_combout\);

-- Location: FF_X3_Y23_N9
\current_state.BA7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~45_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA7~q\);

-- Location: LCCOMB_X3_Y23_N4
\current_state~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~47_combout\ = (\current_state.BA7~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.BA7~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~47_combout\);

-- Location: FF_X3_Y23_N5
\current_state.BA8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~47_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BA8~q\);

-- Location: LCCOMB_X3_Y23_N20
\current_state~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~50_combout\ = (\current_state.BA8~q\ & (\button_A~input_o\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA8~q\,
	datab => \button_A~input_o\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~50_combout\);

-- Location: FF_X3_Y23_N21
\current_state.A_hit_turn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.A_hit_turn~q\);

-- Location: LCCOMB_X3_Y23_N18
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\button_A~input_o\ & ((!\current_state.A_hit_turn~q\))) # (!\button_A~input_o\ & (!\current_state.BA8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_A~input_o\,
	datac => \current_state.BA8~q\,
	datad => \current_state.A_hit_turn~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X3_Y23_N3
\scoreOFB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFB[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFB(0));

-- Location: LCCOMB_X3_Y23_N28
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = scoreOFB(1) $ (scoreOFB(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scoreOFB(1),
	datad => scoreOFB(0),
	combout => \Add2~0_combout\);

-- Location: FF_X3_Y23_N29
\scoreOFB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFB(1));

-- Location: LCCOMB_X2_Y23_N20
\scoreOFB[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFB[2]~0_combout\ = (scoreOFB(1) & ((\button_A~input_o\ & (\current_state.A_hit_turn~q\)) # (!\button_A~input_o\ & ((\current_state.BA8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.A_hit_turn~q\,
	datab => scoreOFB(1),
	datac => \button_A~input_o\,
	datad => \current_state.BA8~q\,
	combout => \scoreOFB[2]~0_combout\);

-- Location: LCCOMB_X2_Y23_N12
\scoreOFB[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFB[2]~2_combout\ = scoreOFB(2) $ (((scoreOFB(0) & \scoreOFB[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scoreOFB(0),
	datac => scoreOFB(2),
	datad => \scoreOFB[2]~0_combout\,
	combout => \scoreOFB[2]~2_combout\);

-- Location: FF_X2_Y23_N13
\scoreOFB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFB[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFB(2));

-- Location: LCCOMB_X2_Y23_N6
\scoreOFB[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFB[3]~1_combout\ = scoreOFB(3) $ (((scoreOFB(2) & (scoreOFB(0) & \scoreOFB[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => \scoreOFB[2]~0_combout\,
	combout => \scoreOFB[3]~1_combout\);

-- Location: FF_X2_Y23_N7
\scoreOFB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFB[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFB(3));

-- Location: LCCOMB_X3_Y23_N14
\decoder0|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|Equal15~0_combout\ = (!scoreOFB(1) & (scoreOFB(0) & (scoreOFB(3) & !scoreOFB(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(1),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(2),
	combout => \decoder0|Equal15~0_combout\);

-- Location: LCCOMB_X3_Y23_N12
\current_state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~32_combout\ = (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~32_combout\);

-- Location: LCCOMB_X3_Y23_N22
\current_state~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~52_combout\ = (\current_state~32_combout\ & (((\button_A~input_o\ & \current_state.A_wait~q\)) # (!\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_A~input_o\,
	datab => \Selector6~0_combout\,
	datac => \current_state.A_wait~q\,
	datad => \current_state~32_combout\,
	combout => \current_state~52_combout\);

-- Location: FF_X3_Y23_N23
\current_state.A_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~52_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.A_wait~q\);

-- Location: LCCOMB_X3_Y23_N0
\current_state~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~48_combout\ = (!\button_A~input_o\ & ((\current_state.A_wait~q\) # ((\button_B~input_o\ & !\current_state.game_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_B~input_o\,
	datab => \button_A~input_o\,
	datac => \current_state.A_wait~q\,
	datad => \current_state.game_ready~q\,
	combout => \current_state~48_combout\);

-- Location: LCCOMB_X3_Y23_N6
\current_state~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~49_combout\ = (\current_state~48_combout\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state~48_combout\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~49_combout\);

-- Location: FF_X3_Y23_N7
\current_state.AB0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~49_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB0~q\);

-- Location: LCCOMB_X3_Y23_N30
\current_state~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~46_combout\ = (\current_state~32_combout\ & ((\current_state.AB0~q\) # ((\current_state.A_hit_turn~q\ & !\button_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB0~q\,
	datab => \current_state.A_hit_turn~q\,
	datac => \button_A~input_o\,
	datad => \current_state~32_combout\,
	combout => \current_state~46_combout\);

-- Location: FF_X3_Y23_N31
\current_state.AB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB1~q\);

-- Location: LCCOMB_X2_Y23_N0
\current_state~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~44_combout\ = (\current_state.AB1~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB1~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~44_combout\);

-- Location: FF_X2_Y23_N1
\current_state.AB2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~44_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB2~q\);

-- Location: LCCOMB_X2_Y23_N18
\current_state~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~42_combout\ = (\current_state.AB2~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB2~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~42_combout\);

-- Location: FF_X2_Y23_N19
\current_state.AB3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~42_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB3~q\);

-- Location: LCCOMB_X2_Y23_N8
\current_state~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~40_combout\ = (\current_state.AB3~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB3~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~40_combout\);

-- Location: FF_X2_Y23_N9
\current_state.AB4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~40_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB4~q\);

-- Location: LCCOMB_X2_Y23_N10
\current_state~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~38_combout\ = (\current_state.AB4~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB4~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~38_combout\);

-- Location: FF_X2_Y23_N11
\current_state.AB5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~38_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB5~q\);

-- Location: LCCOMB_X2_Y23_N14
\current_state~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~36_combout\ = (\current_state.AB5~q\ & (!\decoder0|Equal15~0_combout\ & !\decoder3|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB5~q\,
	datac => \decoder0|Equal15~0_combout\,
	datad => \decoder3|Equal15~0_combout\,
	combout => \current_state~36_combout\);

-- Location: FF_X2_Y23_N15
\current_state.AB6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~36_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB6~q\);

-- Location: LCCOMB_X4_Y23_N6
\current_state~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~34_combout\ = (!\decoder3|Equal15~0_combout\ & (\current_state.AB6~q\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder3|Equal15~0_combout\,
	datac => \current_state.AB6~q\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~34_combout\);

-- Location: FF_X4_Y23_N7
\current_state.AB7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB7~q\);

-- Location: LCCOMB_X4_Y23_N4
\current_state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~31_combout\ = (\current_state.AB7~q\ & (!\decoder3|Equal15~0_combout\ & !\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB7~q\,
	datac => \decoder3|Equal15~0_combout\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state~31_combout\);

-- Location: FF_X4_Y23_N5
\current_state.AB8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state~31_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.AB8~q\);

-- Location: LCCOMB_X4_Y23_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\button_B~input_o\ & ((!\current_state.B_hit_turn~q\))) # (!\button_B~input_o\ & (!\current_state.AB8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_B~input_o\,
	datac => \current_state.AB8~q\,
	datad => \current_state.B_hit_turn~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X4_Y23_N21
\scoreOFA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFA[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFA(0));

-- Location: LCCOMB_X4_Y23_N26
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = scoreOFA(1) $ (scoreOFA(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scoreOFA(1),
	datad => scoreOFA(0),
	combout => \Add1~0_combout\);

-- Location: FF_X4_Y23_N27
\scoreOFA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFA(1));

-- Location: LCCOMB_X4_Y23_N18
\scoreOFA[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFA[2]~0_combout\ = (scoreOFA(1) & ((\button_B~input_o\ & (\current_state.B_hit_turn~q\)) # (!\button_B~input_o\ & ((\current_state.AB8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.B_hit_turn~q\,
	datab => \button_B~input_o\,
	datac => \current_state.AB8~q\,
	datad => scoreOFA(1),
	combout => \scoreOFA[2]~0_combout\);

-- Location: LCCOMB_X4_Y23_N8
\scoreOFA[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFA[2]~2_combout\ = scoreOFA(2) $ (((scoreOFA(0) & \scoreOFA[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scoreOFA(0),
	datac => scoreOFA(2),
	datad => \scoreOFA[2]~0_combout\,
	combout => \scoreOFA[2]~2_combout\);

-- Location: FF_X4_Y23_N9
\scoreOFA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFA[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFA(2));

-- Location: LCCOMB_X4_Y23_N2
\scoreOFA[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scoreOFA[3]~1_combout\ = scoreOFA(3) $ (((scoreOFA(2) & (\scoreOFA[2]~0_combout\ & scoreOFA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => \scoreOFA[2]~0_combout\,
	datac => scoreOFA(3),
	datad => scoreOFA(0),
	combout => \scoreOFA[3]~1_combout\);

-- Location: FF_X4_Y23_N3
\scoreOFA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \scoreOFA[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scoreOFA(3));

-- Location: LCCOMB_X4_Y23_N22
\decoder3|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|Equal15~0_combout\ = (!scoreOFA(1) & (scoreOFA(0) & (!scoreOFA(2) & scoreOFA(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(1),
	datab => scoreOFA(0),
	datac => scoreOFA(2),
	datad => scoreOFA(3),
	combout => \decoder3|Equal15~0_combout\);

-- Location: LCCOMB_X4_Y23_N12
\current_state.finished~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.finished~0_combout\ = (\decoder3|Equal15~0_combout\) # ((\current_state.finished~q\) # (\decoder0|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder3|Equal15~0_combout\,
	datac => \current_state.finished~q\,
	datad => \decoder0|Equal15~0_combout\,
	combout => \current_state.finished~0_combout\);

-- Location: FF_X4_Y23_N13
\current_state.finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[23]~clkctrl_outclk\,
	d => \current_state.finished~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.finished~q\);

-- Location: LCCOMB_X2_Y23_N30
\WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (\current_state.finished~q\) # ((\current_state.BA0~q\) # (\current_state.B_hit_turn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.finished~q\,
	datab => \current_state.BA0~q\,
	datad => \current_state.B_hit_turn~q\,
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X2_Y23_N16
\WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (\current_state.finished~q\) # ((\current_state.BA1~q\) # (\current_state.AB8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.finished~q\,
	datab => \current_state.BA1~q\,
	datac => \current_state.AB8~q\,
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X5_Y23_N24
\WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\current_state.AB7~q\) # ((\current_state.BA2~q\) # (\current_state.finished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB7~q\,
	datac => \current_state.BA2~q\,
	datad => \current_state.finished~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X2_Y23_N28
\WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\current_state.BA3~q\) # ((\current_state.AB6~q\) # (\current_state.finished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA3~q\,
	datac => \current_state.AB6~q\,
	datad => \current_state.finished~q\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\current_state.AB5~q\) # ((\current_state.finished~q\) # (\current_state.BA4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB5~q\,
	datac => \current_state.finished~q\,
	datad => \current_state.BA4~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\current_state.finished~q\) # ((\current_state.AB4~q\) # (\current_state.BA5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.finished~q\,
	datac => \current_state.AB4~q\,
	datad => \current_state.BA5~q\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\current_state.AB3~q\) # ((\current_state.finished~q\) # (\current_state.BA6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.AB3~q\,
	datac => \current_state.finished~q\,
	datad => \current_state.BA6~q\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X2_Y24_N16
\WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\current_state.BA7~q\) # ((\current_state.AB2~q\) # (\current_state.finished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BA7~q\,
	datab => \current_state.AB2~q\,
	datac => \current_state.finished~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X2_Y23_N26
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\current_state.AB1~q\) # ((\current_state.BA8~q\) # (\current_state.finished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB1~q\,
	datac => \current_state.BA8~q\,
	datad => \current_state.finished~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\current_state.AB0~q\) # ((\current_state.A_hit_turn~q\) # (\current_state.finished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.AB0~q\,
	datac => \current_state.A_hit_turn~q\,
	datad => \current_state.finished~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X8_Y23_N24
\decoder0|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[0]~0_combout\ = (scoreOFB(2) & (!scoreOFB(1) & (scoreOFB(0) $ (!scoreOFB(3))))) # (!scoreOFB(2) & (scoreOFB(0) & (scoreOFB(3) $ (!scoreOFB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(0),
	datab => scoreOFB(2),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X8_Y23_N22
\decoder0|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[1]~1_combout\ = (scoreOFB(3) & ((scoreOFB(0) & ((scoreOFB(1)))) # (!scoreOFB(0) & (scoreOFB(2))))) # (!scoreOFB(3) & (scoreOFB(2) & (scoreOFB(0) $ (scoreOFB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(0),
	datab => scoreOFB(2),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X8_Y24_N24
\decoder0|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[2]~2_combout\ = (scoreOFB(2) & (scoreOFB(3) & ((scoreOFB(1)) # (!scoreOFB(0))))) # (!scoreOFB(2) & (!scoreOFB(0) & (!scoreOFB(3) & scoreOFB(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X8_Y24_N22
\decoder0|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[3]~3_combout\ = (scoreOFB(1) & ((scoreOFB(2) & (scoreOFB(0))) # (!scoreOFB(2) & (!scoreOFB(0) & scoreOFB(3))))) # (!scoreOFB(1) & (!scoreOFB(3) & (scoreOFB(2) $ (scoreOFB(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X8_Y24_N4
\decoder0|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[4]~4_combout\ = (scoreOFB(1) & (((scoreOFB(0) & !scoreOFB(3))))) # (!scoreOFB(1) & ((scoreOFB(2) & ((!scoreOFB(3)))) # (!scoreOFB(2) & (scoreOFB(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X8_Y24_N6
\decoder0|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[5]~5_combout\ = (scoreOFB(2) & (scoreOFB(0) & (scoreOFB(3) $ (scoreOFB(1))))) # (!scoreOFB(2) & (!scoreOFB(3) & ((scoreOFB(0)) # (scoreOFB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X6_Y24_N0
\decoder0|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder0|decoded_out[6]~6_combout\ = (scoreOFB(0) & ((scoreOFB(3)) # (scoreOFB(2) $ (scoreOFB(1))))) # (!scoreOFB(0) & ((scoreOFB(1)) # (scoreOFB(2) $ (scoreOFB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFB(2),
	datab => scoreOFB(0),
	datac => scoreOFB(3),
	datad => scoreOFB(1),
	combout => \decoder0|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X8_Y24_N20
\decoder3|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[0]~0_combout\ = (scoreOFA(2) & (!scoreOFA(1) & (scoreOFA(0) $ (!scoreOFA(3))))) # (!scoreOFA(2) & (scoreOFA(0) & (scoreOFA(3) $ (!scoreOFA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X8_Y24_N26
\decoder3|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[1]~1_combout\ = (scoreOFA(3) & ((scoreOFA(0) & ((scoreOFA(1)))) # (!scoreOFA(0) & (scoreOFA(2))))) # (!scoreOFA(3) & (scoreOFA(2) & (scoreOFA(0) $ (scoreOFA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X4_Y23_N16
\decoder3|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[2]~2_combout\ = (scoreOFA(2) & (scoreOFA(3) & ((scoreOFA(1)) # (!scoreOFA(0))))) # (!scoreOFA(2) & (!scoreOFA(3) & (scoreOFA(1) & !scoreOFA(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(3),
	datac => scoreOFA(1),
	datad => scoreOFA(0),
	combout => \decoder3|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X8_Y24_N12
\decoder3|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[3]~3_combout\ = (scoreOFA(1) & ((scoreOFA(2) & (scoreOFA(0))) # (!scoreOFA(2) & (!scoreOFA(0) & scoreOFA(3))))) # (!scoreOFA(1) & (!scoreOFA(3) & (scoreOFA(2) $ (scoreOFA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X8_Y24_N18
\decoder3|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[4]~4_combout\ = (scoreOFA(1) & (((scoreOFA(0) & !scoreOFA(3))))) # (!scoreOFA(1) & ((scoreOFA(2) & ((!scoreOFA(3)))) # (!scoreOFA(2) & (scoreOFA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X8_Y24_N0
\decoder3|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[5]~5_combout\ = (scoreOFA(2) & (scoreOFA(0) & (scoreOFA(3) $ (scoreOFA(1))))) # (!scoreOFA(2) & (!scoreOFA(3) & ((scoreOFA(0)) # (scoreOFA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X8_Y24_N10
\decoder3|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[6]~6_combout\ = (scoreOFA(0) & ((scoreOFA(3)) # (scoreOFA(2) $ (scoreOFA(1))))) # (!scoreOFA(0) & ((scoreOFA(1)) # (scoreOFA(2) $ (scoreOFA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scoreOFA(2),
	datab => scoreOFA(0),
	datac => scoreOFA(3),
	datad => scoreOFA(1),
	combout => \decoder3|decoded_out[6]~6_combout\);

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
END structure;


