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

-- DATE "10/02/2021 20:25:36"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux8_1 IS
    PORT (
	I : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	output : BUFFER std_logic
	);
END mux8_1;

-- Design Ports Information
-- output	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux8_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \I[4]~input_o\ : std_logic;
SIGNAL \I[5]~input_o\ : std_logic;
SIGNAL \I[6]~input_o\ : std_logic;
SIGNAL \X[1]~0_combout\ : std_logic;
SIGNAL \I[7]~input_o\ : std_logic;
SIGNAL \X[1]~1_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;

BEGIN

ww_I <= I;
ww_sel <= sel;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y31_N2
\output~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\I[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\I[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X17_Y2_N2
\output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\sel[2]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & ((\I[3]~input_o\))) # (!\sel[0]~input_o\ & (\I[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[2]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \I[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \output~1_combout\);

-- Location: IOIBUF_X8_Y0_N8
\I[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\I[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: LCCOMB_X17_Y2_N24
\output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\sel[0]~input_o\ & ((\I[1]~input_o\))) # (!\sel[0]~input_o\ & (\I[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[0]~input_o\,
	datab => \I[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X17_Y2_N12
\output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\sel[1]~input_o\ & ((\output~1_combout\) # ((\sel[2]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[2]~input_o\ & (\output~1_combout\)) # (!\sel[2]~input_o\ & ((\output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \output~1_combout\,
	datac => \sel[2]~input_o\,
	datad => \output~0_combout\,
	combout => \output~2_combout\);

-- Location: IOIBUF_X12_Y0_N1
\I[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(4),
	o => \I[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\I[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(5),
	o => \I[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\I[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(6),
	o => \I[6]~input_o\);

-- Location: LCCOMB_X17_Y2_N6
\X[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \X[1]~0_combout\ = (\sel[1]~input_o\ & (!\sel[0]~input_o\ & ((\I[6]~input_o\)))) # (!\sel[1]~input_o\ & (\sel[0]~input_o\ & (\I[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \I[5]~input_o\,
	datad => \I[6]~input_o\,
	combout => \X[1]~0_combout\);

-- Location: IOIBUF_X33_Y16_N15
\I[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(7),
	o => \I[7]~input_o\);

-- Location: LCCOMB_X17_Y2_N0
\X[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \X[1]~1_combout\ = (\X[1]~0_combout\) # ((\I[7]~input_o\ & (\sel[0]~input_o\ $ (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~0_combout\,
	datab => \sel[0]~input_o\,
	datac => \I[7]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \X[1]~1_combout\);

-- Location: LCCOMB_X17_Y2_N10
\output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\output~2_combout\ & (((\X[1]~1_combout\) # (!\sel[2]~input_o\)))) # (!\output~2_combout\ & (\I[4]~input_o\ & (\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~2_combout\,
	datab => \I[4]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \X[1]~1_combout\,
	combout => \output~3_combout\);

ww_output <= \output~output_o\;
END structure;


