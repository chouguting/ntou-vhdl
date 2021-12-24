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

-- DATE "12/24/2021 14:52:32"

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

ENTITY 	ping_pong_ex IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	p : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ping_pong_ex;

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
-- HEX[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ping_pong_ex IS
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
SIGNAL ww_p : std_logic;
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div_counter[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX[0]~output_o\ : std_logic;
SIGNAL \HEX[1]~output_o\ : std_logic;
SIGNAL \HEX[2]~output_o\ : std_logic;
SIGNAL \HEX[3]~output_o\ : std_logic;
SIGNAL \HEX[4]~output_o\ : std_logic;
SIGNAL \HEX[5]~output_o\ : std_logic;
SIGNAL \HEX[6]~output_o\ : std_logic;
SIGNAL \HEX[7]~output_o\ : std_logic;
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
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_div_counter~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_div_counter~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_div_counter~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clk_div_counter~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clk_div_counter~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_div_counter~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_div_counter~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_div_counter~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_div_counter~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_div_counter~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \clk_div_counter~11_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \clk_div_counter~0_combout\ : std_logic;
SIGNAL \clk_div_counter[24]~clkctrl_outclk\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \nextState.s19~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \presentState.s19~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \presentState.s2~q\ : std_logic;
SIGNAL \presentState.s3~feeder_combout\ : std_logic;
SIGNAL \presentState.s3~q\ : std_logic;
SIGNAL \presentState.s4~q\ : std_logic;
SIGNAL \presentState.s5~feeder_combout\ : std_logic;
SIGNAL \presentState.s5~q\ : std_logic;
SIGNAL \presentState.s6~feeder_combout\ : std_logic;
SIGNAL \presentState.s6~q\ : std_logic;
SIGNAL \presentState.s7~feeder_combout\ : std_logic;
SIGNAL \presentState.s7~q\ : std_logic;
SIGNAL \presentState.s8~feeder_combout\ : std_logic;
SIGNAL \presentState.s8~q\ : std_logic;
SIGNAL \presentState.s9~feeder_combout\ : std_logic;
SIGNAL \presentState.s9~q\ : std_logic;
SIGNAL \presentState.s10~feeder_combout\ : std_logic;
SIGNAL \presentState.s10~q\ : std_logic;
SIGNAL \presentState.s11~feeder_combout\ : std_logic;
SIGNAL \presentState.s11~q\ : std_logic;
SIGNAL \presentState.s12~feeder_combout\ : std_logic;
SIGNAL \presentState.s12~q\ : std_logic;
SIGNAL \presentState.s13~feeder_combout\ : std_logic;
SIGNAL \presentState.s13~q\ : std_logic;
SIGNAL \presentState.s14~feeder_combout\ : std_logic;
SIGNAL \presentState.s14~q\ : std_logic;
SIGNAL \presentState.s15~feeder_combout\ : std_logic;
SIGNAL \presentState.s15~q\ : std_logic;
SIGNAL \presentState.s16~feeder_combout\ : std_logic;
SIGNAL \presentState.s16~q\ : std_logic;
SIGNAL \presentState.s17~feeder_combout\ : std_logic;
SIGNAL \presentState.s17~q\ : std_logic;
SIGNAL \presentState.s18~feeder_combout\ : std_logic;
SIGNAL \presentState.s18~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \presentState.s0~q\ : std_logic;
SIGNAL \nextState.s1~0_combout\ : std_logic;
SIGNAL \presentState.s1~q\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \LED~2_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL \LED~4_combout\ : std_logic;
SIGNAL \LED~5_combout\ : std_logic;
SIGNAL \LED~6_combout\ : std_logic;
SIGNAL \LED~7_combout\ : std_logic;
SIGNAL \LED~8_combout\ : std_logic;
SIGNAL \score~10_combout\ : std_logic;
SIGNAL \score[0]~6_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \score~7_combout\ : std_logic;
SIGNAL \score~8_combout\ : std_logic;
SIGNAL \score~11_combout\ : std_logic;
SIGNAL \dec1|Equal15~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \score~9_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL score : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_div_counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \dec1|ALT_INV_decoded_out[6]~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_p <= p;
LED <= ww_LED;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div_counter[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clk_div_counter(24));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dec1|ALT_INV_decoded_out[6]~6_combout\ <= NOT \dec1|decoded_out[6]~6_combout\;

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
	i => \presentState.s10~q\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|ALT_INV_decoded_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\HEX[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX[7]~output_o\);

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

-- Location: LCCOMB_X17_Y27_N8
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

-- Location: FF_X17_Y27_N9
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

-- Location: LCCOMB_X17_Y27_N10
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

-- Location: FF_X17_Y27_N11
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

-- Location: LCCOMB_X17_Y27_N12
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

-- Location: FF_X17_Y27_N13
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

-- Location: LCCOMB_X17_Y27_N14
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

-- Location: FF_X17_Y27_N15
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

-- Location: LCCOMB_X17_Y27_N16
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

-- Location: FF_X17_Y27_N17
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

-- Location: LCCOMB_X17_Y27_N18
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

-- Location: FF_X17_Y27_N19
\clk_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(5));

-- Location: LCCOMB_X17_Y27_N20
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

-- Location: LCCOMB_X17_Y27_N22
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

-- Location: FF_X17_Y27_N23
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

-- Location: LCCOMB_X17_Y27_N24
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

-- Location: FF_X17_Y27_N25
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

-- Location: LCCOMB_X17_Y27_N26
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

-- Location: FF_X17_Y27_N27
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

-- Location: LCCOMB_X17_Y27_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_div_counter(10) & (\Add0~19\ $ (GND))) # (!clk_div_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_div_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X17_Y27_N29
\clk_div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(10));

