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

-- DATE "10/02/2021 14:37:05"

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

ENTITY 	adder_subtractor_arithmetic IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	A_S : IN std_logic;
	Sum : OUT std_logic_vector(3 DOWNTO 0);
	C_out : OUT std_logic;
	overflow : OUT std_logic
	);
END adder_subtractor_arithmetic;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_S	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder_subtractor_arithmetic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A_S : std_logic;
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_out : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \C_out~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \A_S~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_A_S <= A_S;
Sum <= ww_Sum;
C_out <= ww_C_out;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N2
\Sum[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[1]~2_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Sum[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[2]~4_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\Sum[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[3]~6_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Sum[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\C_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \C_out~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\overflow~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\A_S~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_S,
	o => \A_S~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X29_Y4_N12
\Add1|auto_generated|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~0_combout\ = \A_S~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_S~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add1|auto_generated|_~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X29_Y4_N0
\Add1|auto_generated|result_int[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\A_S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_S~input_o\,
	datad => VCC,
	cout => \Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X29_Y4_N2
\Add1|auto_generated|result_int[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[1]~2_combout\ = (\Add1|auto_generated|_~0_combout\ & ((\A[0]~input_o\ & (\Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add1|auto_generated|result_int[0]~1_cout\)))) # 
-- (!\Add1|auto_generated|_~0_combout\ & ((\A[0]~input_o\ & (!\Add1|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \Add1|auto_generated|result_int[1]~3\ = CARRY((\Add1|auto_generated|_~0_combout\ & (!\A[0]~input_o\ & !\Add1|auto_generated|result_int[0]~1_cout\)) # (!\Add1|auto_generated|_~0_combout\ & ((!\Add1|auto_generated|result_int[0]~1_cout\) # 
-- (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[0]~1_cout\,
	combout => \Add1|auto_generated|result_int[1]~2_combout\,
	cout => \Add1|auto_generated|result_int[1]~3\);

-- Location: IOIBUF_X14_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X29_Y4_N22
\Add1|auto_generated|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~1_combout\ = \B[1]~input_o\ $ (\A_S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \A_S~input_o\,
	combout => \Add1|auto_generated|_~1_combout\);

-- Location: IOIBUF_X31_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X29_Y4_N4
\Add1|auto_generated|result_int[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[2]~4_combout\ = ((\Add1|auto_generated|_~1_combout\ $ (\A[1]~input_o\ $ (!\Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \Add1|auto_generated|result_int[2]~5\ = CARRY((\Add1|auto_generated|_~1_combout\ & ((\A[1]~input_o\) # (!\Add1|auto_generated|result_int[1]~3\))) # (!\Add1|auto_generated|_~1_combout\ & (\A[1]~input_o\ & !\Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~1_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[1]~3\,
	combout => \Add1|auto_generated|result_int[2]~4_combout\,
	cout => \Add1|auto_generated|result_int[2]~5\);

-- Location: IOIBUF_X10_Y0_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X29_Y4_N24
\Add1|auto_generated|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~2_combout\ = \A_S~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_S~input_o\,
	datac => \B[2]~input_o\,
	combout => \Add1|auto_generated|_~2_combout\);

-- Location: LCCOMB_X29_Y4_N6
\Add1|auto_generated|result_int[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\Add1|auto_generated|_~2_combout\ & (\Add1|auto_generated|result_int[2]~5\ & VCC)) # (!\Add1|auto_generated|_~2_combout\ & (!\Add1|auto_generated|result_int[2]~5\)))) # (!\A[2]~input_o\ & 
-- ((\Add1|auto_generated|_~2_combout\ & (!\Add1|auto_generated|result_int[2]~5\)) # (!\Add1|auto_generated|_~2_combout\ & ((\Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \Add1|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (!\Add1|auto_generated|_~2_combout\ & !\Add1|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((!\Add1|auto_generated|result_int[2]~5\) # (!\Add1|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[2]~5\,
	combout => \Add1|auto_generated|result_int[3]~6_combout\,
	cout => \Add1|auto_generated|result_int[3]~7\);

-- Location: IOIBUF_X20_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X29_Y4_N26
\Add1|auto_generated|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~3_combout\ = \B[3]~input_o\ $ (\A_S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A_S~input_o\,
	combout => \Add1|auto_generated|_~3_combout\);

-- Location: IOIBUF_X33_Y14_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y4_N8
\Add1|auto_generated|result_int[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[4]~8_combout\ = ((\Add1|auto_generated|_~3_combout\ $ (\A[3]~input_o\ $ (!\Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \Add1|auto_generated|result_int[4]~9\ = CARRY((\Add1|auto_generated|_~3_combout\ & ((\A[3]~input_o\) # (!\Add1|auto_generated|result_int[3]~7\))) # (!\Add1|auto_generated|_~3_combout\ & (\A[3]~input_o\ & !\Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~3_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[3]~7\,
	combout => \Add1|auto_generated|result_int[4]~8_combout\,
	cout => \Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X29_Y4_N10
\Add1|auto_generated|result_int[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[5]~10_combout\ = \Add1|auto_generated|result_int[4]~9\ $ (\A_S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A_S~input_o\,
	cin => \Add1|auto_generated|result_int[4]~9\,
	combout => \Add1|auto_generated|result_int[5]~10_combout\);

-- Location: LCCOMB_X29_Y4_N28
\overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \overflow~0_combout\ = \Add1|auto_generated|result_int[4]~8_combout\ $ (\Add1|auto_generated|result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1|auto_generated|result_int[4]~8_combout\,
	datad => \Add1|auto_generated|result_int[5]~10_combout\,
	combout => \overflow~0_combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_C_out <= \C_out~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


