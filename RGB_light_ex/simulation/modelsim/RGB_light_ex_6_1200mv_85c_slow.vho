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

-- DATE "12/10/2021 14:50:21"

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

ENTITY 	RGB_light_ex IS
    PORT (
	clk : IN std_logic;
	sw : IN std_logic_vector(8 DOWNTO 0);
	R_led : BUFFER std_logic;
	G_led : BUFFER std_logic;
	B_led : BUFFER std_logic
	);
END RGB_light_ex;

-- Design Ports Information
-- R_led	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G_led	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B_led	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RGB_light_ex IS
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
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_R_led : std_logic;
SIGNAL ww_G_led : std_logic;
SIGNAL ww_B_led : std_logic;
SIGNAL \div_counter[8]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_led~output_o\ : std_logic;
SIGNAL \G_led~output_o\ : std_logic;
SIGNAL \B_led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_counter[0]~24_combout\ : std_logic;
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
SIGNAL \led_counter[0]~2_combout\ : std_logic;
SIGNAL \led_counter[1]~1_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \led_counter[2]~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL led_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL div_counter : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sw <= sw;
R_led <= ww_R_led;
G_led <= ww_G_led;
B_led <= ww_B_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div_counter[8]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & div_counter(8));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;

-- Location: IOOBUF_X37_Y0_N23
\R_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~1_combout\,
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
	i => \ALT_INV_LessThan1~1_combout\,
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
	i => \ALT_INV_LessThan2~1_combout\,
	devoe => ww_devoe,
	o => \B_led~output_o\);

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

-- Location: LCCOMB_X22_Y1_N28
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

-- Location: FF_X22_Y1_N29
\div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(0));

-- Location: LCCOMB_X22_Y1_N12
\div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[1]~8_combout\ = (div_counter(1) & (div_counter(0) $ (VCC))) # (!div_counter(1) & (div_counter(0) & VCC))
-- \div_counter[1]~9\ = CARRY((div_counter(1) & div_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(1),
	datab => div_counter(0),
	datad => VCC,
	combout => \div_counter[1]~8_combout\,
	cout => \div_counter[1]~9\);

-- Location: FF_X22_Y1_N13
\div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(1));

-- Location: LCCOMB_X22_Y1_N14
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

-- Location: FF_X22_Y1_N15
\div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(2));

-- Location: LCCOMB_X22_Y1_N16
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

-- Location: FF_X22_Y1_N17
\div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(3));

-- Location: LCCOMB_X22_Y1_N18
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

-- Location: FF_X22_Y1_N19
\div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(4));

-- Location: LCCOMB_X22_Y1_N20
\div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[5]~16_combout\ = (div_counter(5) & (\div_counter[4]~15\ $ (GND))) # (!div_counter(5) & (!\div_counter[4]~15\ & VCC))
-- \div_counter[5]~17\ = CARRY((div_counter(5) & !\div_counter[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(5),
	datad => VCC,
	cin => \div_counter[4]~15\,
	combout => \div_counter[5]~16_combout\,
	cout => \div_counter[5]~17\);

-- Location: FF_X22_Y1_N21
\div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(5));

-- Location: LCCOMB_X22_Y1_N22
\div_counter[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[6]~18_combout\ = (div_counter(6) & (!\div_counter[5]~17\)) # (!div_counter(6) & ((\div_counter[5]~17\) # (GND)))
-- \div_counter[6]~19\ = CARRY((!\div_counter[5]~17\) # (!div_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(6),
	datad => VCC,
	cin => \div_counter[5]~17\,
	combout => \div_counter[6]~18_combout\,
	cout => \div_counter[6]~19\);

-- Location: FF_X22_Y1_N23
\div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(6));

-- Location: LCCOMB_X22_Y1_N24
\div_counter[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[7]~20_combout\ = (div_counter(7) & (\div_counter[6]~19\ $ (GND))) # (!div_counter(7) & (!\div_counter[6]~19\ & VCC))
-- \div_counter[7]~21\ = CARRY((div_counter(7) & !\div_counter[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_counter(7),
	datad => VCC,
	cin => \div_counter[6]~19\,
	combout => \div_counter[7]~20_combout\,
	cout => \div_counter[7]~21\);

-- Location: FF_X22_Y1_N25
\div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(7));

-- Location: LCCOMB_X22_Y1_N26
\div_counter[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_counter[8]~22_combout\ = div_counter(8) $ (\div_counter[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_counter(8),
	cin => \div_counter[7]~21\,
	combout => \div_counter[8]~22_combout\);

-- Location: FF_X22_Y1_N27
\div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_counter[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_counter(8));

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X1_Y24_N20
\led_counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_counter[0]~2_combout\ = !led_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_counter(0),
	combout => \led_counter[0]~2_combout\);

-- Location: FF_X1_Y24_N21
\led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \led_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_counter(0));

-- Location: LCCOMB_X1_Y24_N18
\led_counter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_counter[1]~1_combout\ = led_counter(1) $ (led_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_counter(1),
	datad => led_counter(0),
	combout => \led_counter[1]~1_combout\);

-- Location: FF_X1_Y24_N19
\led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \led_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_counter(1));

-- Location: IOIBUF_X0_Y25_N15
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (led_counter(1) & (\sw[6]~input_o\ & (!led_counter(0) & \sw[7]~input_o\))) # (!led_counter(1) & ((\sw[7]~input_o\) # ((\sw[6]~input_o\ & !led_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_counter(1),
	datab => \sw[6]~input_o\,
	datac => led_counter(0),
	datad => \sw[7]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X0_Y26_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\led_counter[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_counter[2]~0_combout\ = led_counter(2) $ (((led_counter(0) & led_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_counter(0),
	datac => led_counter(2),
	datad => led_counter(1),
	combout => \led_counter[2]~0_combout\);

-- Location: FF_X1_Y24_N13
\led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_counter[8]~clkctrl_outclk\,
	d => \led_counter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_counter(2));

-- Location: LCCOMB_X1_Y24_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & ((\sw[8]~input_o\) # (!led_counter(2)))) # (!\LessThan0~0_combout\ & (\sw[8]~input_o\ & !led_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \sw[8]~input_o\,
	datad => led_counter(2),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (led_counter(1) & (\sw[3]~input_o\ & (!led_counter(0) & \sw[4]~input_o\))) # (!led_counter(1) & ((\sw[4]~input_o\) # ((\sw[3]~input_o\ & !led_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_counter(1),
	datab => \sw[3]~input_o\,
	datac => led_counter(0),
	datad => \sw[4]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X0_Y24_N15
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\ & ((\sw[5]~input_o\) # (!led_counter(2)))) # (!\LessThan1~0_combout\ & (\sw[5]~input_o\ & !led_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datac => \sw[5]~input_o\,
	datad => led_counter(2),
	combout => \LessThan1~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (led_counter(1) & (\sw[0]~input_o\ & (!led_counter(0) & \sw[1]~input_o\))) # (!led_counter(1) & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & !led_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_counter(1),
	datab => \sw[0]~input_o\,
	datac => led_counter(0),
	datad => \sw[1]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan2~0_combout\ & ((\sw[2]~input_o\) # (!led_counter(2)))) # (!\LessThan2~0_combout\ & (\sw[2]~input_o\ & !led_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => \sw[2]~input_o\,
	datad => led_counter(2),
	combout => \LessThan2~1_combout\);

ww_R_led <= \R_led~output_o\;

ww_G_led <= \G_led~output_o\;

ww_B_led <= \B_led~output_o\;
END structure;