-- Location: LCCOMB_X17_Y27_N2
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_div_counter(7) & (!clk_div_counter(8) & (!clk_div_counter(9) & !clk_div_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(7),
	datab => clk_div_counter(8),
	datac => clk_div_counter(9),
	datad => clk_div_counter(10),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y27_N6
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (clk_div_counter(2) & (\Equal0~6_combout\ & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(2),
	datab => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y27_N30
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

-- Location: LCCOMB_X16_Y26_N30
\clk_div_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~10_combout\ = (\Add0~22_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~22_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~10_combout\);

-- Location: FF_X16_Y26_N31
\clk_div_counter[11]\ : dffeas
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
	q => clk_div_counter(11));

-- Location: LCCOMB_X17_Y26_N0
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

-- Location: LCCOMB_X16_Y26_N26
\clk_div_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~9_combout\ = (\Add0~24_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~9_combout\);

-- Location: FF_X16_Y26_N27
\clk_div_counter[12]\ : dffeas
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
	q => clk_div_counter(12));

-- Location: LCCOMB_X17_Y26_N2
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

-- Location: LCCOMB_X16_Y26_N14
\clk_div_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~8_combout\ = (\Add0~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	combout => \clk_div_counter~8_combout\);

-- Location: FF_X16_Y26_N15
\clk_div_counter[13]\ : dffeas
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
	q => clk_div_counter(13));

-- Location: LCCOMB_X17_Y26_N4
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

-- Location: LCCOMB_X16_Y26_N10
\clk_div_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~7_combout\ = (\Add0~28_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div_counter~7_combout\);

-- Location: FF_X16_Y26_N11
\clk_div_counter[14]\ : dffeas
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
	q => clk_div_counter(14));

-- Location: LCCOMB_X17_Y26_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_div_counter(15) & (!\Add0~29\)) # (!clk_div_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_div_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X17_Y26_N7
\clk_div_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(15));

-- Location: LCCOMB_X17_Y26_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_div_counter(16) & (\Add0~31\ $ (GND))) # (!clk_div_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_div_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X17_Y26_N30
\clk_div_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~6_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Add0~32_combout\,
	datac => \Equal0~4_combout\,
	combout => \clk_div_counter~6_combout\);

-- Location: FF_X17_Y26_N31
\clk_div_counter[16]\ : dffeas
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
	q => clk_div_counter(16));

-- Location: LCCOMB_X17_Y26_N10
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

-- Location: FF_X17_Y26_N11
\clk_div_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(17));

-- Location: LCCOMB_X17_Y26_N12
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

