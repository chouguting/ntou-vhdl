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

-- DATE "12/16/2021 17:17:25"

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

ENTITY 	rgb_light_setting_by_switch IS
    PORT (
	brightness_in : IN std_logic_vector(7 DOWNTO 0);
	choose_reg : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	R_led : OUT std_logic;
	G_led : OUT std_logic;
	B_led : OUT std_logic;
	hex0 : OUT std_logic_vector(7 DOWNTO 0);
	hex1 : OUT std_logic_vector(7 DOWNTO 0)
	);
END rgb_light_setting_by_switch;

-- Design Ports Information
-- R_led	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G_led	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B_led	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- choose_reg[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- choose_reg[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- brightness_in[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rgb_light_setting_by_switch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_brightness_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_choose_reg : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_R_led : std_logic;
SIGNAL ww_G_led : std_logic;
SIGNAL ww_B_led : std_logic;
SIGNAL ww_hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \div_counter[8]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_led~output_o\ : std_logic;
SIGNAL \G_led~output_o\ : std_logic;
SIGNAL \B_led~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_counter[0]~24_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \div_counter[1]~8_combout\ : std_logic;
SIGNAL \div_counter[1]~9\ : std_logic;
SIGNAL \div_counter[2]~10_combout\ : std_logic;
SIGNAL \div_counter[2]~11\ : std_logic;
SIGNAL \div_counter[3]~12_combout\ : std_logic;
SIGNAL \div_counter[3]~13\ : std_logic;
SIGNAL \div_counter[4]~14_combout\ : std_logic;
SIGNAL \div_counter[4]~15\ : std_logic;
SIGNAL \div_counter[5]~16_combout\ : std_logic;
SIGNAL \div_counter[5]~17\ : std_logic;
SIGNAL \div_counter[6]~18_combout\ : std_logic;
SIGNAL \div_counter[6]~19\ : std_logic;
SIGNAL \div_counter[7]~20_combout\ : std_logic;
SIGNAL \div_counter[7]~21\ : std_logic;
SIGNAL \div_counter[8]~22_combout\ : std_logic;
SIGNAL \div_counter[8]~clkctrl_outclk\ : std_logic;
SIGNAL \brightness_in[7]~input_o\ : std_logic;
SIGNAL \choose_reg[1]~input_o\ : std_logic;
SIGNAL \choose_reg[0]~input_o\ : std_logic;
SIGNAL \mux_out[3]~22_combout\ : std_logic;
SIGNAL \light_counter[0]~21_combout\ : std_logic;
SIGNAL \light_counter[1]~7_combout\ : std_logic;
SIGNAL \light_counter[1]~8\ : std_logic;
SIGNAL \light_counter[2]~9_combout\ : std_logic;
SIGNAL \light_counter[2]~10\ : std_logic;
SIGNAL \light_counter[3]~11_combout\ : std_logic;
SIGNAL \light_counter[3]~12\ : std_logic;
SIGNAL \light_counter[4]~13_combout\ : std_logic;
SIGNAL \light_counter[4]~14\ : std_logic;
SIGNAL \light_counter[5]~15_combout\ : std_logic;
SIGNAL \light_counter[5]~16\ : std_logic;
SIGNAL \light_counter[6]~17_combout\ : std_logic;
SIGNAL \light_counter[6]~18\ : std_logic;
SIGNAL \light_counter[7]~19_combout\ : std_logic;
SIGNAL \brightness_in[6]~input_o\ : std_logic;
SIGNAL \brightness_in[5]~input_o\ : std_logic;
SIGNAL \brightness_in[4]~input_o\ : std_logic;
SIGNAL \brightness_in[3]~input_o\ : std_logic;
SIGNAL \brightness_in[2]~input_o\ : std_logic;
SIGNAL \brightness_in[1]~input_o\ : std_logic;
SIGNAL \brightness_in[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \mux_out[1]~16_combout\ : std_logic;
SIGNAL \mux_out[1]~25_combout\ : std_logic;
SIGNAL \mux_out[0]~12_combout\ : std_logic;
SIGNAL \mux_out[0]~23_combout\ : std_logic;
SIGNAL \mux_out[3]~14_combout\ : std_logic;
SIGNAL \mux_out[3]~15_combout\ : std_logic;
SIGNAL \mux_out[2]~13_combout\ : std_logic;
SIGNAL \mux_out[2]~24_combout\ : std_logic;
SIGNAL \dec0|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec0|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec0|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec0|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec0|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec0|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec0|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \mux_out[4]~17_combout\ : std_logic;
SIGNAL \mux_out[4]~26_combout\ : std_logic;
SIGNAL \mux_out[7]~19_combout\ : std_logic;
SIGNAL \mux_out[7]~20_combout\ : std_logic;
SIGNAL \mux_out[5]~21_combout\ : std_logic;
SIGNAL \mux_out[5]~28_combout\ : std_logic;
SIGNAL \mux_out[6]~18_combout\ : std_logic;
SIGNAL \mux_out[6]~27_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \dec1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \dec1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \dec1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL reg_R : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_G : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_B : std_logic_vector(7 DOWNTO 0);
SIGNAL light_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL div_counter : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

ww_brightness_in <= brightness_in;
ww_choose_reg <= choose_reg;
ww_clk <= clk;
ww_reset <= reset;
R_led <= ww_R_led;
G_led <= ww_G_led;
B_led <= ww_B_led;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div_counter[8]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & div_counter(8));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan2~14_combout\ <= NOT \LessThan2~14_combout\;
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;

-- Location: IOOBUF_X37_Y0_N23
\R_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \R_led~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\G_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan1~14_combout\,
	devoe => ww_devoe,
	o => \G_led~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\B_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan2~14_combout\,
	devoe => ww_devoe,
	o => \B_led~output_o\);

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

-- Location: LCCOMB_X19_Y28_N6
\div_counter[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[0]~24_combout\ = !div_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => div_counter(0),
	combout => \div_counter[0]~24_combout\);

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

-- Location: FF_X19_Y28_N7
\div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[0]~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(0));

-- Location: LCCOMB_X19_Y28_N14
\div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[1]~8_combout\ = (div_counter(0) & (div_counter(1) $ (VCC))) # (!div_counter(0) & (div_counter(1) & VCC))
-- \div_counter[1]~9\ = CARRY((div_counter(0) & div_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(0),
	datab => div_counter(1),
	datad => VCC,
	combout => \div_counter[1]~8_combout\,
	cout => \div_counter[1]~9\);

-- Location: FF_X19_Y28_N15
\div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[1]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(1));

-- Location: LCCOMB_X19_Y28_N16
\div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[2]~10_combout\ = (div_counter(2) & (!\div_counter[1]~9\)) # (!div_counter(2) & ((\div_counter[1]~9\) # (GND)))
-- \div_counter[2]~11\ = CARRY((!\div_counter[1]~9\) # (!div_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(2),
	datad => VCC,
	cin => \div_counter[1]~9\,
	combout => \div_counter[2]~10_combout\,
	cout => \div_counter[2]~11\);

-- Location: FF_X19_Y28_N17
\div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(2));

