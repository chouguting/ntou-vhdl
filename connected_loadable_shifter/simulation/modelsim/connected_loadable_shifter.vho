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

-- DATE "12/23/2021 16:35:41"

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

ENTITY 	connected_loadable_shifter IS
    PORT (
	reset_in : IN std_logic;
	clk_org : IN std_logic;
	button0 : IN std_logic;
	button2 : IN std_logic;
	clk1 : BUFFER std_logic;
	clk2 : BUFFER std_logic;
	load1 : BUFFER std_logic;
	load2 : BUFFER std_logic;
	reset1 : BUFFER std_logic;
	reset2 : BUFFER std_logic;
	data_in : IN std_logic;
	clk_in : IN std_logic;
	load_in : IN std_logic;
	data_out : BUFFER std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	LED : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END connected_loadable_shifter;

-- Design Ports Information
-- clk1	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load1	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load2	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- button2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_in	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_org	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_in	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF connected_loadable_shifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_in : std_logic;
SIGNAL ww_clk_org : std_logic;
SIGNAL ww_button0 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_load1 : std_logic;
SIGNAL ww_load2 : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_load_in : std_logic;
SIGNAL ww_data_out : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL \LED[0]~60clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_org~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~output_o\ : std_logic;
SIGNAL \clk2~output_o\ : std_logic;
SIGNAL \load1~output_o\ : std_logic;
SIGNAL \load2~output_o\ : std_logic;
SIGNAL \reset1~output_o\ : std_logic;
SIGNAL \reset2~output_o\ : std_logic;
SIGNAL \data_out~output_o\ : std_logic;
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
SIGNAL \clk_org~input_o\ : std_logic;
SIGNAL \clk_org~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset_in~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \div_5000000_counter~6_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \div_5000000_counter~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \div_5000000_counter~4_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \div_5000000_counter~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \div_5000000_counter~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \div_5000000_counter~1_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \div_5000000_counter~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \div_5000000_counter~0_combout\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \button0~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \load_in~input_o\ : std_logic;
SIGNAL \LED[0]~60_combout\ : std_logic;
SIGNAL \LED[0]~60clkctrl_outclk\ : std_logic;
SIGNAL \LED[0]~1_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \LED[1]~6_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \LED[3]~16_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \LED[4]~21_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \LED[5]~26_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \LED[6]~31_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \LED[7]~36_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \LED[8]~41_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \LED[9]~46_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \LED[9]~49_combout\ : std_logic;
SIGNAL \LED[0]~0_combout\ : std_logic;
SIGNAL \LED[9]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[9]~48_combout\ : std_logic;
SIGNAL \LED[9]~47_combout\ : std_logic;
SIGNAL \LED[8]~44_combout\ : std_logic;
SIGNAL \LED[8]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[8]~43_combout\ : std_logic;
SIGNAL \LED[8]~42_combout\ : std_logic;
SIGNAL \LED[7]~39_combout\ : std_logic;
SIGNAL \LED[7]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[7]~38_combout\ : std_logic;
SIGNAL \LED[7]~37_combout\ : std_logic;
SIGNAL \LED[6]~34_combout\ : std_logic;
SIGNAL \LED[6]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[6]~33_combout\ : std_logic;
SIGNAL \LED[6]~32_combout\ : std_logic;
SIGNAL \LED[5]~29_combout\ : std_logic;
SIGNAL \LED[5]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[5]~28_combout\ : std_logic;
SIGNAL \LED[5]~27_combout\ : std_logic;
SIGNAL \LED[4]~24_combout\ : std_logic;
SIGNAL \LED[4]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[4]~23_combout\ : std_logic;
SIGNAL \LED[4]~22_combout\ : std_logic;
SIGNAL \LED[3]~19_combout\ : std_logic;
SIGNAL \LED[3]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[3]~18_combout\ : std_logic;
SIGNAL \LED[3]~17_combout\ : std_logic;
SIGNAL \LED[2]~11_combout\ : std_logic;
SIGNAL \LED[2]~14_combout\ : std_logic;
SIGNAL \LED[2]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[2]~13_combout\ : std_logic;
SIGNAL \LED[2]~12_combout\ : std_logic;
SIGNAL \LED[1]~9_combout\ : std_logic;
SIGNAL \LED[1]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[1]~8_combout\ : std_logic;
SIGNAL \LED[1]~7_combout\ : std_logic;
SIGNAL \LED[0]~4_combout\ : std_logic;
SIGNAL \LED[0]~reg0_emulated_q\ : std_logic;
SIGNAL \LED[0]~3_combout\ : std_logic;
SIGNAL \LED[0]~2_combout\ : std_logic;
SIGNAL div_5000000_counter : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_LED[0]~0_combout\ : std_logic;

BEGIN

ww_reset_in <= reset_in;
ww_clk_org <= clk_org;
ww_button0 <= button0;
ww_button2 <= button2;
clk1 <= ww_clk1;
clk2 <= ww_clk2;
load1 <= ww_load1;
load2 <= ww_load2;
reset1 <= ww_reset1;
reset2 <= ww_reset2;
ww_data_in <= data_in;
ww_clk_in <= clk_in;
ww_load_in <= load_in;
data_out <= ww_data_out;
ww_switch <= switch;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LED[0]~60clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LED[0]~60_combout\);

