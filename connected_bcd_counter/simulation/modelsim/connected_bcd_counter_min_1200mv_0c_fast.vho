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

-- DATE "12/17/2021 15:47:12"

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

ENTITY 	connected_bcd_counter IS
    PORT (
	clk_orginal : IN std_logic;
	clk_in : IN std_logic;
	reset_in : IN std_logic;
	casin : IN std_logic;
	button0 : IN std_logic;
	button1 : IN std_logic;
	casout : BUFFER std_logic;
	clk1 : BUFFER std_logic;
	clk2 : BUFFER std_logic;
	reset1 : BUFFER std_logic;
	reset2 : BUFFER std_logic;
	stop : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END connected_bcd_counter;

-- Design Ports Information
-- casout	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- casin	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_in	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_orginal	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF connected_bcd_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_orginal : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_reset_in : std_logic;
SIGNAL ww_casin : std_logic;
SIGNAL ww_button0 : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_casout : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_orginal~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \casout~output_o\ : std_logic;
SIGNAL \clk1~output_o\ : std_logic;
SIGNAL \clk2~output_o\ : std_logic;
SIGNAL \reset1~output_o\ : std_logic;
SIGNAL \reset2~output_o\ : std_logic;
SIGNAL \stop~output_o\ : std_logic;
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
SIGNAL \casin~input_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \counter3|count[0]~3_combout\ : std_logic;
SIGNAL \reset_in~input_o\ : std_logic;
SIGNAL \counter1|count[0]~3_combout\ : std_logic;
SIGNAL \counter1|count[2]~2_combout\ : std_logic;
SIGNAL \counter1|count~0_combout\ : std_logic;
SIGNAL \counter1|count~1_combout\ : std_logic;
SIGNAL \counter2|count[0]~3_combout\ : std_logic;
SIGNAL \counter1|casout~0_combout\ : std_logic;
SIGNAL \counter1|casout~combout\ : std_logic;
SIGNAL \counter2|count~0_combout\ : std_logic;
SIGNAL \counter2|count~1_combout\ : std_logic;
SIGNAL \counter2|count[2]~2_combout\ : std_logic;
SIGNAL \counter2|casout~0_combout\ : std_logic;
SIGNAL \counter2|casout~1_combout\ : std_logic;
SIGNAL \counter2|casout~combout\ : std_logic;
SIGNAL \counter3|count~1_combout\ : std_logic;
SIGNAL \counter3|count[2]~2_combout\ : std_logic;
SIGNAL \counter3|count~0_combout\ : std_logic;
SIGNAL \decoder3|Equal15~0_combout\ : std_logic;
SIGNAL \decoder2|Equal15~0_combout\ : std_logic;
SIGNAL \decoder1|Equal15~0_combout\ : std_logic;
SIGNAL \counter3|casout~combout\ : std_logic;
SIGNAL \counter4|count[0]~3_combout\ : std_logic;
SIGNAL \counter4|count~1_combout\ : std_logic;
SIGNAL \counter4|count[2]~2_combout\ : std_logic;
SIGNAL \counter4|count~0_combout\ : std_logic;
SIGNAL \decoder4|Equal15~0_combout\ : std_logic;
SIGNAL \counter4|casout~combout\ : std_logic;
SIGNAL \clk_orginal~input_o\ : std_logic;
SIGNAL \clk_orginal~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \div_5000_counter~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \div_5000_counter~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \div_5000_counter~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \div_5000_counter~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \div_5000_counter~0_combout\ : std_logic;
SIGNAL \button0~input_o\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \decoder1|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder1|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder2|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder3|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[0]~0_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[1]~1_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[2]~2_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[3]~3_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[4]~4_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[5]~5_combout\ : std_logic;
SIGNAL \decoder4|decoded_out[6]~6_combout\ : std_logic;
SIGNAL \counter2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL div_5000_counter : std_logic_vector(12 DOWNTO 0);
SIGNAL \counter1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder4|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder3|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_decoded_out[6]~6_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_decoded_out[6]~6_combout\ : std_logic;

BEGIN

ww_clk_orginal <= clk_orginal;
ww_clk_in <= clk_in;
ww_reset_in <= reset_in;
ww_casin <= casin;
ww_button0 <= button0;
ww_button1 <= button1;
casout <= ww_casout;
clk1 <= ww_clk1;
clk2 <= ww_clk2;
reset1 <= ww_reset1;
reset2 <= ww_reset2;
stop <= ww_stop;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_orginal~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_orginal~input_o\);
\decoder4|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder4|decoded_out[6]~6_combout\;
\decoder3|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder3|decoded_out[6]~6_combout\;
\decoder2|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder2|decoded_out[6]~6_combout\;
\decoder1|ALT_INV_decoded_out[6]~6_combout\ <= NOT \decoder1|decoded_out[6]~6_combout\;

