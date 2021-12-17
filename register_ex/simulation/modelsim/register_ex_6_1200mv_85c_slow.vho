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

-- DATE "12/10/2021 14:05:26"

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

ENTITY 	register_ex IS
    PORT (
	clk : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(7 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END register_ex;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_ex IS
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
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[7]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[7]~output_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \B[3]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \mux_out[3]~2_combout\ : std_logic;
SIGNAL \D[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \mux_out[3]~3_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \C[2]~feeder_combout\ : std_logic;
SIGNAL \mux_out[2]~4_combout\ : std_logic;
SIGNAL \B[2]~feeder_combout\ : std_logic;
SIGNAL \mux_out[2]~5_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \B[1]~feeder_combout\ : std_logic;
SIGNAL \C[1]~feeder_combout\ : std_logic;
SIGNAL \mux_out[1]~6_combout\ : std_logic;
SIGNAL \mux_out[1]~7_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \B[0]~feeder_combout\ : std_logic;
SIGNAL \mux_out[0]~0_combout\ : std_logic;
SIGNAL \mux_out[0]~1_combout\ : std_logic;
SIGNAL \dec0|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec0|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec0|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec0|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec0|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec0|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec0|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \mux_out[6]~12_combout\ : std_logic;
SIGNAL \mux_out[6]~13_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \mux_out[7]~10_combout\ : std_logic;
SIGNAL \C[7]~feeder_combout\ : std_logic;
SIGNAL \mux_out[7]~11_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \B[4]~feeder_combout\ : std_logic;
SIGNAL \mux_out[4]~8_combout\ : std_logic;
SIGNAL \mux_out[4]~9_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \mux_out[5]~14_combout\ : std_logic;
SIGNAL \mux_out[5]~15_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL D : std_logic_vector(7 DOWNTO 0);
SIGNAL C : std_logic_vector(7 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_data <= data;
ww_reset <= reset;
ww_sel <= sel;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\hex0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\hex1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[7]~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

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

-- Location: LCCOMB_X23_Y17_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\sel[0]~input_o\ & !\sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: FF_X23_Y17_N19
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X15_Y25_N18
\B[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \B[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\sel[0]~input_o\ & !\sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: FF_X15_Y25_N19
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: LCCOMB_X23_Y17_N18
\mux_out[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[3]~2_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((!B(3))))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (!A(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(3),
	datad => B(3),
	combout => \mux_out[3]~2_combout\);

-- Location: LCCOMB_X23_Y17_N22
\D[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D[0]~0_combout\ = (\sel[0]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \D[0]~0_combout\);

-- Location: FF_X10_Y26_N11
\D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(3));

-- Location: LCCOMB_X23_Y17_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sel[0]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X23_Y18_N11
\C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(3));

-- Location: LCCOMB_X10_Y26_N10
\mux_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[3]~3_combout\ = (\sel[1]~input_o\ & ((\mux_out[3]~2_combout\ & (!D(3))) # (!\mux_out[3]~2_combout\ & ((!C(3)))))) # (!\sel[1]~input_o\ & (\mux_out[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux_out[3]~2_combout\,
	datac => D(3),
	datad => C(3),
	combout => \mux_out[3]~3_combout\);

-- Location: IOIBUF_X0_Y27_N22
\data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X23_Y17_N13
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X23_Y18_N12
\C[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \C[2]~feeder_combout\);

-- Location: FF_X23_Y18_N13
\C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \C[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(2));

-- Location: LCCOMB_X23_Y17_N12
\mux_out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[2]~4_combout\ = (\sel[0]~input_o\ & (\sel[1]~input_o\)) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((C(2)))) # (!\sel[1]~input_o\ & (A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(2),
	datad => C(2),
	combout => \mux_out[2]~4_combout\);

-- Location: FF_X10_Y26_N29
\D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(2));

-- Location: LCCOMB_X15_Y25_N4
\B[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \B[2]~feeder_combout\);

-- Location: FF_X15_Y25_N5
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LCCOMB_X10_Y26_N28
\mux_out[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[2]~5_combout\ = (\mux_out[2]~4_combout\ & (((D(2))) # (!\sel[0]~input_o\))) # (!\mux_out[2]~4_combout\ & (\sel[0]~input_o\ & ((B(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[2]~4_combout\,
	datab => \sel[0]~input_o\,
	datac => D(2),
	datad => B(2),
	combout => \mux_out[2]~5_combout\);

-- Location: IOIBUF_X0_Y23_N8
\data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X15_Y25_N6
\B[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \B[1]~feeder_combout\);

-- Location: FF_X15_Y25_N7
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LCCOMB_X23_Y18_N22
\C[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \C[1]~feeder_combout\);

-- Location: FF_X23_Y18_N23
\C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \C[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(1));

-- Location: FF_X23_Y17_N15
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X23_Y17_N14
\mux_out[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[1]~6_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (C(1))) # (!\sel[1]~input_o\ & ((A(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => C(1),
	datac => A(1),
	datad => \sel[1]~input_o\,
	combout => \mux_out[1]~6_combout\);

-- Location: FF_X10_Y26_N15
\D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(1));

-- Location: LCCOMB_X10_Y26_N14
\mux_out[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[1]~7_combout\ = (\mux_out[1]~6_combout\ & (((D(1)) # (!\sel[0]~input_o\)))) # (!\mux_out[1]~6_combout\ & (B(1) & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(1),
	datab => \mux_out[1]~6_combout\,
	datac => D(1),
	datad => \sel[0]~input_o\,
	combout => \mux_out[1]~7_combout\);

-- Location: IOIBUF_X0_Y25_N22
\data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: FF_X23_Y17_N1
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X15_Y25_N16
\B[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \B[0]~feeder_combout\);

-- Location: FF_X15_Y25_N17
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LCCOMB_X23_Y17_N0
\mux_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[0]~0_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((B(0))))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(0),
	datad => B(0),
	combout => \mux_out[0]~0_combout\);

-- Location: FF_X10_Y26_N17
\D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(0));

-- Location: FF_X23_Y18_N1
\C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(0));

-- Location: LCCOMB_X10_Y26_N16
\mux_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[0]~1_combout\ = (\sel[1]~input_o\ & ((\mux_out[0]~0_combout\ & (D(0))) # (!\mux_out[0]~0_combout\ & ((C(0)))))) # (!\sel[1]~input_o\ & (\mux_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux_out[0]~0_combout\,
	datac => D(0),
	datad => C(0),
	combout => \mux_out[0]~1_combout\);

-- Location: LCCOMB_X10_Y26_N24
\dec0|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[0]~0_combout\ = (\mux_out[3]~3_combout\ & (!\mux_out[1]~7_combout\ & (\mux_out[2]~5_combout\ $ (\mux_out[0]~1_combout\)))) # (!\mux_out[3]~3_combout\ & (\mux_out[0]~1_combout\ & (\mux_out[2]~5_combout\ $ (\mux_out[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X10_Y26_N18
\dec0|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[1]~1_combout\ = (\mux_out[3]~3_combout\ & (\mux_out[2]~5_combout\ & (\mux_out[1]~7_combout\ $ (\mux_out[0]~1_combout\)))) # (!\mux_out[3]~3_combout\ & ((\mux_out[0]~1_combout\ & ((\mux_out[1]~7_combout\))) # (!\mux_out[0]~1_combout\ & 
-- (\mux_out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X10_Y26_N12
\dec0|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[2]~2_combout\ = (\mux_out[3]~3_combout\ & (!\mux_out[2]~5_combout\ & (\mux_out[1]~7_combout\ & !\mux_out[0]~1_combout\))) # (!\mux_out[3]~3_combout\ & (\mux_out[2]~5_combout\ & ((\mux_out[1]~7_combout\) # (!\mux_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X10_Y26_N22
\dec0|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[3]~3_combout\ = (\mux_out[1]~7_combout\ & ((\mux_out[2]~5_combout\ & ((\mux_out[0]~1_combout\))) # (!\mux_out[2]~5_combout\ & (!\mux_out[3]~3_combout\ & !\mux_out[0]~1_combout\)))) # (!\mux_out[1]~7_combout\ & (\mux_out[3]~3_combout\ & 
-- (\mux_out[2]~5_combout\ $ (\mux_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X10_Y26_N8
\dec0|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[4]~4_combout\ = (\mux_out[1]~7_combout\ & (\mux_out[3]~3_combout\ & ((\mux_out[0]~1_combout\)))) # (!\mux_out[1]~7_combout\ & ((\mux_out[2]~5_combout\ & (\mux_out[3]~3_combout\)) # (!\mux_out[2]~5_combout\ & ((\mux_out[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X10_Y26_N2
\dec0|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[5]~5_combout\ = (\mux_out[2]~5_combout\ & (\mux_out[0]~1_combout\ & (\mux_out[3]~3_combout\ $ (!\mux_out[1]~7_combout\)))) # (!\mux_out[2]~5_combout\ & (\mux_out[3]~3_combout\ & ((\mux_out[1]~7_combout\) # (\mux_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X10_Y26_N20
\dec0|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[6]~6_combout\ = (\mux_out[0]~1_combout\ & (\mux_out[3]~3_combout\ & (\mux_out[2]~5_combout\ $ (!\mux_out[1]~7_combout\)))) # (!\mux_out[0]~1_combout\ & (!\mux_out[1]~7_combout\ & (\mux_out[3]~3_combout\ $ (\mux_out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[3]~3_combout\,
	datab => \mux_out[2]~5_combout\,
	datac => \mux_out[1]~7_combout\,
	datad => \mux_out[0]~1_combout\,
	combout => \dec0|decoded_out[6]~6_combout\);

-- Location: IOIBUF_X0_Y26_N1
\data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: FF_X15_Y25_N21
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: FF_X10_Y26_N27
\D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(6));

-- Location: FF_X23_Y17_N5
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: FF_X23_Y18_N29
\C[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(6));

-- Location: LCCOMB_X23_Y17_N4
\mux_out[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[6]~12_combout\ = (\sel[0]~input_o\ & (\sel[1]~input_o\)) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((C(6)))) # (!\sel[1]~input_o\ & (A(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(6),
	datad => C(6),
	combout => \mux_out[6]~12_combout\);

-- Location: LCCOMB_X10_Y26_N26
\mux_out[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[6]~13_combout\ = (\sel[0]~input_o\ & ((\mux_out[6]~12_combout\ & ((D(6)))) # (!\mux_out[6]~12_combout\ & (B(6))))) # (!\sel[0]~input_o\ & (((\mux_out[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(6),
	datab => \sel[0]~input_o\,
	datac => D(6),
	datad => \mux_out[6]~12_combout\,
	combout => \mux_out[6]~13_combout\);

-- Location: IOIBUF_X0_Y25_N1
\data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: FF_X23_Y17_N3
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: FF_X15_Y25_N11
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LCCOMB_X23_Y17_N2
\mux_out[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[7]~10_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((!B(7))))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (!A(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(7),
	datad => B(7),
	combout => \mux_out[7]~10_combout\);

-- Location: FF_X10_Y26_N1
\D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(7));

-- Location: LCCOMB_X23_Y18_N26
\C[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \C[7]~feeder_combout\);

-- Location: FF_X23_Y18_N27
\C[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \C[7]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(7));

-- Location: LCCOMB_X10_Y26_N0
\mux_out[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[7]~11_combout\ = (\sel[1]~input_o\ & ((\mux_out[7]~10_combout\ & (!D(7))) # (!\mux_out[7]~10_combout\ & ((!C(7)))))) # (!\sel[1]~input_o\ & (\mux_out[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux_out[7]~10_combout\,
	datac => D(7),
	datad => C(7),
	combout => \mux_out[7]~11_combout\);

-- Location: IOIBUF_X0_Y25_N15
\data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: FF_X23_Y17_N9
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X15_Y25_N0
\B[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \B[4]~feeder_combout\);

-- Location: FF_X15_Y25_N1
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: LCCOMB_X23_Y17_N8
\mux_out[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[4]~8_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((B(4))))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (A(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => A(4),
	datad => B(4),
	combout => \mux_out[4]~8_combout\);

-- Location: FF_X10_Y26_N7
\D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(4));

-- Location: FF_X23_Y18_N9
\C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(4));

-- Location: LCCOMB_X10_Y26_N6
\mux_out[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[4]~9_combout\ = (\sel[1]~input_o\ & ((\mux_out[4]~8_combout\ & (D(4))) # (!\mux_out[4]~8_combout\ & ((C(4)))))) # (!\sel[1]~input_o\ & (\mux_out[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux_out[4]~8_combout\,
	datac => D(4),
	datad => C(4),
	combout => \mux_out[4]~9_combout\);

-- Location: IOIBUF_X0_Y26_N8
\data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: FF_X23_Y18_N31
\C[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(5));

-- Location: FF_X23_Y17_N31
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LCCOMB_X23_Y17_N30
\mux_out[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[5]~14_combout\ = (\sel[1]~input_o\ & ((C(5)) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((A(5) & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(5),
	datab => \sel[1]~input_o\,
	datac => A(5),
	datad => \sel[0]~input_o\,
	combout => \mux_out[5]~14_combout\);

-- Location: FF_X15_Y25_N23
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: FF_X10_Y26_N5
\D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(5));

-- Location: LCCOMB_X10_Y26_N4
\mux_out[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[5]~15_combout\ = (\mux_out[5]~14_combout\ & (((D(5)) # (!\sel[0]~input_o\)))) # (!\mux_out[5]~14_combout\ & (B(5) & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[5]~14_combout\,
	datab => B(5),
	datac => D(5),
	datad => \sel[0]~input_o\,
	combout => \mux_out[5]~15_combout\);

-- Location: LCCOMB_X21_Y27_N0
\dec1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~0_combout\ = (\mux_out[6]~13_combout\ & (!\mux_out[5]~15_combout\ & (\mux_out[7]~11_combout\ $ (\mux_out[4]~9_combout\)))) # (!\mux_out[6]~13_combout\ & (\mux_out[4]~9_combout\ & (\mux_out[7]~11_combout\ $ (\mux_out[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X21_Y27_N2
\dec1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[1]~1_combout\ = (\mux_out[7]~11_combout\ & (\mux_out[6]~13_combout\ & (\mux_out[4]~9_combout\ $ (\mux_out[5]~15_combout\)))) # (!\mux_out[7]~11_combout\ & ((\mux_out[4]~9_combout\ & ((\mux_out[5]~15_combout\))) # (!\mux_out[4]~9_combout\ 
-- & (\mux_out[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X21_Y27_N12
\dec1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~2_combout\ = (\mux_out[6]~13_combout\ & (!\mux_out[7]~11_combout\ & ((\mux_out[5]~15_combout\) # (!\mux_out[4]~9_combout\)))) # (!\mux_out[6]~13_combout\ & (\mux_out[7]~11_combout\ & (!\mux_out[4]~9_combout\ & 
-- \mux_out[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X21_Y27_N14
\dec1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[3]~3_combout\ = (\mux_out[5]~15_combout\ & ((\mux_out[6]~13_combout\ & ((\mux_out[4]~9_combout\))) # (!\mux_out[6]~13_combout\ & (!\mux_out[7]~11_combout\ & !\mux_out[4]~9_combout\)))) # (!\mux_out[5]~15_combout\ & 
-- (\mux_out[7]~11_combout\ & (\mux_out[6]~13_combout\ $ (\mux_out[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X21_Y27_N24
\dec1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[4]~4_combout\ = (\mux_out[5]~15_combout\ & (((\mux_out[7]~11_combout\ & \mux_out[4]~9_combout\)))) # (!\mux_out[5]~15_combout\ & ((\mux_out[6]~13_combout\ & (\mux_out[7]~11_combout\)) # (!\mux_out[6]~13_combout\ & 
-- ((\mux_out[4]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X21_Y27_N26
\dec1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[5]~5_combout\ = (\mux_out[6]~13_combout\ & (\mux_out[4]~9_combout\ & (\mux_out[7]~11_combout\ $ (!\mux_out[5]~15_combout\)))) # (!\mux_out[6]~13_combout\ & (\mux_out[7]~11_combout\ & ((\mux_out[4]~9_combout\) # 
-- (\mux_out[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X21_Y27_N28
\dec1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~6_combout\ = (\mux_out[4]~9_combout\ & (\mux_out[7]~11_combout\ & (\mux_out[6]~13_combout\ $ (!\mux_out[5]~15_combout\)))) # (!\mux_out[4]~9_combout\ & (!\mux_out[5]~15_combout\ & (\mux_out[6]~13_combout\ $ 
-- (\mux_out[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[6]~13_combout\,
	datab => \mux_out[7]~11_combout\,
	datac => \mux_out[4]~9_combout\,
	datad => \mux_out[5]~15_combout\,
	combout => \dec1|decoded_out[6]~6_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(7) <= \hex0[7]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(7) <= \hex1[7]~output_o\;
END structure;