-- Location: LCCOMB_X17_Y26_N28
\clk_div_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~5_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~36_combout\,
	combout => \clk_div_counter~5_combout\);

-- Location: FF_X17_Y26_N29
\clk_div_counter[18]\ : dffeas
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
	q => clk_div_counter(18));

-- Location: LCCOMB_X17_Y26_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_div_counter(19) & (!\Add0~37\)) # (!clk_div_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_div_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X17_Y26_N26
\clk_div_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~4_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~38_combout\,
	combout => \clk_div_counter~4_combout\);

-- Location: FF_X17_Y26_N27
\clk_div_counter[19]\ : dffeas
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
	q => clk_div_counter(19));

-- Location: LCCOMB_X17_Y26_N16
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

-- Location: LCCOMB_X16_Y26_N16
\clk_div_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~3_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_div_counter~3_combout\);

-- Location: FF_X16_Y26_N17
\clk_div_counter[20]\ : dffeas
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
	q => clk_div_counter(20));

-- Location: LCCOMB_X17_Y26_N18
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

-- Location: LCCOMB_X16_Y26_N20
\clk_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~2_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_div_counter~2_combout\);

-- Location: FF_X16_Y26_N21
\clk_div_counter[21]\ : dffeas
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
	q => clk_div_counter(21));

-- Location: LCCOMB_X17_Y26_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_div_counter(22) & (\Add0~43\ $ (GND))) # (!clk_div_counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_div_counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X16_Y26_N12
\clk_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~1_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_div_counter~1_combout\);

-- Location: FF_X16_Y26_N13
\clk_div_counter[22]\ : dffeas
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
	q => clk_div_counter(22));

-- Location: LCCOMB_X16_Y26_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_div_counter(22) & (clk_div_counter(20) & (clk_div_counter(21) & clk_div_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(22),
	datab => clk_div_counter(20),
	datac => clk_div_counter(21),
	datad => clk_div_counter(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y26_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_div_counter(23) & (!\Add0~45\)) # (!clk_div_counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_div_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X17_Y26_N23
\clk_div_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_counter(23));

-- Location: LCCOMB_X16_Y26_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_div_counter(12) & (clk_div_counter(13) & (clk_div_counter(11) & clk_div_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(12),
	datab => clk_div_counter(13),
	datac => clk_div_counter(11),
	datad => clk_div_counter(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y26_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_div_counter(15) & (!clk_div_counter(17) & (clk_div_counter(16) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(15),
	datab => clk_div_counter(17),
	datac => clk_div_counter(16),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y26_N18
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_div_counter(23) & (clk_div_counter(18) & (clk_div_counter(0) & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(23),
	datab => clk_div_counter(18),
	datac => clk_div_counter(0),
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X16_Y26_N4
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (clk_div_counter(1) & (clk_div_counter(24) & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(1),
	datab => clk_div_counter(24),
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y27_N4
\clk_div_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~11_combout\ = (\Add0~12_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~12_combout\,
	combout => \clk_div_counter~11_combout\);

-- Location: FF_X17_Y27_N5
\clk_div_counter[6]\ : dffeas
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
	q => clk_div_counter(6));

-- Location: LCCOMB_X17_Y27_N0
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_div_counter(6) & (clk_div_counter(4) & (clk_div_counter(3) & clk_div_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div_counter(6),
	datab => clk_div_counter(4),
	datac => clk_div_counter(3),
	datad => clk_div_counter(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X16_Y26_N24
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (clk_div_counter(2) & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => clk_div_counter(2),
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y26_N24
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!clk_div_counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_div_counter(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X16_Y26_N0
\clk_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_counter~0_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \clk_div_counter~0_combout\);

-- Location: FF_X16_Y26_N1
\clk_div_counter[24]\ : dffeas
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
	q => clk_div_counter(24));

-- Location: CLKCTRL_G13
\clk_div_counter[24]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_counter[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_counter[24]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\p~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: LCCOMB_X2_Y25_N26
\nextState.s19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nextState.s19~0_combout\ = (\presentState.s18~q\ & \p~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s18~q\,
	datac => \p~input_o\,
	combout => \nextState.s19~0_combout\);

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

-- Location: FF_X2_Y25_N27
\presentState.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \nextState.s19~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s19~q\);

-- Location: LCCOMB_X2_Y25_N22
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\presentState.s1~q\) # ((!\p~input_o\ & \presentState.s19~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s1~q\,
	datac => \p~input_o\,
	datad => \presentState.s19~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y25_N23
\presentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s2~q\);

-- Location: LCCOMB_X1_Y25_N10
\presentState.s3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s3~feeder_combout\ = \presentState.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s2~q\,
	combout => \presentState.s3~feeder_combout\);

-- Location: FF_X1_Y25_N11
\presentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s3~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s3~q\);

-- Location: FF_X1_Y26_N9
\presentState.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	asdata => \presentState.s3~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s4~q\);

-- Location: LCCOMB_X1_Y26_N24
\presentState.s5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s5~feeder_combout\ = \presentState.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s4~q\,
	combout => \presentState.s5~feeder_combout\);

-- Location: FF_X1_Y26_N25
\presentState.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s5~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s5~q\);

-- Location: LCCOMB_X1_Y26_N10
\presentState.s6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s6~feeder_combout\ = \presentState.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s5~q\,
	combout => \presentState.s6~feeder_combout\);

-- Location: FF_X1_Y26_N11
\presentState.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s6~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s6~q\);

-- Location: LCCOMB_X1_Y26_N12
\presentState.s7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s7~feeder_combout\ = \presentState.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s6~q\,
	combout => \presentState.s7~feeder_combout\);

-- Location: FF_X1_Y26_N13
\presentState.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s7~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s7~q\);

-- Location: LCCOMB_X1_Y26_N22
\presentState.s8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s8~feeder_combout\ = \presentState.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s7~q\,
	combout => \presentState.s8~feeder_combout\);