\clk_org~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_org~input_o\);
\ALT_INV_LED[0]~0_combout\ <= NOT \LED[0]~0_combout\;

-- Location: IOOBUF_X37_Y0_N23
\clk1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => div_5000000_counter(22),
	devoe => ww_devoe,
	o => \clk1~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\clk2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => div_5000000_counter(22),
	devoe => ww_devoe,
	o => \clk2~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\load1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button2~input_o\,
	devoe => ww_devoe,
	o => \load1~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\load2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button2~input_o\,
	devoe => ww_devoe,
	o => \load2~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\reset1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button0~input_o\,
	devoe => ww_devoe,
	o => \reset1~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\reset2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button0~input_o\,
	devoe => ww_devoe,
	o => \reset2~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\data_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]~2_combout\,
	devoe => ww_devoe,
	o => \data_out~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]~2_combout\,
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
	i => \LED[1]~7_combout\,
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
	i => \LED[2]~12_combout\,
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
	i => \LED[3]~17_combout\,
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
	i => \LED[4]~22_combout\,
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
	i => \LED[5]~27_combout\,
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
	i => \LED[6]~32_combout\,
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
	i => \LED[7]~37_combout\,
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
	i => \LED[8]~42_combout\,
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
	i => \LED[9]~47_combout\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk_org~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_org,
	o => \clk_org~input_o\);

-- Location: CLKCTRL_G12
\clk_org~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_org~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_org~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y21_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = div_5000000_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(div_5000000_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X16_Y0_N8
\reset_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_in,
	o => \reset_in~input_o\);

-- Location: FF_X11_Y21_N11
\div_5000000_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(0));

-- Location: LCCOMB_X11_Y21_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (div_5000000_counter(1) & (!\Add0~1\)) # (!div_5000000_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!div_5000000_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X11_Y21_N13
\div_5000000_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(1));

-- Location: LCCOMB_X11_Y21_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (div_5000000_counter(2) & (\Add0~3\ $ (GND))) # (!div_5000000_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((div_5000000_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X11_Y21_N15
\div_5000000_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(2));

-- Location: LCCOMB_X10_Y21_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (div_5000000_counter(0) & (div_5000000_counter(2) & div_5000000_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(0),
	datac => div_5000000_counter(2),
	datad => div_5000000_counter(1),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X11_Y21_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (div_5000000_counter(3) & (!\Add0~5\)) # (!div_5000000_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!div_5000000_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X11_Y21_N17
\div_5000000_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(3));

-- Location: LCCOMB_X11_Y21_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (div_5000000_counter(4) & (\Add0~7\ $ (GND))) # (!div_5000000_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((div_5000000_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X11_Y21_N19
\div_5000000_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(4));

-- Location: LCCOMB_X11_Y21_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (div_5000000_counter(5) & (!\Add0~9\)) # (!div_5000000_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!div_5000000_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X11_Y21_N21
\div_5000000_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(5));