-- Location: LCCOMB_X19_Y28_N18
\div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[3]~12_combout\ = (div_counter(3) & (\div_counter[2]~11\ $ (GND))) # (!div_counter(3) & (!\div_counter[2]~11\ & VCC))
-- \div_counter[3]~13\ = CARRY((div_counter(3) & !\div_counter[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(3),
	datad => VCC,
	cin => \div_counter[2]~11\,
	combout => \div_counter[3]~12_combout\,
	cout => \div_counter[3]~13\);

-- Location: FF_X19_Y28_N19
\div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(3));

-- Location: LCCOMB_X19_Y28_N20
\div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[4]~14_combout\ = (div_counter(4) & (!\div_counter[3]~13\)) # (!div_counter(4) & ((\div_counter[3]~13\) # (GND)))
-- \div_counter[4]~15\ = CARRY((!\div_counter[3]~13\) # (!div_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(4),
	datad => VCC,
	cin => \div_counter[3]~13\,
	combout => \div_counter[4]~14_combout\,
	cout => \div_counter[4]~15\);

-- Location: FF_X19_Y28_N21
\div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(4));

-- Location: LCCOMB_X19_Y28_N22
\div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[5]~16_combout\ = (div_counter(5) & (\div_counter[4]~15\ $ (GND))) # (!div_counter(5) & (!\div_counter[4]~15\ & VCC))
-- \div_counter[5]~17\ = CARRY((div_counter(5) & !\div_counter[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(5),
	datad => VCC,
	cin => \div_counter[4]~15\,
	combout => \div_counter[5]~16_combout\,
	cout => \div_counter[5]~17\);

-- Location: FF_X19_Y28_N23
\div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(5));

-- Location: LCCOMB_X19_Y28_N24
\div_counter[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[6]~18_combout\ = (div_counter(6) & (!\div_counter[5]~17\)) # (!div_counter(6) & ((\div_counter[5]~17\) # (GND)))
-- \div_counter[6]~19\ = CARRY((!\div_counter[5]~17\) # (!div_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(6),
	datad => VCC,
	cin => \div_counter[5]~17\,
	combout => \div_counter[6]~18_combout\,
	cout => \div_counter[6]~19\);

-- Location: FF_X19_Y28_N25
\div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[6]~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(6));

-- Location: LCCOMB_X19_Y28_N26
\div_counter[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[7]~20_combout\ = (div_counter(7) & (\div_counter[6]~19\ $ (GND))) # (!div_counter(7) & (!\div_counter[6]~19\ & VCC))
-- \div_counter[7]~21\ = CARRY((div_counter(7) & !\div_counter[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(7),
	datad => VCC,
	cin => \div_counter[6]~19\,
	combout => \div_counter[7]~20_combout\,
	cout => \div_counter[7]~21\);

-- Location: FF_X19_Y28_N27
\div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[7]~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(7));

-- Location: LCCOMB_X19_Y28_N28
\div_counter[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[8]~22_combout\ = div_counter(8) $ (\div_counter[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(8),
	cin => \div_counter[7]~21\,
	combout => \div_counter[8]~22_combout\);

-- Location: FF_X19_Y28_N29
\div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[8]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(8));

-- Location: CLKCTRL_G11
\div_counter[8]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_counter[8]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_counter[8]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N8
\brightness_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(7),
	o => \brightness_in[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\choose_reg[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_choose_reg(1),
	o => \choose_reg[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\choose_reg[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_choose_reg(0),
	o => \choose_reg[0]~input_o\);

-- Location: LCCOMB_X16_Y26_N6
\mux_out[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[3]~22_combout\ = (!\choose_reg[1]~input_o\ & !\choose_reg[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \choose_reg[1]~input_o\,
	datad => \choose_reg[0]~input_o\,
	combout => \mux_out[3]~22_combout\);

-- Location: FF_X17_Y26_N31
\reg_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(7));

-- Location: LCCOMB_X17_Y26_N14
\light_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[0]~21_combout\ = !light_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => light_counter(0),
	combout => \light_counter[0]~21_combout\);

-- Location: FF_X17_Y26_N15
\light_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(0));

-- Location: LCCOMB_X17_Y26_N0
\light_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[1]~7_combout\ = (light_counter(0) & (light_counter(1) $ (VCC))) # (!light_counter(0) & (light_counter(1) & VCC))
-- \light_counter[1]~8\ = CARRY((light_counter(0) & light_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(0),
	datab => light_counter(1),
	datad => VCC,
	combout => \light_counter[1]~7_combout\,
	cout => \light_counter[1]~8\);

-- Location: FF_X17_Y26_N1
\light_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(1));

-- Location: LCCOMB_X17_Y26_N2
\light_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[2]~9_combout\ = (light_counter(2) & (!\light_counter[1]~8\)) # (!light_counter(2) & ((\light_counter[1]~8\) # (GND)))
-- \light_counter[2]~10\ = CARRY((!\light_counter[1]~8\) # (!light_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => light_counter(2),
	datad => VCC,
	cin => \light_counter[1]~8\,
	combout => \light_counter[2]~9_combout\,
	cout => \light_counter[2]~10\);

-- Location: FF_X17_Y26_N3
\light_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(2));

-- Location: LCCOMB_X17_Y26_N4
\light_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[3]~11_combout\ = (light_counter(3) & (\light_counter[2]~10\ $ (GND))) # (!light_counter(3) & (!\light_counter[2]~10\ & VCC))
-- \light_counter[3]~12\ = CARRY((light_counter(3) & !\light_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => light_counter(3),
	datad => VCC,
	cin => \light_counter[2]~10\,
	combout => \light_counter[3]~11_combout\,
	cout => \light_counter[3]~12\);

-- Location: FF_X17_Y26_N5
\light_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(3));

-- Location: LCCOMB_X17_Y26_N6
\light_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[4]~13_combout\ = (light_counter(4) & (!\light_counter[3]~12\)) # (!light_counter(4) & ((\light_counter[3]~12\) # (GND)))
-- \light_counter[4]~14\ = CARRY((!\light_counter[3]~12\) # (!light_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(4),
	datad => VCC,
	cin => \light_counter[3]~12\,
	combout => \light_counter[4]~13_combout\,
	cout => \light_counter[4]~14\);

-- Location: FF_X17_Y26_N7
\light_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(4));

-- Location: LCCOMB_X17_Y26_N8
\light_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[5]~15_combout\ = (light_counter(5) & (\light_counter[4]~14\ $ (GND))) # (!light_counter(5) & (!\light_counter[4]~14\ & VCC))
-- \light_counter[5]~16\ = CARRY((light_counter(5) & !\light_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => light_counter(5),
	datad => VCC,
	cin => \light_counter[4]~14\,
	combout => \light_counter[5]~15_combout\,
	cout => \light_counter[5]~16\);

-- Location: FF_X17_Y26_N9
\light_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(5));

-- Location: LCCOMB_X17_Y26_N10
\light_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[6]~17_combout\ = (light_counter(6) & (!\light_counter[5]~16\)) # (!light_counter(6) & ((\light_counter[5]~16\) # (GND)))
-- \light_counter[6]~18\ = CARRY((!\light_counter[5]~16\) # (!light_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(6),
	datad => VCC,
	cin => \light_counter[5]~16\,
	combout => \light_counter[6]~17_combout\,
	cout => \light_counter[6]~18\);

-- Location: FF_X17_Y26_N11
\light_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(6));

-- Location: LCCOMB_X17_Y26_N12
\light_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_counter[7]~19_combout\ = \light_counter[6]~18\ $ (!light_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => light_counter(7),
	cin => \light_counter[6]~18\,
	combout => \light_counter[7]~19_combout\);

-- Location: FF_X17_Y26_N13
\light_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \light_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => light_counter(7));

-- Location: IOIBUF_X0_Y25_N15
\brightness_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(6),
	o => \brightness_in[6]~input_o\);

-- Location: FF_X17_Y26_N29
\reg_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(6));

