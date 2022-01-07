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

-- DATE "01/06/2022 16:43:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ping_pong_slave IS
    PORT (
	B_score : IN std_logic_vector(3 DOWNTO 0);
	B_LED_control : IN std_logic_vector(3 DOWNTO 0);
	system_B_button : IN std_logic;
	B_button_out : BUFFER std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ping_pong_slave;

-- Design Ports Information
-- B_button_out	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- system_B_button	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_LED_control[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_score[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ping_pong_slave IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B_score : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_LED_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_system_B_button : std_logic;
SIGNAL ww_B_button_out : std_logic;
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \B_button_out~output_o\ : std_logic;
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
SIGNAL \system_B_button~input_o\ : std_logic;
SIGNAL \B_LED_control[2]~input_o\ : std_logic;
SIGNAL \B_LED_control[0]~input_o\ : std_logic;
SIGNAL \B_LED_control[1]~input_o\ : std_logic;
SIGNAL \B_LED_control[3]~input_o\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \LED~2_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL \LED~4_combout\ : std_logic;
SIGNAL \LED~5_combout\ : std_logic;
SIGNAL \LED~6_combout\ : std_logic;
SIGNAL \LED~7_combout\ : std_logic;
SIGNAL \LED~8_combout\ : std_logic;
SIGNAL \LED~9_combout\ : std_logic;
SIGNAL \B_score[1]~input_o\ : std_logic;
SIGNAL \B_score[0]~input_o\ : std_logic;
SIGNAL \B_score[2]~input_o\ : std_logic;
SIGNAL \B_score[3]~input_o\ : std_logic;
SIGNAL \dec1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \dec1|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_LED~0_combout\ : std_logic;

BEGIN

ww_B_score <= B_score;
ww_B_LED_control <= B_LED_control;
ww_system_B_button <= system_B_button;
B_button_out <= ww_B_button_out;
LED <= ww_LED;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dec1|ALT_INV_decoded_out[6]~6_combout\ <= NOT \dec1|decoded_out[6]~6_combout\;
\ALT_INV_LED~0_combout\ <= NOT \LED~0_combout\;

-- Location: IOOBUF_X28_Y0_N2
\B_button_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_B_button~input_o\,
	devoe => ww_devoe,
	o => \B_button_out~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED~0_combout\,
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
	i => \LED~1_combout\,
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
	i => \LED~2_combout\,
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
	i => \LED~3_combout\,
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
	i => \LED~4_combout\,
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
	i => \LED~5_combout\,
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
	i => \LED~6_combout\,
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
	i => \LED~7_combout\,
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
	i => \LED~8_combout\,
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
	i => \LED~9_combout\,
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
	i => \dec1|decoded_out[0]~0_combout\,
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
	i => \dec1|decoded_out[1]~1_combout\,
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
	i => \dec1|decoded_out[2]~2_combout\,
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
	i => \dec1|decoded_out[3]~3_combout\,
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
	i => \dec1|decoded_out[4]~4_combout\,
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
	i => \dec1|decoded_out[5]~5_combout\,
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
	i => \dec1|ALT_INV_decoded_out[6]~6_combout\,
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

-- Location: IOIBUF_X0_Y23_N1
\system_B_button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_system_B_button,
	o => \system_B_button~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\B_LED_control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_LED_control(2),
	o => \B_LED_control[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B_LED_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_LED_control(0),
	o => \B_LED_control[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\B_LED_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_LED_control(1),
	o => \B_LED_control[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\B_LED_control[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_LED_control(3),
	o => \B_LED_control[3]~input_o\);

-- Location: LCCOMB_X5_Y21_N16
\LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\B_LED_control[2]~input_o\) # ((\B_LED_control[0]~input_o\) # (\B_LED_control[1]~input_o\ $ (\B_LED_control[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~0_combout\);

-- Location: LCCOMB_X5_Y21_N26
\LED~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (!\B_LED_control[2]~input_o\ & ((\B_LED_control[0]~input_o\ & (!\B_LED_control[1]~input_o\ & !\B_LED_control[3]~input_o\)) # (!\B_LED_control[0]~input_o\ & (\B_LED_control[1]~input_o\ & \B_LED_control[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~1_combout\);

-- Location: LCCOMB_X5_Y21_N20
\LED~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~2_combout\ = (!\B_LED_control[2]~input_o\ & (\B_LED_control[1]~input_o\ & !\B_LED_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[0]~input_o\,
	combout => \LED~2_combout\);

-- Location: LCCOMB_X5_Y21_N14
\LED~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (!\B_LED_control[2]~input_o\ & (\B_LED_control[1]~input_o\ & (\B_LED_control[0]~input_o\ $ (\B_LED_control[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~3_combout\);

-- Location: LCCOMB_X5_Y21_N0
\LED~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~4_combout\ = (!\B_LED_control[0]~input_o\ & ((\B_LED_control[2]~input_o\ & (!\B_LED_control[1]~input_o\ & !\B_LED_control[3]~input_o\)) # (!\B_LED_control[2]~input_o\ & (\B_LED_control[1]~input_o\ & \B_LED_control[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~4_combout\);

-- Location: LCCOMB_X5_Y21_N2
\LED~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~5_combout\ = (\B_LED_control[2]~input_o\ & (\B_LED_control[0]~input_o\ & (!\B_LED_control[1]~input_o\ & !\B_LED_control[3]~input_o\))) # (!\B_LED_control[2]~input_o\ & (!\B_LED_control[0]~input_o\ & (\B_LED_control[1]~input_o\ & 
-- \B_LED_control[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~5_combout\);

-- Location: LCCOMB_X5_Y21_N4
\LED~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~6_combout\ = (!\B_LED_control[0]~input_o\ & (\B_LED_control[1]~input_o\ & (\B_LED_control[2]~input_o\ $ (\B_LED_control[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~6_combout\);

-- Location: LCCOMB_X5_Y21_N30
\LED~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~7_combout\ = (\B_LED_control[1]~input_o\ & ((\B_LED_control[2]~input_o\ & (\B_LED_control[0]~input_o\ & !\B_LED_control[3]~input_o\)) # (!\B_LED_control[2]~input_o\ & (!\B_LED_control[0]~input_o\ & \B_LED_control[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~7_combout\);

-- Location: LCCOMB_X5_Y21_N24
\LED~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~8_combout\ = (!\B_LED_control[0]~input_o\ & (!\B_LED_control[2]~input_o\ & \B_LED_control[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[2]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~8_combout\);

-- Location: LCCOMB_X5_Y21_N10
\LED~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~9_combout\ = (!\B_LED_control[2]~input_o\ & (\B_LED_control[3]~input_o\ & (\B_LED_control[0]~input_o\ $ (\B_LED_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LED_control[2]~input_o\,
	datab => \B_LED_control[0]~input_o\,
	datac => \B_LED_control[1]~input_o\,
	datad => \B_LED_control[3]~input_o\,
	combout => \LED~9_combout\);

-- Location: IOIBUF_X35_Y0_N15
\B_score[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_score(1),
	o => \B_score[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\B_score[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_score(0),
	o => \B_score[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\B_score[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_score(2),
	o => \B_score[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\B_score[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_score(3),
	o => \B_score[3]~input_o\);

-- Location: LCCOMB_X22_Y7_N8
\dec1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~0_combout\ = (\B_score[2]~input_o\ & (!\B_score[1]~input_o\ & (\B_score[0]~input_o\ $ (!\B_score[3]~input_o\)))) # (!\B_score[2]~input_o\ & (\B_score[0]~input_o\ & (\B_score[1]~input_o\ $ (!\B_score[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X22_Y7_N10
\dec1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[1]~1_combout\ = (\B_score[1]~input_o\ & ((\B_score[0]~input_o\ & ((\B_score[3]~input_o\))) # (!\B_score[0]~input_o\ & (\B_score[2]~input_o\)))) # (!\B_score[1]~input_o\ & (\B_score[2]~input_o\ & (\B_score[0]~input_o\ $ 
-- (\B_score[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X22_Y7_N4
\dec1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~2_combout\ = (\B_score[2]~input_o\ & (\B_score[3]~input_o\ & ((\B_score[1]~input_o\) # (!\B_score[0]~input_o\)))) # (!\B_score[2]~input_o\ & (\B_score[1]~input_o\ & (!\B_score[0]~input_o\ & !\B_score[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X22_Y7_N6
\dec1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[3]~3_combout\ = (\B_score[1]~input_o\ & ((\B_score[0]~input_o\ & (\B_score[2]~input_o\)) # (!\B_score[0]~input_o\ & (!\B_score[2]~input_o\ & \B_score[3]~input_o\)))) # (!\B_score[1]~input_o\ & (!\B_score[3]~input_o\ & 
-- (\B_score[0]~input_o\ $ (\B_score[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X22_Y7_N24
\dec1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[4]~4_combout\ = (\B_score[1]~input_o\ & (\B_score[0]~input_o\ & ((!\B_score[3]~input_o\)))) # (!\B_score[1]~input_o\ & ((\B_score[2]~input_o\ & ((!\B_score[3]~input_o\))) # (!\B_score[2]~input_o\ & (\B_score[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X22_Y7_N26
\dec1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[5]~5_combout\ = (\B_score[1]~input_o\ & (!\B_score[3]~input_o\ & ((\B_score[0]~input_o\) # (!\B_score[2]~input_o\)))) # (!\B_score[1]~input_o\ & (\B_score[0]~input_o\ & (\B_score[2]~input_o\ $ (!\B_score[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X22_Y7_N28
\dec1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~6_combout\ = (\B_score[0]~input_o\ & ((\B_score[3]~input_o\) # (\B_score[1]~input_o\ $ (\B_score[2]~input_o\)))) # (!\B_score[0]~input_o\ & ((\B_score[1]~input_o\) # (\B_score[2]~input_o\ $ (\B_score[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_score[1]~input_o\,
	datab => \B_score[0]~input_o\,
	datac => \B_score[2]~input_o\,
	datad => \B_score[3]~input_o\,
	combout => \dec1|decoded_out[6]~6_combout\);

ww_B_button_out <= \B_button_out~output_o\;

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
END structure;