-- Location: IOOBUF_X35_Y0_N30
\casout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter4|casout~combout\,
	devoe => ww_devoe,
	o => \casout~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\clk1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => div_5000_counter(12),
	devoe => ww_devoe,
	o => \clk1~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\clk2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => div_5000_counter(12),
	devoe => ww_devoe,
	o => \clk2~output_o\);

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N2
\stop~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1~input_o\,
	devoe => ww_devoe,
	o => \stop~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decoded_out[0]~0_combout\,
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
	i => \decoder1|decoded_out[1]~1_combout\,
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
	i => \decoder1|decoded_out[2]~2_combout\,
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
	i => \decoder1|decoded_out[3]~3_combout\,
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
	i => \decoder1|decoded_out[4]~4_combout\,
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
	i => \decoder1|decoded_out[5]~5_combout\,
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
	i => \decoder1|ALT_INV_decoded_out[6]~6_combout\,
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
	i => \decoder2|decoded_out[0]~0_combout\,
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
	i => \decoder2|decoded_out[1]~1_combout\,
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
	i => \decoder2|decoded_out[2]~2_combout\,
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
	i => \decoder2|decoded_out[3]~3_combout\,
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
	i => \decoder2|decoded_out[4]~4_combout\,
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
	i => \decoder2|decoded_out[5]~5_combout\,
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
	i => \decoder2|ALT_INV_decoded_out[6]~6_combout\,
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
	i => \decoder3|decoded_out[0]~0_combout\,
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
	i => \decoder3|decoded_out[1]~1_combout\,
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
	i => \decoder3|decoded_out[2]~2_combout\,
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
	i => \decoder3|decoded_out[3]~3_combout\,
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
	i => \decoder3|decoded_out[4]~4_combout\,
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
	i => \decoder3|decoded_out[5]~5_combout\,
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
	i => \decoder3|ALT_INV_decoded_out[6]~6_combout\,
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
	i => \decoder4|decoded_out[0]~0_combout\,
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
	i => \decoder4|decoded_out[1]~1_combout\,
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
	i => \decoder4|decoded_out[2]~2_combout\,
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
	i => \decoder4|decoded_out[3]~3_combout\,
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
	i => \decoder4|decoded_out[4]~4_combout\,
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
	i => \decoder4|decoded_out[5]~5_combout\,
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
	i => \decoder4|ALT_INV_decoded_out[6]~6_combout\,
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

-- Location: IOIBUF_X35_Y0_N15
\casin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_casin,
	o => \casin~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\clk_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: LCCOMB_X32_Y28_N0
\counter3|count[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|count[0]~3_combout\ = !\counter3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter3|count\(0),
	combout => \counter3|count[0]~3_combout\);

-- Location: IOIBUF_X37_Y0_N22
\reset_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_in,
	o => \reset_in~input_o\);

-- Location: LCCOMB_X30_Y28_N28
\counter1|count[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|count[0]~3_combout\ = !\counter1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1|count\(0),
	combout => \counter1|count[0]~3_combout\);

-- Location: FF_X30_Y28_N29
\counter1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter1|count[0]~3_combout\,
	clrn => \reset_in~input_o\,
	ena => \casin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count\(0));