-- Location: FF_X1_Y26_N23
\presentState.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s8~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s8~q\);

-- Location: LCCOMB_X1_Y26_N28
\presentState.s9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s9~feeder_combout\ = \presentState.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s8~q\,
	combout => \presentState.s9~feeder_combout\);

-- Location: FF_X1_Y26_N29
\presentState.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s9~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s9~q\);

-- Location: LCCOMB_X1_Y26_N2
\presentState.s10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s10~feeder_combout\ = \presentState.s9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s9~q\,
	combout => \presentState.s10~feeder_combout\);

-- Location: FF_X1_Y26_N3
\presentState.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s10~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s10~q\);

-- Location: LCCOMB_X1_Y26_N14
\presentState.s11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s11~feeder_combout\ = \presentState.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s10~q\,
	combout => \presentState.s11~feeder_combout\);

-- Location: FF_X1_Y26_N15
\presentState.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s11~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s11~q\);

-- Location: LCCOMB_X2_Y26_N4
\presentState.s12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s12~feeder_combout\ = \presentState.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s11~q\,
	combout => \presentState.s12~feeder_combout\);

-- Location: FF_X2_Y26_N5
\presentState.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s12~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s12~q\);

-- Location: LCCOMB_X1_Y26_N26
\presentState.s13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s13~feeder_combout\ = \presentState.s12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s12~q\,
	combout => \presentState.s13~feeder_combout\);

-- Location: FF_X1_Y26_N27
\presentState.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s13~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s13~q\);

-- Location: LCCOMB_X1_Y26_N20
\presentState.s14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s14~feeder_combout\ = \presentState.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s13~q\,
	combout => \presentState.s14~feeder_combout\);

-- Location: FF_X1_Y26_N21
\presentState.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s14~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s14~q\);

-- Location: LCCOMB_X1_Y26_N6
\presentState.s15~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s15~feeder_combout\ = \presentState.s14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s14~q\,
	combout => \presentState.s15~feeder_combout\);

-- Location: FF_X1_Y26_N7
\presentState.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s15~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s15~q\);

-- Location: LCCOMB_X1_Y26_N30
\presentState.s16~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s16~feeder_combout\ = \presentState.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s15~q\,
	combout => \presentState.s16~feeder_combout\);

-- Location: FF_X1_Y26_N31
\presentState.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s16~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s16~q\);

-- Location: LCCOMB_X1_Y25_N12
\presentState.s17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s17~feeder_combout\ = \presentState.s16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s16~q\,
	combout => \presentState.s17~feeder_combout\);