-- Location: IOIBUF_X0_Y22_N15
\brightness_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(5),
	o => \brightness_in[5]~input_o\);

-- Location: FF_X17_Y26_N27
\reg_R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(5));

-- Location: IOIBUF_X0_Y27_N22
\brightness_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(4),
	o => \brightness_in[4]~input_o\);

-- Location: FF_X17_Y26_N25
\reg_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(4));

-- Location: IOIBUF_X0_Y23_N8
\brightness_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(3),
	o => \brightness_in[3]~input_o\);

-- Location: FF_X17_Y26_N23
\reg_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(3));

-- Location: IOIBUF_X0_Y25_N22
\brightness_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(2),
	o => \brightness_in[2]~input_o\);

-- Location: FF_X17_Y26_N21
\reg_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(2));

-- Location: IOIBUF_X0_Y27_N1
\brightness_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(1),
	o => \brightness_in[1]~input_o\);

-- Location: FF_X17_Y26_N19
\reg_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(1));

-- Location: IOIBUF_X0_Y24_N1
\brightness_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness_in(0),
	o => \brightness_in[0]~input_o\);

-- Location: FF_X17_Y26_N17
\reg_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \mux_out[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_R(0));

-- Location: LCCOMB_X17_Y26_N16
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((reg_R(0) & !light_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_R(0),
	datab => light_counter(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X17_Y26_N18
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((light_counter(1) & ((!\LessThan0~1_cout\) # (!reg_R(1)))) # (!light_counter(1) & (!reg_R(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(1),
	datab => reg_R(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y26_N20
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((light_counter(2) & (reg_R(2) & !\LessThan0~3_cout\)) # (!light_counter(2) & ((reg_R(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(2),
	datab => reg_R(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y26_N22
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((reg_R(3) & (light_counter(3) & !\LessThan0~5_cout\)) # (!reg_R(3) & ((light_counter(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_R(3),
	datab => light_counter(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X17_Y26_N24
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((light_counter(4) & (reg_R(4) & !\LessThan0~7_cout\)) # (!light_counter(4) & ((reg_R(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(4),
	datab => reg_R(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y26_N26
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((reg_R(5) & (light_counter(5) & !\LessThan0~9_cout\)) # (!reg_R(5) & ((light_counter(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_R(5),
	datab => light_counter(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X17_Y26_N28
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((light_counter(6) & (reg_R(6) & !\LessThan0~11_cout\)) # (!light_counter(6) & ((reg_R(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(6),
	datab => reg_R(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X17_Y26_N30
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (reg_R(7) & ((\LessThan0~13_cout\) # (!light_counter(7)))) # (!reg_R(7) & (\LessThan0~13_cout\ & !light_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_R(7),
	datad => light_counter(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X16_Y26_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\choose_reg[1]~input_o\ & \choose_reg[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \choose_reg[1]~input_o\,
	datad => \choose_reg[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X19_Y26_N29
\reg_G[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(7));

-- Location: FF_X19_Y26_N3
\reg_G[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(6));

-- Location: FF_X19_Y26_N1
\reg_G[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(5));

-- Location: FF_X19_Y26_N31
\reg_G[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(4));

-- Location: FF_X19_Y26_N5
\reg_G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(3));

-- Location: FF_X19_Y26_N11
\reg_G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(2));

-- Location: FF_X19_Y26_N21
\reg_G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(1));

-- Location: FF_X19_Y26_N27
\reg_G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_G(0));

-- Location: LCCOMB_X20_Y26_N16
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((reg_G(0) & !light_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(0),
	datab => light_counter(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X20_Y26_N18
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((light_counter(1) & ((!\LessThan1~1_cout\) # (!reg_G(1)))) # (!light_counter(1) & (!reg_G(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(1),
	datab => reg_G(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X20_Y26_N20
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((light_counter(2) & (reg_G(2) & !\LessThan1~3_cout\)) # (!light_counter(2) & ((reg_G(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(2),
	datab => reg_G(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X20_Y26_N22
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((reg_G(3) & (light_counter(3) & !\LessThan1~5_cout\)) # (!reg_G(3) & ((light_counter(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(3),
	datab => light_counter(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X20_Y26_N24
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((reg_G(4) & ((!\LessThan1~7_cout\) # (!light_counter(4)))) # (!reg_G(4) & (!light_counter(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(4),
	datab => light_counter(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X20_Y26_N26
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((reg_G(5) & (light_counter(5) & !\LessThan1~9_cout\)) # (!reg_G(5) & ((light_counter(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(5),
	datab => light_counter(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X20_Y26_N28
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((reg_G(6) & ((!\LessThan1~11_cout\) # (!light_counter(6)))) # (!reg_G(6) & (!light_counter(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(6),
	datab => light_counter(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X20_Y26_N30
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (reg_G(7) & ((\LessThan1~13_cout\) # (!light_counter(7)))) # (!reg_G(7) & (!light_counter(7) & \LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_G(7),
	datab => light_counter(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X16_Y26_N20
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\choose_reg[1]~input_o\ & !\choose_reg[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \choose_reg[1]~input_o\,
	datad => \choose_reg[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: FF_X19_Y26_N25
\reg_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(7));

-- Location: FF_X19_Y26_N7
\reg_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(6));

-- Location: FF_X19_Y26_N9
\reg_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(5));

-- Location: FF_X19_Y26_N15
\reg_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(4));

-- Location: FF_X19_Y26_N17
\reg_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(3));

-- Location: FF_X19_Y26_N19
\reg_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(2));

-- Location: FF_X19_Y26_N13
\reg_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(1));

-- Location: FF_X19_Y26_N23
\reg_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	asdata => \brightness_in[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_B(0));

-- Location: LCCOMB_X20_Y26_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!light_counter(0) & reg_B(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(0),
	datab => reg_B(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y26_N2
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((reg_B(1) & (light_counter(1) & !\LessThan2~1_cout\)) # (!reg_B(1) & ((light_counter(1)) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_B(1),
	datab => light_counter(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y26_N4
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((light_counter(2) & (reg_B(2) & !\LessThan2~3_cout\)) # (!light_counter(2) & ((reg_B(2)) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(2),
	datab => reg_B(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X20_Y26_N6
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((reg_B(3) & (light_counter(3) & !\LessThan2~5_cout\)) # (!reg_B(3) & ((light_counter(3)) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_B(3),
	datab => light_counter(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X20_Y26_N8
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((reg_B(4) & ((!\LessThan2~7_cout\) # (!light_counter(4)))) # (!reg_B(4) & (!light_counter(4) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_B(4),
	datab => light_counter(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y26_N10
\LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((reg_B(5) & (light_counter(5) & !\LessThan2~9_cout\)) # (!reg_B(5) & ((light_counter(5)) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_B(5),
	datab => light_counter(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X20_Y26_N12
\LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((light_counter(6) & (reg_B(6) & !\LessThan2~11_cout\)) # (!light_counter(6) & ((reg_B(6)) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => light_counter(6),
	datab => reg_B(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X20_Y26_N14
\LessThan2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (light_counter(7) & (\LessThan2~13_cout\ & reg_B(7))) # (!light_counter(7) & ((\LessThan2~13_cout\) # (reg_B(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => light_counter(7),
	datad => reg_B(7),
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X19_Y26_N12
\mux_out[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[1]~16_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(1))) # (!\choose_reg[1]~input_o\ & ((reg_R(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(1),
	datad => reg_R(1),
	combout => \mux_out[1]~16_combout\);

-- Location: LCCOMB_X19_Y26_N20
\mux_out[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[1]~25_combout\ = (\mux_out[1]~16_combout\) # ((!\choose_reg[1]~input_o\ & (\choose_reg[0]~input_o\ & reg_G(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(1),
	datad => \mux_out[1]~16_combout\,
	combout => \mux_out[1]~25_combout\);

-- Location: LCCOMB_X19_Y26_N22
\mux_out[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[0]~12_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(0))) # (!\choose_reg[1]~input_o\ & ((reg_R(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(0),
	datad => reg_R(0),
	combout => \mux_out[0]~12_combout\);

-- Location: LCCOMB_X19_Y26_N26
\mux_out[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[0]~23_combout\ = (\mux_out[0]~12_combout\) # ((\choose_reg[0]~input_o\ & (reg_G(0) & !\choose_reg[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[0]~12_combout\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(0),
	datad => \choose_reg[1]~input_o\,
	combout => \mux_out[0]~23_combout\);

-- Location: LCCOMB_X19_Y26_N4
\mux_out[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[3]~14_combout\ = (\choose_reg[1]~input_o\ & (\choose_reg[0]~input_o\)) # (!\choose_reg[1]~input_o\ & ((\choose_reg[0]~input_o\ & (!reg_G(3))) # (!\choose_reg[0]~input_o\ & ((!reg_R(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(3),
	datad => reg_R(3),
	combout => \mux_out[3]~14_combout\);

-- Location: LCCOMB_X19_Y26_N16
\mux_out[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[3]~15_combout\ = (\mux_out[3]~14_combout\) # ((!reg_B(3) & \choose_reg[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_out[3]~14_combout\,
	datac => reg_B(3),
	datad => \choose_reg[1]~input_o\,
	combout => \mux_out[3]~15_combout\);

-- Location: LCCOMB_X19_Y26_N18
\mux_out[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[2]~13_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(2))) # (!\choose_reg[1]~input_o\ & ((reg_R(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(2),
	datad => reg_R(2),
	combout => \mux_out[2]~13_combout\);

-- Location: LCCOMB_X19_Y26_N10
\mux_out[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[2]~24_combout\ = (\mux_out[2]~13_combout\) # ((!\choose_reg[1]~input_o\ & (\choose_reg[0]~input_o\ & reg_G(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(2),
	datad => \mux_out[2]~13_combout\,
	combout => \mux_out[2]~24_combout\);

-- Location: LCCOMB_X24_Y28_N4
\dec0|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[0]~0_combout\ = (\mux_out[3]~15_combout\ & (!\mux_out[1]~25_combout\ & (\mux_out[0]~23_combout\ $ (\mux_out[2]~24_combout\)))) # (!\mux_out[3]~15_combout\ & (\mux_out[0]~23_combout\ & (\mux_out[1]~25_combout\ $ 
-- (\mux_out[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\dec0|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[1]~1_combout\ = (\mux_out[1]~25_combout\ & ((\mux_out[0]~23_combout\ & (!\mux_out[3]~15_combout\)) # (!\mux_out[0]~23_combout\ & ((\mux_out[2]~24_combout\))))) # (!\mux_out[1]~25_combout\ & (\mux_out[2]~24_combout\ & 
-- (\mux_out[0]~23_combout\ $ (!\mux_out[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X24_Y28_N8
\dec0|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[2]~2_combout\ = (\mux_out[3]~15_combout\ & (\mux_out[1]~25_combout\ & (!\mux_out[0]~23_combout\ & !\mux_out[2]~24_combout\))) # (!\mux_out[3]~15_combout\ & (\mux_out[2]~24_combout\ & ((\mux_out[1]~25_combout\) # 
-- (!\mux_out[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X24_Y28_N22
\dec0|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[3]~3_combout\ = (\mux_out[1]~25_combout\ & ((\mux_out[0]~23_combout\ & ((\mux_out[2]~24_combout\))) # (!\mux_out[0]~23_combout\ & (!\mux_out[3]~15_combout\ & !\mux_out[2]~24_combout\)))) # (!\mux_out[1]~25_combout\ & 
-- (\mux_out[3]~15_combout\ & (\mux_out[0]~23_combout\ $ (\mux_out[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X24_Y28_N24
\dec0|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[4]~4_combout\ = (\mux_out[1]~25_combout\ & (\mux_out[0]~23_combout\ & (\mux_out[3]~15_combout\))) # (!\mux_out[1]~25_combout\ & ((\mux_out[2]~24_combout\ & ((\mux_out[3]~15_combout\))) # (!\mux_out[2]~24_combout\ & 
-- (\mux_out[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X24_Y28_N10
\dec0|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[5]~5_combout\ = (\mux_out[1]~25_combout\ & (\mux_out[3]~15_combout\ & ((\mux_out[0]~23_combout\) # (!\mux_out[2]~24_combout\)))) # (!\mux_out[1]~25_combout\ & (\mux_out[0]~23_combout\ & (\mux_out[3]~15_combout\ $ 
-- (\mux_out[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X24_Y28_N12
\dec0|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[6]~6_combout\ = (\mux_out[0]~23_combout\ & (\mux_out[3]~15_combout\ & (\mux_out[1]~25_combout\ $ (!\mux_out[2]~24_combout\)))) # (!\mux_out[0]~23_combout\ & (!\mux_out[1]~25_combout\ & (\mux_out[3]~15_combout\ $ 
-- (\mux_out[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[1]~25_combout\,
	datab => \mux_out[0]~23_combout\,
	datac => \mux_out[3]~15_combout\,
	datad => \mux_out[2]~24_combout\,
	combout => \dec0|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X19_Y26_N14
\mux_out[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[4]~17_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(4))) # (!\choose_reg[1]~input_o\ & ((reg_R(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(4),
	datad => reg_R(4),
	combout => \mux_out[4]~17_combout\);

-- Location: LCCOMB_X19_Y26_N30
\mux_out[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[4]~26_combout\ = (\mux_out[4]~17_combout\) # ((\choose_reg[0]~input_o\ & (reg_G(4) & !\choose_reg[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[0]~input_o\,
	datab => \mux_out[4]~17_combout\,
	datac => reg_G(4),
	datad => \choose_reg[1]~input_o\,
	combout => \mux_out[4]~26_combout\);

-- Location: LCCOMB_X19_Y26_N28
\mux_out[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[7]~19_combout\ = (\choose_reg[1]~input_o\ & (\choose_reg[0]~input_o\)) # (!\choose_reg[1]~input_o\ & ((\choose_reg[0]~input_o\ & (!reg_G(7))) # (!\choose_reg[0]~input_o\ & ((!reg_R(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(7),
	datad => reg_R(7),
	combout => \mux_out[7]~19_combout\);

-- Location: LCCOMB_X19_Y26_N24
\mux_out[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[7]~20_combout\ = (\mux_out[7]~19_combout\) # ((\choose_reg[1]~input_o\ & !reg_B(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datac => reg_B(7),
	datad => \mux_out[7]~19_combout\,
	combout => \mux_out[7]~20_combout\);

-- Location: LCCOMB_X19_Y26_N8
\mux_out[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[5]~21_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(5))) # (!\choose_reg[1]~input_o\ & ((reg_R(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(5),
	datad => reg_R(5),
	combout => \mux_out[5]~21_combout\);

-- Location: LCCOMB_X19_Y26_N0
\mux_out[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[5]~28_combout\ = (\mux_out[5]~21_combout\) # ((\choose_reg[0]~input_o\ & (reg_G(5) & !\choose_reg[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[0]~input_o\,
	datab => \mux_out[5]~21_combout\,
	datac => reg_G(5),
	datad => \choose_reg[1]~input_o\,
	combout => \mux_out[5]~28_combout\);

-- Location: LCCOMB_X19_Y26_N6
\mux_out[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[6]~18_combout\ = (!\choose_reg[0]~input_o\ & ((\choose_reg[1]~input_o\ & (reg_B(6))) # (!\choose_reg[1]~input_o\ & ((reg_R(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_B(6),
	datad => reg_R(6),
	combout => \mux_out[6]~18_combout\);

-- Location: LCCOMB_X19_Y26_N2
\mux_out[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out[6]~27_combout\ = (\mux_out[6]~18_combout\) # ((!\choose_reg[1]~input_o\ & (\choose_reg[0]~input_o\ & reg_G(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose_reg[1]~input_o\,
	datab => \choose_reg[0]~input_o\,
	datac => reg_G(6),
	datad => \mux_out[6]~18_combout\,
	combout => \mux_out[6]~27_combout\);

-- Location: LCCOMB_X23_Y28_N16
\dec1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~0_combout\ = (\mux_out[7]~20_combout\ & (!\mux_out[5]~28_combout\ & (\mux_out[4]~26_combout\ $ (\mux_out[6]~27_combout\)))) # (!\mux_out[7]~20_combout\ & (\mux_out[4]~26_combout\ & (\mux_out[5]~28_combout\ $ 
-- (\mux_out[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\dec1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[1]~1_combout\ = (\mux_out[7]~20_combout\ & (\mux_out[6]~27_combout\ & (\mux_out[4]~26_combout\ $ (\mux_out[5]~28_combout\)))) # (!\mux_out[7]~20_combout\ & ((\mux_out[4]~26_combout\ & (\mux_out[5]~28_combout\)) # 
-- (!\mux_out[4]~26_combout\ & ((\mux_out[6]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X23_Y28_N24
\dec1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~2_combout\ = (\mux_out[7]~20_combout\ & (!\mux_out[4]~26_combout\ & (\mux_out[5]~28_combout\ & !\mux_out[6]~27_combout\))) # (!\mux_out[7]~20_combout\ & (\mux_out[6]~27_combout\ & ((\mux_out[5]~28_combout\) # 
-- (!\mux_out[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X23_Y28_N10
\dec1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[3]~3_combout\ = (\mux_out[5]~28_combout\ & ((\mux_out[4]~26_combout\ & ((\mux_out[6]~27_combout\))) # (!\mux_out[4]~26_combout\ & (!\mux_out[7]~20_combout\ & !\mux_out[6]~27_combout\)))) # (!\mux_out[5]~28_combout\ & 
-- (\mux_out[7]~20_combout\ & (\mux_out[4]~26_combout\ $ (\mux_out[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X23_Y28_N12
\dec1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[4]~4_combout\ = (\mux_out[5]~28_combout\ & (\mux_out[4]~26_combout\ & (\mux_out[7]~20_combout\))) # (!\mux_out[5]~28_combout\ & ((\mux_out[6]~27_combout\ & ((\mux_out[7]~20_combout\))) # (!\mux_out[6]~27_combout\ & 
-- (\mux_out[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X23_Y28_N14
\dec1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[5]~5_combout\ = (\mux_out[4]~26_combout\ & (\mux_out[7]~20_combout\ $ (((!\mux_out[5]~28_combout\ & \mux_out[6]~27_combout\))))) # (!\mux_out[4]~26_combout\ & (\mux_out[7]~20_combout\ & (\mux_out[5]~28_combout\ & 
-- !\mux_out[6]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X23_Y28_N0
\dec1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~6_combout\ = (\mux_out[4]~26_combout\ & (\mux_out[7]~20_combout\ & (\mux_out[5]~28_combout\ $ (!\mux_out[6]~27_combout\)))) # (!\mux_out[4]~26_combout\ & (!\mux_out[5]~28_combout\ & (\mux_out[7]~20_combout\ $ 
-- (\mux_out[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_out[4]~26_combout\,
	datab => \mux_out[7]~20_combout\,
	datac => \mux_out[5]~28_combout\,
	datad => \mux_out[6]~27_combout\,
	combout => \dec1|decoded_out[6]~6_combout\);

ww_R_led <= \R_led~output_o\;

ww_G_led <= \G_led~output_o\;

ww_B_led <= \B_led~output_o\;

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