-- Location: LCCOMB_X30_Y28_N18
\counter1|count[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|count[2]~2_combout\ = \counter1|count\(2) $ (((\casin~input_o\ & (\counter1|count\(1) & \counter1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casin~input_o\,
	datab => \counter1|count\(1),
	datac => \counter1|count\(2),
	datad => \counter1|count\(0),
	combout => \counter1|count[2]~2_combout\);

-- Location: FF_X30_Y28_N19
\counter1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter1|count[2]~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count\(2));

-- Location: LCCOMB_X30_Y28_N30
\counter1|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|count~0_combout\ = (\counter1|count\(0) & ((\counter1|count\(1) & (\counter1|count\(3) $ (\counter1|count\(2)))) # (!\counter1|count\(1) & (\counter1|count\(3) & \counter1|count\(2))))) # (!\counter1|count\(0) & (((\counter1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(0),
	datab => \counter1|count\(1),
	datac => \counter1|count\(3),
	datad => \counter1|count\(2),
	combout => \counter1|count~0_combout\);

-- Location: FF_X30_Y28_N31
\counter1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter1|count~0_combout\,
	clrn => \reset_in~input_o\,
	ena => \casin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count\(3));

-- Location: LCCOMB_X30_Y28_N8
\counter1|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|count~1_combout\ = (\counter1|count\(0) & (!\counter1|count\(1) & ((\counter1|count\(2)) # (!\counter1|count\(3))))) # (!\counter1|count\(0) & (((\counter1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(0),
	datac => \counter1|count\(1),
	datad => \counter1|count\(2),
	combout => \counter1|count~1_combout\);

-- Location: FF_X30_Y28_N9
\counter1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter1|count~1_combout\,
	clrn => \reset_in~input_o\,
	ena => \casin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count\(1));

-- Location: LCCOMB_X31_Y28_N8
\counter2|count[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|count[0]~3_combout\ = !\counter2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2|count\(0),
	combout => \counter2|count[0]~3_combout\);

-- Location: LCCOMB_X30_Y28_N16
\counter1|casout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|casout~0_combout\ = (\casin~input_o\ & !\counter1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casin~input_o\,
	datad => \counter1|count\(2),
	combout => \counter1|casout~0_combout\);

-- Location: LCCOMB_X30_Y28_N6
\counter1|casout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter1|casout~combout\ = (\counter1|count\(3) & (!\counter1|count\(1) & (\counter1|count\(0) & \counter1|casout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|casout~0_combout\,
	combout => \counter1|casout~combout\);

-- Location: FF_X31_Y28_N9
\counter2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter2|count[0]~3_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter1|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count\(0));

-- Location: LCCOMB_X31_Y28_N10
\counter2|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|count~0_combout\ = (\counter2|count\(0) & ((\counter2|count\(2) & (\counter2|count\(3) $ (\counter2|count\(1)))) # (!\counter2|count\(2) & (\counter2|count\(3) & \counter2|count\(1))))) # (!\counter2|count\(0) & (((\counter2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \counter2|count~0_combout\);

-- Location: FF_X31_Y28_N11
\counter2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter2|count~0_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter1|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count\(3));

-- Location: LCCOMB_X31_Y28_N4
\counter2|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|count~1_combout\ = (\counter2|count\(1) & (((!\counter2|count\(0))))) # (!\counter2|count\(1) & (\counter2|count\(0) & ((\counter2|count\(2)) # (!\counter2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(3),
	datab => \counter2|count\(2),
	datac => \counter2|count\(1),
	datad => \counter2|count\(0),
	combout => \counter2|count~1_combout\);

-- Location: FF_X31_Y28_N5
\counter2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter2|count~1_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter1|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count\(1));

-- Location: LCCOMB_X31_Y28_N26
\counter2|count[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|count[2]~2_combout\ = \counter2|count\(2) $ (((\counter2|count\(0) & (\counter1|casout~combout\ & \counter2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter1|casout~combout\,
	datac => \counter2|count\(2),
	datad => \counter2|count\(1),
	combout => \counter2|count[2]~2_combout\);

-- Location: FF_X31_Y28_N27
\counter2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter2|count[2]~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count\(2));

-- Location: LCCOMB_X31_Y28_N16
\counter2|casout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|casout~0_combout\ = (!\counter2|count\(2) & (\casin~input_o\ & (!\counter2|count\(1) & \counter2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(2),
	datab => \casin~input_o\,
	datac => \counter2|count\(1),
	datad => \counter2|count\(3),
	combout => \counter2|casout~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\counter2|casout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|casout~1_combout\ = (!\counter1|count\(2) & (\counter1|count\(3) & \counter2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|count\(2),
	datac => \counter1|count\(3),
	datad => \counter2|count\(0),
	combout => \counter2|casout~1_combout\);

-- Location: LCCOMB_X32_Y28_N2
\counter2|casout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter2|casout~combout\ = (\counter1|count\(0) & (!\counter1|count\(1) & (\counter2|casout~0_combout\ & \counter2|casout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(0),
	datab => \counter1|count\(1),
	datac => \counter2|casout~0_combout\,
	datad => \counter2|casout~1_combout\,
	combout => \counter2|casout~combout\);

-- Location: FF_X32_Y28_N1
\counter3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter3|count[0]~3_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter2|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count\(0));

-- Location: LCCOMB_X32_Y28_N4
\counter3|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|count~1_combout\ = (\counter3|count\(0) & (!\counter3|count\(1) & ((\counter3|count\(2)) # (!\counter3|count\(3))))) # (!\counter3|count\(0) & (((\counter3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \counter3|count~1_combout\);

-- Location: FF_X32_Y28_N5
\counter3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter3|count~1_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter2|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count\(1));

-- Location: LCCOMB_X32_Y28_N26
\counter3|count[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|count[2]~2_combout\ = \counter3|count\(2) $ (((\counter3|count\(1) & (\counter3|count\(0) & \counter2|casout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(1),
	datab => \counter3|count\(0),
	datac => \counter3|count\(2),
	datad => \counter2|casout~combout\,
	combout => \counter3|count[2]~2_combout\);

-- Location: FF_X32_Y28_N27
\counter3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter3|count[2]~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count\(2));

-- Location: LCCOMB_X32_Y28_N10
\counter3|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|count~0_combout\ = (\counter3|count\(2) & (\counter3|count\(3) $ (((\counter3|count\(1) & \counter3|count\(0)))))) # (!\counter3|count\(2) & (\counter3|count\(3) & ((\counter3|count\(1)) # (!\counter3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(1),
	datac => \counter3|count\(3),
	datad => \counter3|count\(0),
	combout => \counter3|count~0_combout\);

-- Location: FF_X32_Y28_N11
\counter3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter3|count~0_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter2|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count\(3));

-- Location: LCCOMB_X32_Y28_N8
\decoder3|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|Equal15~0_combout\ = (\counter3|count\(3) & (!\counter3|count\(1) & (!\counter3|count\(2) & \counter3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(3),
	datab => \counter3|count\(1),
	datac => \counter3|count\(2),
	datad => \counter3|count\(0),
	combout => \decoder3|Equal15~0_combout\);

-- Location: LCCOMB_X31_Y28_N0
\decoder2|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|Equal15~0_combout\ = (!\counter2|count\(2) & (\counter2|count\(0) & (!\counter2|count\(1) & \counter2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(2),
	datab => \counter2|count\(0),
	datac => \counter2|count\(1),
	datad => \counter2|count\(3),
	combout => \decoder2|Equal15~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\decoder1|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|Equal15~0_combout\ = (\counter1|count\(3) & (\counter1|count\(0) & (!\counter1|count\(1) & !\counter1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(0),
	datac => \counter1|count\(1),
	datad => \counter1|count\(2),
	combout => \decoder1|Equal15~0_combout\);

-- Location: LCCOMB_X32_Y28_N6
\counter3|casout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter3|casout~combout\ = (\casin~input_o\ & (\decoder3|Equal15~0_combout\ & (\decoder2|Equal15~0_combout\ & \decoder1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casin~input_o\,
	datab => \decoder3|Equal15~0_combout\,
	datac => \decoder2|Equal15~0_combout\,
	datad => \decoder1|Equal15~0_combout\,
	combout => \counter3|casout~combout\);

-- Location: LCCOMB_X33_Y28_N28
\counter4|count[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter4|count[0]~3_combout\ = !\counter4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter4|count\(0),
	combout => \counter4|count[0]~3_combout\);

-- Location: FF_X33_Y28_N29
\counter4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter4|count[0]~3_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter3|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count\(0));

-- Location: LCCOMB_X33_Y28_N20
\counter4|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter4|count~1_combout\ = (\counter4|count\(0) & (!\counter4|count\(1) & ((\counter4|count\(2)) # (!\counter4|count\(3))))) # (!\counter4|count\(0) & (((\counter4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(2),
	datab => \counter4|count\(0),
	datac => \counter4|count\(1),
	datad => \counter4|count\(3),
	combout => \counter4|count~1_combout\);

-- Location: FF_X33_Y28_N21
\counter4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter4|count~1_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter3|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count\(1));

-- Location: LCCOMB_X32_Y28_N16
\counter4|count[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter4|count[2]~2_combout\ = \counter4|count\(2) $ (((\counter4|count\(1) & (\counter4|count\(0) & \counter3|casout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(1),
	datab => \counter4|count\(0),
	datac => \counter4|count\(2),
	datad => \counter3|casout~combout\,
	combout => \counter4|count[2]~2_combout\);

-- Location: FF_X32_Y28_N17
\counter4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter4|count[2]~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count\(2));

-- Location: LCCOMB_X33_Y28_N10
\counter4|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter4|count~0_combout\ = (\counter4|count\(2) & (\counter4|count\(3) $ (((\counter4|count\(1) & \counter4|count\(0)))))) # (!\counter4|count\(2) & (\counter4|count\(3) & ((\counter4|count\(1)) # (!\counter4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(2),
	datab => \counter4|count\(1),
	datac => \counter4|count\(3),
	datad => \counter4|count\(0),
	combout => \counter4|count~0_combout\);

-- Location: FF_X33_Y28_N11
\counter4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter4|count~0_combout\,
	clrn => \reset_in~input_o\,
	ena => \counter3|casout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count\(3));

-- Location: LCCOMB_X33_Y28_N18
\decoder4|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|Equal15~0_combout\ = (\counter4|count\(3) & (!\counter4|count\(1) & (!\counter4|count\(2) & \counter4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|Equal15~0_combout\);

-- Location: LCCOMB_X33_Y28_N4
\counter4|casout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter4|casout~combout\ = (\counter3|casout~combout\ & \decoder4|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter3|casout~combout\,
	datad => \decoder4|Equal15~0_combout\,
	combout => \counter4|casout~combout\);

-- Location: IOIBUF_X19_Y29_N8
\clk_orginal~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_orginal,
	o => \clk_orginal~input_o\);

-- Location: CLKCTRL_G12
\clk_orginal~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_orginal~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_orginal~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y3_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = div_5000_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(div_5000_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X11_Y3_N3
\div_5000_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(0));

-- Location: LCCOMB_X11_Y3_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (div_5000_counter(1) & (!\Add0~1\)) # (!div_5000_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!div_5000_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X11_Y3_N5
\div_5000_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(1));

-- Location: LCCOMB_X11_Y3_N6
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (div_5000_counter(2) & (\Add0~3\ $ (GND))) # (!div_5000_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((div_5000_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X11_Y3_N7
\div_5000_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(2));

-- Location: LCCOMB_X11_Y3_N8
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (div_5000_counter(3) & (!\Add0~5\)) # (!div_5000_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!div_5000_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X11_Y3_N30
\div_5000_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000_counter~4_combout\ = (\Add0~6_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \div_5000_counter~4_combout\);

-- Location: FF_X11_Y3_N31
\div_5000_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \div_5000_counter~4_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(3));

-- Location: LCCOMB_X11_Y3_N10
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (div_5000_counter(4) & (\Add0~7\ $ (GND))) # (!div_5000_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((div_5000_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X11_Y3_N11
\div_5000_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(4));

-- Location: LCCOMB_X11_Y3_N12
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (div_5000_counter(5) & (!\Add0~9\)) # (!div_5000_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!div_5000_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X11_Y3_N13
\div_5000_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(5));

-- Location: LCCOMB_X11_Y3_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (div_5000_counter(6) & (\Add0~11\ $ (GND))) # (!div_5000_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((div_5000_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X11_Y3_N15
\div_5000_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(6));

-- Location: LCCOMB_X11_Y3_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (div_5000_counter(7) & (!\Add0~13\)) # (!div_5000_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!div_5000_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X12_Y3_N26
\div_5000_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000_counter~3_combout\ = (\Add0~14_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~3_combout\,
	combout => \div_5000_counter~3_combout\);

-- Location: FF_X12_Y3_N27
\div_5000_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \div_5000_counter~3_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(7));

-- Location: LCCOMB_X11_Y3_N18
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (div_5000_counter(8) & (\Add0~15\ $ (GND))) # (!div_5000_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((div_5000_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X11_Y3_N28
\div_5000_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000_counter~2_combout\ = (\Add0~16_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Equal0~3_combout\,
	combout => \div_5000_counter~2_combout\);

-- Location: FF_X11_Y3_N29
\div_5000_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \div_5000_counter~2_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(8));

-- Location: LCCOMB_X12_Y3_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (div_5000_counter(7) & (div_5000_counter(8) & (div_5000_counter(9) & !div_5000_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(7),
	datab => div_5000_counter(8),
	datac => div_5000_counter(9),
	datad => div_5000_counter(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y3_N8
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!div_5000_counter(4) & (!div_5000_counter(3) & (div_5000_counter(2) & !div_5000_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(4),
	datab => div_5000_counter(3),
	datac => div_5000_counter(2),
	datad => div_5000_counter(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y3_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (div_5000_counter(0) & (!div_5000_counter(11) & (div_5000_counter(12) & !div_5000_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(0),
	datab => div_5000_counter(11),
	datac => div_5000_counter(12),
	datad => div_5000_counter(10),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y3_N6
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (div_5000_counter(1) & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(1),
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X11_Y3_N20
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (div_5000_counter(9) & (!\Add0~17\)) # (!div_5000_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!div_5000_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X12_Y3_N4
\div_5000_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000_counter~1_combout\ = (!\Equal0~3_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => \Add0~18_combout\,
	combout => \div_5000_counter~1_combout\);

-- Location: FF_X12_Y3_N5
\div_5000_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \div_5000_counter~1_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(9));

-- Location: LCCOMB_X11_Y3_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (div_5000_counter(10) & (\Add0~19\ $ (GND))) # (!div_5000_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((div_5000_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_5000_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X11_Y3_N23
\div_5000_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(10));

-- Location: LCCOMB_X11_Y3_N24
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (div_5000_counter(11) & (!\Add0~21\)) # (!div_5000_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!div_5000_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_5000_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X11_Y3_N25
\div_5000_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(11));

-- Location: LCCOMB_X11_Y3_N26
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~23\ $ (!div_5000_counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_5000_counter(12),
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X11_Y3_N0
\div_5000_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_5000_counter~0_combout\ = (\Add0~24_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~3_combout\,
	combout => \div_5000_counter~0_combout\);

-- Location: FF_X11_Y3_N1
\div_5000_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_orginal~inputclkctrl_outclk\,
	d => \div_5000_counter~0_combout\,
	clrn => \reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_5000_counter(12));

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

-- Location: IOIBUF_X0_Y23_N15
\button1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: LCCOMB_X30_Y28_N26
\decoder1|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[0]~0_combout\ = (\counter1|count\(3) & (\counter1|count\(0) & (\counter1|count\(1) $ (\counter1|count\(2))))) # (!\counter1|count\(3) & (!\counter1|count\(1) & (\counter1|count\(0) $ (\counter1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\decoder1|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[1]~1_combout\ = (\counter1|count\(3) & ((\counter1|count\(0) & (\counter1|count\(1))) # (!\counter1|count\(0) & ((\counter1|count\(2)))))) # (!\counter1|count\(3) & (\counter1|count\(2) & (\counter1|count\(1) $ 
-- (\counter1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X30_Y28_N14
\decoder1|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[2]~2_combout\ = (\counter1|count\(3) & (\counter1|count\(2) & ((\counter1|count\(1)) # (!\counter1|count\(0))))) # (!\counter1|count\(3) & (\counter1|count\(1) & (!\counter1|count\(0) & !\counter1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X30_Y28_N20
\decoder1|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[3]~3_combout\ = (\counter1|count\(1) & ((\counter1|count\(0) & ((\counter1|count\(2)))) # (!\counter1|count\(0) & (\counter1|count\(3) & !\counter1|count\(2))))) # (!\counter1|count\(1) & (!\counter1|count\(3) & (\counter1|count\(0) 
-- $ (\counter1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X30_Y28_N22
\decoder1|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[4]~4_combout\ = (\counter1|count\(1) & (!\counter1|count\(3) & (\counter1|count\(0)))) # (!\counter1|count\(1) & ((\counter1|count\(2) & (!\counter1|count\(3))) # (!\counter1|count\(2) & ((\counter1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X30_Y28_N4
\decoder1|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[5]~5_combout\ = (\counter1|count\(1) & (!\counter1|count\(3) & ((\counter1|count\(0)) # (!\counter1|count\(2))))) # (!\counter1|count\(1) & (\counter1|count\(0) & (\counter1|count\(3) $ (!\counter1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X30_Y28_N10
\decoder1|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder1|decoded_out[6]~6_combout\ = (\counter1|count\(0) & ((\counter1|count\(3)) # (\counter1|count\(1) $ (\counter1|count\(2))))) # (!\counter1|count\(0) & ((\counter1|count\(1)) # (\counter1|count\(3) $ (\counter1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(3),
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count\(2),
	combout => \decoder1|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X31_Y28_N18
\decoder2|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[0]~0_combout\ = (\counter2|count\(2) & (!\counter2|count\(1) & (\counter2|count\(0) $ (!\counter2|count\(3))))) # (!\counter2|count\(2) & (\counter2|count\(0) & (\counter2|count\(3) $ (!\counter2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X31_Y28_N12
\decoder2|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[1]~1_combout\ = (\counter2|count\(3) & ((\counter2|count\(0) & ((\counter2|count\(1)))) # (!\counter2|count\(0) & (\counter2|count\(2))))) # (!\counter2|count\(3) & (\counter2|count\(2) & (\counter2|count\(0) $ 
-- (\counter2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X31_Y28_N30
\decoder2|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[2]~2_combout\ = (\counter2|count\(2) & (\counter2|count\(3) & ((\counter2|count\(1)) # (!\counter2|count\(0))))) # (!\counter2|count\(2) & (!\counter2|count\(0) & (!\counter2|count\(3) & \counter2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X31_Y28_N24
\decoder2|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[3]~3_combout\ = (\counter2|count\(1) & ((\counter2|count\(0) & (\counter2|count\(2))) # (!\counter2|count\(0) & (!\counter2|count\(2) & \counter2|count\(3))))) # (!\counter2|count\(1) & (!\counter2|count\(3) & (\counter2|count\(0) $ 
-- (\counter2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X31_Y28_N22
\decoder2|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[4]~4_combout\ = (\counter2|count\(1) & (\counter2|count\(0) & ((!\counter2|count\(3))))) # (!\counter2|count\(1) & ((\counter2|count\(2) & ((!\counter2|count\(3)))) # (!\counter2|count\(2) & (\counter2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X31_Y28_N20
\decoder2|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[5]~5_combout\ = (\counter2|count\(0) & (\counter2|count\(3) $ (((\counter2|count\(1)) # (!\counter2|count\(2)))))) # (!\counter2|count\(0) & (!\counter2|count\(2) & (!\counter2|count\(3) & \counter2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X31_Y28_N14
\decoder2|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder2|decoded_out[6]~6_combout\ = (\counter2|count\(0) & ((\counter2|count\(3)) # (\counter2|count\(2) $ (\counter2|count\(1))))) # (!\counter2|count\(0) & ((\counter2|count\(1)) # (\counter2|count\(2) $ (\counter2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(0),
	datab => \counter2|count\(2),
	datac => \counter2|count\(3),
	datad => \counter2|count\(1),
	combout => \decoder2|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X32_Y28_N22
\decoder3|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[0]~0_combout\ = (\counter3|count\(2) & (!\counter3|count\(1) & (\counter3|count\(0) $ (!\counter3|count\(3))))) # (!\counter3|count\(2) & (\counter3|count\(0) & (\counter3|count\(1) $ (!\counter3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\decoder3|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[1]~1_combout\ = (\counter3|count\(1) & ((\counter3|count\(0) & ((\counter3|count\(3)))) # (!\counter3|count\(0) & (\counter3|count\(2))))) # (!\counter3|count\(1) & (\counter3|count\(2) & (\counter3|count\(0) $ 
-- (\counter3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X32_Y28_N18
\decoder3|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[2]~2_combout\ = (\counter3|count\(2) & (\counter3|count\(3) & ((\counter3|count\(1)) # (!\counter3|count\(0))))) # (!\counter3|count\(2) & (!\counter3|count\(0) & (\counter3|count\(1) & !\counter3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X32_Y28_N24
\decoder3|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[3]~3_combout\ = (\counter3|count\(1) & ((\counter3|count\(2) & (\counter3|count\(0))) # (!\counter3|count\(2) & (!\counter3|count\(0) & \counter3|count\(3))))) # (!\counter3|count\(1) & (!\counter3|count\(3) & (\counter3|count\(2) $ 
-- (\counter3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X32_Y28_N30
\decoder3|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[4]~4_combout\ = (\counter3|count\(1) & (((\counter3|count\(0) & !\counter3|count\(3))))) # (!\counter3|count\(1) & ((\counter3|count\(2) & ((!\counter3|count\(3)))) # (!\counter3|count\(2) & (\counter3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X32_Y28_N28
\decoder3|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[5]~5_combout\ = (\counter3|count\(2) & (\counter3|count\(0) & (\counter3|count\(1) $ (\counter3|count\(3))))) # (!\counter3|count\(2) & (!\counter3|count\(3) & ((\counter3|count\(0)) # (\counter3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X32_Y28_N14
\decoder3|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder3|decoded_out[6]~6_combout\ = (\counter3|count\(0) & ((\counter3|count\(3)) # (\counter3|count\(2) $ (\counter3|count\(1))))) # (!\counter3|count\(0) & ((\counter3|count\(1)) # (\counter3|count\(2) $ (\counter3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|count\(2),
	datab => \counter3|count\(0),
	datac => \counter3|count\(1),
	datad => \counter3|count\(3),
	combout => \decoder3|decoded_out[6]~6_combout\);

-- Location: LCCOMB_X33_Y28_N6
\decoder4|decoded_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[0]~0_combout\ = (\counter4|count\(3) & (\counter4|count\(0) & (\counter4|count\(1) $ (\counter4|count\(2))))) # (!\counter4|count\(3) & (!\counter4|count\(1) & (\counter4|count\(2) $ (\counter4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[0]~0_combout\);

-- Location: LCCOMB_X33_Y28_N24
\decoder4|decoded_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[1]~1_combout\ = (\counter4|count\(3) & ((\counter4|count\(0) & (\counter4|count\(1))) # (!\counter4|count\(0) & ((\counter4|count\(2)))))) # (!\counter4|count\(3) & (\counter4|count\(2) & (\counter4|count\(1) $ 
-- (\counter4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[1]~1_combout\);

-- Location: LCCOMB_X33_Y28_N2
\decoder4|decoded_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[2]~2_combout\ = (\counter4|count\(3) & (\counter4|count\(2) & ((\counter4|count\(1)) # (!\counter4|count\(0))))) # (!\counter4|count\(3) & (\counter4|count\(1) & (!\counter4|count\(2) & !\counter4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[2]~2_combout\);

-- Location: LCCOMB_X33_Y28_N0
\decoder4|decoded_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[3]~3_combout\ = (\counter4|count\(1) & ((\counter4|count\(2) & ((\counter4|count\(0)))) # (!\counter4|count\(2) & (\counter4|count\(3) & !\counter4|count\(0))))) # (!\counter4|count\(1) & (!\counter4|count\(3) & (\counter4|count\(2) 
-- $ (\counter4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[3]~3_combout\);

-- Location: LCCOMB_X33_Y28_N26
\decoder4|decoded_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[4]~4_combout\ = (\counter4|count\(1) & (!\counter4|count\(3) & ((\counter4|count\(0))))) # (!\counter4|count\(1) & ((\counter4|count\(2) & (!\counter4|count\(3))) # (!\counter4|count\(2) & ((\counter4|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[4]~4_combout\);

-- Location: LCCOMB_X33_Y28_N12
\decoder4|decoded_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[5]~5_combout\ = (\counter4|count\(1) & (!\counter4|count\(3) & ((\counter4|count\(0)) # (!\counter4|count\(2))))) # (!\counter4|count\(1) & (\counter4|count\(0) & (\counter4|count\(3) $ (!\counter4|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[5]~5_combout\);

-- Location: LCCOMB_X33_Y28_N22
\decoder4|decoded_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decoder4|decoded_out[6]~6_combout\ = (\counter4|count\(0) & ((\counter4|count\(3)) # (\counter4|count\(1) $ (\counter4|count\(2))))) # (!\counter4|count\(0) & ((\counter4|count\(1)) # (\counter4|count\(3) $ (\counter4|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|count\(3),
	datab => \counter4|count\(1),
	datac => \counter4|count\(2),
	datad => \counter4|count\(0),
	combout => \decoder4|decoded_out[6]~6_combout\);

ww_casout <= \casout~output_o\;

ww_clk1 <= \clk1~output_o\;

ww_clk2 <= \clk2~output_o\;

ww_reset1 <= \reset1~output_o\;

ww_reset2 <= \reset2~output_o\;

ww_stop <= \stop~output_o\;

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