-- Location: FF_X1_Y25_N13
\presentState.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s17~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s17~q\);

-- Location: LCCOMB_X2_Y25_N0
\presentState.s18~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \presentState.s18~feeder_combout\ = \presentState.s17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \presentState.s17~q\,
	combout => \presentState.s18~feeder_combout\);

-- Location: FF_X2_Y25_N1
\presentState.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \presentState.s18~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s18~q\);

-- Location: LCCOMB_X2_Y25_N8
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\p~input_o\ & (((\presentState.s0~q\ & !\presentState.s19~q\)))) # (!\p~input_o\ & (!\presentState.s18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \presentState.s18~q\,
	datac => \presentState.s0~q\,
	datad => \presentState.s19~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X2_Y25_N9
\presentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s0~q\);

-- Location: LCCOMB_X2_Y25_N12
\nextState.s1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nextState.s1~0_combout\ = (!\p~input_o\ & !\presentState.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p~input_o\,
	datad => \presentState.s0~q\,
	combout => \nextState.s1~0_combout\);

-- Location: FF_X2_Y25_N13
\presentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \nextState.s1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.s1~q\);

-- Location: LCCOMB_X2_Y25_N24
\LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\presentState.s1~q\) # (\presentState.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s1~q\,
	datad => \presentState.s19~q\,
	combout => \LED~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\LED~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (\presentState.s18~q\) # (\presentState.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s18~q\,
	datad => \presentState.s2~q\,
	combout => \LED~1_combout\);

-- Location: LCCOMB_X1_Y25_N18
\LED~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~2_combout\ = (\presentState.s3~q\) # (\presentState.s17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s3~q\,
	datad => \presentState.s17~q\,
	combout => \LED~2_combout\);

-- Location: LCCOMB_X1_Y25_N24
\LED~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (\presentState.s16~q\) # (\presentState.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s16~q\,
	datad => \presentState.s4~q\,
	combout => \LED~3_combout\);

-- Location: LCCOMB_X1_Y26_N4
\LED~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~4_combout\ = (\presentState.s15~q\) # (\presentState.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s15~q\,
	datad => \presentState.s5~q\,
	combout => \LED~4_combout\);

-- Location: LCCOMB_X1_Y26_N18
\LED~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~5_combout\ = (\presentState.s6~q\) # (\presentState.s14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s6~q\,
	datad => \presentState.s14~q\,
	combout => \LED~5_combout\);

-- Location: LCCOMB_X1_Y26_N16
\LED~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~6_combout\ = (\presentState.s13~q\) # (\presentState.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \presentState.s13~q\,
	datad => \presentState.s7~q\,
	combout => \LED~6_combout\);

-- Location: LCCOMB_X1_Y26_N8
\LED~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~7_combout\ = (\presentState.s8~q\) # (\presentState.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s8~q\,
	datad => \presentState.s12~q\,
	combout => \LED~7_combout\);

-- Location: LCCOMB_X1_Y26_N0
\LED~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~8_combout\ = (\presentState.s9~q\) # (\presentState.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \presentState.s9~q\,
	datac => \presentState.s11~q\,
	combout => \LED~8_combout\);