-- Location: LCCOMB_X11_Y21_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (div_5000000_counter(6) & (\Add0~11\ $ (GND))) # (!div_5000000_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((div_5000000_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X11_Y21_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (div_5000000_counter(7) & (!\Add0~13\)) # (!div_5000000_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!div_5000000_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X11_Y21_N25
\div_5000000_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(7));

-- Location: LCCOMB_X11_Y21_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (div_5000000_counter(8) & (\Add0~15\ $ (GND))) # (!div_5000000_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((div_5000000_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X11_Y21_N2
\div_5000000_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~6_combout\ = (\Add0~16_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \div_5000000_counter~6_combout\);

-- Location: FF_X11_Y21_N3
\div_5000000_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~6_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(8));

-- Location: LCCOMB_X11_Y21_N28
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (div_5000000_counter(9) & (!\Add0~17\)) # (!div_5000000_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!div_5000000_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X11_Y21_N0
\div_5000000_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~5_combout\ = (\Add0~18_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \div_5000000_counter~5_combout\);

-- Location: FF_X11_Y21_N1
\div_5000000_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~5_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(9));

-- Location: LCCOMB_X11_Y21_N30
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (div_5000000_counter(10) & (\Add0~19\ $ (GND))) # (!div_5000000_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((div_5000000_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X11_Y21_N31
\div_5000000_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(10));

-- Location: LCCOMB_X11_Y20_N0
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (div_5000000_counter(11) & (!\Add0~21\)) # (!div_5000000_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!div_5000000_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X11_Y20_N30
\div_5000000_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~4_combout\ = (\Add0~22_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~22_combout\,
	combout => \div_5000000_counter~4_combout\);

-- Location: FF_X11_Y20_N31
\div_5000000_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~4_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(11));

-- Location: LCCOMB_X11_Y20_N2
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (div_5000000_counter(12) & (\Add0~23\ $ (GND))) # (!div_5000000_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((div_5000000_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X11_Y20_N3
\div_5000000_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(12));

-- Location: LCCOMB_X11_Y20_N4
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (div_5000000_counter(13) & (!\Add0~25\)) # (!div_5000000_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!div_5000000_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X11_Y20_N5
\div_5000000_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(13));

-- Location: LCCOMB_X11_Y20_N6
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (div_5000000_counter(14) & (\Add0~27\ $ (GND))) # (!div_5000000_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((div_5000000_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X10_Y20_N16
\div_5000000_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~3_combout\ = (\Add0~28_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~28_combout\,
	combout => \div_5000000_counter~3_combout\);

-- Location: FF_X10_Y20_N17
\div_5000000_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~3_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(14));

-- Location: LCCOMB_X10_Y20_N10
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!div_5000000_counter(13) & (div_5000000_counter(14) & (div_5000000_counter(11) & !div_5000000_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(13),
	datab => div_5000000_counter(14),
	datac => div_5000000_counter(11),
	datad => div_5000000_counter(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X11_Y20_N8
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (div_5000000_counter(15) & (!\Add0~29\)) # (!div_5000000_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!div_5000000_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X11_Y20_N9
\div_5000000_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(15));

-- Location: LCCOMB_X11_Y20_N10
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (div_5000000_counter(16) & (\Add0~31\ $ (GND))) # (!div_5000000_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((div_5000000_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X11_Y20_N11
\div_5000000_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(16));

-- Location: LCCOMB_X11_Y20_N12
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (div_5000000_counter(17) & (!\Add0~33\)) # (!div_5000000_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!div_5000000_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X11_Y20_N13
\div_5000000_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(17));

-- Location: LCCOMB_X11_Y20_N14
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (div_5000000_counter(18) & (\Add0~35\ $ (GND))) # (!div_5000000_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((div_5000000_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X11_Y20_N28
\div_5000000_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~2_combout\ = (\Add0~36_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \div_5000000_counter~2_combout\);

-- Location: FF_X11_Y20_N29
\div_5000000_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(18));

