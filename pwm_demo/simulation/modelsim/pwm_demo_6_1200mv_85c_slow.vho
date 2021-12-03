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

-- DATE "12/03/2021 15:09:16"

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

ENTITY 	pwm_demo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END pwm_demo;

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
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm_demo IS
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
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \div_count[0]~6_combout\ : std_logic;
SIGNAL \div_count[0]~feeder_combout\ : std_logic;
SIGNAL \div_count[3]~13\ : std_logic;
SIGNAL \div_count[4]~14_combout\ : std_logic;
SIGNAL \div_count[4]~15\ : std_logic;
SIGNAL \div_count[5]~16_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \div_count[0]~7\ : std_logic;
SIGNAL \div_count[1]~8_combout\ : std_logic;
SIGNAL \div_count[1]~feeder_combout\ : std_logic;
SIGNAL \div_count[1]~9\ : std_logic;
SIGNAL \div_count[2]~10_combout\ : std_logic;
SIGNAL \div_count[2]~11\ : std_logic;
SIGNAL \div_count[3]~12_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \div_ms_count[0]~21_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \div_ms_count[0]~22\ : std_logic;
SIGNAL \div_ms_count[1]~23_combout\ : std_logic;
SIGNAL \div_ms_count[1]~24\ : std_logic;
SIGNAL \div_ms_count[2]~25_combout\ : std_logic;
SIGNAL \div_ms_count[2]~26\ : std_logic;
SIGNAL \div_ms_count[3]~27_combout\ : std_logic;
SIGNAL \div_ms_count[3]~28\ : std_logic;
SIGNAL \div_ms_count[4]~29_combout\ : std_logic;
SIGNAL \div_ms_count[4]~30\ : std_logic;
SIGNAL \div_ms_count[5]~31_combout\ : std_logic;
SIGNAL \div_ms_count[5]~32\ : std_logic;
SIGNAL \div_ms_count[6]~33_combout\ : std_logic;
SIGNAL \div_ms_count[6]~34\ : std_logic;
SIGNAL \div_ms_count[7]~35_combout\ : std_logic;
SIGNAL \div_ms_count[7]~36\ : std_logic;
SIGNAL \div_ms_count[8]~37_combout\ : std_logic;
SIGNAL \div_ms_count[8]~38\ : std_logic;
SIGNAL \div_ms_count[9]~39_combout\ : std_logic;
SIGNAL \div_ms_count[9]~40\ : std_logic;
SIGNAL \div_ms_count[10]~41_combout\ : std_logic;
SIGNAL \div_ms_count[10]~42\ : std_logic;
SIGNAL \div_ms_count[11]~43_combout\ : std_logic;
SIGNAL \div_ms_count[11]~44\ : std_logic;
SIGNAL \div_ms_count[12]~45_combout\ : std_logic;
SIGNAL \div_ms_count[12]~46\ : std_logic;
SIGNAL \div_ms_count[13]~47_combout\ : std_logic;
SIGNAL \div_ms_count[13]~48\ : std_logic;
SIGNAL \div_ms_count[14]~49_combout\ : std_logic;
SIGNAL \div_ms_count[14]~50\ : std_logic;
SIGNAL \div_ms_count[15]~51_combout\ : std_logic;
SIGNAL \div_ms_count[15]~52\ : std_logic;
SIGNAL \div_ms_count[16]~53_combout\ : std_logic;
SIGNAL \div_ms_count[16]~54\ : std_logic;
SIGNAL \div_ms_count[17]~55_combout\ : std_logic;
SIGNAL \div_ms_count[17]~56\ : std_logic;
SIGNAL \div_ms_count[18]~57_combout\ : std_logic;
SIGNAL \div_ms_count[18]~58\ : std_logic;
SIGNAL \div_ms_count[19]~59_combout\ : std_logic;
SIGNAL \div_ms_count[19]~60\ : std_logic;
SIGNAL \div_ms_count[20]~61_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \r0[7]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \r5[7]~0_combout\ : std_logic;
SIGNAL \r7[7]~feeder_combout\ : std_logic;
SIGNAL \r8[7]~feeder_combout\ : std_logic;
SIGNAL \r9[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_count[0]~21_combout\ : std_logic;
SIGNAL \pwm_count[1]~7_combout\ : std_logic;
SIGNAL \pwm_count[1]~8\ : std_logic;
SIGNAL \pwm_count[2]~9_combout\ : std_logic;
SIGNAL \pwm_count[2]~10\ : std_logic;
SIGNAL \pwm_count[3]~11_combout\ : std_logic;
SIGNAL \pwm_count[3]~12\ : std_logic;
SIGNAL \pwm_count[4]~13_combout\ : std_logic;
SIGNAL \pwm_count[4]~14\ : std_logic;
SIGNAL \pwm_count[5]~15_combout\ : std_logic;
SIGNAL \pwm_count[5]~16\ : std_logic;
SIGNAL \pwm_count[6]~17_combout\ : std_logic;
SIGNAL \pwm_count[6]~18\ : std_logic;
SIGNAL \pwm_count[7]~19_combout\ : std_logic;
SIGNAL \r0[6]~1_combout\ : std_logic;
SIGNAL \r2[6]~0_combout\ : std_logic;
SIGNAL \r3[6]~feeder_combout\ : std_logic;
SIGNAL \r4[6]~feeder_combout\ : std_logic;
SIGNAL \r5[6]~1_combout\ : std_logic;
SIGNAL \r8[6]~0_combout\ : std_logic;
SIGNAL \r9[6]~feeder_combout\ : std_logic;
SIGNAL \r0[5]~2_combout\ : std_logic;
SIGNAL \r1[5]~0_combout\ : std_logic;
SIGNAL \r2[5]~1_combout\ : std_logic;
SIGNAL \r3[5]~feeder_combout\ : std_logic;
SIGNAL \r4[5]~0_combout\ : std_logic;
SIGNAL \r5[5]~2_combout\ : std_logic;
SIGNAL \r6[5]~feeder_combout\ : std_logic;
SIGNAL \r7[5]~0_combout\ : std_logic;
SIGNAL \r8[5]~1_combout\ : std_logic;
SIGNAL \r9[5]~0_combout\ : std_logic;
SIGNAL \r0[4]~feeder_combout\ : std_logic;
SIGNAL \r1[4]~1_combout\ : std_logic;
SIGNAL \r2[4]~feeder_combout\ : std_logic;
SIGNAL \r3[4]~0_combout\ : std_logic;
SIGNAL \r4[4]~1_combout\ : std_logic;
SIGNAL \r6[4]~0_combout\ : std_logic;
SIGNAL \r8[4]~2_combout\ : std_logic;
SIGNAL \r9[4]~1_combout\ : std_logic;
SIGNAL \r0[3]~3_combout\ : std_logic;
SIGNAL \r1[3]~2_combout\ : std_logic;
SIGNAL \r2[3]~2_combout\ : std_logic;
SIGNAL \r3[3]~1_combout\ : std_logic;
SIGNAL \r4[3]~feeder_combout\ : std_logic;
SIGNAL \r5[3]~3_combout\ : std_logic;
SIGNAL \r6[3]~1_combout\ : std_logic;
SIGNAL \r7[3]~1_combout\ : std_logic;
SIGNAL \r9[3]~2_combout\ : std_logic;
SIGNAL \r1[2]~feeder_combout\ : std_logic;
SIGNAL \r2[2]~3_combout\ : std_logic;
SIGNAL \r4[2]~2_combout\ : std_logic;
SIGNAL \r5[2]~feeder_combout\ : std_logic;
SIGNAL \r6[2]~2_combout\ : std_logic;
SIGNAL \r8[2]~3_combout\ : std_logic;
SIGNAL \r9[2]~feeder_combout\ : std_logic;
SIGNAL \r0[1]~feeder_combout\ : std_logic;
SIGNAL \r1[1]~3_combout\ : std_logic;
SIGNAL \r2[1]~4_combout\ : std_logic;
SIGNAL \r3[1]~2_combout\ : std_logic;
SIGNAL \r4[1]~3_combout\ : std_logic;
SIGNAL \r5[1]~4_combout\ : std_logic;
SIGNAL \r6[1]~3_combout\ : std_logic;
SIGNAL \r7[1]~2_combout\ : std_logic;
SIGNAL \r8[1]~4_combout\ : std_logic;
SIGNAL \r9[1]~feeder_combout\ : std_logic;
SIGNAL \r0[0]~4_combout\ : std_logic;
SIGNAL \r1[0]~feeder_combout\ : std_logic;
SIGNAL \r4[0]~feeder_combout\ : std_logic;
SIGNAL \r5[0]~feeder_combout\ : std_logic;
SIGNAL \r9[0]~3_combout\ : std_logic;
SIGNAL \LessThan13~1_cout\ : std_logic;
SIGNAL \LessThan13~3_cout\ : std_logic;
SIGNAL \LessThan13~5_cout\ : std_logic;
SIGNAL \LessThan13~7_cout\ : std_logic;
SIGNAL \LessThan13~9_cout\ : std_logic;
SIGNAL \LessThan13~11_cout\ : std_logic;
SIGNAL \LessThan13~13_cout\ : std_logic;
SIGNAL \LessThan13~14_combout\ : std_logic;
SIGNAL \LessThan12~1_cout\ : std_logic;
SIGNAL \LessThan12~3_cout\ : std_logic;
SIGNAL \LessThan12~5_cout\ : std_logic;
SIGNAL \LessThan12~7_cout\ : std_logic;
SIGNAL \LessThan12~9_cout\ : std_logic;
SIGNAL \LessThan12~11_cout\ : std_logic;
SIGNAL \LessThan12~13_cout\ : std_logic;
SIGNAL \LessThan12~14_combout\ : std_logic;
SIGNAL \LessThan11~1_cout\ : std_logic;
SIGNAL \LessThan11~3_cout\ : std_logic;
SIGNAL \LessThan11~5_cout\ : std_logic;
SIGNAL \LessThan11~7_cout\ : std_logic;
SIGNAL \LessThan11~9_cout\ : std_logic;
SIGNAL \LessThan11~11_cout\ : std_logic;
SIGNAL \LessThan11~13_cout\ : std_logic;
SIGNAL \LessThan11~14_combout\ : std_logic;
SIGNAL \LessThan10~1_cout\ : std_logic;
SIGNAL \LessThan10~3_cout\ : std_logic;
SIGNAL \LessThan10~5_cout\ : std_logic;
SIGNAL \LessThan10~7_cout\ : std_logic;
SIGNAL \LessThan10~9_cout\ : std_logic;
SIGNAL \LessThan10~11_cout\ : std_logic;
SIGNAL \LessThan10~13_cout\ : std_logic;
SIGNAL \LessThan10~14_combout\ : std_logic;
SIGNAL \LessThan9~1_cout\ : std_logic;
SIGNAL \LessThan9~3_cout\ : std_logic;
SIGNAL \LessThan9~5_cout\ : std_logic;
SIGNAL \LessThan9~7_cout\ : std_logic;
SIGNAL \LessThan9~9_cout\ : std_logic;
SIGNAL \LessThan9~11_cout\ : std_logic;
SIGNAL \LessThan9~13_cout\ : std_logic;
SIGNAL \LessThan9~14_combout\ : std_logic;
SIGNAL \LessThan8~1_cout\ : std_logic;
SIGNAL \LessThan8~3_cout\ : std_logic;
SIGNAL \LessThan8~5_cout\ : std_logic;
SIGNAL \LessThan8~7_cout\ : std_logic;
SIGNAL \LessThan8~9_cout\ : std_logic;
SIGNAL \LessThan8~11_cout\ : std_logic;
SIGNAL \LessThan8~13_cout\ : std_logic;
SIGNAL \LessThan8~14_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~14_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~14_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~14_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL r9 : std_logic_vector(7 DOWNTO 0);
SIGNAL r8 : std_logic_vector(7 DOWNTO 0);
SIGNAL r7 : std_logic_vector(7 DOWNTO 0);
SIGNAL r6 : std_logic_vector(7 DOWNTO 0);
SIGNAL r5 : std_logic_vector(7 DOWNTO 0);
SIGNAL r4 : std_logic_vector(7 DOWNTO 0);
SIGNAL r3 : std_logic_vector(7 DOWNTO 0);
SIGNAL r2 : std_logic_vector(7 DOWNTO 0);
SIGNAL r1 : std_logic_vector(7 DOWNTO 0);
SIGNAL r0 : std_logic_vector(7 DOWNTO 0);
SIGNAL pwm_count : std_logic_vector(7 DOWNTO 0);
SIGNAL div_ms_count : std_logic_vector(20 DOWNTO 0);
SIGNAL div_count : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

-- Location: IOOBUF_X0_Y20_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan13~14_combout\,
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
	i => \LessThan12~14_combout\,
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
	i => \LessThan11~14_combout\,
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
	i => \LessThan10~14_combout\,
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
	i => \LessThan9~14_combout\,
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
	i => \LessThan8~14_combout\,
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
	i => \LessThan7~14_combout\,
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
	i => \LessThan6~14_combout\,
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
	i => \LessThan5~14_combout\,
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
	i => \LessThan4~14_combout\,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

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

-- Location: LCCOMB_X19_Y28_N8
\div_count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[0]~6_combout\ = div_count(0) $ (VCC)
-- \div_count[0]~7\ = CARRY(div_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(0),
	datad => VCC,
	combout => \div_count[0]~6_combout\,
	cout => \div_count[0]~7\);

-- Location: LCCOMB_X19_Y28_N26
\div_count[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[0]~feeder_combout\ = \div_count[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_count[0]~6_combout\,
	combout => \div_count[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y28_N14
\div_count[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[3]~12_combout\ = (div_count(3) & (!\div_count[2]~11\)) # (!div_count(3) & ((\div_count[2]~11\) # (GND)))
-- \div_count[3]~13\ = CARRY((!\div_count[2]~11\) # (!div_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(3),
	datad => VCC,
	cin => \div_count[2]~11\,
	combout => \div_count[3]~12_combout\,
	cout => \div_count[3]~13\);

-- Location: LCCOMB_X19_Y28_N16
\div_count[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[4]~14_combout\ = (div_count(4) & (\div_count[3]~13\ $ (GND))) # (!div_count(4) & (!\div_count[3]~13\ & VCC))
-- \div_count[4]~15\ = CARRY((div_count(4) & !\div_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(4),
	datad => VCC,
	cin => \div_count[3]~13\,
	combout => \div_count[4]~14_combout\,
	cout => \div_count[4]~15\);

-- Location: FF_X19_Y28_N17
\div_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[4]~14_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(4));

-- Location: LCCOMB_X19_Y28_N18
\div_count[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[5]~16_combout\ = \div_count[4]~15\ $ (div_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_count(5),
	cin => \div_count[4]~15\,
	combout => \div_count[5]~16_combout\);

-- Location: FF_X19_Y28_N19
\div_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[5]~16_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(5));

-- Location: LCCOMB_X19_Y28_N4
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!div_count(2) & (!div_count(0) & !div_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(2),
	datac => div_count(0),
	datad => div_count(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y28_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (div_count(5) & (div_count(4) & ((div_count(3)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(5),
	datab => div_count(3),
	datac => \LessThan1~0_combout\,
	datad => div_count(4),
	combout => \LessThan0~0_combout\);

-- Location: FF_X19_Y28_N27
\div_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[0]~feeder_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(0));

-- Location: LCCOMB_X19_Y28_N10
\div_count[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[1]~8_combout\ = (div_count(1) & (!\div_count[0]~7\)) # (!div_count(1) & ((\div_count[0]~7\) # (GND)))
-- \div_count[1]~9\ = CARRY((!\div_count[0]~7\) # (!div_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(1),
	datad => VCC,
	cin => \div_count[0]~7\,
	combout => \div_count[1]~8_combout\,
	cout => \div_count[1]~9\);

-- Location: LCCOMB_X19_Y28_N0
\div_count[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[1]~feeder_combout\ = \div_count[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_count[1]~8_combout\,
	combout => \div_count[1]~feeder_combout\);

-- Location: FF_X19_Y28_N1
\div_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[1]~feeder_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(1));

-- Location: LCCOMB_X19_Y28_N12
\div_count[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_count[2]~10_combout\ = (div_count(2) & (\div_count[1]~9\ $ (GND))) # (!div_count(2) & (!\div_count[1]~9\ & VCC))
-- \div_count[2]~11\ = CARRY((div_count(2) & !\div_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(2),
	datad => VCC,
	cin => \div_count[1]~9\,
	combout => \div_count[2]~10_combout\,
	cout => \div_count[2]~11\);

-- Location: FF_X19_Y28_N13
\div_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[2]~10_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(2));

-- Location: FF_X19_Y28_N15
\div_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \div_count[3]~12_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(3));

-- Location: LCCOMB_X19_Y28_N30
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!div_count(5) & (((\LessThan1~0_combout\) # (!div_count(4))) # (!div_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(3),
	datab => div_count(5),
	datac => \LessThan1~0_combout\,
	datad => div_count(4),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G14
\rtl~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y26_N12
\div_ms_count[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[0]~21_combout\ = div_ms_count(0) $ (VCC)
-- \div_ms_count[0]~22\ = CARRY(div_ms_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(0),
	datad => VCC,
	combout => \div_ms_count[0]~21_combout\,
	cout => \div_ms_count[0]~22\);

-- Location: LCCOMB_X22_Y25_N22
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!div_ms_count(13) & (!div_ms_count(14) & (!div_ms_count(12) & !div_ms_count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(13),
	datab => div_ms_count(14),
	datac => div_ms_count(12),
	datad => div_ms_count(11),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y26_N0
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!div_ms_count(5) & (!div_ms_count(6) & (!div_ms_count(8) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(5),
	datab => div_ms_count(6),
	datac => div_ms_count(8),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X22_Y26_N10
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (((!div_ms_count(2)) # (!div_ms_count(1))) # (!div_ms_count(4))) # (!div_ms_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(0),
	datab => div_ms_count(4),
	datac => div_ms_count(1),
	datad => div_ms_count(2),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X22_Y26_N4
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~3_combout\) # (!div_ms_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(3),
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X22_Y25_N24
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!div_ms_count(8) & !div_ms_count(7))) # (!div_ms_count(9))) # (!div_ms_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(8),
	datab => div_ms_count(10),
	datac => div_ms_count(9),
	datad => div_ms_count(7),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y25_N28
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((\LessThan2~0_combout\ & \LessThan2~1_combout\)) # (!div_ms_count(16))) # (!div_ms_count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(15),
	datab => div_ms_count(16),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y26_N2
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((!\LessThan2~2_combout\ & ((!\LessThan2~4_combout\) # (!\LessThan2~5_combout\)))) # (!\LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan2~5_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~6_combout\);

-- Location: FF_X22_Y26_N13
\div_ms_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \div_ms_count[0]~21_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(0));

-- Location: LCCOMB_X22_Y26_N14
\div_ms_count[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[1]~23_combout\ = (div_ms_count(1) & (!\div_ms_count[0]~22\)) # (!div_ms_count(1) & ((\div_ms_count[0]~22\) # (GND)))
-- \div_ms_count[1]~24\ = CARRY((!\div_ms_count[0]~22\) # (!div_ms_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(1),
	datad => VCC,
	cin => \div_ms_count[0]~22\,
	combout => \div_ms_count[1]~23_combout\,
	cout => \div_ms_count[1]~24\);

-- Location: FF_X22_Y26_N15
\div_ms_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \div_ms_count[1]~23_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(1));

-- Location: LCCOMB_X22_Y26_N16
\div_ms_count[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[2]~25_combout\ = (div_ms_count(2) & (\div_ms_count[1]~24\ $ (GND))) # (!div_ms_count(2) & (!\div_ms_count[1]~24\ & VCC))
-- \div_ms_count[2]~26\ = CARRY((div_ms_count(2) & !\div_ms_count[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(2),
	datad => VCC,
	cin => \div_ms_count[1]~24\,
	combout => \div_ms_count[2]~25_combout\,
	cout => \div_ms_count[2]~26\);

-- Location: FF_X22_Y26_N17
\div_ms_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \div_ms_count[2]~25_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(2));

-- Location: LCCOMB_X22_Y26_N18
\div_ms_count[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[3]~27_combout\ = (div_ms_count(3) & (!\div_ms_count[2]~26\)) # (!div_ms_count(3) & ((\div_ms_count[2]~26\) # (GND)))
-- \div_ms_count[3]~28\ = CARRY((!\div_ms_count[2]~26\) # (!div_ms_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(3),
	datad => VCC,
	cin => \div_ms_count[2]~26\,
	combout => \div_ms_count[3]~27_combout\,
	cout => \div_ms_count[3]~28\);

-- Location: FF_X22_Y26_N19
\div_ms_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \div_ms_count[3]~27_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(3));

-- Location: LCCOMB_X22_Y26_N20
\div_ms_count[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[4]~29_combout\ = (div_ms_count(4) & (\div_ms_count[3]~28\ $ (GND))) # (!div_ms_count(4) & (!\div_ms_count[3]~28\ & VCC))
-- \div_ms_count[4]~30\ = CARRY((div_ms_count(4) & !\div_ms_count[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(4),
	datad => VCC,
	cin => \div_ms_count[3]~28\,
	combout => \div_ms_count[4]~29_combout\,
	cout => \div_ms_count[4]~30\);

-- Location: FF_X22_Y26_N21
\div_ms_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[4]~29_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(4));

-- Location: LCCOMB_X22_Y26_N22
\div_ms_count[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[5]~31_combout\ = (div_ms_count(5) & (!\div_ms_count[4]~30\)) # (!div_ms_count(5) & ((\div_ms_count[4]~30\) # (GND)))
-- \div_ms_count[5]~32\ = CARRY((!\div_ms_count[4]~30\) # (!div_ms_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(5),
	datad => VCC,
	cin => \div_ms_count[4]~30\,
	combout => \div_ms_count[5]~31_combout\,
	cout => \div_ms_count[5]~32\);

-- Location: FF_X22_Y26_N23
\div_ms_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[5]~31_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(5));

-- Location: LCCOMB_X22_Y26_N24
\div_ms_count[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[6]~33_combout\ = (div_ms_count(6) & (\div_ms_count[5]~32\ $ (GND))) # (!div_ms_count(6) & (!\div_ms_count[5]~32\ & VCC))
-- \div_ms_count[6]~34\ = CARRY((div_ms_count(6) & !\div_ms_count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(6),
	datad => VCC,
	cin => \div_ms_count[5]~32\,
	combout => \div_ms_count[6]~33_combout\,
	cout => \div_ms_count[6]~34\);

-- Location: FF_X22_Y26_N25
\div_ms_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[6]~33_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(6));

-- Location: LCCOMB_X22_Y26_N26
\div_ms_count[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[7]~35_combout\ = (div_ms_count(7) & (!\div_ms_count[6]~34\)) # (!div_ms_count(7) & ((\div_ms_count[6]~34\) # (GND)))
-- \div_ms_count[7]~36\ = CARRY((!\div_ms_count[6]~34\) # (!div_ms_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(7),
	datad => VCC,
	cin => \div_ms_count[6]~34\,
	combout => \div_ms_count[7]~35_combout\,
	cout => \div_ms_count[7]~36\);

-- Location: FF_X22_Y26_N27
\div_ms_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[7]~35_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(7));

-- Location: LCCOMB_X22_Y26_N28
\div_ms_count[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[8]~37_combout\ = (div_ms_count(8) & (\div_ms_count[7]~36\ $ (GND))) # (!div_ms_count(8) & (!\div_ms_count[7]~36\ & VCC))
-- \div_ms_count[8]~38\ = CARRY((div_ms_count(8) & !\div_ms_count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(8),
	datad => VCC,
	cin => \div_ms_count[7]~36\,
	combout => \div_ms_count[8]~37_combout\,
	cout => \div_ms_count[8]~38\);

-- Location: FF_X22_Y26_N29
\div_ms_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[8]~37_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(8));

-- Location: LCCOMB_X22_Y26_N30
\div_ms_count[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[9]~39_combout\ = (div_ms_count(9) & (!\div_ms_count[8]~38\)) # (!div_ms_count(9) & ((\div_ms_count[8]~38\) # (GND)))
-- \div_ms_count[9]~40\ = CARRY((!\div_ms_count[8]~38\) # (!div_ms_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(9),
	datad => VCC,
	cin => \div_ms_count[8]~38\,
	combout => \div_ms_count[9]~39_combout\,
	cout => \div_ms_count[9]~40\);

-- Location: FF_X22_Y26_N31
\div_ms_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[9]~39_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(9));

-- Location: LCCOMB_X22_Y25_N0
\div_ms_count[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[10]~41_combout\ = (div_ms_count(10) & (\div_ms_count[9]~40\ $ (GND))) # (!div_ms_count(10) & (!\div_ms_count[9]~40\ & VCC))
-- \div_ms_count[10]~42\ = CARRY((div_ms_count(10) & !\div_ms_count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(10),
	datad => VCC,
	cin => \div_ms_count[9]~40\,
	combout => \div_ms_count[10]~41_combout\,
	cout => \div_ms_count[10]~42\);

-- Location: FF_X22_Y25_N1
\div_ms_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \div_ms_count[10]~41_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(10));

-- Location: LCCOMB_X22_Y25_N2
\div_ms_count[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[11]~43_combout\ = (div_ms_count(11) & (!\div_ms_count[10]~42\)) # (!div_ms_count(11) & ((\div_ms_count[10]~42\) # (GND)))
-- \div_ms_count[11]~44\ = CARRY((!\div_ms_count[10]~42\) # (!div_ms_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(11),
	datad => VCC,
	cin => \div_ms_count[10]~42\,
	combout => \div_ms_count[11]~43_combout\,
	cout => \div_ms_count[11]~44\);

-- Location: FF_X22_Y25_N3
\div_ms_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[11]~43_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(11));

-- Location: LCCOMB_X22_Y25_N4
\div_ms_count[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[12]~45_combout\ = (div_ms_count(12) & (\div_ms_count[11]~44\ $ (GND))) # (!div_ms_count(12) & (!\div_ms_count[11]~44\ & VCC))
-- \div_ms_count[12]~46\ = CARRY((div_ms_count(12) & !\div_ms_count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(12),
	datad => VCC,
	cin => \div_ms_count[11]~44\,
	combout => \div_ms_count[12]~45_combout\,
	cout => \div_ms_count[12]~46\);

-- Location: FF_X22_Y25_N5
\div_ms_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[12]~45_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(12));

-- Location: LCCOMB_X22_Y25_N6
\div_ms_count[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[13]~47_combout\ = (div_ms_count(13) & (!\div_ms_count[12]~46\)) # (!div_ms_count(13) & ((\div_ms_count[12]~46\) # (GND)))
-- \div_ms_count[13]~48\ = CARRY((!\div_ms_count[12]~46\) # (!div_ms_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(13),
	datad => VCC,
	cin => \div_ms_count[12]~46\,
	combout => \div_ms_count[13]~47_combout\,
	cout => \div_ms_count[13]~48\);

-- Location: FF_X22_Y25_N7
\div_ms_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[13]~47_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(13));

-- Location: LCCOMB_X22_Y25_N8
\div_ms_count[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[14]~49_combout\ = (div_ms_count(14) & (\div_ms_count[13]~48\ $ (GND))) # (!div_ms_count(14) & (!\div_ms_count[13]~48\ & VCC))
-- \div_ms_count[14]~50\ = CARRY((div_ms_count(14) & !\div_ms_count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(14),
	datad => VCC,
	cin => \div_ms_count[13]~48\,
	combout => \div_ms_count[14]~49_combout\,
	cout => \div_ms_count[14]~50\);

-- Location: FF_X22_Y25_N9
\div_ms_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[14]~49_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(14));

-- Location: LCCOMB_X22_Y25_N10
\div_ms_count[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[15]~51_combout\ = (div_ms_count(15) & (!\div_ms_count[14]~50\)) # (!div_ms_count(15) & ((\div_ms_count[14]~50\) # (GND)))
-- \div_ms_count[15]~52\ = CARRY((!\div_ms_count[14]~50\) # (!div_ms_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(15),
	datad => VCC,
	cin => \div_ms_count[14]~50\,
	combout => \div_ms_count[15]~51_combout\,
	cout => \div_ms_count[15]~52\);

-- Location: FF_X22_Y25_N11
\div_ms_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[15]~51_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(15));

-- Location: LCCOMB_X22_Y25_N12
\div_ms_count[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[16]~53_combout\ = (div_ms_count(16) & (\div_ms_count[15]~52\ $ (GND))) # (!div_ms_count(16) & (!\div_ms_count[15]~52\ & VCC))
-- \div_ms_count[16]~54\ = CARRY((div_ms_count(16) & !\div_ms_count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(16),
	datad => VCC,
	cin => \div_ms_count[15]~52\,
	combout => \div_ms_count[16]~53_combout\,
	cout => \div_ms_count[16]~54\);

-- Location: FF_X22_Y25_N13
\div_ms_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[16]~53_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(16));

-- Location: LCCOMB_X22_Y25_N14
\div_ms_count[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[17]~55_combout\ = (div_ms_count(17) & (!\div_ms_count[16]~54\)) # (!div_ms_count(17) & ((\div_ms_count[16]~54\) # (GND)))
-- \div_ms_count[17]~56\ = CARRY((!\div_ms_count[16]~54\) # (!div_ms_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(17),
	datad => VCC,
	cin => \div_ms_count[16]~54\,
	combout => \div_ms_count[17]~55_combout\,
	cout => \div_ms_count[17]~56\);

-- Location: FF_X22_Y25_N15
\div_ms_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[17]~55_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(17));

-- Location: LCCOMB_X22_Y25_N16
\div_ms_count[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[18]~57_combout\ = (div_ms_count(18) & (\div_ms_count[17]~56\ $ (GND))) # (!div_ms_count(18) & (!\div_ms_count[17]~56\ & VCC))
-- \div_ms_count[18]~58\ = CARRY((div_ms_count(18) & !\div_ms_count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_ms_count(18),
	datad => VCC,
	cin => \div_ms_count[17]~56\,
	combout => \div_ms_count[18]~57_combout\,
	cout => \div_ms_count[18]~58\);

-- Location: FF_X22_Y25_N17
\div_ms_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[18]~57_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(18));

-- Location: LCCOMB_X22_Y25_N18
\div_ms_count[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[19]~59_combout\ = (div_ms_count(19) & (!\div_ms_count[18]~58\)) # (!div_ms_count(19) & ((\div_ms_count[18]~58\) # (GND)))
-- \div_ms_count[19]~60\ = CARRY((!\div_ms_count[18]~58\) # (!div_ms_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(19),
	datad => VCC,
	cin => \div_ms_count[18]~58\,
	combout => \div_ms_count[19]~59_combout\,
	cout => \div_ms_count[19]~60\);

-- Location: FF_X22_Y25_N19
\div_ms_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[19]~59_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(19));

-- Location: LCCOMB_X22_Y25_N20
\div_ms_count[20]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_ms_count[20]~61_combout\ = div_ms_count(20) $ (!\div_ms_count[19]~60\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(20),
	cin => \div_ms_count[19]~60\,
	combout => \div_ms_count[20]~61_combout\);

-- Location: FF_X22_Y25_N21
\div_ms_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \div_ms_count[20]~61_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_ms_count(20));

-- Location: LCCOMB_X22_Y25_N26
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!div_ms_count(17) & (!div_ms_count(18) & (!div_ms_count(20) & !div_ms_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(17),
	datab => div_ms_count(18),
	datac => div_ms_count(20),
	datad => div_ms_count(19),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y26_N8
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (div_ms_count(7)) # ((div_ms_count(6) & ((div_ms_count(5)) # (div_ms_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(5),
	datab => div_ms_count(6),
	datac => div_ms_count(7),
	datad => div_ms_count(4),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y25_N30
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!div_ms_count(13) & (!div_ms_count(11) & (!div_ms_count(12) & !div_ms_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(13),
	datab => div_ms_count(11),
	datac => div_ms_count(12),
	datad => div_ms_count(10),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y26_N6
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\LessThan3~1_combout\ & (((!div_ms_count(8)) # (!\LessThan3~2_combout\)) # (!div_ms_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_ms_count(9),
	datab => \LessThan3~2_combout\,
	datac => \LessThan3~1_combout\,
	datad => div_ms_count(8),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X23_Y25_N30
\LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!div_ms_count(14)) # (!div_ms_count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => div_ms_count(15),
	datad => div_ms_count(14),
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X23_Y25_N24
\rtl~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((\LessThan3~0_combout\ & (!div_ms_count(16) & ((\LessThan3~3_combout\) # (\LessThan3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~3_combout\,
	datac => \LessThan3~4_combout\,
	datad => div_ms_count(16),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G10
\rtl~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X31_Y24_N20
\r0[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[7]~0_combout\ = !r9(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r9(7),
	combout => \r0[7]~0_combout\);

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

-- Location: FF_X31_Y24_N21
\r0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[7]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(7));

-- Location: FF_X30_Y24_N21
\r1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r0(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(7));

-- Location: FF_X30_Y24_N5
\r2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r1(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(7));

-- Location: FF_X30_Y24_N1
\r3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r2(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(7));

-- Location: FF_X30_Y24_N19
\r4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r3(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(7));

-- Location: LCCOMB_X31_Y24_N8
\r5[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[7]~0_combout\ = !r4(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(7),
	combout => \r5[7]~0_combout\);

-- Location: FF_X31_Y24_N9
\r5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[7]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(7));

-- Location: FF_X30_Y24_N15
\r6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r5(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(7));

-- Location: LCCOMB_X31_Y24_N22
\r7[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r7[7]~feeder_combout\ = r6(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r6(7),
	combout => \r7[7]~feeder_combout\);

-- Location: FF_X31_Y24_N23
\r7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r7[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(7));

-- Location: LCCOMB_X31_Y24_N24
\r8[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[7]~feeder_combout\ = r7(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r7(7),
	combout => \r8[7]~feeder_combout\);

-- Location: FF_X31_Y24_N25
\r8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(7));

-- Location: LCCOMB_X31_Y24_N28
\r9[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[7]~feeder_combout\ = r8(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(7),
	combout => \r9[7]~feeder_combout\);

-- Location: FF_X31_Y24_N29
\r9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(7));

-- Location: LCCOMB_X28_Y23_N8
\pwm_count[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[0]~21_combout\ = !pwm_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pwm_count(0),
	combout => \pwm_count[0]~21_combout\);

-- Location: FF_X28_Y23_N9
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X28_Y23_N12
\pwm_count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[1]~7_combout\ = (pwm_count(1) & (pwm_count(0) $ (VCC))) # (!pwm_count(1) & (pwm_count(0) & VCC))
-- \pwm_count[1]~8\ = CARRY((pwm_count(1) & pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => pwm_count(0),
	datad => VCC,
	combout => \pwm_count[1]~7_combout\,
	cout => \pwm_count[1]~8\);

-- Location: FF_X28_Y23_N13
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X28_Y23_N14
\pwm_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[2]~9_combout\ = (pwm_count(2) & (!\pwm_count[1]~8\)) # (!pwm_count(2) & ((\pwm_count[1]~8\) # (GND)))
-- \pwm_count[2]~10\ = CARRY((!\pwm_count[1]~8\) # (!pwm_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(2),
	datad => VCC,
	cin => \pwm_count[1]~8\,
	combout => \pwm_count[2]~9_combout\,
	cout => \pwm_count[2]~10\);

-- Location: FF_X28_Y23_N15
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: LCCOMB_X28_Y23_N16
\pwm_count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[3]~11_combout\ = (pwm_count(3) & (\pwm_count[2]~10\ $ (GND))) # (!pwm_count(3) & (!\pwm_count[2]~10\ & VCC))
-- \pwm_count[3]~12\ = CARRY((pwm_count(3) & !\pwm_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(3),
	datad => VCC,
	cin => \pwm_count[2]~10\,
	combout => \pwm_count[3]~11_combout\,
	cout => \pwm_count[3]~12\);

-- Location: FF_X28_Y23_N17
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: LCCOMB_X28_Y23_N18
\pwm_count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[4]~13_combout\ = (pwm_count(4) & (!\pwm_count[3]~12\)) # (!pwm_count(4) & ((\pwm_count[3]~12\) # (GND)))
-- \pwm_count[4]~14\ = CARRY((!\pwm_count[3]~12\) # (!pwm_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(4),
	datad => VCC,
	cin => \pwm_count[3]~12\,
	combout => \pwm_count[4]~13_combout\,
	cout => \pwm_count[4]~14\);

-- Location: FF_X28_Y23_N19
\pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(4));

-- Location: LCCOMB_X28_Y23_N20
\pwm_count[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[5]~15_combout\ = (pwm_count(5) & (\pwm_count[4]~14\ $ (GND))) # (!pwm_count(5) & (!\pwm_count[4]~14\ & VCC))
-- \pwm_count[5]~16\ = CARRY((pwm_count(5) & !\pwm_count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(5),
	datad => VCC,
	cin => \pwm_count[4]~14\,
	combout => \pwm_count[5]~15_combout\,
	cout => \pwm_count[5]~16\);

-- Location: FF_X28_Y23_N21
\pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(5));

-- Location: LCCOMB_X28_Y23_N22
\pwm_count[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[6]~17_combout\ = (pwm_count(6) & (!\pwm_count[5]~16\)) # (!pwm_count(6) & ((\pwm_count[5]~16\) # (GND)))
-- \pwm_count[6]~18\ = CARRY((!\pwm_count[5]~16\) # (!pwm_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datad => VCC,
	cin => \pwm_count[5]~16\,
	combout => \pwm_count[6]~17_combout\,
	cout => \pwm_count[6]~18\);

-- Location: FF_X28_Y23_N23
\pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(6));

-- Location: LCCOMB_X28_Y23_N24
\pwm_count[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[7]~19_combout\ = \pwm_count[6]~18\ $ (!pwm_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pwm_count(7),
	cin => \pwm_count[6]~18\,
	combout => \pwm_count[7]~19_combout\);

-- Location: FF_X28_Y23_N25
\pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_count[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(7));

-- Location: LCCOMB_X31_Y23_N2
\r0[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[6]~1_combout\ = !r9(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r9(6),
	combout => \r0[6]~1_combout\);

-- Location: FF_X31_Y23_N3
\r0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[6]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(6));

-- Location: FF_X30_Y23_N9
\r1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r0(6),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(6));

-- Location: LCCOMB_X31_Y23_N28
\r2[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[6]~0_combout\ = !r1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r1(6),
	combout => \r2[6]~0_combout\);

-- Location: FF_X31_Y23_N29
\r2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r2[6]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(6));

-- Location: LCCOMB_X30_Y23_N0
\r3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[6]~feeder_combout\ = r2(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(6),
	combout => \r3[6]~feeder_combout\);

-- Location: FF_X30_Y23_N1
\r3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r3[6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(6));

-- Location: LCCOMB_X31_Y24_N12
\r4[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[6]~feeder_combout\ = r3(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r3(6),
	combout => \r4[6]~feeder_combout\);

-- Location: FF_X31_Y24_N13
\r4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(6));

-- Location: LCCOMB_X31_Y24_N10
\r5[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[6]~1_combout\ = !r4(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(6),
	combout => \r5[6]~1_combout\);

-- Location: FF_X31_Y24_N11
\r5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[6]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(6));

-- Location: FF_X30_Y24_N31
\r6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r5(6),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(6));

-- Location: FF_X30_Y24_N25
\r7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r6(6),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(6));

-- Location: LCCOMB_X30_Y23_N6
\r8[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[6]~0_combout\ = !r7(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r7(6),
	combout => \r8[6]~0_combout\);

-- Location: FF_X30_Y23_N7
\r8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[6]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(6));

-- Location: LCCOMB_X30_Y23_N28
\r9[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[6]~feeder_combout\ = r8(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(6),
	combout => \r9[6]~feeder_combout\);

-- Location: FF_X30_Y23_N29
\r9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(6));

-- Location: LCCOMB_X29_Y23_N2
\r0[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[5]~2_combout\ = !r9(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r9(5),
	combout => \r0[5]~2_combout\);

-- Location: FF_X29_Y23_N3
\r0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[5]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(5));

-- Location: LCCOMB_X29_Y23_N0
\r1[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[5]~0_combout\ = !r0(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r0(5),
	combout => \r1[5]~0_combout\);

-- Location: FF_X29_Y23_N1
\r1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[5]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(5));

-- Location: LCCOMB_X29_Y23_N6
\r2[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[5]~1_combout\ = !r1(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r1(5),
	combout => \r2[5]~1_combout\);

-- Location: FF_X29_Y23_N7
\r2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r2[5]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(5));

-- Location: LCCOMB_X29_Y23_N4
\r3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[5]~feeder_combout\ = r2(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(5),
	combout => \r3[5]~feeder_combout\);

-- Location: FF_X29_Y23_N5
\r3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r3[5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(5));

-- Location: LCCOMB_X28_Y23_N28
\r4[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[5]~0_combout\ = !r3(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(5),
	combout => \r4[5]~0_combout\);

-- Location: FF_X28_Y23_N29
\r4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[5]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(5));

-- Location: LCCOMB_X28_Y23_N2
\r5[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[5]~2_combout\ = !r4(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(5),
	combout => \r5[5]~2_combout\);

-- Location: FF_X28_Y23_N3
\r5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[5]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(5));

-- Location: LCCOMB_X28_Y23_N0
\r6[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r6[5]~feeder_combout\ = r5(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r5(5),
	combout => \r6[5]~feeder_combout\);

-- Location: FF_X28_Y23_N1
\r6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r6[5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(5));

-- Location: LCCOMB_X28_Y23_N10
\r7[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r7[5]~0_combout\ = !r6(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r6(5),
	combout => \r7[5]~0_combout\);

-- Location: FF_X28_Y23_N11
\r7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r7[5]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(5));

-- Location: LCCOMB_X29_Y23_N10
\r8[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[5]~1_combout\ = !r7(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r7(5),
	combout => \r8[5]~1_combout\);

-- Location: FF_X29_Y23_N11
\r8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[5]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(5));

-- Location: LCCOMB_X29_Y23_N12
\r9[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[5]~0_combout\ = !r8(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(5),
	combout => \r9[5]~0_combout\);

-- Location: FF_X29_Y23_N13
\r9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[5]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(5));

-- Location: LCCOMB_X31_Y23_N0
\r0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[4]~feeder_combout\ = r9(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r9(4),
	combout => \r0[4]~feeder_combout\);

-- Location: FF_X31_Y23_N1
\r0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(4));

-- Location: LCCOMB_X32_Y24_N4
\r1[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[4]~1_combout\ = !r0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(4),
	combout => \r1[4]~1_combout\);

-- Location: FF_X32_Y24_N5
\r1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[4]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(4));

-- Location: LCCOMB_X32_Y24_N28
\r2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[4]~feeder_combout\ = r1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r1(4),
	combout => \r2[4]~feeder_combout\);

-- Location: FF_X32_Y24_N29
\r2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r2[4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(4));

-- Location: LCCOMB_X31_Y24_N18
\r3[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[4]~0_combout\ = !r2(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(4),
	combout => \r3[4]~0_combout\);

-- Location: FF_X31_Y24_N19
\r3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r3[4]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(4));

-- Location: LCCOMB_X31_Y24_N30
\r4[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[4]~1_combout\ = !r3(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(4),
	combout => \r4[4]~1_combout\);

-- Location: FF_X30_Y24_N23
\r4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => \r4[4]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(4));

-- Location: FF_X30_Y23_N17
\r5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r4(4),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(4));

-- Location: LCCOMB_X30_Y23_N30
\r6[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r6[4]~0_combout\ = !r5(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r5(4),
	combout => \r6[4]~0_combout\);

-- Location: FF_X30_Y23_N31
\r6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r6[4]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(4));

-- Location: FF_X30_Y23_N21
\r7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r6(4),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(4));

-- Location: LCCOMB_X30_Y23_N2
\r8[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[4]~2_combout\ = !r7(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r7(4),
	combout => \r8[4]~2_combout\);

-- Location: FF_X30_Y23_N3
\r8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[4]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(4));

-- Location: LCCOMB_X31_Y23_N4
\r9[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[4]~1_combout\ = !r8(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(4),
	combout => \r9[4]~1_combout\);

-- Location: FF_X31_Y23_N5
\r9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[4]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(4));

-- Location: LCCOMB_X31_Y23_N26
\r0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[3]~3_combout\ = !r9(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r9(3),
	combout => \r0[3]~3_combout\);

-- Location: FF_X31_Y23_N27
\r0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(3));

-- Location: LCCOMB_X32_Y24_N10
\r1[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[3]~2_combout\ = !r0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r0(3),
	combout => \r1[3]~2_combout\);

-- Location: FF_X32_Y24_N11
\r1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(3));

-- Location: LCCOMB_X29_Y24_N26
\r2[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[3]~2_combout\ = !r1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r1(3),
	combout => \r2[3]~2_combout\);

-- Location: FF_X29_Y24_N27
\r2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r2[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(3));

-- Location: LCCOMB_X29_Y24_N28
\r3[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[3]~1_combout\ = !r2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2(3),
	combout => \r3[3]~1_combout\);

-- Location: FF_X29_Y24_N29
\r3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r3[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(3));

-- Location: LCCOMB_X29_Y24_N22
\r4[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[3]~feeder_combout\ = r3(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(3),
	combout => \r4[3]~feeder_combout\);

-- Location: FF_X29_Y24_N23
\r4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(3));

-- Location: LCCOMB_X29_Y24_N20
\r5[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[3]~3_combout\ = !r4(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r4(3),
	combout => \r5[3]~3_combout\);

-- Location: FF_X29_Y24_N21
\r5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(3));

-- Location: LCCOMB_X30_Y23_N24
\r6[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r6[3]~1_combout\ = !r5(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r5(3),
	combout => \r6[3]~1_combout\);

-- Location: FF_X30_Y23_N25
\r6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r6[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(3));

-- Location: LCCOMB_X30_Y23_N26
\r7[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r7[3]~1_combout\ = !r6(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r6(3),
	combout => \r7[3]~1_combout\);

-- Location: FF_X30_Y23_N27
\r7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r7[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(3));

-- Location: FF_X30_Y23_N11
\r8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r7(3),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(3));

-- Location: LCCOMB_X31_Y23_N30
\r9[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[3]~2_combout\ = !r8(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(3),
	combout => \r9[3]~2_combout\);

-- Location: FF_X31_Y23_N31
\r9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(3));

-- Location: FF_X31_Y24_N15
\r0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r9(2),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(2));

-- Location: LCCOMB_X31_Y24_N0
\r1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[2]~feeder_combout\ = r0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(2),
	combout => \r1[2]~feeder_combout\);

-- Location: FF_X31_Y24_N1
\r1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(2));

-- Location: LCCOMB_X31_Y24_N14
\r2[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[2]~3_combout\ = !r1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r1(2),
	combout => \r2[2]~3_combout\);

-- Location: FF_X30_Y24_N17
\r2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => \r2[2]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(2));

-- Location: FF_X30_Y24_N3
\r3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r2(2),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(2));

-- Location: LCCOMB_X29_Y24_N24
\r4[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[2]~2_combout\ = !r3(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(2),
	combout => \r4[2]~2_combout\);

-- Location: FF_X29_Y24_N25
\r4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(2));

-- Location: LCCOMB_X29_Y24_N30
\r5[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[2]~feeder_combout\ = r4(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(2),
	combout => \r5[2]~feeder_combout\);

-- Location: FF_X29_Y24_N31
\r5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(2));

-- Location: LCCOMB_X30_Y23_N4
\r6[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r6[2]~2_combout\ = !r5(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r5(2),
	combout => \r6[2]~2_combout\);

-- Location: FF_X30_Y23_N5
\r6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r6[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(2));

-- Location: FF_X30_Y23_N23
\r7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r6(2),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(2));

-- Location: LCCOMB_X31_Y23_N6
\r8[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[2]~3_combout\ = !r7(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r7(2),
	combout => \r8[2]~3_combout\);

-- Location: FF_X31_Y23_N7
\r8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(2));

-- Location: LCCOMB_X31_Y23_N8
\r9[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[2]~feeder_combout\ = r8(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(2),
	combout => \r9[2]~feeder_combout\);

-- Location: FF_X31_Y23_N9
\r9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(2));

-- Location: LCCOMB_X32_Y23_N2
\r0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[1]~feeder_combout\ = r9(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r9(1),
	combout => \r0[1]~feeder_combout\);

-- Location: FF_X32_Y23_N3
\r0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(1));

-- Location: LCCOMB_X32_Y24_N0
\r1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[1]~3_combout\ = !r0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r0(1),
	combout => \r1[1]~3_combout\);

-- Location: FF_X32_Y24_N1
\r1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[1]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(1));

-- Location: LCCOMB_X32_Y24_N30
\r2[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r2[1]~4_combout\ = !r1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r1(1),
	combout => \r2[1]~4_combout\);

-- Location: FF_X32_Y24_N31
\r2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r2[1]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(1));

-- Location: LCCOMB_X32_Y23_N12
\r3[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[1]~2_combout\ = !r2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2(1),
	combout => \r3[1]~2_combout\);

-- Location: FF_X32_Y23_N13
\r3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r3[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(1));

-- Location: LCCOMB_X32_Y23_N6
\r4[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[1]~3_combout\ = !r3(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(1),
	combout => \r4[1]~3_combout\);

-- Location: FF_X32_Y23_N7
\r4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[1]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(1));

-- Location: LCCOMB_X32_Y23_N0
\r5[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[1]~4_combout\ = !r4(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(1),
	combout => \r5[1]~4_combout\);

-- Location: FF_X32_Y23_N1
\r5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[1]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(1));

-- Location: LCCOMB_X32_Y23_N10
\r6[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r6[1]~3_combout\ = !r5(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r5(1),
	combout => \r6[1]~3_combout\);

-- Location: FF_X32_Y23_N11
\r6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r6[1]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(1));

-- Location: LCCOMB_X32_Y23_N8
\r7[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r7[1]~2_combout\ = !r6(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r6(1),
	combout => \r7[1]~2_combout\);

-- Location: FF_X32_Y23_N9
\r7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r7[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(1));

-- Location: LCCOMB_X32_Y23_N30
\r8[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r8[1]~4_combout\ = !r7(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r7(1),
	combout => \r8[1]~4_combout\);

-- Location: FF_X32_Y23_N31
\r8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r8[1]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(1));

-- Location: LCCOMB_X32_Y23_N4
\r9[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[1]~feeder_combout\ = r8(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r8(1),
	combout => \r9[1]~feeder_combout\);

-- Location: FF_X32_Y23_N5
\r9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(1));

-- Location: LCCOMB_X31_Y24_N16
\r0[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0[0]~4_combout\ = !r9(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r9(0),
	combout => \r0[0]~4_combout\);

-- Location: FF_X31_Y24_N17
\r0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r0[0]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(0));

-- Location: LCCOMB_X31_Y24_N6
\r1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[0]~feeder_combout\ = r0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r0(0),
	combout => \r1[0]~feeder_combout\);

-- Location: FF_X31_Y24_N7
\r1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r1[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(0));

-- Location: FF_X30_Y24_N7
\r2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r1(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(0));

-- Location: FF_X30_Y24_N29
\r3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r2(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(0));

-- Location: LCCOMB_X29_Y24_N2
\r4[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r4[0]~feeder_combout\ = r3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(0),
	combout => \r4[0]~feeder_combout\);

-- Location: FF_X29_Y24_N3
\r4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r4[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(0));

-- Location: LCCOMB_X29_Y24_N0
\r5[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r5[0]~feeder_combout\ = r4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r4(0),
	combout => \r5[0]~feeder_combout\);

-- Location: FF_X29_Y24_N1
\r5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r5[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(0));

-- Location: FF_X30_Y24_N9
\r6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r5(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(0));

-- Location: FF_X30_Y24_N27
\r7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r6(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(0));

-- Location: FF_X30_Y24_N13
\r8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => r7(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r8(0));

-- Location: LCCOMB_X31_Y24_N2
\r9[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r9[0]~3_combout\ = !r8(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r8(0),
	combout => \r9[0]~3_combout\);

-- Location: FF_X31_Y24_N3
\r9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \r9[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r9(0));

-- Location: LCCOMB_X31_Y23_N10
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_cout\ = CARRY((!pwm_count(0) & !r9(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r9(0),
	datad => VCC,
	cout => \LessThan13~1_cout\);

-- Location: LCCOMB_X31_Y23_N12
\LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~3_cout\ = CARRY((r9(1) & ((pwm_count(1)) # (!\LessThan13~1_cout\))) # (!r9(1) & (pwm_count(1) & !\LessThan13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan13~1_cout\,
	cout => \LessThan13~3_cout\);

-- Location: LCCOMB_X31_Y23_N14
\LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~5_cout\ = CARRY((r9(2) & (!pwm_count(2) & !\LessThan13~3_cout\)) # (!r9(2) & ((!\LessThan13~3_cout\) # (!pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan13~3_cout\,
	cout => \LessThan13~5_cout\);

-- Location: LCCOMB_X31_Y23_N16
\LessThan13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~7_cout\ = CARRY((r9(3) & ((pwm_count(3)) # (!\LessThan13~5_cout\))) # (!r9(3) & (pwm_count(3) & !\LessThan13~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan13~5_cout\,
	cout => \LessThan13~7_cout\);

-- Location: LCCOMB_X31_Y23_N18
\LessThan13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~9_cout\ = CARRY((pwm_count(4) & (!r9(4) & !\LessThan13~7_cout\)) # (!pwm_count(4) & ((!\LessThan13~7_cout\) # (!r9(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r9(4),
	datad => VCC,
	cin => \LessThan13~7_cout\,
	cout => \LessThan13~9_cout\);

-- Location: LCCOMB_X31_Y23_N20
\LessThan13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~11_cout\ = CARRY((r9(5) & ((pwm_count(5)) # (!\LessThan13~9_cout\))) # (!r9(5) & (pwm_count(5) & !\LessThan13~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan13~9_cout\,
	cout => \LessThan13~11_cout\);

-- Location: LCCOMB_X31_Y23_N22
\LessThan13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~13_cout\ = CARRY((pwm_count(6) & (!r9(6) & !\LessThan13~11_cout\)) # (!pwm_count(6) & ((!\LessThan13~11_cout\) # (!r9(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => r9(6),
	datad => VCC,
	cin => \LessThan13~11_cout\,
	cout => \LessThan13~13_cout\);

-- Location: LCCOMB_X31_Y23_N24
\LessThan13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~14_combout\ = (r9(7) & (!pwm_count(7) & \LessThan13~13_cout\)) # (!r9(7) & ((\LessThan13~13_cout\) # (!pwm_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9(7),
	datab => pwm_count(7),
	cin => \LessThan13~13_cout\,
	combout => \LessThan13~14_combout\);

-- Location: LCCOMB_X29_Y23_N14
\LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~1_cout\ = CARRY((!pwm_count(0) & r8(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r8(0),
	datad => VCC,
	cout => \LessThan12~1_cout\);

-- Location: LCCOMB_X29_Y23_N16
\LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~3_cout\ = CARRY((pwm_count(1) & ((r8(1)) # (!\LessThan12~1_cout\))) # (!pwm_count(1) & (r8(1) & !\LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => r8(1),
	datad => VCC,
	cin => \LessThan12~1_cout\,
	cout => \LessThan12~3_cout\);

-- Location: LCCOMB_X29_Y23_N18
\LessThan12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~5_cout\ = CARRY((r8(2) & (!pwm_count(2) & !\LessThan12~3_cout\)) # (!r8(2) & ((!\LessThan12~3_cout\) # (!pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan12~3_cout\,
	cout => \LessThan12~5_cout\);

-- Location: LCCOMB_X29_Y23_N20
\LessThan12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~7_cout\ = CARRY((pwm_count(3) & ((!\LessThan12~5_cout\) # (!r8(3)))) # (!pwm_count(3) & (!r8(3) & !\LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => r8(3),
	datad => VCC,
	cin => \LessThan12~5_cout\,
	cout => \LessThan12~7_cout\);

-- Location: LCCOMB_X29_Y23_N22
\LessThan12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~9_cout\ = CARRY((r8(4) & ((!\LessThan12~7_cout\) # (!pwm_count(4)))) # (!r8(4) & (!pwm_count(4) & !\LessThan12~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8(4),
	datab => pwm_count(4),
	datad => VCC,
	cin => \LessThan12~7_cout\,
	cout => \LessThan12~9_cout\);

-- Location: LCCOMB_X29_Y23_N24
\LessThan12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~11_cout\ = CARRY((r8(5) & (pwm_count(5) & !\LessThan12~9_cout\)) # (!r8(5) & ((pwm_count(5)) # (!\LessThan12~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan12~9_cout\,
	cout => \LessThan12~11_cout\);

-- Location: LCCOMB_X29_Y23_N26
\LessThan12~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~13_cout\ = CARRY((r8(6) & (!pwm_count(6) & !\LessThan12~11_cout\)) # (!r8(6) & ((!\LessThan12~11_cout\) # (!pwm_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan12~11_cout\,
	cout => \LessThan12~13_cout\);

-- Location: LCCOMB_X29_Y23_N28
\LessThan12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~14_combout\ = (pwm_count(7) & (\LessThan12~13_cout\ & !r8(7))) # (!pwm_count(7) & ((\LessThan12~13_cout\) # (!r8(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datad => r8(7),
	cin => \LessThan12~13_cout\,
	combout => \LessThan12~14_combout\);

-- Location: LCCOMB_X30_Y23_N8
\LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~1_cout\ = CARRY((r7(0) & !pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7(0),
	datab => pwm_count(0),
	datad => VCC,
	cout => \LessThan11~1_cout\);

-- Location: LCCOMB_X30_Y23_N10
\LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~3_cout\ = CARRY((r7(1) & (pwm_count(1) & !\LessThan11~1_cout\)) # (!r7(1) & ((pwm_count(1)) # (!\LessThan11~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan11~1_cout\,
	cout => \LessThan11~3_cout\);

-- Location: LCCOMB_X30_Y23_N12
\LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~5_cout\ = CARRY((r7(2) & ((!\LessThan11~3_cout\) # (!pwm_count(2)))) # (!r7(2) & (!pwm_count(2) & !\LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan11~3_cout\,
	cout => \LessThan11~5_cout\);

-- Location: LCCOMB_X30_Y23_N14
\LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~7_cout\ = CARRY((r7(3) & (pwm_count(3) & !\LessThan11~5_cout\)) # (!r7(3) & ((pwm_count(3)) # (!\LessThan11~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan11~5_cout\,
	cout => \LessThan11~7_cout\);

-- Location: LCCOMB_X30_Y23_N16
\LessThan11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~9_cout\ = CARRY((pwm_count(4) & (!r7(4) & !\LessThan11~7_cout\)) # (!pwm_count(4) & ((!\LessThan11~7_cout\) # (!r7(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r7(4),
	datad => VCC,
	cin => \LessThan11~7_cout\,
	cout => \LessThan11~9_cout\);

-- Location: LCCOMB_X30_Y23_N18
\LessThan11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~11_cout\ = CARRY((pwm_count(5) & ((r7(5)) # (!\LessThan11~9_cout\))) # (!pwm_count(5) & (r7(5) & !\LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => r7(5),
	datad => VCC,
	cin => \LessThan11~9_cout\,
	cout => \LessThan11~11_cout\);

-- Location: LCCOMB_X30_Y23_N20
\LessThan11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~13_cout\ = CARRY((pwm_count(6) & (r7(6) & !\LessThan11~11_cout\)) # (!pwm_count(6) & ((r7(6)) # (!\LessThan11~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => r7(6),
	datad => VCC,
	cin => \LessThan11~11_cout\,
	cout => \LessThan11~13_cout\);

-- Location: LCCOMB_X30_Y23_N22
\LessThan11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~14_combout\ = (pwm_count(7) & (\LessThan11~13_cout\ & !r7(7))) # (!pwm_count(7) & ((\LessThan11~13_cout\) # (!r7(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(7),
	datad => r7(7),
	cin => \LessThan11~13_cout\,
	combout => \LessThan11~14_combout\);

-- Location: LCCOMB_X30_Y24_N0
\LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~1_cout\ = CARRY((!pwm_count(0) & r6(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r6(0),
	datad => VCC,
	cout => \LessThan10~1_cout\);

-- Location: LCCOMB_X30_Y24_N2
\LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~3_cout\ = CARRY((pwm_count(1) & ((r6(1)) # (!\LessThan10~1_cout\))) # (!pwm_count(1) & (r6(1) & !\LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => r6(1),
	datad => VCC,
	cin => \LessThan10~1_cout\,
	cout => \LessThan10~3_cout\);

-- Location: LCCOMB_X30_Y24_N4
\LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~5_cout\ = CARRY((r6(2) & ((!\LessThan10~3_cout\) # (!pwm_count(2)))) # (!r6(2) & (!pwm_count(2) & !\LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan10~3_cout\,
	cout => \LessThan10~5_cout\);

-- Location: LCCOMB_X30_Y24_N6
\LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~7_cout\ = CARRY((r6(3) & ((pwm_count(3)) # (!\LessThan10~5_cout\))) # (!r6(3) & (pwm_count(3) & !\LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan10~5_cout\,
	cout => \LessThan10~7_cout\);

-- Location: LCCOMB_X30_Y24_N8
\LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~9_cout\ = CARRY((pwm_count(4) & (!r6(4) & !\LessThan10~7_cout\)) # (!pwm_count(4) & ((!\LessThan10~7_cout\) # (!r6(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r6(4),
	datad => VCC,
	cin => \LessThan10~7_cout\,
	cout => \LessThan10~9_cout\);

-- Location: LCCOMB_X30_Y24_N10
\LessThan10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~11_cout\ = CARRY((r6(5) & (pwm_count(5) & !\LessThan10~9_cout\)) # (!r6(5) & ((pwm_count(5)) # (!\LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan10~9_cout\,
	cout => \LessThan10~11_cout\);

-- Location: LCCOMB_X30_Y24_N12
\LessThan10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~13_cout\ = CARRY((r6(6) & ((!\LessThan10~11_cout\) # (!pwm_count(6)))) # (!r6(6) & (!pwm_count(6) & !\LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan10~11_cout\,
	cout => \LessThan10~13_cout\);

-- Location: LCCOMB_X30_Y24_N14
\LessThan10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~14_combout\ = (r6(7) & (\LessThan10~13_cout\ & !pwm_count(7))) # (!r6(7) & ((\LessThan10~13_cout\) # (!pwm_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(7),
	datad => pwm_count(7),
	cin => \LessThan10~13_cout\,
	combout => \LessThan10~14_combout\);

-- Location: LCCOMB_X29_Y24_N4
\LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~1_cout\ = CARRY((!pwm_count(0) & r5(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r5(0),
	datad => VCC,
	cout => \LessThan9~1_cout\);

-- Location: LCCOMB_X29_Y24_N6
\LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~3_cout\ = CARRY((r5(1) & (pwm_count(1) & !\LessThan9~1_cout\)) # (!r5(1) & ((pwm_count(1)) # (!\LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan9~1_cout\,
	cout => \LessThan9~3_cout\);

-- Location: LCCOMB_X29_Y24_N8
\LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~5_cout\ = CARRY((r5(2) & (!pwm_count(2) & !\LessThan9~3_cout\)) # (!r5(2) & ((!\LessThan9~3_cout\) # (!pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan9~3_cout\,
	cout => \LessThan9~5_cout\);

-- Location: LCCOMB_X29_Y24_N10
\LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~7_cout\ = CARRY((pwm_count(3) & ((!\LessThan9~5_cout\) # (!r5(3)))) # (!pwm_count(3) & (!r5(3) & !\LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => r5(3),
	datad => VCC,
	cin => \LessThan9~5_cout\,
	cout => \LessThan9~7_cout\);

-- Location: LCCOMB_X29_Y24_N12
\LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~9_cout\ = CARRY((pwm_count(4) & (r5(4) & !\LessThan9~7_cout\)) # (!pwm_count(4) & ((r5(4)) # (!\LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r5(4),
	datad => VCC,
	cin => \LessThan9~7_cout\,
	cout => \LessThan9~9_cout\);

-- Location: LCCOMB_X29_Y24_N14
\LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~11_cout\ = CARRY((pwm_count(5) & ((!\LessThan9~9_cout\) # (!r5(5)))) # (!pwm_count(5) & (!r5(5) & !\LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => r5(5),
	datad => VCC,
	cin => \LessThan9~9_cout\,
	cout => \LessThan9~11_cout\);

-- Location: LCCOMB_X29_Y24_N16
\LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~13_cout\ = CARRY((r5(6) & ((!\LessThan9~11_cout\) # (!pwm_count(6)))) # (!r5(6) & (!pwm_count(6) & !\LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan9~11_cout\,
	cout => \LessThan9~13_cout\);

-- Location: LCCOMB_X29_Y24_N18
\LessThan9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~14_combout\ = (r5(7) & (\LessThan9~13_cout\ & !pwm_count(7))) # (!r5(7) & ((\LessThan9~13_cout\) # (!pwm_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r5(7),
	datad => pwm_count(7),
	cin => \LessThan9~13_cout\,
	combout => \LessThan9~14_combout\);

-- Location: LCCOMB_X28_Y24_N16
\LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~1_cout\ = CARRY((r4(0) & !pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(0),
	datab => pwm_count(0),
	datad => VCC,
	cout => \LessThan8~1_cout\);

-- Location: LCCOMB_X28_Y24_N18
\LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~3_cout\ = CARRY((r4(1) & ((pwm_count(1)) # (!\LessThan8~1_cout\))) # (!r4(1) & (pwm_count(1) & !\LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan8~1_cout\,
	cout => \LessThan8~3_cout\);

-- Location: LCCOMB_X28_Y24_N20
\LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~5_cout\ = CARRY((pwm_count(2) & (!r4(2) & !\LessThan8~3_cout\)) # (!pwm_count(2) & ((!\LessThan8~3_cout\) # (!r4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => r4(2),
	datad => VCC,
	cin => \LessThan8~3_cout\,
	cout => \LessThan8~5_cout\);

-- Location: LCCOMB_X28_Y24_N22
\LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~7_cout\ = CARRY((pwm_count(3) & ((r4(3)) # (!\LessThan8~5_cout\))) # (!pwm_count(3) & (r4(3) & !\LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => r4(3),
	datad => VCC,
	cin => \LessThan8~5_cout\,
	cout => \LessThan8~7_cout\);

-- Location: LCCOMB_X28_Y24_N24
\LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~9_cout\ = CARRY((pwm_count(4) & (r4(4) & !\LessThan8~7_cout\)) # (!pwm_count(4) & ((r4(4)) # (!\LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r4(4),
	datad => VCC,
	cin => \LessThan8~7_cout\,
	cout => \LessThan8~9_cout\);

-- Location: LCCOMB_X28_Y24_N26
\LessThan8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~11_cout\ = CARRY((pwm_count(5) & ((r4(5)) # (!\LessThan8~9_cout\))) # (!pwm_count(5) & (r4(5) & !\LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => r4(5),
	datad => VCC,
	cin => \LessThan8~9_cout\,
	cout => \LessThan8~11_cout\);

-- Location: LCCOMB_X28_Y24_N28
\LessThan8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~13_cout\ = CARRY((r4(6) & (!pwm_count(6) & !\LessThan8~11_cout\)) # (!r4(6) & ((!\LessThan8~11_cout\) # (!pwm_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan8~11_cout\,
	cout => \LessThan8~13_cout\);

-- Location: LCCOMB_X28_Y24_N30
\LessThan8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~14_combout\ = (pwm_count(7) & (\LessThan8~13_cout\ & r4(7))) # (!pwm_count(7) & ((\LessThan8~13_cout\) # (r4(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datad => r4(7),
	cin => \LessThan8~13_cout\,
	combout => \LessThan8~14_combout\);

-- Location: LCCOMB_X28_Y24_N0
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((r3(0) & !pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3(0),
	datab => pwm_count(0),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X28_Y24_N2
\LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((r3(1) & (pwm_count(1) & !\LessThan7~1_cout\)) # (!r3(1) & ((pwm_count(1)) # (!\LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X28_Y24_N4
\LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((pwm_count(2) & (r3(2) & !\LessThan7~3_cout\)) # (!pwm_count(2) & ((r3(2)) # (!\LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => r3(2),
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X28_Y24_N6
\LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((pwm_count(3) & ((r3(3)) # (!\LessThan7~5_cout\))) # (!pwm_count(3) & (r3(3) & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => r3(3),
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X28_Y24_N8
\LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((pwm_count(4) & (!r3(4) & !\LessThan7~7_cout\)) # (!pwm_count(4) & ((!\LessThan7~7_cout\) # (!r3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r3(4),
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X28_Y24_N10
\LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((pwm_count(5) & ((!\LessThan7~9_cout\) # (!r3(5)))) # (!pwm_count(5) & (!r3(5) & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => r3(5),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X28_Y24_N12
\LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((r3(6) & (!pwm_count(6) & !\LessThan7~11_cout\)) # (!r3(6) & ((!\LessThan7~11_cout\) # (!pwm_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X28_Y24_N14
\LessThan7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~14_combout\ = (r3(7) & ((\LessThan7~13_cout\) # (!pwm_count(7)))) # (!r3(7) & (\LessThan7~13_cout\ & !pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r3(7),
	datad => pwm_count(7),
	cin => \LessThan7~13_cout\,
	combout => \LessThan7~14_combout\);

-- Location: LCCOMB_X30_Y24_N16
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY((!pwm_count(0) & r2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r2(0),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X30_Y24_N18
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((pwm_count(1) & ((r2(1)) # (!\LessThan6~1_cout\))) # (!pwm_count(1) & (r2(1) & !\LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => r2(1),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X30_Y24_N20
\LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((pwm_count(2) & (r2(2) & !\LessThan6~3_cout\)) # (!pwm_count(2) & ((r2(2)) # (!\LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => r2(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X30_Y24_N22
\LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((r2(3) & (pwm_count(3) & !\LessThan6~5_cout\)) # (!r2(3) & ((pwm_count(3)) # (!\LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X30_Y24_N24
\LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((pwm_count(4) & (r2(4) & !\LessThan6~7_cout\)) # (!pwm_count(4) & ((r2(4)) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r2(4),
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X30_Y24_N26
\LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((r2(5) & (pwm_count(5) & !\LessThan6~9_cout\)) # (!r2(5) & ((pwm_count(5)) # (!\LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X30_Y24_N28
\LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((pwm_count(6) & (!r2(6) & !\LessThan6~11_cout\)) # (!pwm_count(6) & ((!\LessThan6~11_cout\) # (!r2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => r2(6),
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X30_Y24_N30
\LessThan6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~14_combout\ = (r2(7) & ((\LessThan6~13_cout\) # (!pwm_count(7)))) # (!r2(7) & (\LessThan6~13_cout\ & !pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r2(7),
	datad => pwm_count(7),
	cin => \LessThan6~13_cout\,
	combout => \LessThan6~14_combout\);

-- Location: LCCOMB_X32_Y23_N14
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((!pwm_count(0) & r1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r1(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X32_Y23_N16
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((pwm_count(1) & ((!\LessThan5~1_cout\) # (!r1(1)))) # (!pwm_count(1) & (!r1(1) & !\LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => r1(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X32_Y23_N18
\LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((r1(2) & (!pwm_count(2) & !\LessThan5~3_cout\)) # (!r1(2) & ((!\LessThan5~3_cout\) # (!pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X32_Y23_N20
\LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((r1(3) & ((pwm_count(3)) # (!\LessThan5~5_cout\))) # (!r1(3) & (pwm_count(3) & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X32_Y23_N22
\LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((pwm_count(4) & (r1(4) & !\LessThan5~7_cout\)) # (!pwm_count(4) & ((r1(4)) # (!\LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datab => r1(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X32_Y23_N24
\LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((r1(5) & ((pwm_count(5)) # (!\LessThan5~9_cout\))) # (!r1(5) & (pwm_count(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X32_Y23_N26
\LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((r1(6) & ((!\LessThan5~11_cout\) # (!pwm_count(6)))) # (!r1(6) & (!pwm_count(6) & !\LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(6),
	datab => pwm_count(6),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X32_Y23_N28
\LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~14_combout\ = (r1(7) & ((\LessThan5~13_cout\) # (!pwm_count(7)))) # (!r1(7) & (\LessThan5~13_cout\ & !pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(7),
	datad => pwm_count(7),
	cin => \LessThan5~13_cout\,
	combout => \LessThan5~14_combout\);

-- Location: LCCOMB_X32_Y24_N12
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!pwm_count(0) & r0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => r0(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X32_Y24_N14
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((r0(1) & ((pwm_count(1)) # (!\LessThan4~1_cout\))) # (!r0(1) & (pwm_count(1) & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X32_Y24_N16
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((r0(2) & (!pwm_count(2) & !\LessThan4~3_cout\)) # (!r0(2) & ((!\LessThan4~3_cout\) # (!pwm_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X32_Y24_N18
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((r0(3) & (pwm_count(3) & !\LessThan4~5_cout\)) # (!r0(3) & ((pwm_count(3)) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X32_Y24_N20
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((r0(4) & (!pwm_count(4) & !\LessThan4~7_cout\)) # (!r0(4) & ((!\LessThan4~7_cout\) # (!pwm_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(4),
	datab => pwm_count(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X32_Y24_N22
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((pwm_count(5) & ((!\LessThan4~9_cout\) # (!r0(5)))) # (!pwm_count(5) & (!r0(5) & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => r0(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X32_Y24_N24
\LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((pwm_count(6) & (r0(6) & !\LessThan4~11_cout\)) # (!pwm_count(6) & ((r0(6)) # (!\LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => r0(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X32_Y24_N26
\LessThan4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (r0(7) & ((\LessThan4~13_cout\) # (!pwm_count(7)))) # (!r0(7) & (\LessThan4~13_cout\ & !pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r0(7),
	datad => pwm_count(7),
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

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