-- Location: LCCOMB_X2_Y25_N30
\score~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score~10_combout\ = (\presentState.s19~q\ & (!\p~input_o\ & ((\dec1|Equal15~0_combout\) # (!score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s19~q\,
	datab => \p~input_o\,
	datac => score(0),
	datad => \dec1|Equal15~0_combout\,
	combout => \score~10_combout\);

-- Location: LCCOMB_X2_Y25_N16
\score[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[0]~6_combout\ = (\presentState.s19~q\) # ((!\p~input_o\ & \presentState.s18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p~input_o\,
	datac => \presentState.s19~q\,
	datad => \presentState.s18~q\,
	combout => \score[0]~6_combout\);

-- Location: FF_X2_Y25_N31
\score[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \score~10_combout\,
	clrn => \reset~input_o\,
	ena => \score[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(0));

-- Location: LCCOMB_X2_Y25_N14
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\p~input_o\ & \presentState.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p~input_o\,
	datad => \presentState.s19~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X2_Y25_N20
\score~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score~7_combout\ = (\Selector1~1_combout\ & (!\dec1|Equal15~0_combout\ & (score(0) $ (score(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(0),
	datab => \Selector1~1_combout\,
	datac => score(1),
	datad => \dec1|Equal15~0_combout\,
	combout => \score~7_combout\);

-- Location: FF_X2_Y25_N21
\score[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \score~7_combout\,
	clrn => \reset~input_o\,
	ena => \score[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(1));

-- Location: LCCOMB_X3_Y25_N12
\score~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score~8_combout\ = score(3) $ (((score(2) & (score(1) & score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(3),
	datac => score(1),
	datad => score(0),
	combout => \score~8_combout\);

-- Location: LCCOMB_X3_Y25_N4
\score~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score~11_combout\ = (\presentState.s19~q\ & (!\p~input_o\ & \score~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s19~q\,
	datac => \p~input_o\,
	datad => \score~8_combout\,
	combout => \score~11_combout\);

-- Location: FF_X3_Y25_N5
\score[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \score~11_combout\,
	clrn => \reset~input_o\,
	ena => \score[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(3));

-- Location: LCCOMB_X2_Y25_N18
\dec1|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Equal15~0_combout\ = (!score(1) & (!score(2) & (score(0) & score(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(1),
	datab => score(2),
	datac => score(0),
	datad => score(3),
	combout => \dec1|Equal15~0_combout\);

-- Location: LCCOMB_X2_Y25_N28
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = score(2) $ (((score(0) & score(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datac => score(0),
	datad => score(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X2_Y25_N10
\score~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score~9_combout\ = (\presentState.s19~q\ & (!\p~input_o\ & (!\dec1|Equal15~0_combout\ & \Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.s19~q\,
	datab => \p~input_o\,
	datac => \dec1|Equal15~0_combout\,
	datad => \Add1~0_combout\,
	combout => \score~9_combout\);

-- Location: FF_X2_Y25_N11
\score[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_counter[24]~clkctrl_outclk\,
	d => \score~9_combout\,
	clrn => \reset~input_o\,
	ena => \score[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(2));

-- Location: LCCOMB_X3_Y25_N6
\dec1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~0_combout\ = (score(2) & (!score(1) & (score(3) $ (!score(0))))) # (!score(2) & (score(0) & (score(1) $ (!score(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X3_Y25_N24
\dec1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[1]~1_combout\ = (score(1) & ((score(0) & ((score(3)))) # (!score(0) & (score(2))))) # (!score(1) & (score(2) & (score(3) $ (score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X3_Y25_N2
\dec1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~2_combout\ = (score(2) & (score(3) & ((score(1)) # (!score(0))))) # (!score(2) & (score(1) & (!score(3) & !score(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X3_Y25_N28
\dec1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[3]~3_combout\ = (score(1) & ((score(2) & ((score(0)))) # (!score(2) & (score(3) & !score(0))))) # (!score(1) & (!score(3) & (score(2) $ (score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X3_Y25_N22
\dec1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[4]~4_combout\ = (score(1) & (((!score(3) & score(0))))) # (!score(1) & ((score(2) & (!score(3))) # (!score(2) & ((score(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X3_Y25_N0
\dec1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[5]~5_combout\ = (score(2) & (score(0) & (score(1) $ (score(3))))) # (!score(2) & (!score(3) & ((score(1)) # (score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
	combout => \dec1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X3_Y25_N10
\dec1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~6_combout\ = (score(0) & ((score(3)) # (score(2) $ (score(1))))) # (!score(0) & ((score(1)) # (score(2) $ (score(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => score(1),
	datac => score(3),
	datad => score(0),
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

ww_HEX(0) <= \HEX[0]~output_o\;

ww_HEX(1) <= \HEX[1]~output_o\;

ww_HEX(2) <= \HEX[2]~output_o\;

ww_HEX(3) <= \HEX[3]~output_o\;

ww_HEX(4) <= \HEX[4]~output_o\;

ww_HEX(5) <= \HEX[5]~output_o\;

ww_HEX(6) <= \HEX[6]~output_o\;

ww_HEX(7) <= \HEX[7]~output_o\;
END structure;