-- Location: LCCOMB_X11_Y20_N16
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (div_5000000_counter(19) & (!\Add0~37\)) # (!div_5000000_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!div_5000000_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X11_Y20_N26
\div_5000000_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~1_combout\ = (\Add0~38_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~38_combout\,
	combout => \div_5000000_counter~1_combout\);

-- Location: FF_X11_Y20_N27
\div_5000000_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~1_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(19));

-- Location: LCCOMB_X11_Y20_N18
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (div_5000000_counter(20) & (\Add0~39\ $ (GND))) # (!div_5000000_counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((div_5000000_counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X11_Y20_N19
\div_5000000_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(20));

-- Location: LCCOMB_X11_Y20_N20
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (div_5000000_counter(21) & (!\Add0~41\)) # (!div_5000000_counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!div_5000000_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000000_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X11_Y20_N21
\div_5000000_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(21));

-- Location: LCCOMB_X10_Y20_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (div_5000000_counter(22) & (!div_5000000_counter(20) & (!div_5000000_counter(21) & div_5000000_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(22),
	datab => div_5000000_counter(20),
	datac => div_5000000_counter(21),
	datad => div_5000000_counter(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y20_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!div_5000000_counter(17) & (!div_5000000_counter(16) & (!div_5000000_counter(15) & div_5000000_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(17),
	datab => div_5000000_counter(16),
	datac => div_5000000_counter(15),
	datad => div_5000000_counter(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y21_N6
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!div_5000000_counter(10) & (div_5000000_counter(9) & (!div_5000000_counter(7) & div_5000000_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(10),
	datab => div_5000000_counter(9),
	datac => div_5000000_counter(7),
	datad => div_5000000_counter(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y20_N12
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

-- Location: LCCOMB_X11_Y21_N4
\div_5000000_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~7_combout\ = (\Add0~12_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \div_5000000_counter~7_combout\);

-- Location: FF_X11_Y21_N5
\div_5000000_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~7_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(6));

-- Location: LCCOMB_X11_Y21_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (div_5000000_counter(5) & (!div_5000000_counter(6) & (div_5000000_counter(3) & div_5000000_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000000_counter(5),
	datab => div_5000000_counter(6),
	datac => div_5000000_counter(3),
	datad => div_5000000_counter(4),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X11_Y20_N22
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Add0~43\ $ (!div_5000000_counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_5000000_counter(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X11_Y20_N24
\div_5000000_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000000_counter~0_combout\ = (\Add0~44_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~4_combout\,
	combout => \div_5000000_counter~0_combout\);

-- Location: FF_X11_Y20_N25
\div_5000000_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_org~inputclkctrl_outclk\,
	d => \div_5000000_counter~0_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000000_counter(22));

-- Location: IOIBUF_X0_Y23_N1
\button2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\button0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button0,
	o => \button0~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\load_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_in,
	o => \load_in~input_o\);

-- Location: LCCOMB_X12_Y22_N24
\LED[0]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~60_combout\ = (\reset_in~input_o\ & !\load_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_in~input_o\,
	datad => \load_in~input_o\,
	combout => \LED[0]~60_combout\);

-- Location: CLKCTRL_G14
\LED[0]~60clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LED[0]~60clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LED[0]~60clkctrl_outclk\);

-- Location: LCCOMB_X11_Y22_N30
\LED[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~1_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\switch[0]~input_o\))) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & (\LED[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED[0]~1_combout\,
	datab => \switch[0]~input_o\,
	datac => \reset_in~input_o\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[0]~1_combout\);

-- Location: IOIBUF_X32_Y0_N29
\clk_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X11_Y22_N16
\LED[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[1]~6_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[1]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \LED[1]~6_combout\,
	datac => \reset_in~input_o\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[1]~6_combout\);

-- Location: IOIBUF_X0_Y25_N22
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N20
\LED[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[3]~16_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[3]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \reset_in~input_o\,
	datac => \LED[3]~16_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[3]~16_combout\);

-- Location: IOIBUF_X0_Y27_N22
\switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LCCOMB_X12_Y22_N30
\LED[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[4]~21_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[4]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[4]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \reset_in~input_o\,
	datac => \LED[4]~21_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[4]~21_combout\);

-- Location: IOIBUF_X0_Y22_N15
\switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X10_Y22_N6
\LED[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[5]~26_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[5]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[5]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[5]~input_o\,
	datac => \LED[5]~26_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[5]~26_combout\);

-- Location: IOIBUF_X0_Y25_N15
\switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X10_Y22_N4
\LED[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[6]~31_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[6]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[6]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[6]~input_o\,
	datac => \LED[6]~31_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[6]~31_combout\);

-- Location: IOIBUF_X0_Y26_N8
\switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X10_Y22_N22
\LED[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[7]~36_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[7]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[7]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[7]~input_o\,
	datac => \LED[7]~36_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[7]~36_combout\);

-- Location: IOIBUF_X0_Y26_N1
\switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X10_Y22_N20
\LED[8]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[8]~41_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\switch[8]~input_o\))) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & (\LED[8]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \LED[8]~41_combout\,
	datac => \switch[8]~input_o\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[8]~41_combout\);

-- Location: IOIBUF_X0_Y25_N1
\switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X11_Y22_N14
\LED[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[9]~46_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[9]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[9]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \reset_in~input_o\,
	datac => \LED[9]~46_combout\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[9]~46_combout\);

-- Location: IOIBUF_X32_Y0_N8
\data_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X11_Y22_N24
\LED[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[9]~49_combout\ = \LED[9]~46_combout\ $ (\data_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[9]~46_combout\,
	datad => \data_in~input_o\,
	combout => \LED[9]~49_combout\);

-- Location: LCCOMB_X11_Y22_N26
\LED[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~0_combout\ = (\LED[0]~60_combout\) # (!\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_in~input_o\,
	datad => \LED[0]~60_combout\,
	combout => \LED[0]~0_combout\);

-- Location: FF_X11_Y22_N25
\LED[9]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[9]~49_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[9]~reg0_emulated_q\);

-- Location: LCCOMB_X11_Y22_N10
\LED[9]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[9]~48_combout\ = \LED[9]~46_combout\ $ (\LED[9]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[9]~46_combout\,
	datad => \LED[9]~reg0_emulated_q\,
	combout => \LED[9]~48_combout\);

-- Location: LCCOMB_X11_Y22_N8
\LED[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[9]~47_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[9]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[9]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \LED[0]~60_combout\,
	datac => \switch[9]~input_o\,
	datad => \LED[9]~48_combout\,
	combout => \LED[9]~47_combout\);

-- Location: LCCOMB_X11_Y22_N6
\LED[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[8]~44_combout\ = \LED[9]~47_combout\ $ (\LED[8]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[9]~47_combout\,
	datad => \LED[8]~41_combout\,
	combout => \LED[8]~44_combout\);

-- Location: FF_X11_Y22_N7
\LED[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[8]~44_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[8]~reg0_emulated_q\);

-- Location: LCCOMB_X10_Y22_N18
\LED[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[8]~43_combout\ = \LED[8]~41_combout\ $ (\LED[8]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED[8]~41_combout\,
	datad => \LED[8]~reg0_emulated_q\,
	combout => \LED[8]~43_combout\);

-- Location: LCCOMB_X10_Y22_N12
\LED[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[8]~42_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[8]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[8]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[8]~input_o\,
	datac => \LED[0]~60_combout\,
	datad => \LED[8]~43_combout\,
	combout => \LED[8]~42_combout\);

-- Location: LCCOMB_X10_Y22_N16
\LED[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[7]~39_combout\ = \LED[7]~36_combout\ $ (\LED[8]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[7]~36_combout\,
	datad => \LED[8]~42_combout\,
	combout => \LED[7]~39_combout\);

-- Location: FF_X10_Y22_N17
\LED[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[7]~39_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[7]~reg0_emulated_q\);

-- Location: LCCOMB_X10_Y22_N26
\LED[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[7]~38_combout\ = \LED[7]~36_combout\ $ (\LED[7]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[7]~36_combout\,
	datad => \LED[7]~reg0_emulated_q\,
	combout => \LED[7]~38_combout\);

-- Location: LCCOMB_X10_Y22_N28
\LED[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[7]~37_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[7]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[7]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[7]~input_o\,
	datac => \LED[7]~38_combout\,
	datad => \LED[0]~60_combout\,
	combout => \LED[7]~37_combout\);

-- Location: LCCOMB_X10_Y22_N10
\LED[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[6]~34_combout\ = \LED[6]~31_combout\ $ (\LED[7]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[6]~31_combout\,
	datad => \LED[7]~37_combout\,
	combout => \LED[6]~34_combout\);

-- Location: FF_X10_Y22_N11
\LED[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[6]~34_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[6]~reg0_emulated_q\);

-- Location: LCCOMB_X10_Y22_N0
\LED[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[6]~33_combout\ = \LED[6]~31_combout\ $ (\LED[6]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[6]~31_combout\,
	datad => \LED[6]~reg0_emulated_q\,
	combout => \LED[6]~33_combout\);

-- Location: LCCOMB_X10_Y22_N30
\LED[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[6]~32_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[6]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[6]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[6]~input_o\,
	datac => \LED[0]~60_combout\,
	datad => \LED[6]~33_combout\,
	combout => \LED[6]~32_combout\);

-- Location: LCCOMB_X10_Y22_N8
\LED[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[5]~29_combout\ = \LED[5]~26_combout\ $ (\LED[6]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED[5]~26_combout\,
	datac => \LED[6]~32_combout\,
	combout => \LED[5]~29_combout\);

-- Location: FF_X10_Y22_N9
\LED[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[5]~29_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[5]~reg0_emulated_q\);

-- Location: LCCOMB_X10_Y22_N2
\LED[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[5]~28_combout\ = \LED[5]~reg0_emulated_q\ $ (\LED[5]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[5]~reg0_emulated_q\,
	datad => \LED[5]~26_combout\,
	combout => \LED[5]~28_combout\);

-- Location: LCCOMB_X10_Y22_N24
\LED[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[5]~27_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[5]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[5]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \switch[5]~input_o\,
	datac => \LED[0]~60_combout\,
	datad => \LED[5]~28_combout\,
	combout => \LED[5]~27_combout\);

-- Location: LCCOMB_X11_Y22_N28
\LED[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[4]~24_combout\ = \LED[4]~21_combout\ $ (\LED[5]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[4]~21_combout\,
	datad => \LED[5]~27_combout\,
	combout => \LED[4]~24_combout\);

-- Location: FF_X11_Y22_N29
\LED[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[4]~24_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[4]~reg0_emulated_q\);

-- Location: LCCOMB_X12_Y22_N12
\LED[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[4]~23_combout\ = \LED[4]~21_combout\ $ (\LED[4]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[4]~21_combout\,
	datad => \LED[4]~reg0_emulated_q\,
	combout => \LED[4]~23_combout\);

-- Location: LCCOMB_X12_Y22_N6
\LED[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[4]~22_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[4]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[4]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \reset_in~input_o\,
	datac => \LED[0]~60_combout\,
	datad => \LED[4]~23_combout\,
	combout => \LED[4]~22_combout\);

-- Location: LCCOMB_X12_Y22_N22
\LED[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[3]~19_combout\ = \LED[3]~16_combout\ $ (\LED[4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[3]~16_combout\,
	datad => \LED[4]~22_combout\,
	combout => \LED[3]~19_combout\);

-- Location: FF_X12_Y22_N23
\LED[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[3]~19_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[3]~reg0_emulated_q\);

-- Location: LCCOMB_X12_Y22_N2
\LED[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[3]~18_combout\ = \LED[3]~reg0_emulated_q\ $ (\LED[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[3]~reg0_emulated_q\,
	datad => \LED[3]~16_combout\,
	combout => \LED[3]~18_combout\);

-- Location: LCCOMB_X12_Y22_N26
\LED[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[3]~17_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[3]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[3]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED[0]~60_combout\,
	datab => \reset_in~input_o\,
	datac => \switch[3]~input_o\,
	datad => \LED[3]~18_combout\,
	combout => \LED[3]~17_combout\);

-- Location: LCCOMB_X12_Y22_N28
\LED[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]~11_combout\ = (\reset_in~input_o\ & ((GLOBAL(\LED[0]~60clkctrl_outclk\) & (\switch[2]~input_o\)) # (!GLOBAL(\LED[0]~60clkctrl_outclk\) & ((\LED[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \LED[2]~11_combout\,
	datac => \reset_in~input_o\,
	datad => \LED[0]~60clkctrl_outclk\,
	combout => \LED[2]~11_combout\);

-- Location: LCCOMB_X12_Y22_N14
\LED[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]~14_combout\ = \LED[3]~17_combout\ $ (\LED[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[3]~17_combout\,
	datad => \LED[2]~11_combout\,
	combout => \LED[2]~14_combout\);

-- Location: FF_X12_Y22_N15
\LED[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[2]~14_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_emulated_q\);

-- Location: LCCOMB_X12_Y22_N18
\LED[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]~13_combout\ = \LED[2]~reg0_emulated_q\ $ (\LED[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[2]~reg0_emulated_q\,
	datad => \LED[2]~11_combout\,
	combout => \LED[2]~13_combout\);

-- Location: LCCOMB_X11_Y22_N2
\LED[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]~12_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[2]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \LED[0]~60_combout\,
	datac => \reset_in~input_o\,
	datad => \LED[2]~13_combout\,
	combout => \LED[2]~12_combout\);

-- Location: LCCOMB_X11_Y22_N12
\LED[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[1]~9_combout\ = \LED[1]~6_combout\ $ (\LED[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED[1]~6_combout\,
	datad => \LED[2]~12_combout\,
	combout => \LED[1]~9_combout\);

-- Location: FF_X11_Y22_N13
\LED[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[1]~9_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[1]~reg0_emulated_q\);

-- Location: LCCOMB_X11_Y22_N18
\LED[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[1]~8_combout\ = \LED[1]~6_combout\ $ (\LED[1]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED[1]~6_combout\,
	datad => \LED[1]~reg0_emulated_q\,
	combout => \LED[1]~8_combout\);

-- Location: LCCOMB_X11_Y22_N4
\LED[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[1]~7_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & (\switch[1]~input_o\)) # (!\LED[0]~60_combout\ & ((\LED[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_in~input_o\,
	datab => \LED[0]~60_combout\,
	datac => \switch[1]~input_o\,
	datad => \LED[1]~8_combout\,
	combout => \LED[1]~7_combout\);

-- Location: LCCOMB_X11_Y22_N0
\LED[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~4_combout\ = \LED[0]~1_combout\ $ (\LED[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED[0]~1_combout\,
	datac => \LED[1]~7_combout\,
	combout => \LED[0]~4_combout\);

-- Location: FF_X11_Y22_N1
\LED[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \LED[0]~4_combout\,
	clrn => \ALT_INV_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[0]~reg0_emulated_q\);

-- Location: LCCOMB_X11_Y22_N22
\LED[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~3_combout\ = \LED[0]~1_combout\ $ (\LED[0]~reg0_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED[0]~1_combout\,
	datad => \LED[0]~reg0_emulated_q\,
	combout => \LED[0]~3_combout\);

-- Location: LCCOMB_X11_Y22_N20
\LED[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]~2_combout\ = (\reset_in~input_o\ & ((\LED[0]~60_combout\ & ((\switch[0]~input_o\))) # (!\LED[0]~60_combout\ & (\LED[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED[0]~3_combout\,
	datab => \switch[0]~input_o\,
	datac => \reset_in~input_o\,
	datad => \LED[0]~60_combout\,
	combout => \LED[0]~2_combout\);

ww_clk1 <= \clk1~output_o\;

ww_clk2 <= \clk2~output_o\;

ww_load1 <= \load1~output_o\;

ww_load2 <= \load2~output_o\;

ww_reset1 <= \reset1~output_o\;

ww_reset2 <= \reset2~output_o\;

ww_data_out <= \data_out~output_o\;

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


