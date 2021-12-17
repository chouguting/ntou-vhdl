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

-- DATE "12/09/2021 17:02:56"

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

ENTITY 	multiple_pwm_led IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led_out : OUT std_logic_vector(9 DOWNTO 0)
	);
END multiple_pwm_led;

-- Design Ports Information
-- led_out[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiple_pwm_led IS
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
SIGNAL ww_led_out : std_logic_vector(9 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \led_out[8]~output_o\ : std_logic;
SIGNAL \led_out[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \L1|Add0~0_combout\ : std_logic;
SIGNAL \L1|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \L1|Add0~1\ : std_logic;
SIGNAL \L1|Add0~2_combout\ : std_logic;
SIGNAL \L1|Equal0~0_combout\ : std_logic;
SIGNAL \L1|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L1|Add0~3\ : std_logic;
SIGNAL \L1|Add0~4_combout\ : std_logic;
SIGNAL \L1|Add0~5\ : std_logic;
SIGNAL \L1|Add0~6_combout\ : std_logic;
SIGNAL \L1|Equal0~1_combout\ : std_logic;
SIGNAL \L1|Add0~7\ : std_logic;
SIGNAL \L1|Add0~8_combout\ : std_logic;
SIGNAL \L1|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L1|Add0~9\ : std_logic;
SIGNAL \L1|Add0~10_combout\ : std_logic;
SIGNAL \L1|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L1|Add0~11\ : std_logic;
SIGNAL \L1|Add0~12_combout\ : std_logic;
SIGNAL \L1|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \L1|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L1|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L1|led_counter[1]~8\ : std_logic;
SIGNAL \L1|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L1|led_counter[2]~10\ : std_logic;
SIGNAL \L1|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L1|led_counter[3]~12\ : std_logic;
SIGNAL \L1|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L1|led_counter[4]~14\ : std_logic;
SIGNAL \L1|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L1|led_counter[5]~16\ : std_logic;
SIGNAL \L1|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L1|led_counter[6]~18\ : std_logic;
SIGNAL \L1|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L1|LessThan1~1_combout\ : std_logic;
SIGNAL \L1|LessThan1~0_combout\ : std_logic;
SIGNAL \L1|LessThan1~2_combout\ : std_logic;
SIGNAL \L2|Add0~0_combout\ : std_logic;
SIGNAL \L2|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L2|Add0~1\ : std_logic;
SIGNAL \L2|Add0~2_combout\ : std_logic;
SIGNAL \L2|Add0~7\ : std_logic;
SIGNAL \L2|Add0~8_combout\ : std_logic;
SIGNAL \L2|Add0~9\ : std_logic;
SIGNAL \L2|Add0~10_combout\ : std_logic;
SIGNAL \L2|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L2|Add0~11\ : std_logic;
SIGNAL \L2|Add0~12_combout\ : std_logic;
SIGNAL \L2|Equal0~0_combout\ : std_logic;
SIGNAL \L2|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L2|Equal0~1_combout\ : std_logic;
SIGNAL \L2|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L2|Add0~3\ : std_logic;
SIGNAL \L2|Add0~4_combout\ : std_logic;
SIGNAL \L2|Add0~5\ : std_logic;
SIGNAL \L2|Add0~6_combout\ : std_logic;
SIGNAL \L2|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \L2|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L2|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L2|led_counter[1]~8\ : std_logic;
SIGNAL \L2|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L2|led_counter[2]~10\ : std_logic;
SIGNAL \L2|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L2|led_counter[3]~12\ : std_logic;
SIGNAL \L2|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L2|led_counter[4]~14\ : std_logic;
SIGNAL \L2|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L2|led_counter[5]~16\ : std_logic;
SIGNAL \L2|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L2|led_counter[6]~18\ : std_logic;
SIGNAL \L2|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L2|LessThan1~1_combout\ : std_logic;
SIGNAL \L2|LessThan1~0_combout\ : std_logic;
SIGNAL \L2|LessThan1~2_combout\ : std_logic;
SIGNAL \L3|Add0~0_combout\ : std_logic;
SIGNAL \L3|Add0~7\ : std_logic;
SIGNAL \L3|Add0~8_combout\ : std_logic;
SIGNAL \L3|Add0~9\ : std_logic;
SIGNAL \L3|Add0~10_combout\ : std_logic;
SIGNAL \L3|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L3|Add0~11\ : std_logic;
SIGNAL \L3|Add0~12_combout\ : std_logic;
SIGNAL \L3|Equal0~0_combout\ : std_logic;
SIGNAL \L3|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L3|Equal0~1_combout\ : std_logic;
SIGNAL \L3|Add0~1\ : std_logic;
SIGNAL \L3|Add0~2_combout\ : std_logic;
SIGNAL \L3|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L3|Add0~3\ : std_logic;
SIGNAL \L3|Add0~4_combout\ : std_logic;
SIGNAL \L3|Add0~5\ : std_logic;
SIGNAL \L3|Add0~6_combout\ : std_logic;
SIGNAL \L3|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \L3|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L3|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L3|led_counter[1]~8\ : std_logic;
SIGNAL \L3|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L3|led_counter[2]~10\ : std_logic;
SIGNAL \L3|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L3|led_counter[3]~12\ : std_logic;
SIGNAL \L3|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L3|led_counter[4]~14\ : std_logic;
SIGNAL \L3|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L3|led_counter[5]~16\ : std_logic;
SIGNAL \L3|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L3|led_counter[6]~18\ : std_logic;
SIGNAL \L3|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L3|LessThan1~0_combout\ : std_logic;
SIGNAL \L3|LessThan1~1_combout\ : std_logic;
SIGNAL \L3|LessThan1~2_combout\ : std_logic;
SIGNAL \L4|Add0~0_combout\ : std_logic;
SIGNAL \L4|Add0~1\ : std_logic;
SIGNAL \L4|Add0~2_combout\ : std_logic;
SIGNAL \L4|Add0~3\ : std_logic;
SIGNAL \L4|Add0~4_combout\ : std_logic;
SIGNAL \L4|Add0~5\ : std_logic;
SIGNAL \L4|Add0~6_combout\ : std_logic;
SIGNAL \L4|Add0~7\ : std_logic;
SIGNAL \L4|Add0~8_combout\ : std_logic;
SIGNAL \L4|Add0~9\ : std_logic;
SIGNAL \L4|Add0~10_combout\ : std_logic;
SIGNAL \L4|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L4|Add0~11\ : std_logic;
SIGNAL \L4|Add0~12_combout\ : std_logic;
SIGNAL \L4|Equal0~0_combout\ : std_logic;
SIGNAL \L4|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L4|Equal0~1_combout\ : std_logic;
SIGNAL \L4|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L4|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \L4|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L4|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L4|led_counter[1]~8\ : std_logic;
SIGNAL \L4|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L4|led_counter[2]~10\ : std_logic;
SIGNAL \L4|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L4|led_counter[3]~12\ : std_logic;
SIGNAL \L4|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L4|led_counter[4]~14\ : std_logic;
SIGNAL \L4|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L4|led_counter[5]~16\ : std_logic;
SIGNAL \L4|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L4|led_counter[6]~18\ : std_logic;
SIGNAL \L4|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L4|LessThan1~0_combout\ : std_logic;
SIGNAL \L4|LessThan1~1_combout\ : std_logic;
SIGNAL \L4|LessThan1~2_combout\ : std_logic;
SIGNAL \L5|Add0~0_combout\ : std_logic;
SIGNAL \L5|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L5|Add0~1\ : std_logic;
SIGNAL \L5|Add0~2_combout\ : std_logic;
SIGNAL \L5|Equal0~0_combout\ : std_logic;
SIGNAL \L5|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L5|Add0~3\ : std_logic;
SIGNAL \L5|Add0~4_combout\ : std_logic;
SIGNAL \L5|Add0~5\ : std_logic;
SIGNAL \L5|Add0~6_combout\ : std_logic;
SIGNAL \L5|Add0~7\ : std_logic;
SIGNAL \L5|Add0~8_combout\ : std_logic;
SIGNAL \L5|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L5|Equal0~1_combout\ : std_logic;
SIGNAL \L5|Add0~9\ : std_logic;
SIGNAL \L5|Add0~10_combout\ : std_logic;
SIGNAL \L5|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L5|Add0~11\ : std_logic;
SIGNAL \L5|Add0~12_combout\ : std_logic;
SIGNAL \L5|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \L5|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L5|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L5|led_counter[1]~8\ : std_logic;
SIGNAL \L5|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L5|led_counter[2]~10\ : std_logic;
SIGNAL \L5|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L5|led_counter[3]~12\ : std_logic;
SIGNAL \L5|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L5|led_counter[4]~14\ : std_logic;
SIGNAL \L5|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L5|LessThan1~1_combout\ : std_logic;
SIGNAL \L5|led_counter[5]~16\ : std_logic;
SIGNAL \L5|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L5|led_counter[6]~18\ : std_logic;
SIGNAL \L5|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L5|LessThan1~0_combout\ : std_logic;
SIGNAL \L5|LessThan1~2_combout\ : std_logic;
SIGNAL \L6|Add0~0_combout\ : std_logic;
SIGNAL \L6|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L6|Add0~1\ : std_logic;
SIGNAL \L6|Add0~2_combout\ : std_logic;
SIGNAL \L6|Add0~7\ : std_logic;
SIGNAL \L6|Add0~8_combout\ : std_logic;
SIGNAL \L6|Add0~9\ : std_logic;
SIGNAL \L6|Add0~10_combout\ : std_logic;
SIGNAL \L6|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L6|Add0~11\ : std_logic;
SIGNAL \L6|Add0~12_combout\ : std_logic;
SIGNAL \L6|Equal0~0_combout\ : std_logic;
SIGNAL \L6|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L6|Equal0~1_combout\ : std_logic;
SIGNAL \L6|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L6|Add0~3\ : std_logic;
SIGNAL \L6|Add0~4_combout\ : std_logic;
SIGNAL \L6|Add0~5\ : std_logic;
SIGNAL \L6|Add0~6_combout\ : std_logic;
SIGNAL \L6|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \L6|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L6|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L6|led_counter[1]~8\ : std_logic;
SIGNAL \L6|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L6|led_counter[2]~10\ : std_logic;
SIGNAL \L6|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L6|led_counter[3]~12\ : std_logic;
SIGNAL \L6|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L6|led_counter[4]~14\ : std_logic;
SIGNAL \L6|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L6|led_counter[5]~16\ : std_logic;
SIGNAL \L6|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L6|LessThan1~0_combout\ : std_logic;
SIGNAL \L6|led_counter[6]~18\ : std_logic;
SIGNAL \L6|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L6|LessThan1~1_combout\ : std_logic;
SIGNAL \L6|LessThan1~2_combout\ : std_logic;
SIGNAL \L7|Add0~0_combout\ : std_logic;
SIGNAL \L7|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L7|Add0~7\ : std_logic;
SIGNAL \L7|Add0~8_combout\ : std_logic;
SIGNAL \L7|Add0~9\ : std_logic;
SIGNAL \L7|Add0~10_combout\ : std_logic;
SIGNAL \L7|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L7|Add0~11\ : std_logic;
SIGNAL \L7|Add0~12_combout\ : std_logic;
SIGNAL \L7|Equal0~0_combout\ : std_logic;
SIGNAL \L7|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L7|Equal0~1_combout\ : std_logic;
SIGNAL \L7|Add0~1\ : std_logic;
SIGNAL \L7|Add0~2_combout\ : std_logic;
SIGNAL \L7|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L7|Add0~3\ : std_logic;
SIGNAL \L7|Add0~4_combout\ : std_logic;
SIGNAL \L7|Add0~5\ : std_logic;
SIGNAL \L7|Add0~6_combout\ : std_logic;
SIGNAL \L7|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \L7|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L7|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L7|led_counter[1]~8\ : std_logic;
SIGNAL \L7|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L7|led_counter[2]~10\ : std_logic;
SIGNAL \L7|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L7|led_counter[3]~12\ : std_logic;
SIGNAL \L7|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L7|led_counter[4]~14\ : std_logic;
SIGNAL \L7|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L7|led_counter[5]~16\ : std_logic;
SIGNAL \L7|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L7|led_counter[6]~18\ : std_logic;
SIGNAL \L7|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L8|Add0~0_combout\ : std_logic;
SIGNAL \L8|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L8|Add0~7\ : std_logic;
SIGNAL \L8|Add0~8_combout\ : std_logic;
SIGNAL \L8|Add0~9\ : std_logic;
SIGNAL \L8|Add0~10_combout\ : std_logic;
SIGNAL \L8|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L8|Add0~11\ : std_logic;
SIGNAL \L8|Add0~12_combout\ : std_logic;
SIGNAL \L8|Equal0~0_combout\ : std_logic;
SIGNAL \L8|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L8|Equal0~1_combout\ : std_logic;
SIGNAL \L8|Add0~1\ : std_logic;
SIGNAL \L8|Add0~2_combout\ : std_logic;
SIGNAL \L8|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L8|Add0~3\ : std_logic;
SIGNAL \L8|Add0~4_combout\ : std_logic;
SIGNAL \L8|Add0~5\ : std_logic;
SIGNAL \L8|Add0~6_combout\ : std_logic;
SIGNAL \L8|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \L8|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L8|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L8|led_counter[1]~8\ : std_logic;
SIGNAL \L8|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L8|led_counter[2]~10\ : std_logic;
SIGNAL \L8|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L8|led_counter[3]~12\ : std_logic;
SIGNAL \L8|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L8|LessThan1~0_combout\ : std_logic;
SIGNAL \L8|led_counter[4]~14\ : std_logic;
SIGNAL \L8|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L8|led_counter[5]~16\ : std_logic;
SIGNAL \L8|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L8|led_counter[6]~18\ : std_logic;
SIGNAL \L8|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L8|LessThan1~1_combout\ : std_logic;
SIGNAL \L9|Add0~0_combout\ : std_logic;
SIGNAL \L9|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \L9|Equal0~0_combout\ : std_logic;
SIGNAL \L9|Add0~1\ : std_logic;
SIGNAL \L9|Add0~2_combout\ : std_logic;
SIGNAL \L9|pwm_div_counter~0_combout\ : std_logic;
SIGNAL \L9|Add0~3\ : std_logic;
SIGNAL \L9|Add0~4_combout\ : std_logic;
SIGNAL \L9|Add0~5\ : std_logic;
SIGNAL \L9|Add0~6_combout\ : std_logic;
SIGNAL \L9|Add0~7\ : std_logic;
SIGNAL \L9|Add0~8_combout\ : std_logic;
SIGNAL \L9|pwm_div_counter~1_combout\ : std_logic;
SIGNAL \L9|Equal0~1_combout\ : std_logic;
SIGNAL \L9|Add0~9\ : std_logic;
SIGNAL \L9|Add0~10_combout\ : std_logic;
SIGNAL \L9|pwm_div_counter~2_combout\ : std_logic;
SIGNAL \L9|Add0~11\ : std_logic;
SIGNAL \L9|Add0~12_combout\ : std_logic;
SIGNAL \L9|LessThan0~0_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \L9|led_counter[0]~21_combout\ : std_logic;
SIGNAL \L9|led_counter[1]~7_combout\ : std_logic;
SIGNAL \L9|led_counter[1]~8\ : std_logic;
SIGNAL \L9|led_counter[2]~9_combout\ : std_logic;
SIGNAL \L9|led_counter[2]~10\ : std_logic;
SIGNAL \L9|led_counter[3]~11_combout\ : std_logic;
SIGNAL \L9|led_counter[3]~12\ : std_logic;
SIGNAL \L9|led_counter[4]~13_combout\ : std_logic;
SIGNAL \L9|led_counter[4]~14\ : std_logic;
SIGNAL \L9|led_counter[5]~15_combout\ : std_logic;
SIGNAL \L9|led_counter[5]~16\ : std_logic;
SIGNAL \L9|led_counter[6]~17_combout\ : std_logic;
SIGNAL \L9|led_counter[6]~18\ : std_logic;
SIGNAL \L9|led_counter[7]~19_combout\ : std_logic;
SIGNAL \L9|LessThan1~1_combout\ : std_logic;
SIGNAL \L9|LessThan1~0_combout\ : std_logic;
SIGNAL \L9|LessThan1~2_combout\ : std_logic;
SIGNAL \L1|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L3|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L1|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L3|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L2|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L2|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L4|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L4|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L5|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L5|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L6|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L6|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L7|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L7|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L8|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L8|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L9|pwm_div_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \L9|led_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L7|ALT_INV_led_counter\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\L7|ALT_INV_led_counter\(7) <= NOT \L7|led_counter\(7);

-- Location: IOOBUF_X0_Y20_N9
\led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L5|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L6|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L7|ALT_INV_led_counter\(7),
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L8|LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \led_out[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \led_out[9]~output_o\);

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

-- Location: LCCOMB_X20_Y18_N14
\L1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~0_combout\ = \L1|pwm_div_counter\(0) $ (VCC)
-- \L1|Add0~1\ = CARRY(\L1|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(0),
	datad => VCC,
	combout => \L1|Add0~0_combout\,
	cout => \L1|Add0~1\);

-- Location: LCCOMB_X20_Y18_N8
\L1|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|pwm_div_counter[0]~feeder_combout\ = \L1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Add0~0_combout\,
	combout => \L1|pwm_div_counter[0]~feeder_combout\);

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

-- Location: FF_X20_Y18_N9
\L1|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(0));

-- Location: LCCOMB_X20_Y18_N16
\L1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~2_combout\ = (\L1|pwm_div_counter\(1) & (!\L1|Add0~1\)) # (!\L1|pwm_div_counter\(1) & ((\L1|Add0~1\) # (GND)))
-- \L1|Add0~3\ = CARRY((!\L1|Add0~1\) # (!\L1|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(1),
	datad => VCC,
	cin => \L1|Add0~1\,
	combout => \L1|Add0~2_combout\,
	cout => \L1|Add0~3\);

-- Location: LCCOMB_X20_Y18_N2
\L1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal0~0_combout\ = (!\L1|pwm_div_counter\(6) & (!\L1|pwm_div_counter\(1) & (\L1|pwm_div_counter\(5) & !\L1|pwm_div_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(6),
	datab => \L1|pwm_div_counter\(1),
	datac => \L1|pwm_div_counter\(5),
	datad => \L1|pwm_div_counter\(2),
	combout => \L1|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y18_N6
\L1|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|pwm_div_counter~0_combout\ = (\L1|Add0~2_combout\ & ((!\L1|Equal0~0_combout\) # (!\L1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~1_combout\,
	datac => \L1|Add0~2_combout\,
	datad => \L1|Equal0~0_combout\,
	combout => \L1|pwm_div_counter~0_combout\);

-- Location: FF_X20_Y18_N7
\L1|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(1));

-- Location: LCCOMB_X20_Y18_N18
\L1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~4_combout\ = (\L1|pwm_div_counter\(2) & (\L1|Add0~3\ $ (GND))) # (!\L1|pwm_div_counter\(2) & (!\L1|Add0~3\ & VCC))
-- \L1|Add0~5\ = CARRY((\L1|pwm_div_counter\(2) & !\L1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|pwm_div_counter\(2),
	datad => VCC,
	cin => \L1|Add0~3\,
	combout => \L1|Add0~4_combout\,
	cout => \L1|Add0~5\);

-- Location: FF_X20_Y18_N19
\L1|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(2));

-- Location: LCCOMB_X20_Y18_N20
\L1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~6_combout\ = (\L1|pwm_div_counter\(3) & (!\L1|Add0~5\)) # (!\L1|pwm_div_counter\(3) & ((\L1|Add0~5\) # (GND)))
-- \L1|Add0~7\ = CARRY((!\L1|Add0~5\) # (!\L1|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|pwm_div_counter\(3),
	datad => VCC,
	cin => \L1|Add0~5\,
	combout => \L1|Add0~6_combout\,
	cout => \L1|Add0~7\);

-- Location: FF_X20_Y18_N21
\L1|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(3));

-- Location: LCCOMB_X20_Y18_N12
\L1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal0~1_combout\ = (\L1|pwm_div_counter\(0) & (!\L1|pwm_div_counter\(3) & \L1|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(0),
	datac => \L1|pwm_div_counter\(3),
	datad => \L1|pwm_div_counter\(4),
	combout => \L1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y18_N22
\L1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~8_combout\ = (\L1|pwm_div_counter\(4) & (\L1|Add0~7\ $ (GND))) # (!\L1|pwm_div_counter\(4) & (!\L1|Add0~7\ & VCC))
-- \L1|Add0~9\ = CARRY((\L1|pwm_div_counter\(4) & !\L1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|pwm_div_counter\(4),
	datad => VCC,
	cin => \L1|Add0~7\,
	combout => \L1|Add0~8_combout\,
	cout => \L1|Add0~9\);

-- Location: LCCOMB_X20_Y18_N28
\L1|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|pwm_div_counter~1_combout\ = (\L1|Add0~8_combout\ & ((!\L1|Equal0~0_combout\) # (!\L1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~1_combout\,
	datac => \L1|Add0~8_combout\,
	datad => \L1|Equal0~0_combout\,
	combout => \L1|pwm_div_counter~1_combout\);

-- Location: FF_X20_Y18_N29
\L1|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(4));

-- Location: LCCOMB_X20_Y18_N24
\L1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~10_combout\ = (\L1|pwm_div_counter\(5) & (!\L1|Add0~9\)) # (!\L1|pwm_div_counter\(5) & ((\L1|Add0~9\) # (GND)))
-- \L1|Add0~11\ = CARRY((!\L1|Add0~9\) # (!\L1|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|pwm_div_counter\(5),
	datad => VCC,
	cin => \L1|Add0~9\,
	combout => \L1|Add0~10_combout\,
	cout => \L1|Add0~11\);

-- Location: LCCOMB_X20_Y18_N4
\L1|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|pwm_div_counter~2_combout\ = (\L1|Add0~10_combout\ & ((!\L1|Equal0~0_combout\) # (!\L1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Add0~10_combout\,
	datac => \L1|Equal0~1_combout\,
	datad => \L1|Equal0~0_combout\,
	combout => \L1|pwm_div_counter~2_combout\);

-- Location: FF_X20_Y18_N5
\L1|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(5));

-- Location: LCCOMB_X20_Y18_N26
\L1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~12_combout\ = \L1|pwm_div_counter\(6) $ (!\L1|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(6),
	cin => \L1|Add0~11\,
	combout => \L1|Add0~12_combout\);

-- Location: FF_X20_Y18_N27
\L1|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L1|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|pwm_div_counter\(6));

-- Location: LCCOMB_X20_Y18_N10
\L1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|LessThan0~0_combout\ = ((!\L1|pwm_div_counter\(1) & (!\L1|pwm_div_counter\(2) & !\L1|pwm_div_counter\(0)))) # (!\L1|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(1),
	datab => \L1|pwm_div_counter\(2),
	datac => \L1|pwm_div_counter\(0),
	datad => \L1|pwm_div_counter\(4),
	combout => \L1|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y18_N0
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!\L1|pwm_div_counter\(6) & (!\L1|pwm_div_counter\(5) & ((\L1|LessThan0~0_combout\) # (!\L1|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|pwm_div_counter\(6),
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|pwm_div_counter\(5),
	datad => \L1|pwm_div_counter\(3),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X1_Y20_N12
\L1|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[0]~21_combout\ = !\L1|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L1|led_counter\(0),
	combout => \L1|led_counter[0]~21_combout\);

-- Location: FF_X1_Y20_N13
\L1|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(0));

-- Location: LCCOMB_X1_Y20_N14
\L1|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[1]~7_combout\ = (\L1|led_counter\(0) & (\L1|led_counter\(1) $ (VCC))) # (!\L1|led_counter\(0) & (\L1|led_counter\(1) & VCC))
-- \L1|led_counter[1]~8\ = CARRY((\L1|led_counter\(0) & \L1|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|led_counter\(0),
	datab => \L1|led_counter\(1),
	datad => VCC,
	combout => \L1|led_counter[1]~7_combout\,
	cout => \L1|led_counter[1]~8\);

-- Location: FF_X1_Y20_N15
\L1|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(1));

-- Location: LCCOMB_X1_Y20_N16
\L1|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[2]~9_combout\ = (\L1|led_counter\(2) & (!\L1|led_counter[1]~8\)) # (!\L1|led_counter\(2) & ((\L1|led_counter[1]~8\) # (GND)))
-- \L1|led_counter[2]~10\ = CARRY((!\L1|led_counter[1]~8\) # (!\L1|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|led_counter\(2),
	datad => VCC,
	cin => \L1|led_counter[1]~8\,
	combout => \L1|led_counter[2]~9_combout\,
	cout => \L1|led_counter[2]~10\);

-- Location: FF_X1_Y20_N17
\L1|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(2));

-- Location: LCCOMB_X1_Y20_N18
\L1|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[3]~11_combout\ = (\L1|led_counter\(3) & (\L1|led_counter[2]~10\ $ (GND))) # (!\L1|led_counter\(3) & (!\L1|led_counter[2]~10\ & VCC))
-- \L1|led_counter[3]~12\ = CARRY((\L1|led_counter\(3) & !\L1|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|led_counter\(3),
	datad => VCC,
	cin => \L1|led_counter[2]~10\,
	combout => \L1|led_counter[3]~11_combout\,
	cout => \L1|led_counter[3]~12\);

-- Location: FF_X1_Y20_N19
\L1|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(3));

-- Location: LCCOMB_X1_Y20_N20
\L1|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[4]~13_combout\ = (\L1|led_counter\(4) & (!\L1|led_counter[3]~12\)) # (!\L1|led_counter\(4) & ((\L1|led_counter[3]~12\) # (GND)))
-- \L1|led_counter[4]~14\ = CARRY((!\L1|led_counter[3]~12\) # (!\L1|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|led_counter\(4),
	datad => VCC,
	cin => \L1|led_counter[3]~12\,
	combout => \L1|led_counter[4]~13_combout\,
	cout => \L1|led_counter[4]~14\);

-- Location: FF_X1_Y20_N21
\L1|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(4));

-- Location: LCCOMB_X1_Y20_N22
\L1|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[5]~15_combout\ = (\L1|led_counter\(5) & (\L1|led_counter[4]~14\ $ (GND))) # (!\L1|led_counter\(5) & (!\L1|led_counter[4]~14\ & VCC))
-- \L1|led_counter[5]~16\ = CARRY((\L1|led_counter\(5) & !\L1|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|led_counter\(5),
	datad => VCC,
	cin => \L1|led_counter[4]~14\,
	combout => \L1|led_counter[5]~15_combout\,
	cout => \L1|led_counter[5]~16\);

-- Location: FF_X1_Y20_N23
\L1|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(5));

-- Location: LCCOMB_X1_Y20_N24
\L1|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[6]~17_combout\ = (\L1|led_counter\(6) & (!\L1|led_counter[5]~16\)) # (!\L1|led_counter\(6) & ((\L1|led_counter[5]~16\) # (GND)))
-- \L1|led_counter[6]~18\ = CARRY((!\L1|led_counter[5]~16\) # (!\L1|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|led_counter\(6),
	datad => VCC,
	cin => \L1|led_counter[5]~16\,
	combout => \L1|led_counter[6]~17_combout\,
	cout => \L1|led_counter[6]~18\);

-- Location: FF_X1_Y20_N25
\L1|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(6));

-- Location: LCCOMB_X1_Y20_N26
\L1|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|led_counter[7]~19_combout\ = \L1|led_counter\(7) $ (!\L1|led_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|led_counter\(7),
	cin => \L1|led_counter[6]~18\,
	combout => \L1|led_counter[7]~19_combout\);

-- Location: FF_X1_Y20_N27
\L1|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \L1|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|led_counter\(7));

-- Location: LCCOMB_X1_Y20_N0
\L1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|LessThan1~1_combout\ = (!\L1|led_counter\(5) & (!\L1|led_counter\(4) & (!\L1|led_counter\(7) & !\L1|led_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|led_counter\(5),
	datab => \L1|led_counter\(4),
	datac => \L1|led_counter\(7),
	datad => \L1|led_counter\(6),
	combout => \L1|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y20_N2
\L1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|LessThan1~0_combout\ = (!\L1|led_counter\(3) & (((!\L1|led_counter\(1) & !\L1|led_counter\(0))) # (!\L1|led_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|led_counter\(2),
	datab => \L1|led_counter\(1),
	datac => \L1|led_counter\(0),
	datad => \L1|led_counter\(3),
	combout => \L1|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\L1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|LessThan1~2_combout\ = (\L1|LessThan1~1_combout\ & \L1|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|LessThan1~1_combout\,
	datad => \L1|LessThan1~0_combout\,
	combout => \L1|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y27_N6
\L2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~0_combout\ = \L2|pwm_div_counter\(0) $ (VCC)
-- \L2|Add0~1\ = CARRY(\L2|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|pwm_div_counter\(0),
	datad => VCC,
	combout => \L2|Add0~0_combout\,
	cout => \L2|Add0~1\);

-- Location: LCCOMB_X19_Y27_N22
\L2|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|pwm_div_counter[0]~feeder_combout\ = \L2|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|Add0~0_combout\,
	combout => \L2|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X19_Y27_N23
\L2|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L2|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(0));

-- Location: LCCOMB_X19_Y27_N8
\L2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~2_combout\ = (\L2|pwm_div_counter\(1) & (!\L2|Add0~1\)) # (!\L2|pwm_div_counter\(1) & ((\L2|Add0~1\) # (GND)))
-- \L2|Add0~3\ = CARRY((!\L2|Add0~1\) # (!\L2|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L2|pwm_div_counter\(1),
	datad => VCC,
	cin => \L2|Add0~1\,
	combout => \L2|Add0~2_combout\,
	cout => \L2|Add0~3\);

-- Location: LCCOMB_X19_Y27_N12
\L2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~6_combout\ = (\L2|pwm_div_counter\(3) & (!\L2|Add0~5\)) # (!\L2|pwm_div_counter\(3) & ((\L2|Add0~5\) # (GND)))
-- \L2|Add0~7\ = CARRY((!\L2|Add0~5\) # (!\L2|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(3),
	datad => VCC,
	cin => \L2|Add0~5\,
	combout => \L2|Add0~6_combout\,
	cout => \L2|Add0~7\);

-- Location: LCCOMB_X19_Y27_N14
\L2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~8_combout\ = (\L2|pwm_div_counter\(4) & (\L2|Add0~7\ $ (GND))) # (!\L2|pwm_div_counter\(4) & (!\L2|Add0~7\ & VCC))
-- \L2|Add0~9\ = CARRY((\L2|pwm_div_counter\(4) & !\L2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L2|pwm_div_counter\(4),
	datad => VCC,
	cin => \L2|Add0~7\,
	combout => \L2|Add0~8_combout\,
	cout => \L2|Add0~9\);

-- Location: LCCOMB_X19_Y27_N16
\L2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~10_combout\ = (\L2|pwm_div_counter\(5) & (!\L2|Add0~9\)) # (!\L2|pwm_div_counter\(5) & ((\L2|Add0~9\) # (GND)))
-- \L2|Add0~11\ = CARRY((!\L2|Add0~9\) # (!\L2|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(5),
	datad => VCC,
	cin => \L2|Add0~9\,
	combout => \L2|Add0~10_combout\,
	cout => \L2|Add0~11\);

-- Location: LCCOMB_X19_Y27_N30
\L2|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|pwm_div_counter~2_combout\ = (\L2|Add0~10_combout\ & ((!\L2|Equal0~0_combout\) # (!\L2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|Add0~10_combout\,
	datac => \L2|Equal0~1_combout\,
	datad => \L2|Equal0~0_combout\,
	combout => \L2|pwm_div_counter~2_combout\);

-- Location: FF_X19_Y27_N31
\L2|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(5));

-- Location: LCCOMB_X19_Y27_N18
\L2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~12_combout\ = \L2|Add0~11\ $ (!\L2|pwm_div_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L2|pwm_div_counter\(6),
	cin => \L2|Add0~11\,
	combout => \L2|Add0~12_combout\);

-- Location: FF_X19_Y27_N19
\L2|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(6));

-- Location: LCCOMB_X19_Y27_N2
\L2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Equal0~0_combout\ = (\L2|pwm_div_counter\(5) & (!\L2|pwm_div_counter\(2) & (!\L2|pwm_div_counter\(1) & !\L2|pwm_div_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(5),
	datab => \L2|pwm_div_counter\(2),
	datac => \L2|pwm_div_counter\(1),
	datad => \L2|pwm_div_counter\(6),
	combout => \L2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y27_N0
\L2|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|pwm_div_counter~1_combout\ = (\L2|Add0~8_combout\ & ((!\L2|Equal0~0_combout\) # (!\L2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|Equal0~1_combout\,
	datac => \L2|Add0~8_combout\,
	datad => \L2|Equal0~0_combout\,
	combout => \L2|pwm_div_counter~1_combout\);

-- Location: FF_X19_Y27_N1
\L2|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(4));

-- Location: LCCOMB_X19_Y27_N24
\L2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Equal0~1_combout\ = (!\L2|pwm_div_counter\(3) & (\L2|pwm_div_counter\(0) & \L2|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(3),
	datab => \L2|pwm_div_counter\(0),
	datad => \L2|pwm_div_counter\(4),
	combout => \L2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y27_N28
\L2|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|pwm_div_counter~0_combout\ = (\L2|Add0~2_combout\ & ((!\L2|Equal0~0_combout\) # (!\L2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Add0~2_combout\,
	datac => \L2|Equal0~1_combout\,
	datad => \L2|Equal0~0_combout\,
	combout => \L2|pwm_div_counter~0_combout\);

-- Location: FF_X19_Y27_N29
\L2|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(1));

-- Location: LCCOMB_X19_Y27_N10
\L2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Add0~4_combout\ = (\L2|pwm_div_counter\(2) & (\L2|Add0~3\ $ (GND))) # (!\L2|pwm_div_counter\(2) & (!\L2|Add0~3\ & VCC))
-- \L2|Add0~5\ = CARRY((\L2|pwm_div_counter\(2) & !\L2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(2),
	datad => VCC,
	cin => \L2|Add0~3\,
	combout => \L2|Add0~4_combout\,
	cout => \L2|Add0~5\);

-- Location: FF_X19_Y27_N11
\L2|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(2));

-- Location: FF_X19_Y27_N13
\L2|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|pwm_div_counter\(3));

-- Location: LCCOMB_X19_Y27_N4
\L2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|LessThan0~0_combout\ = ((!\L2|pwm_div_counter\(2) & (!\L2|pwm_div_counter\(1) & !\L2|pwm_div_counter\(0)))) # (!\L2|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(2),
	datab => \L2|pwm_div_counter\(1),
	datac => \L2|pwm_div_counter\(0),
	datad => \L2|pwm_div_counter\(4),
	combout => \L2|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y27_N20
\rtl~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((!\L2|pwm_div_counter\(5) & (!\L2|pwm_div_counter\(6) & ((\L2|LessThan0~0_combout\) # (!\L2|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|pwm_div_counter\(3),
	datab => \L2|LessThan0~0_combout\,
	datac => \L2|pwm_div_counter\(5),
	datad => \L2|pwm_div_counter\(6),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X21_Y24_N0
\L2|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[0]~21_combout\ = !\L2|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L2|led_counter\(0),
	combout => \L2|led_counter[0]~21_combout\);

-- Location: FF_X21_Y24_N1
\L2|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(0));

-- Location: LCCOMB_X21_Y24_N4
\L2|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[1]~7_combout\ = (\L2|led_counter\(0) & (\L2|led_counter\(1) $ (VCC))) # (!\L2|led_counter\(0) & (\L2|led_counter\(1) & VCC))
-- \L2|led_counter[1]~8\ = CARRY((\L2|led_counter\(0) & \L2|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|led_counter\(0),
	datab => \L2|led_counter\(1),
	datad => VCC,
	combout => \L2|led_counter[1]~7_combout\,
	cout => \L2|led_counter[1]~8\);

-- Location: FF_X21_Y24_N5
\L2|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(1));

-- Location: LCCOMB_X21_Y24_N6
\L2|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[2]~9_combout\ = (\L2|led_counter\(2) & (!\L2|led_counter[1]~8\)) # (!\L2|led_counter\(2) & ((\L2|led_counter[1]~8\) # (GND)))
-- \L2|led_counter[2]~10\ = CARRY((!\L2|led_counter[1]~8\) # (!\L2|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L2|led_counter\(2),
	datad => VCC,
	cin => \L2|led_counter[1]~8\,
	combout => \L2|led_counter[2]~9_combout\,
	cout => \L2|led_counter[2]~10\);

-- Location: FF_X21_Y24_N7
\L2|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(2));

-- Location: LCCOMB_X21_Y24_N8
\L2|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[3]~11_combout\ = (\L2|led_counter\(3) & (\L2|led_counter[2]~10\ $ (GND))) # (!\L2|led_counter\(3) & (!\L2|led_counter[2]~10\ & VCC))
-- \L2|led_counter[3]~12\ = CARRY((\L2|led_counter\(3) & !\L2|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L2|led_counter\(3),
	datad => VCC,
	cin => \L2|led_counter[2]~10\,
	combout => \L2|led_counter[3]~11_combout\,
	cout => \L2|led_counter[3]~12\);

-- Location: FF_X21_Y24_N9
\L2|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(3));

-- Location: LCCOMB_X21_Y24_N10
\L2|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[4]~13_combout\ = (\L2|led_counter\(4) & (!\L2|led_counter[3]~12\)) # (!\L2|led_counter\(4) & ((\L2|led_counter[3]~12\) # (GND)))
-- \L2|led_counter[4]~14\ = CARRY((!\L2|led_counter[3]~12\) # (!\L2|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L2|led_counter\(4),
	datad => VCC,
	cin => \L2|led_counter[3]~12\,
	combout => \L2|led_counter[4]~13_combout\,
	cout => \L2|led_counter[4]~14\);

-- Location: FF_X21_Y24_N11
\L2|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(4));

-- Location: LCCOMB_X21_Y24_N12
\L2|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[5]~15_combout\ = (\L2|led_counter\(5) & (\L2|led_counter[4]~14\ $ (GND))) # (!\L2|led_counter\(5) & (!\L2|led_counter[4]~14\ & VCC))
-- \L2|led_counter[5]~16\ = CARRY((\L2|led_counter\(5) & !\L2|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L2|led_counter\(5),
	datad => VCC,
	cin => \L2|led_counter[4]~14\,
	combout => \L2|led_counter[5]~15_combout\,
	cout => \L2|led_counter[5]~16\);

-- Location: FF_X21_Y24_N13
\L2|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(5));

-- Location: LCCOMB_X21_Y24_N14
\L2|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[6]~17_combout\ = (\L2|led_counter\(6) & (!\L2|led_counter[5]~16\)) # (!\L2|led_counter\(6) & ((\L2|led_counter[5]~16\) # (GND)))
-- \L2|led_counter[6]~18\ = CARRY((!\L2|led_counter[5]~16\) # (!\L2|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L2|led_counter\(6),
	datad => VCC,
	cin => \L2|led_counter[5]~16\,
	combout => \L2|led_counter[6]~17_combout\,
	cout => \L2|led_counter[6]~18\);

-- Location: FF_X21_Y24_N15
\L2|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(6));

-- Location: LCCOMB_X21_Y24_N16
\L2|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|led_counter[7]~19_combout\ = \L2|led_counter[6]~18\ $ (!\L2|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L2|led_counter\(7),
	cin => \L2|led_counter[6]~18\,
	combout => \L2|led_counter[7]~19_combout\);

-- Location: FF_X21_Y24_N17
\L2|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \L2|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|led_counter\(7));

-- Location: LCCOMB_X21_Y23_N0
\L2|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|LessThan1~1_combout\ = (!\L2|led_counter\(7) & (!\L2|led_counter\(4) & (!\L2|led_counter\(5) & !\L2|led_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|led_counter\(7),
	datab => \L2|led_counter\(4),
	datac => \L2|led_counter\(5),
	datad => \L2|led_counter\(6),
	combout => \L2|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y24_N0
\L2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|LessThan1~0_combout\ = (((!\L2|led_counter\(3)) # (!\L2|led_counter\(1))) # (!\L2|led_counter\(2))) # (!\L2|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|led_counter\(0),
	datab => \L2|led_counter\(2),
	datac => \L2|led_counter\(1),
	datad => \L2|led_counter\(3),
	combout => \L2|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y23_N6
\L2|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|LessThan1~2_combout\ = (\L2|LessThan1~1_combout\ & \L2|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|LessThan1~1_combout\,
	datad => \L2|LessThan1~0_combout\,
	combout => \L2|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y28_N4
\L3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~0_combout\ = \L3|pwm_div_counter\(0) $ (VCC)
-- \L3|Add0~1\ = CARRY(\L3|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L3|pwm_div_counter\(0),
	datad => VCC,
	combout => \L3|Add0~0_combout\,
	cout => \L3|Add0~1\);

-- Location: FF_X19_Y28_N23
\L3|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \L3|Add0~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(0));

-- Location: LCCOMB_X19_Y28_N10
\L3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~6_combout\ = (\L3|pwm_div_counter\(3) & (!\L3|Add0~5\)) # (!\L3|pwm_div_counter\(3) & ((\L3|Add0~5\) # (GND)))
-- \L3|Add0~7\ = CARRY((!\L3|Add0~5\) # (!\L3|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(3),
	datad => VCC,
	cin => \L3|Add0~5\,
	combout => \L3|Add0~6_combout\,
	cout => \L3|Add0~7\);

-- Location: LCCOMB_X19_Y28_N12
\L3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~8_combout\ = (\L3|pwm_div_counter\(4) & (\L3|Add0~7\ $ (GND))) # (!\L3|pwm_div_counter\(4) & (!\L3|Add0~7\ & VCC))
-- \L3|Add0~9\ = CARRY((\L3|pwm_div_counter\(4) & !\L3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|pwm_div_counter\(4),
	datad => VCC,
	cin => \L3|Add0~7\,
	combout => \L3|Add0~8_combout\,
	cout => \L3|Add0~9\);

-- Location: LCCOMB_X19_Y28_N14
\L3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~10_combout\ = (\L3|pwm_div_counter\(5) & (!\L3|Add0~9\)) # (!\L3|pwm_div_counter\(5) & ((\L3|Add0~9\) # (GND)))
-- \L3|Add0~11\ = CARRY((!\L3|Add0~9\) # (!\L3|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(5),
	datad => VCC,
	cin => \L3|Add0~9\,
	combout => \L3|Add0~10_combout\,
	cout => \L3|Add0~11\);

-- Location: LCCOMB_X19_Y28_N26
\L3|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|pwm_div_counter~2_combout\ = (\L3|Add0~10_combout\ & ((!\L3|Equal0~0_combout\) # (!\L3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L3|Equal0~1_combout\,
	datac => \L3|Add0~10_combout\,
	datad => \L3|Equal0~0_combout\,
	combout => \L3|pwm_div_counter~2_combout\);

-- Location: FF_X19_Y28_N27
\L3|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(5));

-- Location: LCCOMB_X19_Y28_N16
\L3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~12_combout\ = \L3|Add0~11\ $ (!\L3|pwm_div_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L3|pwm_div_counter\(6),
	cin => \L3|Add0~11\,
	combout => \L3|Add0~12_combout\);

-- Location: FF_X19_Y28_N17
\L3|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(6));

-- Location: LCCOMB_X19_Y28_N2
\L3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Equal0~0_combout\ = (\L3|pwm_div_counter\(5) & (!\L3|pwm_div_counter\(6) & (!\L3|pwm_div_counter\(1) & !\L3|pwm_div_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(5),
	datab => \L3|pwm_div_counter\(6),
	datac => \L3|pwm_div_counter\(1),
	datad => \L3|pwm_div_counter\(2),
	combout => \L3|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y28_N20
\L3|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|pwm_div_counter~1_combout\ = (\L3|Add0~8_combout\ & ((!\L3|Equal0~0_combout\) # (!\L3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|Add0~8_combout\,
	datab => \L3|Equal0~1_combout\,
	datad => \L3|Equal0~0_combout\,
	combout => \L3|pwm_div_counter~1_combout\);

-- Location: FF_X19_Y28_N21
\L3|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(4));

-- Location: LCCOMB_X19_Y28_N18
\L3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Equal0~1_combout\ = (!\L3|pwm_div_counter\(3) & (\L3|pwm_div_counter\(0) & \L3|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(3),
	datac => \L3|pwm_div_counter\(0),
	datad => \L3|pwm_div_counter\(4),
	combout => \L3|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y28_N6
\L3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~2_combout\ = (\L3|pwm_div_counter\(1) & (!\L3|Add0~1\)) # (!\L3|pwm_div_counter\(1) & ((\L3|Add0~1\) # (GND)))
-- \L3|Add0~3\ = CARRY((!\L3|Add0~1\) # (!\L3|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(1),
	datad => VCC,
	cin => \L3|Add0~1\,
	combout => \L3|Add0~2_combout\,
	cout => \L3|Add0~3\);

-- Location: LCCOMB_X19_Y28_N30
\L3|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|pwm_div_counter~0_combout\ = (\L3|Add0~2_combout\ & ((!\L3|Equal0~0_combout\) # (!\L3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L3|Equal0~1_combout\,
	datac => \L3|Add0~2_combout\,
	datad => \L3|Equal0~0_combout\,
	combout => \L3|pwm_div_counter~0_combout\);

-- Location: FF_X19_Y28_N31
\L3|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(1));

-- Location: LCCOMB_X19_Y28_N8
\L3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Add0~4_combout\ = (\L3|pwm_div_counter\(2) & (\L3|Add0~3\ $ (GND))) # (!\L3|pwm_div_counter\(2) & (!\L3|Add0~3\ & VCC))
-- \L3|Add0~5\ = CARRY((\L3|pwm_div_counter\(2) & !\L3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|pwm_div_counter\(2),
	datad => VCC,
	cin => \L3|Add0~3\,
	combout => \L3|Add0~4_combout\,
	cout => \L3|Add0~5\);

-- Location: FF_X19_Y28_N9
\L3|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(2));

-- Location: FF_X19_Y28_N11
\L3|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L3|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|pwm_div_counter\(3));

-- Location: LCCOMB_X19_Y28_N28
\L3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|LessThan0~0_combout\ = ((!\L3|pwm_div_counter\(0) & (!\L3|pwm_div_counter\(2) & !\L3|pwm_div_counter\(1)))) # (!\L3|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(0),
	datab => \L3|pwm_div_counter\(2),
	datac => \L3|pwm_div_counter\(1),
	datad => \L3|pwm_div_counter\(4),
	combout => \L3|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y28_N0
\rtl~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = LCELL((!\L3|pwm_div_counter\(5) & (!\L3|pwm_div_counter\(6) & ((\L3|LessThan0~0_combout\) # (!\L3|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|pwm_div_counter\(3),
	datab => \L3|LessThan0~0_combout\,
	datac => \L3|pwm_div_counter\(5),
	datad => \L3|pwm_div_counter\(6),
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G11
\rtl~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X3_Y21_N30
\L3|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[0]~21_combout\ = !\L3|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L3|led_counter\(0),
	combout => \L3|led_counter[0]~21_combout\);

-- Location: FF_X3_Y21_N31
\L3|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(0));

-- Location: LCCOMB_X3_Y21_N14
\L3|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[1]~7_combout\ = (\L3|led_counter\(0) & (\L3|led_counter\(1) $ (VCC))) # (!\L3|led_counter\(0) & (\L3|led_counter\(1) & VCC))
-- \L3|led_counter[1]~8\ = CARRY((\L3|led_counter\(0) & \L3|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|led_counter\(0),
	datab => \L3|led_counter\(1),
	datad => VCC,
	combout => \L3|led_counter[1]~7_combout\,
	cout => \L3|led_counter[1]~8\);

-- Location: FF_X3_Y21_N15
\L3|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(1));

-- Location: LCCOMB_X3_Y21_N16
\L3|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[2]~9_combout\ = (\L3|led_counter\(2) & (!\L3|led_counter[1]~8\)) # (!\L3|led_counter\(2) & ((\L3|led_counter[1]~8\) # (GND)))
-- \L3|led_counter[2]~10\ = CARRY((!\L3|led_counter[1]~8\) # (!\L3|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|led_counter\(2),
	datad => VCC,
	cin => \L3|led_counter[1]~8\,
	combout => \L3|led_counter[2]~9_combout\,
	cout => \L3|led_counter[2]~10\);

-- Location: FF_X3_Y21_N17
\L3|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(2));

-- Location: LCCOMB_X3_Y21_N18
\L3|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[3]~11_combout\ = (\L3|led_counter\(3) & (\L3|led_counter[2]~10\ $ (GND))) # (!\L3|led_counter\(3) & (!\L3|led_counter[2]~10\ & VCC))
-- \L3|led_counter[3]~12\ = CARRY((\L3|led_counter\(3) & !\L3|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|led_counter\(3),
	datad => VCC,
	cin => \L3|led_counter[2]~10\,
	combout => \L3|led_counter[3]~11_combout\,
	cout => \L3|led_counter[3]~12\);

-- Location: FF_X3_Y21_N19
\L3|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(3));

-- Location: LCCOMB_X3_Y21_N20
\L3|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[4]~13_combout\ = (\L3|led_counter\(4) & (!\L3|led_counter[3]~12\)) # (!\L3|led_counter\(4) & ((\L3|led_counter[3]~12\) # (GND)))
-- \L3|led_counter[4]~14\ = CARRY((!\L3|led_counter[3]~12\) # (!\L3|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|led_counter\(4),
	datad => VCC,
	cin => \L3|led_counter[3]~12\,
	combout => \L3|led_counter[4]~13_combout\,
	cout => \L3|led_counter[4]~14\);

-- Location: FF_X3_Y21_N21
\L3|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(4));

-- Location: LCCOMB_X3_Y21_N22
\L3|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[5]~15_combout\ = (\L3|led_counter\(5) & (\L3|led_counter[4]~14\ $ (GND))) # (!\L3|led_counter\(5) & (!\L3|led_counter[4]~14\ & VCC))
-- \L3|led_counter[5]~16\ = CARRY((\L3|led_counter\(5) & !\L3|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L3|led_counter\(5),
	datad => VCC,
	cin => \L3|led_counter[4]~14\,
	combout => \L3|led_counter[5]~15_combout\,
	cout => \L3|led_counter[5]~16\);

-- Location: FF_X3_Y21_N23
\L3|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(5));

-- Location: LCCOMB_X3_Y21_N24
\L3|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[6]~17_combout\ = (\L3|led_counter\(6) & (!\L3|led_counter[5]~16\)) # (!\L3|led_counter\(6) & ((\L3|led_counter[5]~16\) # (GND)))
-- \L3|led_counter[6]~18\ = CARRY((!\L3|led_counter[5]~16\) # (!\L3|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L3|led_counter\(6),
	datad => VCC,
	cin => \L3|led_counter[5]~16\,
	combout => \L3|led_counter[6]~17_combout\,
	cout => \L3|led_counter[6]~18\);

-- Location: FF_X3_Y21_N25
\L3|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(6));

-- Location: LCCOMB_X3_Y21_N26
\L3|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|led_counter[7]~19_combout\ = \L3|led_counter\(7) $ (!\L3|led_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L3|led_counter\(7),
	cin => \L3|led_counter[6]~18\,
	combout => \L3|led_counter[7]~19_combout\);

-- Location: FF_X3_Y21_N27
\L3|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \L3|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|led_counter\(7));

-- Location: LCCOMB_X3_Y21_N12
\L3|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|LessThan1~0_combout\ = (!\L3|led_counter\(5) & (!\L3|led_counter\(7) & !\L3|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|led_counter\(5),
	datac => \L3|led_counter\(7),
	datad => \L3|led_counter\(6),
	combout => \L3|LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y21_N0
\L3|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|LessThan1~1_combout\ = (((!\L3|led_counter\(3)) # (!\L3|led_counter\(2))) # (!\L3|led_counter\(0))) # (!\L3|led_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|led_counter\(1),
	datab => \L3|led_counter\(0),
	datac => \L3|led_counter\(2),
	datad => \L3|led_counter\(3),
	combout => \L3|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y21_N6
\L3|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|LessThan1~2_combout\ = (\L3|LessThan1~0_combout\ & ((\L3|LessThan1~1_combout\) # (!\L3|led_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|LessThan1~0_combout\,
	datac => \L3|led_counter\(4),
	datad => \L3|LessThan1~1_combout\,
	combout => \L3|LessThan1~2_combout\);

-- Location: LCCOMB_X20_Y24_N2
\L4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~0_combout\ = \L4|pwm_div_counter\(0) $ (VCC)
-- \L4|Add0~1\ = CARRY(\L4|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(0),
	datad => VCC,
	combout => \L4|Add0~0_combout\,
	cout => \L4|Add0~1\);

-- Location: FF_X20_Y24_N25
\L4|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \L4|Add0~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(0));

-- Location: LCCOMB_X20_Y24_N4
\L4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~2_combout\ = (\L4|pwm_div_counter\(1) & (!\L4|Add0~1\)) # (!\L4|pwm_div_counter\(1) & ((\L4|Add0~1\) # (GND)))
-- \L4|Add0~3\ = CARRY((!\L4|Add0~1\) # (!\L4|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(1),
	datad => VCC,
	cin => \L4|Add0~1\,
	combout => \L4|Add0~2_combout\,
	cout => \L4|Add0~3\);

-- Location: LCCOMB_X20_Y24_N6
\L4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~4_combout\ = (\L4|pwm_div_counter\(2) & (\L4|Add0~3\ $ (GND))) # (!\L4|pwm_div_counter\(2) & (!\L4|Add0~3\ & VCC))
-- \L4|Add0~5\ = CARRY((\L4|pwm_div_counter\(2) & !\L4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(2),
	datad => VCC,
	cin => \L4|Add0~3\,
	combout => \L4|Add0~4_combout\,
	cout => \L4|Add0~5\);

-- Location: FF_X20_Y24_N7
\L4|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(2));

-- Location: LCCOMB_X20_Y24_N8
\L4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~6_combout\ = (\L4|pwm_div_counter\(3) & (!\L4|Add0~5\)) # (!\L4|pwm_div_counter\(3) & ((\L4|Add0~5\) # (GND)))
-- \L4|Add0~7\ = CARRY((!\L4|Add0~5\) # (!\L4|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|pwm_div_counter\(3),
	datad => VCC,
	cin => \L4|Add0~5\,
	combout => \L4|Add0~6_combout\,
	cout => \L4|Add0~7\);

-- Location: FF_X20_Y24_N9
\L4|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(3));

-- Location: LCCOMB_X20_Y24_N10
\L4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~8_combout\ = (\L4|pwm_div_counter\(4) & (\L4|Add0~7\ $ (GND))) # (!\L4|pwm_div_counter\(4) & (!\L4|Add0~7\ & VCC))
-- \L4|Add0~9\ = CARRY((\L4|pwm_div_counter\(4) & !\L4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(4),
	datad => VCC,
	cin => \L4|Add0~7\,
	combout => \L4|Add0~8_combout\,
	cout => \L4|Add0~9\);

-- Location: LCCOMB_X20_Y24_N12
\L4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~10_combout\ = (\L4|pwm_div_counter\(5) & (!\L4|Add0~9\)) # (!\L4|pwm_div_counter\(5) & ((\L4|Add0~9\) # (GND)))
-- \L4|Add0~11\ = CARRY((!\L4|Add0~9\) # (!\L4|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|pwm_div_counter\(5),
	datad => VCC,
	cin => \L4|Add0~9\,
	combout => \L4|Add0~10_combout\,
	cout => \L4|Add0~11\);

-- Location: LCCOMB_X20_Y24_N18
\L4|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|pwm_div_counter~2_combout\ = (\L4|Add0~10_combout\ & ((!\L4|Equal0~0_combout\) # (!\L4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|Add0~10_combout\,
	datac => \L4|Equal0~1_combout\,
	datad => \L4|Equal0~0_combout\,
	combout => \L4|pwm_div_counter~2_combout\);

-- Location: FF_X20_Y24_N19
\L4|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(5));

-- Location: LCCOMB_X20_Y24_N14
\L4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Add0~12_combout\ = \L4|pwm_div_counter\(6) $ (!\L4|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|pwm_div_counter\(6),
	cin => \L4|Add0~11\,
	combout => \L4|Add0~12_combout\);

-- Location: FF_X20_Y24_N15
\L4|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(6));

-- Location: LCCOMB_X20_Y24_N0
\L4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Equal0~0_combout\ = (!\L4|pwm_div_counter\(2) & (!\L4|pwm_div_counter\(1) & (!\L4|pwm_div_counter\(6) & \L4|pwm_div_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(2),
	datab => \L4|pwm_div_counter\(1),
	datac => \L4|pwm_div_counter\(6),
	datad => \L4|pwm_div_counter\(5),
	combout => \L4|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y24_N26
\L4|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|pwm_div_counter~1_combout\ = (\L4|Add0~8_combout\ & ((!\L4|Equal0~0_combout\) # (!\L4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|Add0~8_combout\,
	datac => \L4|Equal0~1_combout\,
	datad => \L4|Equal0~0_combout\,
	combout => \L4|pwm_div_counter~1_combout\);

-- Location: FF_X20_Y24_N27
\L4|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(4));

-- Location: LCCOMB_X20_Y24_N20
\L4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Equal0~1_combout\ = (\L4|pwm_div_counter\(0) & (\L4|pwm_div_counter\(4) & !\L4|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(0),
	datac => \L4|pwm_div_counter\(4),
	datad => \L4|pwm_div_counter\(3),
	combout => \L4|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y24_N30
\L4|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|pwm_div_counter~0_combout\ = (\L4|Add0~2_combout\ & ((!\L4|Equal0~0_combout\) # (!\L4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|Add0~2_combout\,
	datac => \L4|Equal0~1_combout\,
	datad => \L4|Equal0~0_combout\,
	combout => \L4|pwm_div_counter~0_combout\);

-- Location: FF_X20_Y24_N31
\L4|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L4|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|pwm_div_counter\(1));

-- Location: LCCOMB_X20_Y24_N22
\L4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|LessThan0~0_combout\ = ((!\L4|pwm_div_counter\(1) & (!\L4|pwm_div_counter\(0) & !\L4|pwm_div_counter\(2)))) # (!\L4|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|pwm_div_counter\(1),
	datab => \L4|pwm_div_counter\(0),
	datac => \L4|pwm_div_counter\(4),
	datad => \L4|pwm_div_counter\(2),
	combout => \L4|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y24_N28
\rtl~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = LCELL((!\L4|pwm_div_counter\(6) & (!\L4|pwm_div_counter\(5) & ((\L4|LessThan0~0_combout\) # (!\L4|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|LessThan0~0_combout\,
	datab => \L4|pwm_div_counter\(3),
	datac => \L4|pwm_div_counter\(6),
	datad => \L4|pwm_div_counter\(5),
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G19
\rtl~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X21_Y24_N2
\L4|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[0]~21_combout\ = !\L4|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L4|led_counter\(0),
	combout => \L4|led_counter[0]~21_combout\);

-- Location: FF_X21_Y24_N3
\L4|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(0));

-- Location: LCCOMB_X21_Y24_N18
\L4|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[1]~7_combout\ = (\L4|led_counter\(1) & (\L4|led_counter\(0) $ (VCC))) # (!\L4|led_counter\(1) & (\L4|led_counter\(0) & VCC))
-- \L4|led_counter[1]~8\ = CARRY((\L4|led_counter\(1) & \L4|led_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|led_counter\(1),
	datab => \L4|led_counter\(0),
	datad => VCC,
	combout => \L4|led_counter[1]~7_combout\,
	cout => \L4|led_counter[1]~8\);

-- Location: FF_X21_Y24_N19
\L4|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(1));

-- Location: LCCOMB_X21_Y24_N20
\L4|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[2]~9_combout\ = (\L4|led_counter\(2) & (!\L4|led_counter[1]~8\)) # (!\L4|led_counter\(2) & ((\L4|led_counter[1]~8\) # (GND)))
-- \L4|led_counter[2]~10\ = CARRY((!\L4|led_counter[1]~8\) # (!\L4|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|led_counter\(2),
	datad => VCC,
	cin => \L4|led_counter[1]~8\,
	combout => \L4|led_counter[2]~9_combout\,
	cout => \L4|led_counter[2]~10\);

-- Location: FF_X21_Y24_N21
\L4|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(2));

-- Location: LCCOMB_X21_Y24_N22
\L4|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[3]~11_combout\ = (\L4|led_counter\(3) & (\L4|led_counter[2]~10\ $ (GND))) # (!\L4|led_counter\(3) & (!\L4|led_counter[2]~10\ & VCC))
-- \L4|led_counter[3]~12\ = CARRY((\L4|led_counter\(3) & !\L4|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L4|led_counter\(3),
	datad => VCC,
	cin => \L4|led_counter[2]~10\,
	combout => \L4|led_counter[3]~11_combout\,
	cout => \L4|led_counter[3]~12\);

-- Location: FF_X21_Y24_N23
\L4|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(3));

-- Location: LCCOMB_X21_Y24_N24
\L4|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[4]~13_combout\ = (\L4|led_counter\(4) & (!\L4|led_counter[3]~12\)) # (!\L4|led_counter\(4) & ((\L4|led_counter[3]~12\) # (GND)))
-- \L4|led_counter[4]~14\ = CARRY((!\L4|led_counter[3]~12\) # (!\L4|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|led_counter\(4),
	datad => VCC,
	cin => \L4|led_counter[3]~12\,
	combout => \L4|led_counter[4]~13_combout\,
	cout => \L4|led_counter[4]~14\);

-- Location: FF_X21_Y24_N25
\L4|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(4));

-- Location: LCCOMB_X21_Y24_N26
\L4|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[5]~15_combout\ = (\L4|led_counter\(5) & (\L4|led_counter[4]~14\ $ (GND))) # (!\L4|led_counter\(5) & (!\L4|led_counter[4]~14\ & VCC))
-- \L4|led_counter[5]~16\ = CARRY((\L4|led_counter\(5) & !\L4|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|led_counter\(5),
	datad => VCC,
	cin => \L4|led_counter[4]~14\,
	combout => \L4|led_counter[5]~15_combout\,
	cout => \L4|led_counter[5]~16\);

-- Location: FF_X21_Y24_N27
\L4|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(5));

-- Location: LCCOMB_X21_Y24_N28
\L4|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[6]~17_combout\ = (\L4|led_counter\(6) & (!\L4|led_counter[5]~16\)) # (!\L4|led_counter\(6) & ((\L4|led_counter[5]~16\) # (GND)))
-- \L4|led_counter[6]~18\ = CARRY((!\L4|led_counter[5]~16\) # (!\L4|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L4|led_counter\(6),
	datad => VCC,
	cin => \L4|led_counter[5]~16\,
	combout => \L4|led_counter[6]~17_combout\,
	cout => \L4|led_counter[6]~18\);

-- Location: FF_X21_Y24_N29
\L4|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(6));

-- Location: LCCOMB_X21_Y24_N30
\L4|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|led_counter[7]~19_combout\ = \L4|led_counter[6]~18\ $ (!\L4|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L4|led_counter\(7),
	cin => \L4|led_counter[6]~18\,
	combout => \L4|led_counter[7]~19_combout\);

-- Location: FF_X21_Y24_N31
\L4|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \L4|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|led_counter\(7));

-- Location: LCCOMB_X20_Y24_N24
\L4|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|LessThan1~0_combout\ = (!\L4|led_counter\(7) & !\L4|led_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|led_counter\(7),
	datad => \L4|led_counter\(6),
	combout => \L4|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y24_N26
\L4|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|LessThan1~1_combout\ = (((!\L4|led_counter\(3)) # (!\L4|led_counter\(2))) # (!\L4|led_counter\(1))) # (!\L4|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|led_counter\(0),
	datab => \L4|led_counter\(1),
	datac => \L4|led_counter\(2),
	datad => \L4|led_counter\(3),
	combout => \L4|LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y24_N16
\L4|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|LessThan1~2_combout\ = (\L4|LessThan1~0_combout\ & (((!\L4|led_counter\(4) & \L4|LessThan1~1_combout\)) # (!\L4|led_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|led_counter\(4),
	datab => \L4|led_counter\(5),
	datac => \L4|LessThan1~0_combout\,
	datad => \L4|LessThan1~1_combout\,
	combout => \L4|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y24_N18
\L5|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~0_combout\ = \L5|pwm_div_counter\(0) $ (VCC)
-- \L5|Add0~1\ = CARRY(\L5|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(0),
	datad => VCC,
	combout => \L5|Add0~0_combout\,
	cout => \L5|Add0~1\);

-- Location: LCCOMB_X19_Y24_N16
\L5|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|pwm_div_counter[0]~feeder_combout\ = \L5|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Add0~0_combout\,
	combout => \L5|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X19_Y24_N17
\L5|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L5|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(0));

-- Location: LCCOMB_X19_Y24_N20
\L5|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~2_combout\ = (\L5|pwm_div_counter\(1) & (!\L5|Add0~1\)) # (!\L5|pwm_div_counter\(1) & ((\L5|Add0~1\) # (GND)))
-- \L5|Add0~3\ = CARRY((!\L5|Add0~1\) # (!\L5|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(1),
	datad => VCC,
	cin => \L5|Add0~1\,
	combout => \L5|Add0~2_combout\,
	cout => \L5|Add0~3\);

-- Location: LCCOMB_X19_Y24_N6
\L5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Equal0~0_combout\ = (!\L5|pwm_div_counter\(2) & (\L5|pwm_div_counter\(5) & (!\L5|pwm_div_counter\(6) & !\L5|pwm_div_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|pwm_div_counter\(2),
	datab => \L5|pwm_div_counter\(5),
	datac => \L5|pwm_div_counter\(6),
	datad => \L5|pwm_div_counter\(1),
	combout => \L5|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y24_N14
\L5|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|pwm_div_counter~0_combout\ = (\L5|Add0~2_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Equal0~1_combout\,
	datac => \L5|Add0~2_combout\,
	datad => \L5|Equal0~0_combout\,
	combout => \L5|pwm_div_counter~0_combout\);

-- Location: FF_X19_Y24_N15
\L5|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(1));

-- Location: LCCOMB_X19_Y24_N22
\L5|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~4_combout\ = (\L5|pwm_div_counter\(2) & (\L5|Add0~3\ $ (GND))) # (!\L5|pwm_div_counter\(2) & (!\L5|Add0~3\ & VCC))
-- \L5|Add0~5\ = CARRY((\L5|pwm_div_counter\(2) & !\L5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|pwm_div_counter\(2),
	datad => VCC,
	cin => \L5|Add0~3\,
	combout => \L5|Add0~4_combout\,
	cout => \L5|Add0~5\);

-- Location: FF_X19_Y24_N23
\L5|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(2));

-- Location: LCCOMB_X19_Y24_N24
\L5|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~6_combout\ = (\L5|pwm_div_counter\(3) & (!\L5|Add0~5\)) # (!\L5|pwm_div_counter\(3) & ((\L5|Add0~5\) # (GND)))
-- \L5|Add0~7\ = CARRY((!\L5|Add0~5\) # (!\L5|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(3),
	datad => VCC,
	cin => \L5|Add0~5\,
	combout => \L5|Add0~6_combout\,
	cout => \L5|Add0~7\);

-- Location: FF_X19_Y24_N25
\L5|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(3));

-- Location: LCCOMB_X19_Y24_N26
\L5|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~8_combout\ = (\L5|pwm_div_counter\(4) & (\L5|Add0~7\ $ (GND))) # (!\L5|pwm_div_counter\(4) & (!\L5|Add0~7\ & VCC))
-- \L5|Add0~9\ = CARRY((\L5|pwm_div_counter\(4) & !\L5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(4),
	datad => VCC,
	cin => \L5|Add0~7\,
	combout => \L5|Add0~8_combout\,
	cout => \L5|Add0~9\);

-- Location: LCCOMB_X19_Y24_N0
\L5|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|pwm_div_counter~1_combout\ = (\L5|Add0~8_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Equal0~1_combout\,
	datac => \L5|Add0~8_combout\,
	datad => \L5|Equal0~0_combout\,
	combout => \L5|pwm_div_counter~1_combout\);

-- Location: FF_X19_Y24_N1
\L5|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(4));

-- Location: LCCOMB_X19_Y24_N2
\L5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Equal0~1_combout\ = (\L5|pwm_div_counter\(0) & (!\L5|pwm_div_counter\(3) & \L5|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(0),
	datac => \L5|pwm_div_counter\(3),
	datad => \L5|pwm_div_counter\(4),
	combout => \L5|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y24_N28
\L5|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~10_combout\ = (\L5|pwm_div_counter\(5) & (!\L5|Add0~9\)) # (!\L5|pwm_div_counter\(5) & ((\L5|Add0~9\) # (GND)))
-- \L5|Add0~11\ = CARRY((!\L5|Add0~9\) # (!\L5|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|pwm_div_counter\(5),
	datad => VCC,
	cin => \L5|Add0~9\,
	combout => \L5|Add0~10_combout\,
	cout => \L5|Add0~11\);

-- Location: LCCOMB_X19_Y24_N4
\L5|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|pwm_div_counter~2_combout\ = (\L5|Add0~10_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Equal0~1_combout\,
	datac => \L5|Equal0~0_combout\,
	datad => \L5|Add0~10_combout\,
	combout => \L5|pwm_div_counter~2_combout\);

-- Location: FF_X19_Y24_N5
\L5|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(5));

-- Location: LCCOMB_X19_Y24_N30
\L5|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~12_combout\ = \L5|pwm_div_counter\(6) $ (!\L5|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|pwm_div_counter\(6),
	cin => \L5|Add0~11\,
	combout => \L5|Add0~12_combout\);

-- Location: FF_X19_Y24_N31
\L5|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L5|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|pwm_div_counter\(6));

-- Location: LCCOMB_X19_Y24_N8
\L5|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|LessThan0~0_combout\ = ((!\L5|pwm_div_counter\(2) & (!\L5|pwm_div_counter\(0) & !\L5|pwm_div_counter\(1)))) # (!\L5|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|pwm_div_counter\(2),
	datab => \L5|pwm_div_counter\(0),
	datac => \L5|pwm_div_counter\(1),
	datad => \L5|pwm_div_counter\(4),
	combout => \L5|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y24_N12
\rtl~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = LCELL((!\L5|pwm_div_counter\(6) & (!\L5|pwm_div_counter\(5) & ((\L5|LessThan0~0_combout\) # (!\L5|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|pwm_div_counter\(6),
	datab => \L5|pwm_div_counter\(5),
	datac => \L5|LessThan0~0_combout\,
	datad => \L5|pwm_div_counter\(3),
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G17
\rtl~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X2_Y24_N0
\L5|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[0]~21_combout\ = !\L5|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L5|led_counter\(0),
	combout => \L5|led_counter[0]~21_combout\);

-- Location: FF_X2_Y24_N1
\L5|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(0));

-- Location: LCCOMB_X2_Y24_N10
\L5|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[1]~7_combout\ = (\L5|led_counter\(1) & (\L5|led_counter\(0) $ (VCC))) # (!\L5|led_counter\(1) & (\L5|led_counter\(0) & VCC))
-- \L5|led_counter[1]~8\ = CARRY((\L5|led_counter\(1) & \L5|led_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|led_counter\(1),
	datab => \L5|led_counter\(0),
	datad => VCC,
	combout => \L5|led_counter[1]~7_combout\,
	cout => \L5|led_counter[1]~8\);

-- Location: FF_X2_Y24_N11
\L5|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(1));

-- Location: LCCOMB_X2_Y24_N12
\L5|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[2]~9_combout\ = (\L5|led_counter\(2) & (!\L5|led_counter[1]~8\)) # (!\L5|led_counter\(2) & ((\L5|led_counter[1]~8\) # (GND)))
-- \L5|led_counter[2]~10\ = CARRY((!\L5|led_counter[1]~8\) # (!\L5|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|led_counter\(2),
	datad => VCC,
	cin => \L5|led_counter[1]~8\,
	combout => \L5|led_counter[2]~9_combout\,
	cout => \L5|led_counter[2]~10\);

-- Location: FF_X2_Y24_N13
\L5|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(2));

-- Location: LCCOMB_X2_Y24_N14
\L5|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[3]~11_combout\ = (\L5|led_counter\(3) & (\L5|led_counter[2]~10\ $ (GND))) # (!\L5|led_counter\(3) & (!\L5|led_counter[2]~10\ & VCC))
-- \L5|led_counter[3]~12\ = CARRY((\L5|led_counter\(3) & !\L5|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|led_counter\(3),
	datad => VCC,
	cin => \L5|led_counter[2]~10\,
	combout => \L5|led_counter[3]~11_combout\,
	cout => \L5|led_counter[3]~12\);

-- Location: FF_X2_Y24_N15
\L5|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(3));

-- Location: LCCOMB_X2_Y24_N16
\L5|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[4]~13_combout\ = (\L5|led_counter\(4) & (!\L5|led_counter[3]~12\)) # (!\L5|led_counter\(4) & ((\L5|led_counter[3]~12\) # (GND)))
-- \L5|led_counter[4]~14\ = CARRY((!\L5|led_counter[3]~12\) # (!\L5|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|led_counter\(4),
	datad => VCC,
	cin => \L5|led_counter[3]~12\,
	combout => \L5|led_counter[4]~13_combout\,
	cout => \L5|led_counter[4]~14\);

-- Location: FF_X2_Y24_N17
\L5|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(4));

-- Location: LCCOMB_X2_Y24_N18
\L5|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[5]~15_combout\ = (\L5|led_counter\(5) & (\L5|led_counter[4]~14\ $ (GND))) # (!\L5|led_counter\(5) & (!\L5|led_counter[4]~14\ & VCC))
-- \L5|led_counter[5]~16\ = CARRY((\L5|led_counter\(5) & !\L5|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|led_counter\(5),
	datad => VCC,
	cin => \L5|led_counter[4]~14\,
	combout => \L5|led_counter[5]~15_combout\,
	cout => \L5|led_counter[5]~16\);

-- Location: FF_X2_Y24_N19
\L5|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(5));

-- Location: LCCOMB_X2_Y24_N4
\L5|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|LessThan1~1_combout\ = (!\L5|led_counter\(5)) # (!\L5|led_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L5|led_counter\(4),
	datad => \L5|led_counter\(5),
	combout => \L5|LessThan1~1_combout\);

-- Location: LCCOMB_X2_Y24_N20
\L5|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[6]~17_combout\ = (\L5|led_counter\(6) & (!\L5|led_counter[5]~16\)) # (!\L5|led_counter\(6) & ((\L5|led_counter[5]~16\) # (GND)))
-- \L5|led_counter[6]~18\ = CARRY((!\L5|led_counter[5]~16\) # (!\L5|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|led_counter\(6),
	datad => VCC,
	cin => \L5|led_counter[5]~16\,
	combout => \L5|led_counter[6]~17_combout\,
	cout => \L5|led_counter[6]~18\);

-- Location: FF_X2_Y24_N21
\L5|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(6));

-- Location: LCCOMB_X2_Y24_N22
\L5|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|led_counter[7]~19_combout\ = \L5|led_counter\(7) $ (!\L5|led_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|led_counter\(7),
	cin => \L5|led_counter[6]~18\,
	combout => \L5|led_counter[7]~19_combout\);

-- Location: FF_X2_Y24_N23
\L5|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \L5|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|led_counter\(7));

-- Location: LCCOMB_X2_Y24_N6
\L5|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|LessThan1~0_combout\ = (((!\L5|led_counter\(2)) # (!\L5|led_counter\(3))) # (!\L5|led_counter\(1))) # (!\L5|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|led_counter\(0),
	datab => \L5|led_counter\(1),
	datac => \L5|led_counter\(3),
	datad => \L5|led_counter\(2),
	combout => \L5|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\L5|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|LessThan1~2_combout\ = (!\L5|led_counter\(7) & (!\L5|led_counter\(6) & ((\L5|LessThan1~1_combout\) # (\L5|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|LessThan1~1_combout\,
	datab => \L5|led_counter\(7),
	datac => \L5|led_counter\(6),
	datad => \L5|LessThan1~0_combout\,
	combout => \L5|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y18_N6
\L6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~0_combout\ = \L6|pwm_div_counter\(0) $ (VCC)
-- \L6|Add0~1\ = CARRY(\L6|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(0),
	datad => VCC,
	combout => \L6|Add0~0_combout\,
	cout => \L6|Add0~1\);

-- Location: LCCOMB_X19_Y18_N22
\L6|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|pwm_div_counter[0]~feeder_combout\ = \L6|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Add0~0_combout\,
	combout => \L6|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\L6|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L6|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(0));

-- Location: LCCOMB_X19_Y18_N8
\L6|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~2_combout\ = (\L6|pwm_div_counter\(1) & (!\L6|Add0~1\)) # (!\L6|pwm_div_counter\(1) & ((\L6|Add0~1\) # (GND)))
-- \L6|Add0~3\ = CARRY((!\L6|Add0~1\) # (!\L6|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|pwm_div_counter\(1),
	datad => VCC,
	cin => \L6|Add0~1\,
	combout => \L6|Add0~2_combout\,
	cout => \L6|Add0~3\);

-- Location: LCCOMB_X19_Y18_N12
\L6|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~6_combout\ = (\L6|pwm_div_counter\(3) & (!\L6|Add0~5\)) # (!\L6|pwm_div_counter\(3) & ((\L6|Add0~5\) # (GND)))
-- \L6|Add0~7\ = CARRY((!\L6|Add0~5\) # (!\L6|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(3),
	datad => VCC,
	cin => \L6|Add0~5\,
	combout => \L6|Add0~6_combout\,
	cout => \L6|Add0~7\);

-- Location: LCCOMB_X19_Y18_N14
\L6|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~8_combout\ = (\L6|pwm_div_counter\(4) & (\L6|Add0~7\ $ (GND))) # (!\L6|pwm_div_counter\(4) & (!\L6|Add0~7\ & VCC))
-- \L6|Add0~9\ = CARRY((\L6|pwm_div_counter\(4) & !\L6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|pwm_div_counter\(4),
	datad => VCC,
	cin => \L6|Add0~7\,
	combout => \L6|Add0~8_combout\,
	cout => \L6|Add0~9\);

-- Location: LCCOMB_X19_Y18_N16
\L6|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~10_combout\ = (\L6|pwm_div_counter\(5) & (!\L6|Add0~9\)) # (!\L6|pwm_div_counter\(5) & ((\L6|Add0~9\) # (GND)))
-- \L6|Add0~11\ = CARRY((!\L6|Add0~9\) # (!\L6|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(5),
	datad => VCC,
	cin => \L6|Add0~9\,
	combout => \L6|Add0~10_combout\,
	cout => \L6|Add0~11\);

-- Location: LCCOMB_X19_Y18_N30
\L6|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|pwm_div_counter~2_combout\ = (\L6|Add0~10_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L6|Add0~10_combout\,
	datac => \L6|Equal0~1_combout\,
	datad => \L6|Equal0~0_combout\,
	combout => \L6|pwm_div_counter~2_combout\);

-- Location: FF_X19_Y18_N31
\L6|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(5));

-- Location: LCCOMB_X19_Y18_N18
\L6|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~12_combout\ = \L6|Add0~11\ $ (!\L6|pwm_div_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L6|pwm_div_counter\(6),
	cin => \L6|Add0~11\,
	combout => \L6|Add0~12_combout\);

-- Location: FF_X19_Y18_N19
\L6|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(6));

-- Location: LCCOMB_X19_Y18_N28
\L6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Equal0~0_combout\ = (\L6|pwm_div_counter\(5) & (!\L6|pwm_div_counter\(6) & (!\L6|pwm_div_counter\(2) & !\L6|pwm_div_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(5),
	datab => \L6|pwm_div_counter\(6),
	datac => \L6|pwm_div_counter\(2),
	datad => \L6|pwm_div_counter\(1),
	combout => \L6|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\L6|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|pwm_div_counter~1_combout\ = (\L6|Add0~8_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datac => \L6|Add0~8_combout\,
	datad => \L6|Equal0~0_combout\,
	combout => \L6|pwm_div_counter~1_combout\);

-- Location: FF_X19_Y18_N21
\L6|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(4));

-- Location: LCCOMB_X19_Y18_N24
\L6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Equal0~1_combout\ = (\L6|pwm_div_counter\(0) & (!\L6|pwm_div_counter\(3) & \L6|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(0),
	datac => \L6|pwm_div_counter\(3),
	datad => \L6|pwm_div_counter\(4),
	combout => \L6|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y18_N0
\L6|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|pwm_div_counter~0_combout\ = (\L6|Add0~2_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L6|Add0~2_combout\,
	datac => \L6|Equal0~1_combout\,
	datad => \L6|Equal0~0_combout\,
	combout => \L6|pwm_div_counter~0_combout\);

-- Location: FF_X19_Y18_N1
\L6|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(1));

-- Location: LCCOMB_X19_Y18_N10
\L6|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~4_combout\ = (\L6|pwm_div_counter\(2) & (\L6|Add0~3\ $ (GND))) # (!\L6|pwm_div_counter\(2) & (!\L6|Add0~3\ & VCC))
-- \L6|Add0~5\ = CARRY((\L6|pwm_div_counter\(2) & !\L6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(2),
	datad => VCC,
	cin => \L6|Add0~3\,
	combout => \L6|Add0~4_combout\,
	cout => \L6|Add0~5\);

-- Location: FF_X19_Y18_N11
\L6|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(2));

-- Location: FF_X19_Y18_N13
\L6|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L6|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|pwm_div_counter\(3));

-- Location: LCCOMB_X19_Y18_N4
\L6|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|LessThan0~0_combout\ = ((!\L6|pwm_div_counter\(2) & (!\L6|pwm_div_counter\(1) & !\L6|pwm_div_counter\(0)))) # (!\L6|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(2),
	datab => \L6|pwm_div_counter\(1),
	datac => \L6|pwm_div_counter\(0),
	datad => \L6|pwm_div_counter\(4),
	combout => \L6|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\rtl~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = LCELL((!\L6|pwm_div_counter\(5) & (!\L6|pwm_div_counter\(6) & ((\L6|LessThan0~0_combout\) # (!\L6|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|pwm_div_counter\(3),
	datab => \L6|LessThan0~0_combout\,
	datac => \L6|pwm_div_counter\(5),
	datad => \L6|pwm_div_counter\(6),
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G15
\rtl~5clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N26
\L6|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[0]~21_combout\ = !\L6|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L6|led_counter\(0),
	combout => \L6|led_counter[0]~21_combout\);

-- Location: FF_X1_Y26_N27
\L6|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(0));

-- Location: LCCOMB_X1_Y26_N0
\L6|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[1]~7_combout\ = (\L6|led_counter\(0) & (\L6|led_counter\(1) $ (VCC))) # (!\L6|led_counter\(0) & (\L6|led_counter\(1) & VCC))
-- \L6|led_counter[1]~8\ = CARRY((\L6|led_counter\(0) & \L6|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(0),
	datab => \L6|led_counter\(1),
	datad => VCC,
	combout => \L6|led_counter[1]~7_combout\,
	cout => \L6|led_counter[1]~8\);

-- Location: FF_X1_Y26_N1
\L6|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(1));

-- Location: LCCOMB_X1_Y26_N2
\L6|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[2]~9_combout\ = (\L6|led_counter\(2) & (!\L6|led_counter[1]~8\)) # (!\L6|led_counter\(2) & ((\L6|led_counter[1]~8\) # (GND)))
-- \L6|led_counter[2]~10\ = CARRY((!\L6|led_counter[1]~8\) # (!\L6|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|led_counter\(2),
	datad => VCC,
	cin => \L6|led_counter[1]~8\,
	combout => \L6|led_counter[2]~9_combout\,
	cout => \L6|led_counter[2]~10\);

-- Location: FF_X1_Y26_N3
\L6|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(2));

-- Location: LCCOMB_X1_Y26_N4
\L6|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[3]~11_combout\ = (\L6|led_counter\(3) & (\L6|led_counter[2]~10\ $ (GND))) # (!\L6|led_counter\(3) & (!\L6|led_counter[2]~10\ & VCC))
-- \L6|led_counter[3]~12\ = CARRY((\L6|led_counter\(3) & !\L6|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|led_counter\(3),
	datad => VCC,
	cin => \L6|led_counter[2]~10\,
	combout => \L6|led_counter[3]~11_combout\,
	cout => \L6|led_counter[3]~12\);

-- Location: FF_X1_Y26_N5
\L6|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(3));

-- Location: LCCOMB_X1_Y26_N6
\L6|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[4]~13_combout\ = (\L6|led_counter\(4) & (!\L6|led_counter[3]~12\)) # (!\L6|led_counter\(4) & ((\L6|led_counter[3]~12\) # (GND)))
-- \L6|led_counter[4]~14\ = CARRY((!\L6|led_counter[3]~12\) # (!\L6|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(4),
	datad => VCC,
	cin => \L6|led_counter[3]~12\,
	combout => \L6|led_counter[4]~13_combout\,
	cout => \L6|led_counter[4]~14\);

-- Location: FF_X1_Y26_N7
\L6|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(4));

-- Location: LCCOMB_X1_Y26_N8
\L6|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[5]~15_combout\ = (\L6|led_counter\(5) & (\L6|led_counter[4]~14\ $ (GND))) # (!\L6|led_counter\(5) & (!\L6|led_counter[4]~14\ & VCC))
-- \L6|led_counter[5]~16\ = CARRY((\L6|led_counter\(5) & !\L6|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|led_counter\(5),
	datad => VCC,
	cin => \L6|led_counter[4]~14\,
	combout => \L6|led_counter[5]~15_combout\,
	cout => \L6|led_counter[5]~16\);

-- Location: FF_X1_Y26_N9
\L6|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(5));

-- Location: LCCOMB_X1_Y26_N10
\L6|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[6]~17_combout\ = (\L6|led_counter\(6) & (!\L6|led_counter[5]~16\)) # (!\L6|led_counter\(6) & ((\L6|led_counter[5]~16\) # (GND)))
-- \L6|led_counter[6]~18\ = CARRY((!\L6|led_counter[5]~16\) # (!\L6|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(6),
	datad => VCC,
	cin => \L6|led_counter[5]~16\,
	combout => \L6|led_counter[6]~17_combout\,
	cout => \L6|led_counter[6]~18\);

-- Location: FF_X1_Y26_N11
\L6|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(6));

-- Location: LCCOMB_X1_Y26_N28
\L6|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|LessThan1~0_combout\ = (((!\L6|led_counter\(0)) # (!\L6|led_counter\(3))) # (!\L6|led_counter\(2))) # (!\L6|led_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(1),
	datab => \L6|led_counter\(2),
	datac => \L6|led_counter\(3),
	datad => \L6|led_counter\(0),
	combout => \L6|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\L6|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|led_counter[7]~19_combout\ = \L6|led_counter[6]~18\ $ (!\L6|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L6|led_counter\(7),
	cin => \L6|led_counter[6]~18\,
	combout => \L6|led_counter[7]~19_combout\);

-- Location: FF_X1_Y26_N13
\L6|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \L6|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|led_counter\(7));

-- Location: LCCOMB_X1_Y26_N30
\L6|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|LessThan1~1_combout\ = (!\L6|led_counter\(5) & (!\L6|led_counter\(7) & ((\L6|LessThan1~0_combout\) # (!\L6|led_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(4),
	datab => \L6|LessThan1~0_combout\,
	datac => \L6|led_counter\(5),
	datad => \L6|led_counter\(7),
	combout => \L6|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y26_N16
\L6|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|LessThan1~2_combout\ = (\L6|LessThan1~1_combout\) # ((!\L6|led_counter\(6) & !\L6|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|led_counter\(6),
	datac => \L6|LessThan1~1_combout\,
	datad => \L6|led_counter\(7),
	combout => \L6|LessThan1~2_combout\);

-- Location: LCCOMB_X20_Y28_N0
\L7|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~0_combout\ = \L7|pwm_div_counter\(0) $ (VCC)
-- \L7|Add0~1\ = CARRY(\L7|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(0),
	datad => VCC,
	combout => \L7|Add0~0_combout\,
	cout => \L7|Add0~1\);

-- Location: LCCOMB_X20_Y28_N18
\L7|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|pwm_div_counter[0]~feeder_combout\ = \L7|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L7|Add0~0_combout\,
	combout => \L7|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X20_Y28_N19
\L7|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L7|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(0));

-- Location: LCCOMB_X20_Y28_N6
\L7|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~6_combout\ = (\L7|pwm_div_counter\(3) & (!\L7|Add0~5\)) # (!\L7|pwm_div_counter\(3) & ((\L7|Add0~5\) # (GND)))
-- \L7|Add0~7\ = CARRY((!\L7|Add0~5\) # (!\L7|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(3),
	datad => VCC,
	cin => \L7|Add0~5\,
	combout => \L7|Add0~6_combout\,
	cout => \L7|Add0~7\);

-- Location: LCCOMB_X20_Y28_N8
\L7|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~8_combout\ = (\L7|pwm_div_counter\(4) & (\L7|Add0~7\ $ (GND))) # (!\L7|pwm_div_counter\(4) & (!\L7|Add0~7\ & VCC))
-- \L7|Add0~9\ = CARRY((\L7|pwm_div_counter\(4) & !\L7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(4),
	datad => VCC,
	cin => \L7|Add0~7\,
	combout => \L7|Add0~8_combout\,
	cout => \L7|Add0~9\);

-- Location: LCCOMB_X20_Y28_N10
\L7|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~10_combout\ = (\L7|pwm_div_counter\(5) & (!\L7|Add0~9\)) # (!\L7|pwm_div_counter\(5) & ((\L7|Add0~9\) # (GND)))
-- \L7|Add0~11\ = CARRY((!\L7|Add0~9\) # (!\L7|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(5),
	datad => VCC,
	cin => \L7|Add0~9\,
	combout => \L7|Add0~10_combout\,
	cout => \L7|Add0~11\);

-- Location: LCCOMB_X20_Y28_N30
\L7|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|pwm_div_counter~2_combout\ = (\L7|Add0~10_combout\ & ((!\L7|Equal0~0_combout\) # (!\L7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|Add0~10_combout\,
	datab => \L7|Equal0~1_combout\,
	datad => \L7|Equal0~0_combout\,
	combout => \L7|pwm_div_counter~2_combout\);

-- Location: FF_X20_Y28_N31
\L7|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(5));

-- Location: LCCOMB_X20_Y28_N12
\L7|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~12_combout\ = \L7|Add0~11\ $ (!\L7|pwm_div_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L7|pwm_div_counter\(6),
	cin => \L7|Add0~11\,
	combout => \L7|Add0~12_combout\);

-- Location: FF_X20_Y28_N13
\L7|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(6));

-- Location: LCCOMB_X20_Y28_N24
\L7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Equal0~0_combout\ = (!\L7|pwm_div_counter\(2) & (!\L7|pwm_div_counter\(1) & (\L7|pwm_div_counter\(5) & !\L7|pwm_div_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(2),
	datab => \L7|pwm_div_counter\(1),
	datac => \L7|pwm_div_counter\(5),
	datad => \L7|pwm_div_counter\(6),
	combout => \L7|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y28_N22
\L7|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|pwm_div_counter~1_combout\ = (\L7|Add0~8_combout\ & ((!\L7|Equal0~0_combout\) # (!\L7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L7|Equal0~1_combout\,
	datac => \L7|Add0~8_combout\,
	datad => \L7|Equal0~0_combout\,
	combout => \L7|pwm_div_counter~1_combout\);

-- Location: FF_X20_Y28_N23
\L7|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(4));

-- Location: LCCOMB_X20_Y28_N28
\L7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Equal0~1_combout\ = (\L7|pwm_div_counter\(0) & (\L7|pwm_div_counter\(4) & !\L7|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L7|pwm_div_counter\(0),
	datac => \L7|pwm_div_counter\(4),
	datad => \L7|pwm_div_counter\(3),
	combout => \L7|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y28_N2
\L7|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~2_combout\ = (\L7|pwm_div_counter\(1) & (!\L7|Add0~1\)) # (!\L7|pwm_div_counter\(1) & ((\L7|Add0~1\) # (GND)))
-- \L7|Add0~3\ = CARRY((!\L7|Add0~1\) # (!\L7|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(1),
	datad => VCC,
	cin => \L7|Add0~1\,
	combout => \L7|Add0~2_combout\,
	cout => \L7|Add0~3\);

-- Location: LCCOMB_X20_Y28_N26
\L7|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|pwm_div_counter~0_combout\ = (\L7|Add0~2_combout\ & ((!\L7|Equal0~0_combout\) # (!\L7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L7|Equal0~1_combout\,
	datac => \L7|Add0~2_combout\,
	datad => \L7|Equal0~0_combout\,
	combout => \L7|pwm_div_counter~0_combout\);

-- Location: FF_X20_Y28_N27
\L7|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(1));

-- Location: LCCOMB_X20_Y28_N4
\L7|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|Add0~4_combout\ = (\L7|pwm_div_counter\(2) & (\L7|Add0~3\ $ (GND))) # (!\L7|pwm_div_counter\(2) & (!\L7|Add0~3\ & VCC))
-- \L7|Add0~5\ = CARRY((\L7|pwm_div_counter\(2) & !\L7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L7|pwm_div_counter\(2),
	datad => VCC,
	cin => \L7|Add0~3\,
	combout => \L7|Add0~4_combout\,
	cout => \L7|Add0~5\);

-- Location: FF_X20_Y28_N5
\L7|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(2));

-- Location: FF_X20_Y28_N7
\L7|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L7|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|pwm_div_counter\(3));

-- Location: LCCOMB_X20_Y28_N14
\L7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|LessThan0~0_combout\ = ((!\L7|pwm_div_counter\(1) & (!\L7|pwm_div_counter\(2) & !\L7|pwm_div_counter\(0)))) # (!\L7|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(1),
	datab => \L7|pwm_div_counter\(2),
	datac => \L7|pwm_div_counter\(4),
	datad => \L7|pwm_div_counter\(0),
	combout => \L7|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y28_N20
\rtl~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = LCELL((!\L7|pwm_div_counter\(5) & (!\L7|pwm_div_counter\(6) & ((\L7|LessThan0~0_combout\) # (!\L7|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|pwm_div_counter\(3),
	datab => \L7|LessThan0~0_combout\,
	datac => \L7|pwm_div_counter\(5),
	datad => \L7|pwm_div_counter\(6),
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G13
\rtl~6clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X2_Y26_N24
\L7|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[0]~21_combout\ = !\L7|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L7|led_counter\(0),
	combout => \L7|led_counter[0]~21_combout\);

-- Location: FF_X2_Y26_N25
\L7|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(0));

-- Location: LCCOMB_X2_Y26_N8
\L7|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[1]~7_combout\ = (\L7|led_counter\(0) & (\L7|led_counter\(1) $ (VCC))) # (!\L7|led_counter\(0) & (\L7|led_counter\(1) & VCC))
-- \L7|led_counter[1]~8\ = CARRY((\L7|led_counter\(0) & \L7|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L7|led_counter\(0),
	datab => \L7|led_counter\(1),
	datad => VCC,
	combout => \L7|led_counter[1]~7_combout\,
	cout => \L7|led_counter[1]~8\);

-- Location: FF_X2_Y26_N9
\L7|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(1));

-- Location: LCCOMB_X2_Y26_N10
\L7|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[2]~9_combout\ = (\L7|led_counter\(2) & (!\L7|led_counter[1]~8\)) # (!\L7|led_counter\(2) & ((\L7|led_counter[1]~8\) # (GND)))
-- \L7|led_counter[2]~10\ = CARRY((!\L7|led_counter[1]~8\) # (!\L7|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L7|led_counter\(2),
	datad => VCC,
	cin => \L7|led_counter[1]~8\,
	combout => \L7|led_counter[2]~9_combout\,
	cout => \L7|led_counter[2]~10\);

-- Location: FF_X2_Y26_N11
\L7|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(2));

-- Location: LCCOMB_X2_Y26_N12
\L7|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[3]~11_combout\ = (\L7|led_counter\(3) & (\L7|led_counter[2]~10\ $ (GND))) # (!\L7|led_counter\(3) & (!\L7|led_counter[2]~10\ & VCC))
-- \L7|led_counter[3]~12\ = CARRY((\L7|led_counter\(3) & !\L7|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L7|led_counter\(3),
	datad => VCC,
	cin => \L7|led_counter[2]~10\,
	combout => \L7|led_counter[3]~11_combout\,
	cout => \L7|led_counter[3]~12\);

-- Location: FF_X2_Y26_N13
\L7|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(3));

-- Location: LCCOMB_X2_Y26_N14
\L7|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[4]~13_combout\ = (\L7|led_counter\(4) & (!\L7|led_counter[3]~12\)) # (!\L7|led_counter\(4) & ((\L7|led_counter[3]~12\) # (GND)))
-- \L7|led_counter[4]~14\ = CARRY((!\L7|led_counter[3]~12\) # (!\L7|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L7|led_counter\(4),
	datad => VCC,
	cin => \L7|led_counter[3]~12\,
	combout => \L7|led_counter[4]~13_combout\,
	cout => \L7|led_counter[4]~14\);

-- Location: FF_X2_Y26_N15
\L7|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(4));

-- Location: LCCOMB_X2_Y26_N16
\L7|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[5]~15_combout\ = (\L7|led_counter\(5) & (\L7|led_counter[4]~14\ $ (GND))) # (!\L7|led_counter\(5) & (!\L7|led_counter[4]~14\ & VCC))
-- \L7|led_counter[5]~16\ = CARRY((\L7|led_counter\(5) & !\L7|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L7|led_counter\(5),
	datad => VCC,
	cin => \L7|led_counter[4]~14\,
	combout => \L7|led_counter[5]~15_combout\,
	cout => \L7|led_counter[5]~16\);

-- Location: FF_X2_Y26_N17
\L7|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(5));

-- Location: LCCOMB_X2_Y26_N18
\L7|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[6]~17_combout\ = (\L7|led_counter\(6) & (!\L7|led_counter[5]~16\)) # (!\L7|led_counter\(6) & ((\L7|led_counter[5]~16\) # (GND)))
-- \L7|led_counter[6]~18\ = CARRY((!\L7|led_counter[5]~16\) # (!\L7|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L7|led_counter\(6),
	datad => VCC,
	cin => \L7|led_counter[5]~16\,
	combout => \L7|led_counter[6]~17_combout\,
	cout => \L7|led_counter[6]~18\);

-- Location: FF_X2_Y26_N19
\L7|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(6));

-- Location: LCCOMB_X2_Y26_N20
\L7|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L7|led_counter[7]~19_combout\ = \L7|led_counter[6]~18\ $ (!\L7|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L7|led_counter\(7),
	cin => \L7|led_counter[6]~18\,
	combout => \L7|led_counter[7]~19_combout\);

-- Location: FF_X2_Y26_N21
\L7|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \L7|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|led_counter\(7));

-- Location: LCCOMB_X17_Y27_N0
\L8|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~0_combout\ = \L8|pwm_div_counter\(0) $ (VCC)
-- \L8|Add0~1\ = CARRY(\L8|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L8|pwm_div_counter\(0),
	datad => VCC,
	combout => \L8|Add0~0_combout\,
	cout => \L8|Add0~1\);

-- Location: LCCOMB_X17_Y27_N14
\L8|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|pwm_div_counter[0]~feeder_combout\ = \L8|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|Add0~0_combout\,
	combout => \L8|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X17_Y27_N15
\L8|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L8|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(0));

-- Location: LCCOMB_X17_Y27_N6
\L8|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~6_combout\ = (\L8|pwm_div_counter\(3) & (!\L8|Add0~5\)) # (!\L8|pwm_div_counter\(3) & ((\L8|Add0~5\) # (GND)))
-- \L8|Add0~7\ = CARRY((!\L8|Add0~5\) # (!\L8|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(3),
	datad => VCC,
	cin => \L8|Add0~5\,
	combout => \L8|Add0~6_combout\,
	cout => \L8|Add0~7\);

-- Location: LCCOMB_X17_Y27_N8
\L8|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~8_combout\ = (\L8|pwm_div_counter\(4) & (\L8|Add0~7\ $ (GND))) # (!\L8|pwm_div_counter\(4) & (!\L8|Add0~7\ & VCC))
-- \L8|Add0~9\ = CARRY((\L8|pwm_div_counter\(4) & !\L8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L8|pwm_div_counter\(4),
	datad => VCC,
	cin => \L8|Add0~7\,
	combout => \L8|Add0~8_combout\,
	cout => \L8|Add0~9\);

-- Location: LCCOMB_X17_Y27_N10
\L8|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~10_combout\ = (\L8|pwm_div_counter\(5) & (!\L8|Add0~9\)) # (!\L8|pwm_div_counter\(5) & ((\L8|Add0~9\) # (GND)))
-- \L8|Add0~11\ = CARRY((!\L8|Add0~9\) # (!\L8|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(5),
	datad => VCC,
	cin => \L8|Add0~9\,
	combout => \L8|Add0~10_combout\,
	cout => \L8|Add0~11\);

-- Location: LCCOMB_X17_Y27_N26
\L8|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|pwm_div_counter~2_combout\ = (\L8|Add0~10_combout\ & ((!\L8|Equal0~0_combout\) # (!\L8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|Add0~10_combout\,
	datac => \L8|Equal0~1_combout\,
	datad => \L8|Equal0~0_combout\,
	combout => \L8|pwm_div_counter~2_combout\);

-- Location: FF_X17_Y27_N27
\L8|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(5));

-- Location: LCCOMB_X17_Y27_N12
\L8|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~12_combout\ = \L8|Add0~11\ $ (!\L8|pwm_div_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L8|pwm_div_counter\(6),
	cin => \L8|Add0~11\,
	combout => \L8|Add0~12_combout\);

-- Location: FF_X17_Y27_N13
\L8|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(6));

-- Location: LCCOMB_X17_Y27_N24
\L8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Equal0~0_combout\ = (!\L8|pwm_div_counter\(6) & (\L8|pwm_div_counter\(5) & (!\L8|pwm_div_counter\(1) & !\L8|pwm_div_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(6),
	datab => \L8|pwm_div_counter\(5),
	datac => \L8|pwm_div_counter\(1),
	datad => \L8|pwm_div_counter\(2),
	combout => \L8|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y27_N28
\L8|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|pwm_div_counter~1_combout\ = (\L8|Add0~8_combout\ & ((!\L8|Equal0~0_combout\) # (!\L8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|Equal0~1_combout\,
	datac => \L8|Add0~8_combout\,
	datad => \L8|Equal0~0_combout\,
	combout => \L8|pwm_div_counter~1_combout\);

-- Location: FF_X17_Y27_N29
\L8|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(4));

-- Location: LCCOMB_X17_Y27_N30
\L8|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Equal0~1_combout\ = (\L8|pwm_div_counter\(0) & (!\L8|pwm_div_counter\(3) & \L8|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L8|pwm_div_counter\(0),
	datac => \L8|pwm_div_counter\(3),
	datad => \L8|pwm_div_counter\(4),
	combout => \L8|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y27_N2
\L8|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~2_combout\ = (\L8|pwm_div_counter\(1) & (!\L8|Add0~1\)) # (!\L8|pwm_div_counter\(1) & ((\L8|Add0~1\) # (GND)))
-- \L8|Add0~3\ = CARRY((!\L8|Add0~1\) # (!\L8|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(1),
	datad => VCC,
	cin => \L8|Add0~1\,
	combout => \L8|Add0~2_combout\,
	cout => \L8|Add0~3\);

-- Location: LCCOMB_X17_Y27_N22
\L8|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|pwm_div_counter~0_combout\ = (\L8|Add0~2_combout\ & ((!\L8|Equal0~0_combout\) # (!\L8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|Equal0~1_combout\,
	datac => \L8|Add0~2_combout\,
	datad => \L8|Equal0~0_combout\,
	combout => \L8|pwm_div_counter~0_combout\);

-- Location: FF_X17_Y27_N23
\L8|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(1));

-- Location: LCCOMB_X17_Y27_N4
\L8|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|Add0~4_combout\ = (\L8|pwm_div_counter\(2) & (\L8|Add0~3\ $ (GND))) # (!\L8|pwm_div_counter\(2) & (!\L8|Add0~3\ & VCC))
-- \L8|Add0~5\ = CARRY((\L8|pwm_div_counter\(2) & !\L8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L8|pwm_div_counter\(2),
	datad => VCC,
	cin => \L8|Add0~3\,
	combout => \L8|Add0~4_combout\,
	cout => \L8|Add0~5\);

-- Location: FF_X17_Y27_N5
\L8|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(2));

-- Location: FF_X17_Y27_N7
\L8|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L8|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|pwm_div_counter\(3));

-- Location: LCCOMB_X17_Y27_N18
\L8|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|LessThan0~0_combout\ = ((!\L8|pwm_div_counter\(1) & (!\L8|pwm_div_counter\(2) & !\L8|pwm_div_counter\(0)))) # (!\L8|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(1),
	datab => \L8|pwm_div_counter\(2),
	datac => \L8|pwm_div_counter\(0),
	datad => \L8|pwm_div_counter\(4),
	combout => \L8|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y27_N20
\rtl~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = LCELL((!\L8|pwm_div_counter\(5) & (!\L8|pwm_div_counter\(6) & ((\L8|LessThan0~0_combout\) # (!\L8|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|pwm_div_counter\(3),
	datab => \L8|LessThan0~0_combout\,
	datac => \L8|pwm_div_counter\(5),
	datad => \L8|pwm_div_counter\(6),
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G3
\rtl~7clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X1_Y27_N24
\L8|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[0]~21_combout\ = !\L8|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L8|led_counter\(0),
	combout => \L8|led_counter[0]~21_combout\);

-- Location: FF_X1_Y27_N25
\L8|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(0));

-- Location: LCCOMB_X1_Y27_N6
\L8|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[1]~7_combout\ = (\L8|led_counter\(1) & (\L8|led_counter\(0) $ (VCC))) # (!\L8|led_counter\(1) & (\L8|led_counter\(0) & VCC))
-- \L8|led_counter[1]~8\ = CARRY((\L8|led_counter\(1) & \L8|led_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|led_counter\(1),
	datab => \L8|led_counter\(0),
	datad => VCC,
	combout => \L8|led_counter[1]~7_combout\,
	cout => \L8|led_counter[1]~8\);

-- Location: FF_X1_Y27_N7
\L8|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(1));

-- Location: LCCOMB_X1_Y27_N8
\L8|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[2]~9_combout\ = (\L8|led_counter\(2) & (!\L8|led_counter[1]~8\)) # (!\L8|led_counter\(2) & ((\L8|led_counter[1]~8\) # (GND)))
-- \L8|led_counter[2]~10\ = CARRY((!\L8|led_counter[1]~8\) # (!\L8|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L8|led_counter\(2),
	datad => VCC,
	cin => \L8|led_counter[1]~8\,
	combout => \L8|led_counter[2]~9_combout\,
	cout => \L8|led_counter[2]~10\);

-- Location: FF_X1_Y27_N9
\L8|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(2));

-- Location: LCCOMB_X1_Y27_N10
\L8|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[3]~11_combout\ = (\L8|led_counter\(3) & (\L8|led_counter[2]~10\ $ (GND))) # (!\L8|led_counter\(3) & (!\L8|led_counter[2]~10\ & VCC))
-- \L8|led_counter[3]~12\ = CARRY((\L8|led_counter\(3) & !\L8|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L8|led_counter\(3),
	datad => VCC,
	cin => \L8|led_counter[2]~10\,
	combout => \L8|led_counter[3]~11_combout\,
	cout => \L8|led_counter[3]~12\);

-- Location: FF_X1_Y27_N11
\L8|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(3));

-- Location: LCCOMB_X1_Y27_N12
\L8|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[4]~13_combout\ = (\L8|led_counter\(4) & (!\L8|led_counter[3]~12\)) # (!\L8|led_counter\(4) & ((\L8|led_counter[3]~12\) # (GND)))
-- \L8|led_counter[4]~14\ = CARRY((!\L8|led_counter[3]~12\) # (!\L8|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L8|led_counter\(4),
	datad => VCC,
	cin => \L8|led_counter[3]~12\,
	combout => \L8|led_counter[4]~13_combout\,
	cout => \L8|led_counter[4]~14\);

-- Location: FF_X1_Y27_N13
\L8|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(4));

-- Location: LCCOMB_X1_Y27_N4
\L8|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|LessThan1~0_combout\ = (!\L8|led_counter\(4) & (!\L8|led_counter\(3) & ((!\L8|led_counter\(2)) # (!\L8|led_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|led_counter\(4),
	datab => \L8|led_counter\(1),
	datac => \L8|led_counter\(2),
	datad => \L8|led_counter\(3),
	combout => \L8|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y27_N14
\L8|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[5]~15_combout\ = (\L8|led_counter\(5) & (\L8|led_counter[4]~14\ $ (GND))) # (!\L8|led_counter\(5) & (!\L8|led_counter[4]~14\ & VCC))
-- \L8|led_counter[5]~16\ = CARRY((\L8|led_counter\(5) & !\L8|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L8|led_counter\(5),
	datad => VCC,
	cin => \L8|led_counter[4]~14\,
	combout => \L8|led_counter[5]~15_combout\,
	cout => \L8|led_counter[5]~16\);

-- Location: FF_X1_Y27_N15
\L8|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(5));

-- Location: LCCOMB_X1_Y27_N16
\L8|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[6]~17_combout\ = (\L8|led_counter\(6) & (!\L8|led_counter[5]~16\)) # (!\L8|led_counter\(6) & ((\L8|led_counter[5]~16\) # (GND)))
-- \L8|led_counter[6]~18\ = CARRY((!\L8|led_counter[5]~16\) # (!\L8|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L8|led_counter\(6),
	datad => VCC,
	cin => \L8|led_counter[5]~16\,
	combout => \L8|led_counter[6]~17_combout\,
	cout => \L8|led_counter[6]~18\);

-- Location: FF_X1_Y27_N17
\L8|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(6));

-- Location: LCCOMB_X1_Y27_N18
\L8|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|led_counter[7]~19_combout\ = \L8|led_counter[6]~18\ $ (!\L8|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L8|led_counter\(7),
	cin => \L8|led_counter[6]~18\,
	combout => \L8|led_counter[7]~19_combout\);

-- Location: FF_X1_Y27_N19
\L8|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \L8|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|led_counter\(7));

-- Location: LCCOMB_X1_Y27_N26
\L8|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L8|LessThan1~1_combout\ = (((\L8|LessThan1~0_combout\ & !\L8|led_counter\(5))) # (!\L8|led_counter\(6))) # (!\L8|led_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L8|LessThan1~0_combout\,
	datab => \L8|led_counter\(7),
	datac => \L8|led_counter\(5),
	datad => \L8|led_counter\(6),
	combout => \L8|LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y27_N10
\L9|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~0_combout\ = \L9|pwm_div_counter\(0) $ (VCC)
-- \L9|Add0~1\ = CARRY(\L9|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(0),
	datad => VCC,
	combout => \L9|Add0~0_combout\,
	cout => \L9|Add0~1\);

-- Location: LCCOMB_X20_Y27_N8
\L9|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|pwm_div_counter[0]~feeder_combout\ = \L9|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L9|Add0~0_combout\,
	combout => \L9|pwm_div_counter[0]~feeder_combout\);

-- Location: FF_X20_Y27_N9
\L9|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L9|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(0));

-- Location: LCCOMB_X20_Y27_N28
\L9|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Equal0~0_combout\ = (!\L9|pwm_div_counter\(2) & (\L9|pwm_div_counter\(5) & (!\L9|pwm_div_counter\(6) & !\L9|pwm_div_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(2),
	datab => \L9|pwm_div_counter\(5),
	datac => \L9|pwm_div_counter\(6),
	datad => \L9|pwm_div_counter\(1),
	combout => \L9|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y27_N12
\L9|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~2_combout\ = (\L9|pwm_div_counter\(1) & (!\L9|Add0~1\)) # (!\L9|pwm_div_counter\(1) & ((\L9|Add0~1\) # (GND)))
-- \L9|Add0~3\ = CARRY((!\L9|Add0~1\) # (!\L9|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(1),
	datad => VCC,
	cin => \L9|Add0~1\,
	combout => \L9|Add0~2_combout\,
	cout => \L9|Add0~3\);

-- Location: LCCOMB_X20_Y27_N30
\L9|pwm_div_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|pwm_div_counter~0_combout\ = (\L9|Add0~2_combout\ & ((!\L9|Equal0~0_combout\) # (!\L9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|Equal0~1_combout\,
	datab => \L9|Equal0~0_combout\,
	datad => \L9|Add0~2_combout\,
	combout => \L9|pwm_div_counter~0_combout\);

-- Location: FF_X20_Y27_N31
\L9|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|pwm_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(1));

-- Location: LCCOMB_X20_Y27_N14
\L9|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~4_combout\ = (\L9|pwm_div_counter\(2) & (\L9|Add0~3\ $ (GND))) # (!\L9|pwm_div_counter\(2) & (!\L9|Add0~3\ & VCC))
-- \L9|Add0~5\ = CARRY((\L9|pwm_div_counter\(2) & !\L9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|pwm_div_counter\(2),
	datad => VCC,
	cin => \L9|Add0~3\,
	combout => \L9|Add0~4_combout\,
	cout => \L9|Add0~5\);

-- Location: FF_X20_Y27_N15
\L9|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(2));

-- Location: LCCOMB_X20_Y27_N16
\L9|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~6_combout\ = (\L9|pwm_div_counter\(3) & (!\L9|Add0~5\)) # (!\L9|pwm_div_counter\(3) & ((\L9|Add0~5\) # (GND)))
-- \L9|Add0~7\ = CARRY((!\L9|Add0~5\) # (!\L9|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|pwm_div_counter\(3),
	datad => VCC,
	cin => \L9|Add0~5\,
	combout => \L9|Add0~6_combout\,
	cout => \L9|Add0~7\);

-- Location: FF_X20_Y27_N17
\L9|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(3));

-- Location: LCCOMB_X20_Y27_N18
\L9|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~8_combout\ = (\L9|pwm_div_counter\(4) & (\L9|Add0~7\ $ (GND))) # (!\L9|pwm_div_counter\(4) & (!\L9|Add0~7\ & VCC))
-- \L9|Add0~9\ = CARRY((\L9|pwm_div_counter\(4) & !\L9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|pwm_div_counter\(4),
	datad => VCC,
	cin => \L9|Add0~7\,
	combout => \L9|Add0~8_combout\,
	cout => \L9|Add0~9\);

-- Location: LCCOMB_X20_Y27_N0
\L9|pwm_div_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|pwm_div_counter~1_combout\ = (\L9|Add0~8_combout\ & ((!\L9|Equal0~0_combout\) # (!\L9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|Equal0~1_combout\,
	datab => \L9|Add0~8_combout\,
	datad => \L9|Equal0~0_combout\,
	combout => \L9|pwm_div_counter~1_combout\);

-- Location: FF_X20_Y27_N1
\L9|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|pwm_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(4));

-- Location: LCCOMB_X20_Y27_N2
\L9|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Equal0~1_combout\ = (\L9|pwm_div_counter\(0) & (!\L9|pwm_div_counter\(3) & \L9|pwm_div_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(0),
	datac => \L9|pwm_div_counter\(3),
	datad => \L9|pwm_div_counter\(4),
	combout => \L9|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y27_N20
\L9|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~10_combout\ = (\L9|pwm_div_counter\(5) & (!\L9|Add0~9\)) # (!\L9|pwm_div_counter\(5) & ((\L9|Add0~9\) # (GND)))
-- \L9|Add0~11\ = CARRY((!\L9|Add0~9\) # (!\L9|pwm_div_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|pwm_div_counter\(5),
	datad => VCC,
	cin => \L9|Add0~9\,
	combout => \L9|Add0~10_combout\,
	cout => \L9|Add0~11\);

-- Location: LCCOMB_X20_Y27_N4
\L9|pwm_div_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|pwm_div_counter~2_combout\ = (\L9|Add0~10_combout\ & ((!\L9|Equal0~0_combout\) # (!\L9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|Equal0~1_combout\,
	datab => \L9|Add0~10_combout\,
	datad => \L9|Equal0~0_combout\,
	combout => \L9|pwm_div_counter~2_combout\);

-- Location: FF_X20_Y27_N5
\L9|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|pwm_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(5));

-- Location: LCCOMB_X20_Y27_N22
\L9|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|Add0~12_combout\ = \L9|pwm_div_counter\(6) $ (!\L9|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(6),
	cin => \L9|Add0~11\,
	combout => \L9|Add0~12_combout\);

-- Location: FF_X20_Y27_N23
\L9|pwm_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L9|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|pwm_div_counter\(6));

-- Location: LCCOMB_X20_Y27_N26
\L9|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|LessThan0~0_combout\ = ((!\L9|pwm_div_counter\(1) & (!\L9|pwm_div_counter\(2) & !\L9|pwm_div_counter\(0)))) # (!\L9|pwm_div_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(1),
	datab => \L9|pwm_div_counter\(2),
	datac => \L9|pwm_div_counter\(0),
	datad => \L9|pwm_div_counter\(4),
	combout => \L9|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y27_N6
\rtl~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = LCELL((!\L9|pwm_div_counter\(6) & (!\L9|pwm_div_counter\(5) & ((\L9|LessThan0~0_combout\) # (!\L9|pwm_div_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|pwm_div_counter\(6),
	datab => \L9|pwm_div_counter\(5),
	datac => \L9|LessThan0~0_combout\,
	datad => \L9|pwm_div_counter\(3),
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G10
\rtl~8clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X1_Y25_N12
\L9|led_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[0]~21_combout\ = !\L9|led_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L9|led_counter\(0),
	combout => \L9|led_counter[0]~21_combout\);

-- Location: FF_X1_Y25_N13
\L9|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[0]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(0));

-- Location: LCCOMB_X1_Y25_N14
\L9|led_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[1]~7_combout\ = (\L9|led_counter\(0) & (\L9|led_counter\(1) $ (VCC))) # (!\L9|led_counter\(0) & (\L9|led_counter\(1) & VCC))
-- \L9|led_counter[1]~8\ = CARRY((\L9|led_counter\(0) & \L9|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|led_counter\(0),
	datab => \L9|led_counter\(1),
	datad => VCC,
	combout => \L9|led_counter[1]~7_combout\,
	cout => \L9|led_counter[1]~8\);

-- Location: FF_X1_Y25_N15
\L9|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(1));

-- Location: LCCOMB_X1_Y25_N16
\L9|led_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[2]~9_combout\ = (\L9|led_counter\(2) & (!\L9|led_counter[1]~8\)) # (!\L9|led_counter\(2) & ((\L9|led_counter[1]~8\) # (GND)))
-- \L9|led_counter[2]~10\ = CARRY((!\L9|led_counter[1]~8\) # (!\L9|led_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|led_counter\(2),
	datad => VCC,
	cin => \L9|led_counter[1]~8\,
	combout => \L9|led_counter[2]~9_combout\,
	cout => \L9|led_counter[2]~10\);

-- Location: FF_X1_Y25_N17
\L9|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(2));

-- Location: LCCOMB_X1_Y25_N18
\L9|led_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[3]~11_combout\ = (\L9|led_counter\(3) & (\L9|led_counter[2]~10\ $ (GND))) # (!\L9|led_counter\(3) & (!\L9|led_counter[2]~10\ & VCC))
-- \L9|led_counter[3]~12\ = CARRY((\L9|led_counter\(3) & !\L9|led_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|led_counter\(3),
	datad => VCC,
	cin => \L9|led_counter[2]~10\,
	combout => \L9|led_counter[3]~11_combout\,
	cout => \L9|led_counter[3]~12\);

-- Location: FF_X1_Y25_N19
\L9|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[3]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(3));

-- Location: LCCOMB_X1_Y25_N20
\L9|led_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[4]~13_combout\ = (\L9|led_counter\(4) & (!\L9|led_counter[3]~12\)) # (!\L9|led_counter\(4) & ((\L9|led_counter[3]~12\) # (GND)))
-- \L9|led_counter[4]~14\ = CARRY((!\L9|led_counter[3]~12\) # (!\L9|led_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|led_counter\(4),
	datad => VCC,
	cin => \L9|led_counter[3]~12\,
	combout => \L9|led_counter[4]~13_combout\,
	cout => \L9|led_counter[4]~14\);

-- Location: FF_X1_Y25_N21
\L9|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[4]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(4));

-- Location: LCCOMB_X1_Y25_N22
\L9|led_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[5]~15_combout\ = (\L9|led_counter\(5) & (\L9|led_counter[4]~14\ $ (GND))) # (!\L9|led_counter\(5) & (!\L9|led_counter[4]~14\ & VCC))
-- \L9|led_counter[5]~16\ = CARRY((\L9|led_counter\(5) & !\L9|led_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L9|led_counter\(5),
	datad => VCC,
	cin => \L9|led_counter[4]~14\,
	combout => \L9|led_counter[5]~15_combout\,
	cout => \L9|led_counter[5]~16\);

-- Location: FF_X1_Y25_N23
\L9|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[5]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(5));

-- Location: LCCOMB_X1_Y25_N24
\L9|led_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[6]~17_combout\ = (\L9|led_counter\(6) & (!\L9|led_counter[5]~16\)) # (!\L9|led_counter\(6) & ((\L9|led_counter[5]~16\) # (GND)))
-- \L9|led_counter[6]~18\ = CARRY((!\L9|led_counter[5]~16\) # (!\L9|led_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L9|led_counter\(6),
	datad => VCC,
	cin => \L9|led_counter[5]~16\,
	combout => \L9|led_counter[6]~17_combout\,
	cout => \L9|led_counter[6]~18\);

-- Location: FF_X1_Y25_N25
\L9|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[6]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(6));

-- Location: LCCOMB_X1_Y25_N26
\L9|led_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|led_counter[7]~19_combout\ = \L9|led_counter\(7) $ (!\L9|led_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L9|led_counter\(7),
	cin => \L9|led_counter[6]~18\,
	combout => \L9|led_counter[7]~19_combout\);

-- Location: FF_X1_Y25_N27
\L9|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \L9|led_counter[7]~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|led_counter\(7));

-- Location: LCCOMB_X1_Y25_N0
\L9|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|LessThan1~1_combout\ = (((!\L9|led_counter\(6)) # (!\L9|led_counter\(7))) # (!\L9|led_counter\(4))) # (!\L9|led_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|led_counter\(5),
	datab => \L9|led_counter\(4),
	datac => \L9|led_counter\(7),
	datad => \L9|led_counter\(6),
	combout => \L9|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y25_N2
\L9|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|LessThan1~0_combout\ = (((!\L9|led_counter\(3)) # (!\L9|led_counter\(0))) # (!\L9|led_counter\(1))) # (!\L9|led_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L9|led_counter\(2),
	datab => \L9|led_counter\(1),
	datac => \L9|led_counter\(0),
	datad => \L9|led_counter\(3),
	combout => \L9|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\L9|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L9|LessThan1~2_combout\ = (\L9|LessThan1~1_combout\) # (\L9|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L9|LessThan1~1_combout\,
	datad => \L9|LessThan1~0_combout\,
	combout => \L9|LessThan1~2_combout\);

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;

ww_led_out(8) <= \led_out[8]~output_o\;

ww_led_out(9) <= \led_out[9]~output_o\;
END structure;


