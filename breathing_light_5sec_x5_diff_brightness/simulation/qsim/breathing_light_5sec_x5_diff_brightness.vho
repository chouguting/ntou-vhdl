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

-- DATE "12/04/2021 22:09:35"

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

ENTITY 	breathing_light_5sec_x5_diff_brightness IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	light_out : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END breathing_light_5sec_x5_diff_brightness;

-- Design Ports Information
-- light_out[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light_out[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light_out[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light_out[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light_out[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF breathing_light_5sec_x5_diff_brightness IS
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
SIGNAL ww_light_out : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_out[0]~output_o\ : std_logic;
SIGNAL \light_out[1]~output_o\ : std_logic;
SIGNAL \light_out[2]~output_o\ : std_logic;
SIGNAL \light_out[3]~output_o\ : std_logic;
SIGNAL \light_out[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \light_0|pwm_div_counter[0]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \light_0|pwm_div_counter[4]~15\ : std_logic;
SIGNAL \light_0|pwm_div_counter[5]~16_combout\ : std_logic;
SIGNAL \light_0|LessThan1~0_combout\ : std_logic;
SIGNAL \light_0|LessThan0~0_combout\ : std_logic;
SIGNAL \light_0|pwm_div_counter[0]~7\ : std_logic;
SIGNAL \light_0|pwm_div_counter[1]~8_combout\ : std_logic;
SIGNAL \light_0|pwm_div_counter[1]~9\ : std_logic;
SIGNAL \light_0|pwm_div_counter[2]~10_combout\ : std_logic;
SIGNAL \light_0|pwm_div_counter[2]~11\ : std_logic;
SIGNAL \light_0|pwm_div_counter[3]~12_combout\ : std_logic;
SIGNAL \light_0|pwm_div_counter[3]~13\ : std_logic;
SIGNAL \light_0|pwm_div_counter[4]~14_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \light_0|pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[1]~8\ : std_logic;
SIGNAL \light_0|pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[2]~10\ : std_logic;
SIGNAL \light_0|pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[3]~12\ : std_logic;
SIGNAL \light_0|pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[4]~14\ : std_logic;
SIGNAL \light_0|pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[5]~16\ : std_logic;
SIGNAL \light_0|pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \light_0|pwm_counter[6]~18\ : std_logic;
SIGNAL \light_0|pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \light_0|Add2~0_combout\ : std_logic;
SIGNAL \light_0|Add2~1\ : std_logic;
SIGNAL \light_0|Add2~2_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~11_combout\ : std_logic;
SIGNAL \light_0|Add2~3\ : std_logic;
SIGNAL \light_0|Add2~4_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~10_combout\ : std_logic;
SIGNAL \light_0|Add2~5\ : std_logic;
SIGNAL \light_0|Add2~6_combout\ : std_logic;
SIGNAL \light_0|Add2~7\ : std_logic;
SIGNAL \light_0|Add2~8_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~9_combout\ : std_logic;
SIGNAL \light_0|Add2~9\ : std_logic;
SIGNAL \light_0|Add2~10_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~7_combout\ : std_logic;
SIGNAL \light_0|Add2~11\ : std_logic;
SIGNAL \light_0|Add2~12_combout\ : std_logic;
SIGNAL \light_0|Add2~13\ : std_logic;
SIGNAL \light_0|Add2~14_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~8_combout\ : std_logic;
SIGNAL \light_0|Add2~15\ : std_logic;
SIGNAL \light_0|Add2~16_combout\ : std_logic;
SIGNAL \light_0|Add2~17\ : std_logic;
SIGNAL \light_0|Add2~18_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~3_combout\ : std_logic;
SIGNAL \light_0|Add2~19\ : std_logic;
SIGNAL \light_0|Add2~20_combout\ : std_logic;
SIGNAL \light_0|Add2~21\ : std_logic;
SIGNAL \light_0|Add2~22_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~6_combout\ : std_logic;
SIGNAL \light_0|Add2~23\ : std_logic;
SIGNAL \light_0|Add2~24_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~5_combout\ : std_logic;
SIGNAL \light_0|Add2~25\ : std_logic;
SIGNAL \light_0|Add2~26_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~4_combout\ : std_logic;
SIGNAL \light_0|Add2~27\ : std_logic;
SIGNAL \light_0|Add2~28_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~12_combout\ : std_logic;
SIGNAL \light_0|Add2~29\ : std_logic;
SIGNAL \light_0|Add2~30_combout\ : std_logic;
SIGNAL \light_0|Add2~31\ : std_logic;
SIGNAL \light_0|Add2~32_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~1_combout\ : std_logic;
SIGNAL \light_0|Add2~33\ : std_logic;
SIGNAL \light_0|Add2~34_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~0_combout\ : std_logic;
SIGNAL \light_0|Equal0~1_combout\ : std_logic;
SIGNAL \light_0|Equal0~0_combout\ : std_logic;
SIGNAL \light_0|Equal0~2_combout\ : std_logic;
SIGNAL \light_0|Equal0~3_combout\ : std_logic;
SIGNAL \light_0|Equal0~4_combout\ : std_logic;
SIGNAL \light_0|Equal0~5_combout\ : std_logic;
SIGNAL \light_0|Add2~35\ : std_logic;
SIGNAL \light_0|Add2~36_combout\ : std_logic;
SIGNAL \light_0|div_490196_counter~2_combout\ : std_logic;
SIGNAL \light_0|LessThan2~0_combout\ : std_logic;
SIGNAL \light_0|LessThan2~2_combout\ : std_logic;
SIGNAL \light_0|LessThan2~3_combout\ : std_logic;
SIGNAL \light_0|LessThan2~1_combout\ : std_logic;
SIGNAL \light_0|LessThan2~4_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \light_0|Add6~0_combout\ : std_logic;
SIGNAL \light_0|Add5~0_combout\ : std_logic;
SIGNAL \light_0|Add3~0_combout\ : std_logic;
SIGNAL \light_0|Add3~1\ : std_logic;
SIGNAL \light_0|Add3~2_combout\ : std_logic;
SIGNAL \light_0|Add3~3\ : std_logic;
SIGNAL \light_0|Add3~4_combout\ : std_logic;
SIGNAL \light_0|led_counter~2_combout\ : std_logic;
SIGNAL \light_0|Add3~5\ : std_logic;
SIGNAL \light_0|Add3~6_combout\ : std_logic;
SIGNAL \light_0|Add3~7\ : std_logic;
SIGNAL \light_0|Add3~8_combout\ : std_logic;
SIGNAL \light_0|Add3~9\ : std_logic;
SIGNAL \light_0|Add3~10_combout\ : std_logic;
SIGNAL \light_0|led_counter~1_combout\ : std_logic;
SIGNAL \light_0|Add3~11\ : std_logic;
SIGNAL \light_0|Add3~12_combout\ : std_logic;
SIGNAL \light_0|led_counter~0_combout\ : std_logic;
SIGNAL \light_0|Equal1~0_combout\ : std_logic;
SIGNAL \light_0|Add3~13\ : std_logic;
SIGNAL \light_0|Add3~14_combout\ : std_logic;
SIGNAL \light_0|Add3~15\ : std_logic;
SIGNAL \light_0|Add3~16_combout\ : std_logic;
SIGNAL \light_0|Equal1~1_combout\ : std_logic;
SIGNAL \light_0|Equal1~2_combout\ : std_logic;
SIGNAL \light_0|Add3~17\ : std_logic;
SIGNAL \light_0|Add3~18_combout\ : std_logic;
SIGNAL \light_0|led_counter~3_combout\ : std_logic;
SIGNAL \light_0|pwm_num[5]~0_combout\ : std_logic;
SIGNAL \light_0|pwm_num[5]~1_combout\ : std_logic;
SIGNAL \light_0|LessThan3~0_combout\ : std_logic;
SIGNAL \light_0|pwm_num~2_combout\ : std_logic;
SIGNAL \light_0|pwm_num~10_combout\ : std_logic;
SIGNAL \light_0|gear_counter[2]~0_combout\ : std_logic;
SIGNAL \light_0|Equal3~0_combout\ : std_logic;
SIGNAL \light_0|Add5~1\ : std_logic;
SIGNAL \light_0|Add5~2_combout\ : std_logic;
SIGNAL \light_0|Add6~1\ : std_logic;
SIGNAL \light_0|Add6~2_combout\ : std_logic;
SIGNAL \light_0|pwm_num~9_combout\ : std_logic;
SIGNAL \light_0|Add5~3\ : std_logic;
SIGNAL \light_0|Add5~4_combout\ : std_logic;
SIGNAL \light_0|Add6~3\ : std_logic;
SIGNAL \light_0|Add6~4_combout\ : std_logic;
SIGNAL \light_0|pwm_num~8_combout\ : std_logic;
SIGNAL \light_0|Add5~5\ : std_logic;
SIGNAL \light_0|Add5~6_combout\ : std_logic;
SIGNAL \light_0|Add6~5\ : std_logic;
SIGNAL \light_0|Add6~6_combout\ : std_logic;
SIGNAL \light_0|pwm_num~7_combout\ : std_logic;
SIGNAL \light_0|Add5~7\ : std_logic;
SIGNAL \light_0|Add5~8_combout\ : std_logic;
SIGNAL \light_0|Add6~7\ : std_logic;
SIGNAL \light_0|Add6~8_combout\ : std_logic;
SIGNAL \light_0|pwm_num~6_combout\ : std_logic;
SIGNAL \light_0|Add5~9\ : std_logic;
SIGNAL \light_0|Add5~10_combout\ : std_logic;
SIGNAL \light_0|Add6~9\ : std_logic;
SIGNAL \light_0|Add6~10_combout\ : std_logic;
SIGNAL \light_0|pwm_num~5_combout\ : std_logic;
SIGNAL \light_0|Add5~11\ : std_logic;
SIGNAL \light_0|Add5~12_combout\ : std_logic;
SIGNAL \light_0|Add6~11\ : std_logic;
SIGNAL \light_0|Add6~12_combout\ : std_logic;
SIGNAL \light_0|pwm_num~4_combout\ : std_logic;
SIGNAL \light_0|Add5~13\ : std_logic;
SIGNAL \light_0|Add5~14_combout\ : std_logic;
SIGNAL \light_0|Add6~13\ : std_logic;
SIGNAL \light_0|Add6~14_combout\ : std_logic;
SIGNAL \light_0|pwm_num~3_combout\ : std_logic;
SIGNAL \light_0|LessThan5~1_cout\ : std_logic;
SIGNAL \light_0|LessThan5~3_cout\ : std_logic;
SIGNAL \light_0|LessThan5~5_cout\ : std_logic;
SIGNAL \light_0|LessThan5~7_cout\ : std_logic;
SIGNAL \light_0|LessThan5~9_cout\ : std_logic;
SIGNAL \light_0|LessThan5~11_cout\ : std_logic;
SIGNAL \light_0|LessThan5~13_cout\ : std_logic;
SIGNAL \light_0|LessThan5~14_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[0]~6_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[3]~13\ : std_logic;
SIGNAL \light_1|pwm_div_counter[4]~14_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[4]~15\ : std_logic;
SIGNAL \light_1|pwm_div_counter[5]~16_combout\ : std_logic;
SIGNAL \light_1|LessThan1~0_combout\ : std_logic;
SIGNAL \light_1|LessThan0~0_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[0]~7\ : std_logic;
SIGNAL \light_1|pwm_div_counter[1]~8_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[1]~feeder_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[1]~9\ : std_logic;
SIGNAL \light_1|pwm_div_counter[2]~10_combout\ : std_logic;
SIGNAL \light_1|pwm_div_counter[2]~11\ : std_logic;
SIGNAL \light_1|pwm_div_counter[3]~12_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \light_1|pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[1]~8\ : std_logic;
SIGNAL \light_1|pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[2]~10\ : std_logic;
SIGNAL \light_1|pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[3]~12\ : std_logic;
SIGNAL \light_1|pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[4]~14\ : std_logic;
SIGNAL \light_1|pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[5]~16\ : std_logic;
SIGNAL \light_1|pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \light_1|pwm_counter[6]~18\ : std_logic;
SIGNAL \light_1|pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \light_1|Add2~0_combout\ : std_logic;
SIGNAL \light_1|Add2~1\ : std_logic;
SIGNAL \light_1|Add2~2_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~11_combout\ : std_logic;
SIGNAL \light_1|Add2~3\ : std_logic;
SIGNAL \light_1|Add2~4_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~10_combout\ : std_logic;
SIGNAL \light_1|Add2~5\ : std_logic;
SIGNAL \light_1|Add2~6_combout\ : std_logic;
SIGNAL \light_1|Add2~7\ : std_logic;
SIGNAL \light_1|Add2~8_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~9_combout\ : std_logic;
SIGNAL \light_1|Add2~9\ : std_logic;
SIGNAL \light_1|Add2~10_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~7_combout\ : std_logic;
SIGNAL \light_1|Add2~11\ : std_logic;
SIGNAL \light_1|Add2~12_combout\ : std_logic;
SIGNAL \light_1|Equal0~3_combout\ : std_logic;
SIGNAL \light_1|Add2~13\ : std_logic;
SIGNAL \light_1|Add2~14_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~8_combout\ : std_logic;
SIGNAL \light_1|Add2~15\ : std_logic;
SIGNAL \light_1|Add2~16_combout\ : std_logic;
SIGNAL \light_1|Add2~17\ : std_logic;
SIGNAL \light_1|Add2~19\ : std_logic;
SIGNAL \light_1|Add2~20_combout\ : std_logic;
SIGNAL \light_1|Add2~21\ : std_logic;
SIGNAL \light_1|Add2~22_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~6_combout\ : std_logic;
SIGNAL \light_1|Add2~23\ : std_logic;
SIGNAL \light_1|Add2~24_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~5_combout\ : std_logic;
SIGNAL \light_1|Add2~25\ : std_logic;
SIGNAL \light_1|Add2~26_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~4_combout\ : std_logic;
SIGNAL \light_1|Add2~27\ : std_logic;
SIGNAL \light_1|Add2~28_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~12_combout\ : std_logic;
SIGNAL \light_1|Add2~29\ : std_logic;
SIGNAL \light_1|Add2~30_combout\ : std_logic;
SIGNAL \light_1|Add2~31\ : std_logic;
SIGNAL \light_1|Add2~32_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~1_combout\ : std_logic;
SIGNAL \light_1|Add2~33\ : std_logic;
SIGNAL \light_1|Add2~34_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~0_combout\ : std_logic;
SIGNAL \light_1|Add2~35\ : std_logic;
SIGNAL \light_1|Add2~36_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~2_combout\ : std_logic;
SIGNAL \light_1|Equal0~0_combout\ : std_logic;
SIGNAL \light_1|Equal0~2_combout\ : std_logic;
SIGNAL \light_1|Equal0~1_combout\ : std_logic;
SIGNAL \light_1|Equal0~4_combout\ : std_logic;
SIGNAL \light_1|Equal0~5_combout\ : std_logic;
SIGNAL \light_1|Add2~18_combout\ : std_logic;
SIGNAL \light_1|div_490196_counter~3_combout\ : std_logic;
SIGNAL \light_1|LessThan2~1_combout\ : std_logic;
SIGNAL \light_1|LessThan2~2_combout\ : std_logic;
SIGNAL \light_1|LessThan2~3_combout\ : std_logic;
SIGNAL \light_1|LessThan2~4_combout\ : std_logic;
SIGNAL \light_1|LessThan2~0_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \light_1|Add3~0_combout\ : std_logic;
SIGNAL \light_1|Add3~1\ : std_logic;
SIGNAL \light_1|Add3~2_combout\ : std_logic;
SIGNAL \light_1|Add3~3\ : std_logic;
SIGNAL \light_1|Add3~4_combout\ : std_logic;
SIGNAL \light_1|led_counter~2_combout\ : std_logic;
SIGNAL \light_1|Add3~5\ : std_logic;
SIGNAL \light_1|Add3~6_combout\ : std_logic;
SIGNAL \light_1|Add3~7\ : std_logic;
SIGNAL \light_1|Add3~8_combout\ : std_logic;
SIGNAL \light_1|Add3~9\ : std_logic;
SIGNAL \light_1|Add3~10_combout\ : std_logic;
SIGNAL \light_1|led_counter~1_combout\ : std_logic;
SIGNAL \light_1|Add3~11\ : std_logic;
SIGNAL \light_1|Add3~12_combout\ : std_logic;
SIGNAL \light_1|led_counter~0_combout\ : std_logic;
SIGNAL \light_1|Add3~13\ : std_logic;
SIGNAL \light_1|Add3~14_combout\ : std_logic;
SIGNAL \light_1|Add3~15\ : std_logic;
SIGNAL \light_1|Add3~16_combout\ : std_logic;
SIGNAL \light_1|Equal1~1_combout\ : std_logic;
SIGNAL \light_1|Equal1~0_combout\ : std_logic;
SIGNAL \light_1|Equal1~2_combout\ : std_logic;
SIGNAL \light_1|Add3~17\ : std_logic;
SIGNAL \light_1|Add3~18_combout\ : std_logic;
SIGNAL \light_1|led_counter~3_combout\ : std_logic;
SIGNAL \light_1|pwm_num[3]~0_combout\ : std_logic;
SIGNAL \light_1|pwm_num[3]~1_combout\ : std_logic;
SIGNAL \light_1|LessThan3~0_combout\ : std_logic;
SIGNAL \light_1|Add5~0_combout\ : std_logic;
SIGNAL \light_1|Add6~0_combout\ : std_logic;
SIGNAL \light_1|pwm_num~2_combout\ : std_logic;
SIGNAL \light_1|pwm_num~10_combout\ : std_logic;
SIGNAL \light_1|gear_counter[3]~0_combout\ : std_logic;
SIGNAL \light_1|gear_counter~1_combout\ : std_logic;
SIGNAL \light_1|gear_counter~2_combout\ : std_logic;
SIGNAL \light_1|Equal3~0_combout\ : std_logic;
SIGNAL \light_1|Add6~1\ : std_logic;
SIGNAL \light_1|Add6~2_combout\ : std_logic;
SIGNAL \light_1|Add5~1\ : std_logic;
SIGNAL \light_1|Add5~2_combout\ : std_logic;
SIGNAL \light_1|pwm_num~9_combout\ : std_logic;
SIGNAL \light_1|Add5~3\ : std_logic;
SIGNAL \light_1|Add5~4_combout\ : std_logic;
SIGNAL \light_1|Add6~3\ : std_logic;
SIGNAL \light_1|Add6~4_combout\ : std_logic;
SIGNAL \light_1|pwm_num~8_combout\ : std_logic;
SIGNAL \light_1|Add6~5\ : std_logic;
SIGNAL \light_1|Add6~6_combout\ : std_logic;
SIGNAL \light_1|Add5~5\ : std_logic;
SIGNAL \light_1|Add5~6_combout\ : std_logic;
SIGNAL \light_1|pwm_num~7_combout\ : std_logic;
SIGNAL \light_1|Add6~7\ : std_logic;
SIGNAL \light_1|Add6~8_combout\ : std_logic;
SIGNAL \light_1|Add5~7\ : std_logic;
SIGNAL \light_1|Add5~8_combout\ : std_logic;
SIGNAL \light_1|pwm_num~6_combout\ : std_logic;
SIGNAL \light_1|Add6~9\ : std_logic;
SIGNAL \light_1|Add6~10_combout\ : std_logic;
SIGNAL \light_1|Add5~9\ : std_logic;
SIGNAL \light_1|Add5~10_combout\ : std_logic;
SIGNAL \light_1|pwm_num~5_combout\ : std_logic;
SIGNAL \light_1|Add6~11\ : std_logic;
SIGNAL \light_1|Add6~12_combout\ : std_logic;
SIGNAL \light_1|Add5~11\ : std_logic;
SIGNAL \light_1|Add5~12_combout\ : std_logic;
SIGNAL \light_1|pwm_num~4_combout\ : std_logic;
SIGNAL \light_1|Add6~13\ : std_logic;
SIGNAL \light_1|Add6~14_combout\ : std_logic;
SIGNAL \light_1|Add5~13\ : std_logic;
SIGNAL \light_1|Add5~14_combout\ : std_logic;
SIGNAL \light_1|pwm_num~3_combout\ : std_logic;
SIGNAL \light_1|LessThan5~1_cout\ : std_logic;
SIGNAL \light_1|LessThan5~3_cout\ : std_logic;
SIGNAL \light_1|LessThan5~5_cout\ : std_logic;
SIGNAL \light_1|LessThan5~7_cout\ : std_logic;
SIGNAL \light_1|LessThan5~9_cout\ : std_logic;
SIGNAL \light_1|LessThan5~11_cout\ : std_logic;
SIGNAL \light_1|LessThan5~13_cout\ : std_logic;
SIGNAL \light_1|LessThan5~14_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[0]~6_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \light_2|LessThan1~0_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[4]~15\ : std_logic;
SIGNAL \light_2|pwm_div_counter[5]~16_combout\ : std_logic;
SIGNAL \light_2|LessThan0~0_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[0]~7\ : std_logic;
SIGNAL \light_2|pwm_div_counter[1]~8_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[1]~feeder_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[1]~9\ : std_logic;
SIGNAL \light_2|pwm_div_counter[2]~10_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[2]~11\ : std_logic;
SIGNAL \light_2|pwm_div_counter[3]~12_combout\ : std_logic;
SIGNAL \light_2|pwm_div_counter[3]~13\ : std_logic;
SIGNAL \light_2|pwm_div_counter[4]~14_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \light_2|pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[1]~8\ : std_logic;
SIGNAL \light_2|pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[2]~10\ : std_logic;
SIGNAL \light_2|pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[3]~12\ : std_logic;
SIGNAL \light_2|pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[4]~14\ : std_logic;
SIGNAL \light_2|pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[5]~16\ : std_logic;
SIGNAL \light_2|pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \light_2|pwm_counter[6]~18\ : std_logic;
SIGNAL \light_2|pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \light_2|Add2~0_combout\ : std_logic;
SIGNAL \light_2|Add2~1\ : std_logic;
SIGNAL \light_2|Add2~2_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~11_combout\ : std_logic;
SIGNAL \light_2|Add2~3\ : std_logic;
SIGNAL \light_2|Add2~4_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~10_combout\ : std_logic;
SIGNAL \light_2|Add2~5\ : std_logic;
SIGNAL \light_2|Add2~6_combout\ : std_logic;
SIGNAL \light_2|Add2~7\ : std_logic;
SIGNAL \light_2|Add2~8_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~9_combout\ : std_logic;
SIGNAL \light_2|Add2~9\ : std_logic;
SIGNAL \light_2|Add2~10_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~7_combout\ : std_logic;
SIGNAL \light_2|Add2~11\ : std_logic;
SIGNAL \light_2|Add2~12_combout\ : std_logic;
SIGNAL \light_2|Add2~13\ : std_logic;
SIGNAL \light_2|Add2~14_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~8_combout\ : std_logic;
SIGNAL \light_2|Add2~15\ : std_logic;
SIGNAL \light_2|Add2~16_combout\ : std_logic;
SIGNAL \light_2|Add2~17\ : std_logic;
SIGNAL \light_2|Add2~18_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~3_combout\ : std_logic;
SIGNAL \light_2|Add2~19\ : std_logic;
SIGNAL \light_2|Add2~20_combout\ : std_logic;
SIGNAL \light_2|Equal0~2_combout\ : std_logic;
SIGNAL \light_2|Add2~21\ : std_logic;
SIGNAL \light_2|Add2~22_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~6_combout\ : std_logic;
SIGNAL \light_2|Add2~23\ : std_logic;
SIGNAL \light_2|Add2~24_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~5_combout\ : std_logic;
SIGNAL \light_2|Add2~25\ : std_logic;
SIGNAL \light_2|Add2~26_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~4_combout\ : std_logic;
SIGNAL \light_2|Equal0~0_combout\ : std_logic;
SIGNAL \light_2|Add2~27\ : std_logic;
SIGNAL \light_2|Add2~28_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~12_combout\ : std_logic;
SIGNAL \light_2|Add2~29\ : std_logic;
SIGNAL \light_2|Add2~30_combout\ : std_logic;
SIGNAL \light_2|Add2~31\ : std_logic;
SIGNAL \light_2|Add2~32_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~1_combout\ : std_logic;
SIGNAL \light_2|Equal0~1_combout\ : std_logic;
SIGNAL \light_2|Equal0~3_combout\ : std_logic;
SIGNAL \light_2|Equal0~4_combout\ : std_logic;
SIGNAL \light_2|Equal0~5_combout\ : std_logic;
SIGNAL \light_2|Add2~33\ : std_logic;
SIGNAL \light_2|Add2~34_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~0_combout\ : std_logic;
SIGNAL \light_2|Add2~35\ : std_logic;
SIGNAL \light_2|Add2~36_combout\ : std_logic;
SIGNAL \light_2|div_490196_counter~2_combout\ : std_logic;
SIGNAL \light_2|LessThan2~1_combout\ : std_logic;
SIGNAL \light_2|LessThan2~2_combout\ : std_logic;
SIGNAL \light_2|LessThan2~3_combout\ : std_logic;
SIGNAL \light_2|LessThan2~4_combout\ : std_logic;
SIGNAL \light_2|LessThan2~0_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \light_2|Add3~0_combout\ : std_logic;
SIGNAL \light_2|Add3~1\ : std_logic;
SIGNAL \light_2|Add3~2_combout\ : std_logic;
SIGNAL \light_2|Add3~3\ : std_logic;
SIGNAL \light_2|Add3~4_combout\ : std_logic;
SIGNAL \light_2|led_counter~2_combout\ : std_logic;
SIGNAL \light_2|Add3~5\ : std_logic;
SIGNAL \light_2|Add3~6_combout\ : std_logic;
SIGNAL \light_2|Add3~7\ : std_logic;
SIGNAL \light_2|Add3~8_combout\ : std_logic;
SIGNAL \light_2|Add3~17\ : std_logic;
SIGNAL \light_2|Add3~18_combout\ : std_logic;
SIGNAL \light_2|led_counter~3_combout\ : std_logic;
SIGNAL \light_2|Equal1~1_combout\ : std_logic;
SIGNAL \light_2|Add3~9\ : std_logic;
SIGNAL \light_2|Add3~10_combout\ : std_logic;
SIGNAL \light_2|led_counter~1_combout\ : std_logic;
SIGNAL \light_2|Equal1~0_combout\ : std_logic;
SIGNAL \light_2|Equal1~2_combout\ : std_logic;
SIGNAL \light_2|Add3~11\ : std_logic;
SIGNAL \light_2|Add3~12_combout\ : std_logic;
SIGNAL \light_2|led_counter~0_combout\ : std_logic;
SIGNAL \light_2|Add3~13\ : std_logic;
SIGNAL \light_2|Add3~14_combout\ : std_logic;
SIGNAL \light_2|led_counter[7]~feeder_combout\ : std_logic;
SIGNAL \light_2|Add3~15\ : std_logic;
SIGNAL \light_2|Add3~16_combout\ : std_logic;
SIGNAL \light_2|pwm_num[5]~0_combout\ : std_logic;
SIGNAL \light_2|pwm_num[5]~1_combout\ : std_logic;
SIGNAL \light_2|LessThan3~0_combout\ : std_logic;
SIGNAL \light_2|Add5~0_combout\ : std_logic;
SIGNAL \light_2|Add6~0_combout\ : std_logic;
SIGNAL \light_2|pwm_num~2_combout\ : std_logic;
SIGNAL \light_2|pwm_num~10_combout\ : std_logic;
SIGNAL \light_2|gear_counter[3]~0_combout\ : std_logic;
SIGNAL \light_2|gear_counter~1_combout\ : std_logic;
SIGNAL \light_2|Equal3~0_combout\ : std_logic;
SIGNAL \light_2|Add6~1\ : std_logic;
SIGNAL \light_2|Add6~2_combout\ : std_logic;
SIGNAL \light_2|Add5~1\ : std_logic;
SIGNAL \light_2|Add5~2_combout\ : std_logic;
SIGNAL \light_2|pwm_num~9_combout\ : std_logic;
SIGNAL \light_2|Add6~3\ : std_logic;
SIGNAL \light_2|Add6~4_combout\ : std_logic;
SIGNAL \light_2|Add5~3\ : std_logic;
SIGNAL \light_2|Add5~4_combout\ : std_logic;
SIGNAL \light_2|pwm_num~8_combout\ : std_logic;
SIGNAL \light_2|Add6~5\ : std_logic;
SIGNAL \light_2|Add6~6_combout\ : std_logic;
SIGNAL \light_2|Add5~5\ : std_logic;
SIGNAL \light_2|Add5~6_combout\ : std_logic;
SIGNAL \light_2|pwm_num~7_combout\ : std_logic;
SIGNAL \light_2|Add6~7\ : std_logic;
SIGNAL \light_2|Add6~8_combout\ : std_logic;
SIGNAL \light_2|Add5~7\ : std_logic;
SIGNAL \light_2|Add5~8_combout\ : std_logic;
SIGNAL \light_2|pwm_num~6_combout\ : std_logic;
SIGNAL \light_2|Add6~9\ : std_logic;
SIGNAL \light_2|Add6~10_combout\ : std_logic;
SIGNAL \light_2|Add5~9\ : std_logic;
SIGNAL \light_2|Add5~10_combout\ : std_logic;
SIGNAL \light_2|pwm_num~5_combout\ : std_logic;
SIGNAL \light_2|Add6~11\ : std_logic;
SIGNAL \light_2|Add6~12_combout\ : std_logic;
SIGNAL \light_2|Add5~11\ : std_logic;
SIGNAL \light_2|Add5~12_combout\ : std_logic;
SIGNAL \light_2|pwm_num~4_combout\ : std_logic;
SIGNAL \light_2|Add6~13\ : std_logic;
SIGNAL \light_2|Add6~14_combout\ : std_logic;
SIGNAL \light_2|Add5~13\ : std_logic;
SIGNAL \light_2|Add5~14_combout\ : std_logic;
SIGNAL \light_2|pwm_num~3_combout\ : std_logic;
SIGNAL \light_2|LessThan5~1_cout\ : std_logic;
SIGNAL \light_2|LessThan5~3_cout\ : std_logic;
SIGNAL \light_2|LessThan5~5_cout\ : std_logic;
SIGNAL \light_2|LessThan5~7_cout\ : std_logic;
SIGNAL \light_2|LessThan5~9_cout\ : std_logic;
SIGNAL \light_2|LessThan5~11_cout\ : std_logic;
SIGNAL \light_2|LessThan5~13_cout\ : std_logic;
SIGNAL \light_2|LessThan5~14_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[0]~6_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[3]~13\ : std_logic;
SIGNAL \light_3|pwm_div_counter[4]~14_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[4]~15\ : std_logic;
SIGNAL \light_3|pwm_div_counter[5]~16_combout\ : std_logic;
SIGNAL \light_3|LessThan1~0_combout\ : std_logic;
SIGNAL \light_3|LessThan0~0_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[0]~7\ : std_logic;
SIGNAL \light_3|pwm_div_counter[1]~8_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[1]~9\ : std_logic;
SIGNAL \light_3|pwm_div_counter[2]~10_combout\ : std_logic;
SIGNAL \light_3|pwm_div_counter[2]~11\ : std_logic;
SIGNAL \light_3|pwm_div_counter[3]~12_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \light_3|pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[1]~8\ : std_logic;
SIGNAL \light_3|pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[2]~10\ : std_logic;
SIGNAL \light_3|pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[3]~12\ : std_logic;
SIGNAL \light_3|pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[4]~14\ : std_logic;
SIGNAL \light_3|pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[5]~16\ : std_logic;
SIGNAL \light_3|pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \light_3|pwm_counter[6]~18\ : std_logic;
SIGNAL \light_3|pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \light_3|Add2~0_combout\ : std_logic;
SIGNAL \light_3|Add2~1\ : std_logic;
SIGNAL \light_3|Add2~2_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~11_combout\ : std_logic;
SIGNAL \light_3|Add2~3\ : std_logic;
SIGNAL \light_3|Add2~4_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~10_combout\ : std_logic;
SIGNAL \light_3|Add2~5\ : std_logic;
SIGNAL \light_3|Add2~6_combout\ : std_logic;
SIGNAL \light_3|Add2~7\ : std_logic;
SIGNAL \light_3|Add2~8_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~9_combout\ : std_logic;
SIGNAL \light_3|Add2~9\ : std_logic;
SIGNAL \light_3|Add2~10_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~7_combout\ : std_logic;
SIGNAL \light_3|Add2~11\ : std_logic;
SIGNAL \light_3|Add2~12_combout\ : std_logic;
SIGNAL \light_3|Equal0~3_combout\ : std_logic;
SIGNAL \light_3|Add2~13\ : std_logic;
SIGNAL \light_3|Add2~14_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~8_combout\ : std_logic;
SIGNAL \light_3|Add2~15\ : std_logic;
SIGNAL \light_3|Add2~16_combout\ : std_logic;
SIGNAL \light_3|Add2~17\ : std_logic;
SIGNAL \light_3|Add2~18_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~3_combout\ : std_logic;
SIGNAL \light_3|Add2~19\ : std_logic;
SIGNAL \light_3|Add2~20_combout\ : std_logic;
SIGNAL \light_3|Add2~21\ : std_logic;
SIGNAL \light_3|Add2~22_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~6_combout\ : std_logic;
SIGNAL \light_3|Add2~23\ : std_logic;
SIGNAL \light_3|Add2~24_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~5_combout\ : std_logic;
SIGNAL \light_3|Add2~25\ : std_logic;
SIGNAL \light_3|Add2~26_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~4_combout\ : std_logic;
SIGNAL \light_3|Add2~31\ : std_logic;
SIGNAL \light_3|Add2~32_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~1_combout\ : std_logic;
SIGNAL \light_3|Add2~33\ : std_logic;
SIGNAL \light_3|Add2~34_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~0_combout\ : std_logic;
SIGNAL \light_3|Add2~35\ : std_logic;
SIGNAL \light_3|Add2~36_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~2_combout\ : std_logic;
SIGNAL \light_3|Equal0~0_combout\ : std_logic;
SIGNAL \light_3|Equal0~2_combout\ : std_logic;
SIGNAL \light_3|Equal0~1_combout\ : std_logic;
SIGNAL \light_3|Equal0~4_combout\ : std_logic;
SIGNAL \light_3|Equal0~5_combout\ : std_logic;
SIGNAL \light_3|Add2~27\ : std_logic;
SIGNAL \light_3|Add2~28_combout\ : std_logic;
SIGNAL \light_3|div_490196_counter~12_combout\ : std_logic;
SIGNAL \light_3|Add2~29\ : std_logic;
SIGNAL \light_3|Add2~30_combout\ : std_logic;
SIGNAL \light_3|LessThan2~0_combout\ : std_logic;
SIGNAL \light_3|LessThan2~1_combout\ : std_logic;
SIGNAL \light_3|LessThan2~2_combout\ : std_logic;
SIGNAL \light_3|LessThan2~3_combout\ : std_logic;
SIGNAL \light_3|LessThan2~4_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \light_3|Add3~0_combout\ : std_logic;
SIGNAL \light_3|Add3~1\ : std_logic;
SIGNAL \light_3|Add3~2_combout\ : std_logic;
SIGNAL \light_3|Add3~3\ : std_logic;
SIGNAL \light_3|Add3~4_combout\ : std_logic;
SIGNAL \light_3|led_counter~2_combout\ : std_logic;
SIGNAL \light_3|Add3~5\ : std_logic;
SIGNAL \light_3|Add3~6_combout\ : std_logic;
SIGNAL \light_3|Add3~7\ : std_logic;
SIGNAL \light_3|Add3~8_combout\ : std_logic;
SIGNAL \light_3|Add3~9\ : std_logic;
SIGNAL \light_3|Add3~10_combout\ : std_logic;
SIGNAL \light_3|led_counter~1_combout\ : std_logic;
SIGNAL \light_3|Add3~17\ : std_logic;
SIGNAL \light_3|Add3~18_combout\ : std_logic;
SIGNAL \light_3|led_counter~3_combout\ : std_logic;
SIGNAL \light_3|Equal1~0_combout\ : std_logic;
SIGNAL \light_3|Equal1~1_combout\ : std_logic;
SIGNAL \light_3|Equal1~2_combout\ : std_logic;
SIGNAL \light_3|Add3~11\ : std_logic;
SIGNAL \light_3|Add3~12_combout\ : std_logic;
SIGNAL \light_3|led_counter~0_combout\ : std_logic;
SIGNAL \light_3|Add3~13\ : std_logic;
SIGNAL \light_3|Add3~14_combout\ : std_logic;
SIGNAL \light_3|Add3~15\ : std_logic;
SIGNAL \light_3|Add3~16_combout\ : std_logic;
SIGNAL \light_3|pwm_num[0]~0_combout\ : std_logic;
SIGNAL \light_3|pwm_num[0]~1_combout\ : std_logic;
SIGNAL \light_3|pwm_num~2_combout\ : std_logic;
SIGNAL \light_3|Add5~0_combout\ : std_logic;
SIGNAL \light_3|Add6~0_combout\ : std_logic;
SIGNAL \light_3|LessThan3~0_combout\ : std_logic;
SIGNAL \light_3|pwm_num~10_combout\ : std_logic;
SIGNAL \light_3|gear_counter[2]~1_combout\ : std_logic;
SIGNAL \light_3|gear_counter[3]~0_combout\ : std_logic;
SIGNAL \light_3|gear_counter~2_combout\ : std_logic;
SIGNAL \light_3|Equal3~0_combout\ : std_logic;
SIGNAL \light_3|Add5~1\ : std_logic;
SIGNAL \light_3|Add5~2_combout\ : std_logic;
SIGNAL \light_3|Add6~1\ : std_logic;
SIGNAL \light_3|Add6~2_combout\ : std_logic;
SIGNAL \light_3|pwm_num~9_combout\ : std_logic;
SIGNAL \light_3|Add5~3\ : std_logic;
SIGNAL \light_3|Add5~4_combout\ : std_logic;
SIGNAL \light_3|Add6~3\ : std_logic;
SIGNAL \light_3|Add6~4_combout\ : std_logic;
SIGNAL \light_3|pwm_num~8_combout\ : std_logic;
SIGNAL \light_3|Add6~5\ : std_logic;
SIGNAL \light_3|Add6~6_combout\ : std_logic;
SIGNAL \light_3|Add5~5\ : std_logic;
SIGNAL \light_3|Add5~6_combout\ : std_logic;
SIGNAL \light_3|pwm_num~7_combout\ : std_logic;
SIGNAL \light_3|Add6~7\ : std_logic;
SIGNAL \light_3|Add6~8_combout\ : std_logic;
SIGNAL \light_3|Add5~7\ : std_logic;
SIGNAL \light_3|Add5~8_combout\ : std_logic;
SIGNAL \light_3|pwm_num~6_combout\ : std_logic;
SIGNAL \light_3|Add6~9\ : std_logic;
SIGNAL \light_3|Add6~10_combout\ : std_logic;
SIGNAL \light_3|Add5~9\ : std_logic;
SIGNAL \light_3|Add5~10_combout\ : std_logic;
SIGNAL \light_3|pwm_num~5_combout\ : std_logic;
SIGNAL \light_3|Add6~11\ : std_logic;
SIGNAL \light_3|Add6~12_combout\ : std_logic;
SIGNAL \light_3|Add5~11\ : std_logic;
SIGNAL \light_3|Add5~12_combout\ : std_logic;
SIGNAL \light_3|pwm_num~4_combout\ : std_logic;
SIGNAL \light_3|Add6~13\ : std_logic;
SIGNAL \light_3|Add6~14_combout\ : std_logic;
SIGNAL \light_3|Add5~13\ : std_logic;
SIGNAL \light_3|Add5~14_combout\ : std_logic;
SIGNAL \light_3|pwm_num~3_combout\ : std_logic;
SIGNAL \light_3|LessThan5~1_cout\ : std_logic;
SIGNAL \light_3|LessThan5~3_cout\ : std_logic;
SIGNAL \light_3|LessThan5~5_cout\ : std_logic;
SIGNAL \light_3|LessThan5~7_cout\ : std_logic;
SIGNAL \light_3|LessThan5~9_cout\ : std_logic;
SIGNAL \light_3|LessThan5~11_cout\ : std_logic;
SIGNAL \light_3|LessThan5~13_cout\ : std_logic;
SIGNAL \light_3|LessThan5~14_combout\ : std_logic;
SIGNAL \light_4|Add2~0_combout\ : std_logic;
SIGNAL \light_4|Add2~1\ : std_logic;
SIGNAL \light_4|Add2~2_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~11_combout\ : std_logic;
SIGNAL \light_4|Add2~3\ : std_logic;
SIGNAL \light_4|Add2~4_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~10_combout\ : std_logic;
SIGNAL \light_4|Add2~21\ : std_logic;
SIGNAL \light_4|Add2~22_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~6_combout\ : std_logic;
SIGNAL \light_4|Add2~23\ : std_logic;
SIGNAL \light_4|Add2~24_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~5_combout\ : std_logic;
SIGNAL \light_4|Add2~25\ : std_logic;
SIGNAL \light_4|Add2~26_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~4_combout\ : std_logic;
SIGNAL \light_4|Add2~27\ : std_logic;
SIGNAL \light_4|Add2~28_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~12_combout\ : std_logic;
SIGNAL \light_4|Add2~29\ : std_logic;
SIGNAL \light_4|Add2~30_combout\ : std_logic;
SIGNAL \light_4|Add2~31\ : std_logic;
SIGNAL \light_4|Add2~32_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~1_combout\ : std_logic;
SIGNAL \light_4|Add2~33\ : std_logic;
SIGNAL \light_4|Add2~34_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~0_combout\ : std_logic;
SIGNAL \light_4|Add2~35\ : std_logic;
SIGNAL \light_4|Add2~36_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~2_combout\ : std_logic;
SIGNAL \light_4|Equal0~0_combout\ : std_logic;
SIGNAL \light_4|Equal0~1_combout\ : std_logic;
SIGNAL \light_4|Add2~5\ : std_logic;
SIGNAL \light_4|Add2~6_combout\ : std_logic;
SIGNAL \light_4|Add2~7\ : std_logic;
SIGNAL \light_4|Add2~8_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~9_combout\ : std_logic;
SIGNAL \light_4|Add2~9\ : std_logic;
SIGNAL \light_4|Add2~10_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~7_combout\ : std_logic;
SIGNAL \light_4|Add2~11\ : std_logic;
SIGNAL \light_4|Add2~12_combout\ : std_logic;
SIGNAL \light_4|Add2~13\ : std_logic;
SIGNAL \light_4|Add2~14_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~8_combout\ : std_logic;
SIGNAL \light_4|Add2~15\ : std_logic;
SIGNAL \light_4|Add2~16_combout\ : std_logic;
SIGNAL \light_4|Equal0~2_combout\ : std_logic;
SIGNAL \light_4|Equal0~3_combout\ : std_logic;
SIGNAL \light_4|Equal0~4_combout\ : std_logic;
SIGNAL \light_4|Equal0~5_combout\ : std_logic;
SIGNAL \light_4|Add2~17\ : std_logic;
SIGNAL \light_4|Add2~18_combout\ : std_logic;
SIGNAL \light_4|div_490196_counter~3_combout\ : std_logic;
SIGNAL \light_4|Add2~19\ : std_logic;
SIGNAL \light_4|Add2~20_combout\ : std_logic;
SIGNAL \light_4|LessThan2~1_combout\ : std_logic;
SIGNAL \light_4|LessThan2~2_combout\ : std_logic;
SIGNAL \light_4|LessThan2~3_combout\ : std_logic;
SIGNAL \light_4|LessThan2~4_combout\ : std_logic;
SIGNAL \light_4|LessThan2~0_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \light_4|Add3~0_combout\ : std_logic;
SIGNAL \light_4|Add3~1\ : std_logic;
SIGNAL \light_4|Add3~2_combout\ : std_logic;
SIGNAL \light_4|Add3~3\ : std_logic;
SIGNAL \light_4|Add3~4_combout\ : std_logic;
SIGNAL \light_4|led_counter~2_combout\ : std_logic;
SIGNAL \light_4|Add3~5\ : std_logic;
SIGNAL \light_4|Add3~6_combout\ : std_logic;
SIGNAL \light_4|Add3~7\ : std_logic;
SIGNAL \light_4|Add3~8_combout\ : std_logic;
SIGNAL \light_4|Equal1~1_combout\ : std_logic;
SIGNAL \light_4|Add3~9\ : std_logic;
SIGNAL \light_4|Add3~10_combout\ : std_logic;
SIGNAL \light_4|led_counter~1_combout\ : std_logic;
SIGNAL \light_4|Equal1~0_combout\ : std_logic;
SIGNAL \light_4|Equal1~2_combout\ : std_logic;
SIGNAL \light_4|Add3~11\ : std_logic;
SIGNAL \light_4|Add3~12_combout\ : std_logic;
SIGNAL \light_4|led_counter~0_combout\ : std_logic;
SIGNAL \light_4|Add3~13\ : std_logic;
SIGNAL \light_4|Add3~14_combout\ : std_logic;
SIGNAL \light_4|Add3~15\ : std_logic;
SIGNAL \light_4|Add3~16_combout\ : std_logic;
SIGNAL \light_4|Add3~17\ : std_logic;
SIGNAL \light_4|Add3~18_combout\ : std_logic;
SIGNAL \light_4|led_counter~3_combout\ : std_logic;
SIGNAL \light_4|pwm_num[7]~0_combout\ : std_logic;
SIGNAL \light_4|pwm_num[7]~1_combout\ : std_logic;
SIGNAL \light_4|pwm_num~2_combout\ : std_logic;
SIGNAL \light_4|Add5~0_combout\ : std_logic;
SIGNAL \light_4|Add6~0_combout\ : std_logic;
SIGNAL \light_4|LessThan3~0_combout\ : std_logic;
SIGNAL \light_4|pwm_num~10_combout\ : std_logic;
SIGNAL \light_4|gear_counter[3]~0_combout\ : std_logic;
SIGNAL \light_4|gear_counter~3_combout\ : std_logic;
SIGNAL \light_4|gear_counter[1]~2_combout\ : std_logic;
SIGNAL \light_4|gear_counter[2]~1_combout\ : std_logic;
SIGNAL \light_4|Equal3~0_combout\ : std_logic;
SIGNAL \light_4|Add6~1\ : std_logic;
SIGNAL \light_4|Add6~2_combout\ : std_logic;
SIGNAL \light_4|Add5~1\ : std_logic;
SIGNAL \light_4|Add5~2_combout\ : std_logic;
SIGNAL \light_4|pwm_num~9_combout\ : std_logic;
SIGNAL \light_4|Add5~3\ : std_logic;
SIGNAL \light_4|Add5~4_combout\ : std_logic;
SIGNAL \light_4|Add6~3\ : std_logic;
SIGNAL \light_4|Add6~4_combout\ : std_logic;
SIGNAL \light_4|pwm_num~8_combout\ : std_logic;
SIGNAL \light_4|Add5~5\ : std_logic;
SIGNAL \light_4|Add5~6_combout\ : std_logic;
SIGNAL \light_4|Add6~5\ : std_logic;
SIGNAL \light_4|Add6~6_combout\ : std_logic;
SIGNAL \light_4|pwm_num~7_combout\ : std_logic;
SIGNAL \light_4|Add5~7\ : std_logic;
SIGNAL \light_4|Add5~8_combout\ : std_logic;
SIGNAL \light_4|Add6~7\ : std_logic;
SIGNAL \light_4|Add6~8_combout\ : std_logic;
SIGNAL \light_4|pwm_num~6_combout\ : std_logic;
SIGNAL \light_4|Add5~9\ : std_logic;
SIGNAL \light_4|Add5~10_combout\ : std_logic;
SIGNAL \light_4|Add6~9\ : std_logic;
SIGNAL \light_4|Add6~10_combout\ : std_logic;
SIGNAL \light_4|pwm_num~5_combout\ : std_logic;
SIGNAL \light_4|Add5~11\ : std_logic;
SIGNAL \light_4|Add5~12_combout\ : std_logic;
SIGNAL \light_4|Add6~11\ : std_logic;
SIGNAL \light_4|Add6~12_combout\ : std_logic;
SIGNAL \light_4|pwm_num~4_combout\ : std_logic;
SIGNAL \light_4|Add5~13\ : std_logic;
SIGNAL \light_4|Add5~14_combout\ : std_logic;
SIGNAL \light_4|Add6~13\ : std_logic;
SIGNAL \light_4|Add6~14_combout\ : std_logic;
SIGNAL \light_4|pwm_num~3_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[0]~6_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[0]~feeder_combout\ : std_logic;
SIGNAL \light_4|LessThan1~0_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[3]~13\ : std_logic;
SIGNAL \light_4|pwm_div_counter[4]~14_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[4]~15\ : std_logic;
SIGNAL \light_4|pwm_div_counter[5]~16_combout\ : std_logic;
SIGNAL \light_4|LessThan0~0_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[0]~7\ : std_logic;
SIGNAL \light_4|pwm_div_counter[1]~8_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[1]~feeder_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[1]~9\ : std_logic;
SIGNAL \light_4|pwm_div_counter[2]~10_combout\ : std_logic;
SIGNAL \light_4|pwm_div_counter[2]~11\ : std_logic;
SIGNAL \light_4|pwm_div_counter[3]~12_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \light_4|pwm_counter[0]~21_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[1]~7_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[1]~8\ : std_logic;
SIGNAL \light_4|pwm_counter[2]~9_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[2]~10\ : std_logic;
SIGNAL \light_4|pwm_counter[3]~11_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[3]~12\ : std_logic;
SIGNAL \light_4|pwm_counter[4]~13_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[4]~14\ : std_logic;
SIGNAL \light_4|pwm_counter[5]~15_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[5]~16\ : std_logic;
SIGNAL \light_4|pwm_counter[6]~17_combout\ : std_logic;
SIGNAL \light_4|pwm_counter[6]~18\ : std_logic;
SIGNAL \light_4|pwm_counter[7]~19_combout\ : std_logic;
SIGNAL \light_4|LessThan5~1_cout\ : std_logic;
SIGNAL \light_4|LessThan5~3_cout\ : std_logic;
SIGNAL \light_4|LessThan5~5_cout\ : std_logic;
SIGNAL \light_4|LessThan5~7_cout\ : std_logic;
SIGNAL \light_4|LessThan5~9_cout\ : std_logic;
SIGNAL \light_4|LessThan5~11_cout\ : std_logic;
SIGNAL \light_4|LessThan5~13_cout\ : std_logic;
SIGNAL \light_4|LessThan5~14_combout\ : std_logic;
SIGNAL \light_2|pwm_num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_2|pwm_div_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \light_2|pwm_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_2|led_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \light_2|gear_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_2|div_490196_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \light_1|pwm_num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_1|pwm_div_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \light_1|pwm_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_1|led_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \light_1|gear_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_1|div_490196_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \light_0|pwm_num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_0|pwm_div_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \light_0|pwm_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_0|led_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \light_0|gear_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_0|div_490196_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \light_3|gear_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_4|led_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \light_4|pwm_div_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \light_3|pwm_div_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \light_3|div_490196_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \light_3|pwm_num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_4|pwm_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_4|div_490196_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \light_4|gear_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \light_3|pwm_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_4|pwm_num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \light_3|led_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \light_4|ALT_INV_LessThan5~14_combout\ : std_logic;
SIGNAL \light_3|ALT_INV_LessThan5~14_combout\ : std_logic;
SIGNAL \light_2|ALT_INV_LessThan5~14_combout\ : std_logic;
SIGNAL \light_1|ALT_INV_LessThan5~14_combout\ : std_logic;
SIGNAL \light_0|ALT_INV_LessThan5~14_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
light_out <= ww_light_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);
\light_4|ALT_INV_LessThan5~14_combout\ <= NOT \light_4|LessThan5~14_combout\;
\light_3|ALT_INV_LessThan5~14_combout\ <= NOT \light_3|LessThan5~14_combout\;
\light_2|ALT_INV_LessThan5~14_combout\ <= NOT \light_2|LessThan5~14_combout\;
\light_1|ALT_INV_LessThan5~14_combout\ <= NOT \light_1|LessThan5~14_combout\;
\light_0|ALT_INV_LessThan5~14_combout\ <= NOT \light_0|LessThan5~14_combout\;

-- Location: IOOBUF_X0_Y24_N16
\light_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \light_0|ALT_INV_LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \light_out[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\light_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \light_1|ALT_INV_LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \light_out[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\light_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \light_2|ALT_INV_LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \light_out[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\light_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \light_3|ALT_INV_LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \light_out[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\light_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \light_4|ALT_INV_LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \light_out[4]~output_o\);

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

-- Location: LCCOMB_X19_Y26_N14
\light_0|pwm_div_counter[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[0]~6_combout\ = \light_0|pwm_div_counter\(0) $ (VCC)
-- \light_0|pwm_div_counter[0]~7\ = CARRY(\light_0|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(0),
	datad => VCC,
	combout => \light_0|pwm_div_counter[0]~6_combout\,
	cout => \light_0|pwm_div_counter[0]~7\);

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

-- Location: LCCOMB_X19_Y26_N22
\light_0|pwm_div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[4]~14_combout\ = (\light_0|pwm_div_counter\(4) & (\light_0|pwm_div_counter[3]~13\ $ (GND))) # (!\light_0|pwm_div_counter\(4) & (!\light_0|pwm_div_counter[3]~13\ & VCC))
-- \light_0|pwm_div_counter[4]~15\ = CARRY((\light_0|pwm_div_counter\(4) & !\light_0|pwm_div_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(4),
	datad => VCC,
	cin => \light_0|pwm_div_counter[3]~13\,
	combout => \light_0|pwm_div_counter[4]~14_combout\,
	cout => \light_0|pwm_div_counter[4]~15\);

-- Location: LCCOMB_X19_Y26_N24
\light_0|pwm_div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[5]~16_combout\ = \light_0|pwm_div_counter[4]~15\ $ (\light_0|pwm_div_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_0|pwm_div_counter\(5),
	cin => \light_0|pwm_div_counter[4]~15\,
	combout => \light_0|pwm_div_counter[5]~16_combout\);

-- Location: FF_X19_Y26_N25
\light_0|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|pwm_div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(5));

-- Location: LCCOMB_X17_Y26_N2
\light_0|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan1~0_combout\ = (!\light_0|pwm_div_counter\(0) & (!\light_0|pwm_div_counter\(1) & !\light_0|pwm_div_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(0),
	datac => \light_0|pwm_div_counter\(1),
	datad => \light_0|pwm_div_counter\(2),
	combout => \light_0|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y26_N8
\light_0|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan0~0_combout\ = (\light_0|pwm_div_counter\(5) & (\light_0|pwm_div_counter\(4) & ((\light_0|pwm_div_counter\(3)) # (!\light_0|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(3),
	datab => \light_0|pwm_div_counter\(5),
	datac => \light_0|LessThan1~0_combout\,
	datad => \light_0|pwm_div_counter\(4),
	combout => \light_0|LessThan0~0_combout\);

-- Location: FF_X17_Y26_N13
\light_0|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \light_0|pwm_div_counter[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(0));

-- Location: LCCOMB_X19_Y26_N16
\light_0|pwm_div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[1]~8_combout\ = (\light_0|pwm_div_counter\(1) & (!\light_0|pwm_div_counter[0]~7\)) # (!\light_0|pwm_div_counter\(1) & ((\light_0|pwm_div_counter[0]~7\) # (GND)))
-- \light_0|pwm_div_counter[1]~9\ = CARRY((!\light_0|pwm_div_counter[0]~7\) # (!\light_0|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(1),
	datad => VCC,
	cin => \light_0|pwm_div_counter[0]~7\,
	combout => \light_0|pwm_div_counter[1]~8_combout\,
	cout => \light_0|pwm_div_counter[1]~9\);

-- Location: FF_X17_Y26_N3
\light_0|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \light_0|pwm_div_counter[1]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(1));

-- Location: LCCOMB_X19_Y26_N18
\light_0|pwm_div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[2]~10_combout\ = (\light_0|pwm_div_counter\(2) & (\light_0|pwm_div_counter[1]~9\ $ (GND))) # (!\light_0|pwm_div_counter\(2) & (!\light_0|pwm_div_counter[1]~9\ & VCC))
-- \light_0|pwm_div_counter[2]~11\ = CARRY((\light_0|pwm_div_counter\(2) & !\light_0|pwm_div_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_div_counter\(2),
	datad => VCC,
	cin => \light_0|pwm_div_counter[1]~9\,
	combout => \light_0|pwm_div_counter[2]~10_combout\,
	cout => \light_0|pwm_div_counter[2]~11\);

-- Location: FF_X19_Y26_N19
\light_0|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|pwm_div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(2));

-- Location: LCCOMB_X19_Y26_N20
\light_0|pwm_div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_div_counter[3]~12_combout\ = (\light_0|pwm_div_counter\(3) & (!\light_0|pwm_div_counter[2]~11\)) # (!\light_0|pwm_div_counter\(3) & ((\light_0|pwm_div_counter[2]~11\) # (GND)))
-- \light_0|pwm_div_counter[3]~13\ = CARRY((!\light_0|pwm_div_counter[2]~11\) # (!\light_0|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_div_counter\(3),
	datad => VCC,
	cin => \light_0|pwm_div_counter[2]~11\,
	combout => \light_0|pwm_div_counter[3]~12_combout\,
	cout => \light_0|pwm_div_counter[3]~13\);

-- Location: FF_X19_Y26_N21
\light_0|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|pwm_div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(3));

-- Location: FF_X19_Y26_N23
\light_0|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|pwm_div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \light_0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_div_counter\(4));

-- Location: LCCOMB_X19_Y26_N0
\rtl~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((!\light_0|pwm_div_counter\(5) & (((\light_0|LessThan1~0_combout\) # (!\light_0|pwm_div_counter\(3))) # (!\light_0|pwm_div_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_div_counter\(4),
	datab => \light_0|pwm_div_counter\(5),
	datac => \light_0|LessThan1~0_combout\,
	datad => \light_0|pwm_div_counter\(3),
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

-- Location: LCCOMB_X4_Y24_N0
\light_0|pwm_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[0]~21_combout\ = !\light_0|pwm_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_0|pwm_counter\(0),
	combout => \light_0|pwm_counter[0]~21_combout\);

-- Location: FF_X4_Y24_N1
\light_0|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(0));

-- Location: LCCOMB_X4_Y24_N18
\light_0|pwm_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[1]~7_combout\ = (\light_0|pwm_counter\(0) & (\light_0|pwm_counter\(1) $ (VCC))) # (!\light_0|pwm_counter\(0) & (\light_0|pwm_counter\(1) & VCC))
-- \light_0|pwm_counter[1]~8\ = CARRY((\light_0|pwm_counter\(0) & \light_0|pwm_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(0),
	datab => \light_0|pwm_counter\(1),
	datad => VCC,
	combout => \light_0|pwm_counter[1]~7_combout\,
	cout => \light_0|pwm_counter[1]~8\);

-- Location: FF_X4_Y24_N19
\light_0|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(1));

-- Location: LCCOMB_X4_Y24_N20
\light_0|pwm_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[2]~9_combout\ = (\light_0|pwm_counter\(2) & (!\light_0|pwm_counter[1]~8\)) # (!\light_0|pwm_counter\(2) & ((\light_0|pwm_counter[1]~8\) # (GND)))
-- \light_0|pwm_counter[2]~10\ = CARRY((!\light_0|pwm_counter[1]~8\) # (!\light_0|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_counter\(2),
	datad => VCC,
	cin => \light_0|pwm_counter[1]~8\,
	combout => \light_0|pwm_counter[2]~9_combout\,
	cout => \light_0|pwm_counter[2]~10\);

-- Location: FF_X4_Y24_N21
\light_0|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(2));

-- Location: LCCOMB_X4_Y24_N22
\light_0|pwm_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[3]~11_combout\ = (\light_0|pwm_counter\(3) & (\light_0|pwm_counter[2]~10\ $ (GND))) # (!\light_0|pwm_counter\(3) & (!\light_0|pwm_counter[2]~10\ & VCC))
-- \light_0|pwm_counter[3]~12\ = CARRY((\light_0|pwm_counter\(3) & !\light_0|pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(3),
	datad => VCC,
	cin => \light_0|pwm_counter[2]~10\,
	combout => \light_0|pwm_counter[3]~11_combout\,
	cout => \light_0|pwm_counter[3]~12\);

-- Location: FF_X4_Y24_N23
\light_0|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(3));

-- Location: LCCOMB_X4_Y24_N24
\light_0|pwm_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[4]~13_combout\ = (\light_0|pwm_counter\(4) & (!\light_0|pwm_counter[3]~12\)) # (!\light_0|pwm_counter\(4) & ((\light_0|pwm_counter[3]~12\) # (GND)))
-- \light_0|pwm_counter[4]~14\ = CARRY((!\light_0|pwm_counter[3]~12\) # (!\light_0|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_counter\(4),
	datad => VCC,
	cin => \light_0|pwm_counter[3]~12\,
	combout => \light_0|pwm_counter[4]~13_combout\,
	cout => \light_0|pwm_counter[4]~14\);

-- Location: FF_X4_Y24_N25
\light_0|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(4));

-- Location: LCCOMB_X4_Y24_N26
\light_0|pwm_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[5]~15_combout\ = (\light_0|pwm_counter\(5) & (\light_0|pwm_counter[4]~14\ $ (GND))) # (!\light_0|pwm_counter\(5) & (!\light_0|pwm_counter[4]~14\ & VCC))
-- \light_0|pwm_counter[5]~16\ = CARRY((\light_0|pwm_counter\(5) & !\light_0|pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(5),
	datad => VCC,
	cin => \light_0|pwm_counter[4]~14\,
	combout => \light_0|pwm_counter[5]~15_combout\,
	cout => \light_0|pwm_counter[5]~16\);

-- Location: FF_X4_Y24_N27
\light_0|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(5));

-- Location: LCCOMB_X4_Y24_N28
\light_0|pwm_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[6]~17_combout\ = (\light_0|pwm_counter\(6) & (!\light_0|pwm_counter[5]~16\)) # (!\light_0|pwm_counter\(6) & ((\light_0|pwm_counter[5]~16\) # (GND)))
-- \light_0|pwm_counter[6]~18\ = CARRY((!\light_0|pwm_counter[5]~16\) # (!\light_0|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_counter\(6),
	datad => VCC,
	cin => \light_0|pwm_counter[5]~16\,
	combout => \light_0|pwm_counter[6]~17_combout\,
	cout => \light_0|pwm_counter[6]~18\);

-- Location: FF_X4_Y24_N29
\light_0|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(6));

-- Location: LCCOMB_X4_Y24_N30
\light_0|pwm_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_counter[7]~19_combout\ = \light_0|pwm_counter\(7) $ (!\light_0|pwm_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(7),
	cin => \light_0|pwm_counter[6]~18\,
	combout => \light_0|pwm_counter[7]~19_combout\);

-- Location: FF_X4_Y24_N31
\light_0|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \light_0|pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_counter\(7));

-- Location: LCCOMB_X16_Y28_N14
\light_0|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~0_combout\ = \light_0|div_490196_counter\(0) $ (VCC)
-- \light_0|Add2~1\ = CARRY(\light_0|div_490196_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(0),
	datad => VCC,
	combout => \light_0|Add2~0_combout\,
	cout => \light_0|Add2~1\);

-- Location: FF_X16_Y28_N15
\light_0|div_490196_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_0|Add2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(0));

-- Location: LCCOMB_X16_Y28_N16
\light_0|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~2_combout\ = (\light_0|div_490196_counter\(1) & (!\light_0|Add2~1\)) # (!\light_0|div_490196_counter\(1) & ((\light_0|Add2~1\) # (GND)))
-- \light_0|Add2~3\ = CARRY((!\light_0|Add2~1\) # (!\light_0|div_490196_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(1),
	datad => VCC,
	cin => \light_0|Add2~1\,
	combout => \light_0|Add2~2_combout\,
	cout => \light_0|Add2~3\);

-- Location: LCCOMB_X17_Y27_N0
\light_0|div_490196_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~11_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datac => \light_0|Add2~2_combout\,
	combout => \light_0|div_490196_counter~11_combout\);

-- Location: FF_X17_Y27_N1
\light_0|div_490196_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(1));

-- Location: LCCOMB_X16_Y28_N18
\light_0|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~4_combout\ = (\light_0|div_490196_counter\(2) & (\light_0|Add2~3\ $ (GND))) # (!\light_0|div_490196_counter\(2) & (!\light_0|Add2~3\ & VCC))
-- \light_0|Add2~5\ = CARRY((\light_0|div_490196_counter\(2) & !\light_0|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(2),
	datad => VCC,
	cin => \light_0|Add2~3\,
	combout => \light_0|Add2~4_combout\,
	cout => \light_0|Add2~5\);

-- Location: LCCOMB_X17_Y27_N12
\light_0|div_490196_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~10_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datac => \light_0|Add2~4_combout\,
	combout => \light_0|div_490196_counter~10_combout\);

-- Location: FF_X17_Y27_N13
\light_0|div_490196_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(2));

-- Location: LCCOMB_X16_Y28_N20
\light_0|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~6_combout\ = (\light_0|div_490196_counter\(3) & (!\light_0|Add2~5\)) # (!\light_0|div_490196_counter\(3) & ((\light_0|Add2~5\) # (GND)))
-- \light_0|Add2~7\ = CARRY((!\light_0|Add2~5\) # (!\light_0|div_490196_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(3),
	datad => VCC,
	cin => \light_0|Add2~5\,
	combout => \light_0|Add2~6_combout\,
	cout => \light_0|Add2~7\);

-- Location: FF_X16_Y28_N21
\light_0|div_490196_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|Add2~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(3));

-- Location: LCCOMB_X16_Y28_N22
\light_0|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~8_combout\ = (\light_0|div_490196_counter\(4) & (\light_0|Add2~7\ $ (GND))) # (!\light_0|div_490196_counter\(4) & (!\light_0|Add2~7\ & VCC))
-- \light_0|Add2~9\ = CARRY((\light_0|div_490196_counter\(4) & !\light_0|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(4),
	datad => VCC,
	cin => \light_0|Add2~7\,
	combout => \light_0|Add2~8_combout\,
	cout => \light_0|Add2~9\);

-- Location: LCCOMB_X17_Y27_N10
\light_0|div_490196_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~9_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datad => \light_0|Add2~8_combout\,
	combout => \light_0|div_490196_counter~9_combout\);

-- Location: FF_X17_Y27_N11
\light_0|div_490196_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(4));

-- Location: LCCOMB_X16_Y28_N24
\light_0|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~10_combout\ = (\light_0|div_490196_counter\(5) & (!\light_0|Add2~9\)) # (!\light_0|div_490196_counter\(5) & ((\light_0|Add2~9\) # (GND)))
-- \light_0|Add2~11\ = CARRY((!\light_0|Add2~9\) # (!\light_0|div_490196_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(5),
	datad => VCC,
	cin => \light_0|Add2~9\,
	combout => \light_0|Add2~10_combout\,
	cout => \light_0|Add2~11\);

-- Location: LCCOMB_X15_Y27_N12
\light_0|div_490196_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~7_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_0|Equal0~5_combout\,
	datad => \light_0|Add2~10_combout\,
	combout => \light_0|div_490196_counter~7_combout\);

-- Location: FF_X15_Y27_N13
\light_0|div_490196_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(5));

-- Location: LCCOMB_X16_Y28_N26
\light_0|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~12_combout\ = (\light_0|div_490196_counter\(6) & (\light_0|Add2~11\ $ (GND))) # (!\light_0|div_490196_counter\(6) & (!\light_0|Add2~11\ & VCC))
-- \light_0|Add2~13\ = CARRY((\light_0|div_490196_counter\(6) & !\light_0|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(6),
	datad => VCC,
	cin => \light_0|Add2~11\,
	combout => \light_0|Add2~12_combout\,
	cout => \light_0|Add2~13\);

-- Location: FF_X16_Y28_N27
\light_0|div_490196_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|Add2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(6));

-- Location: LCCOMB_X16_Y28_N28
\light_0|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~14_combout\ = (\light_0|div_490196_counter\(7) & (!\light_0|Add2~13\)) # (!\light_0|div_490196_counter\(7) & ((\light_0|Add2~13\) # (GND)))
-- \light_0|Add2~15\ = CARRY((!\light_0|Add2~13\) # (!\light_0|div_490196_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(7),
	datad => VCC,
	cin => \light_0|Add2~13\,
	combout => \light_0|Add2~14_combout\,
	cout => \light_0|Add2~15\);

-- Location: LCCOMB_X16_Y27_N24
\light_0|div_490196_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~8_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datad => \light_0|Add2~14_combout\,
	combout => \light_0|div_490196_counter~8_combout\);

-- Location: FF_X16_Y27_N25
\light_0|div_490196_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(7));

-- Location: LCCOMB_X16_Y28_N30
\light_0|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~16_combout\ = (\light_0|div_490196_counter\(8) & (\light_0|Add2~15\ $ (GND))) # (!\light_0|div_490196_counter\(8) & (!\light_0|Add2~15\ & VCC))
-- \light_0|Add2~17\ = CARRY((\light_0|div_490196_counter\(8) & !\light_0|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(8),
	datad => VCC,
	cin => \light_0|Add2~15\,
	combout => \light_0|Add2~16_combout\,
	cout => \light_0|Add2~17\);

-- Location: FF_X16_Y28_N31
\light_0|div_490196_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|Add2~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(8));

-- Location: LCCOMB_X16_Y27_N0
\light_0|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~18_combout\ = (\light_0|div_490196_counter\(9) & (!\light_0|Add2~17\)) # (!\light_0|div_490196_counter\(9) & ((\light_0|Add2~17\) # (GND)))
-- \light_0|Add2~19\ = CARRY((!\light_0|Add2~17\) # (!\light_0|div_490196_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(9),
	datad => VCC,
	cin => \light_0|Add2~17\,
	combout => \light_0|Add2~18_combout\,
	cout => \light_0|Add2~19\);

-- Location: LCCOMB_X17_Y27_N4
\light_0|div_490196_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~3_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datac => \light_0|Add2~18_combout\,
	combout => \light_0|div_490196_counter~3_combout\);

-- Location: FF_X17_Y27_N5
\light_0|div_490196_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(9));

-- Location: LCCOMB_X16_Y27_N2
\light_0|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~20_combout\ = (\light_0|div_490196_counter\(10) & (\light_0|Add2~19\ $ (GND))) # (!\light_0|div_490196_counter\(10) & (!\light_0|Add2~19\ & VCC))
-- \light_0|Add2~21\ = CARRY((\light_0|div_490196_counter\(10) & !\light_0|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(10),
	datad => VCC,
	cin => \light_0|Add2~19\,
	combout => \light_0|Add2~20_combout\,
	cout => \light_0|Add2~21\);

-- Location: FF_X16_Y27_N3
\light_0|div_490196_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_0|Add2~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(10));

-- Location: LCCOMB_X16_Y27_N4
\light_0|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~22_combout\ = (\light_0|div_490196_counter\(11) & (!\light_0|Add2~21\)) # (!\light_0|div_490196_counter\(11) & ((\light_0|Add2~21\) # (GND)))
-- \light_0|Add2~23\ = CARRY((!\light_0|Add2~21\) # (!\light_0|div_490196_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(11),
	datad => VCC,
	cin => \light_0|Add2~21\,
	combout => \light_0|Add2~22_combout\,
	cout => \light_0|Add2~23\);

-- Location: LCCOMB_X17_Y27_N6
\light_0|div_490196_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~6_combout\ = (\light_0|Add2~22_combout\ & !\light_0|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add2~22_combout\,
	datac => \light_0|Equal0~5_combout\,
	combout => \light_0|div_490196_counter~6_combout\);

-- Location: FF_X17_Y27_N7
\light_0|div_490196_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(11));

-- Location: LCCOMB_X16_Y27_N6
\light_0|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~24_combout\ = (\light_0|div_490196_counter\(12) & (\light_0|Add2~23\ $ (GND))) # (!\light_0|div_490196_counter\(12) & (!\light_0|Add2~23\ & VCC))
-- \light_0|Add2~25\ = CARRY((\light_0|div_490196_counter\(12) & !\light_0|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(12),
	datad => VCC,
	cin => \light_0|Add2~23\,
	combout => \light_0|Add2~24_combout\,
	cout => \light_0|Add2~25\);

-- Location: LCCOMB_X17_Y27_N20
\light_0|div_490196_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~5_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datab => \light_0|Add2~24_combout\,
	combout => \light_0|div_490196_counter~5_combout\);

-- Location: FF_X17_Y27_N21
\light_0|div_490196_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(12));

-- Location: LCCOMB_X16_Y27_N8
\light_0|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~26_combout\ = (\light_0|div_490196_counter\(13) & (!\light_0|Add2~25\)) # (!\light_0|div_490196_counter\(13) & ((\light_0|Add2~25\) # (GND)))
-- \light_0|Add2~27\ = CARRY((!\light_0|Add2~25\) # (!\light_0|div_490196_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(13),
	datad => VCC,
	cin => \light_0|Add2~25\,
	combout => \light_0|Add2~26_combout\,
	cout => \light_0|Add2~27\);

-- Location: LCCOMB_X16_Y27_N26
\light_0|div_490196_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~4_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datab => \light_0|Add2~26_combout\,
	combout => \light_0|div_490196_counter~4_combout\);

-- Location: FF_X16_Y27_N27
\light_0|div_490196_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(13));

-- Location: LCCOMB_X16_Y27_N10
\light_0|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~28_combout\ = (\light_0|div_490196_counter\(14) & (\light_0|Add2~27\ $ (GND))) # (!\light_0|div_490196_counter\(14) & (!\light_0|Add2~27\ & VCC))
-- \light_0|Add2~29\ = CARRY((\light_0|div_490196_counter\(14) & !\light_0|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(14),
	datad => VCC,
	cin => \light_0|Add2~27\,
	combout => \light_0|Add2~28_combout\,
	cout => \light_0|Add2~29\);

-- Location: LCCOMB_X17_Y27_N18
\light_0|div_490196_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~12_combout\ = (\light_0|Add2~28_combout\ & !\light_0|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add2~28_combout\,
	datac => \light_0|Equal0~5_combout\,
	combout => \light_0|div_490196_counter~12_combout\);

-- Location: FF_X17_Y27_N19
\light_0|div_490196_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(14));

-- Location: LCCOMB_X16_Y27_N12
\light_0|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~30_combout\ = (\light_0|div_490196_counter\(15) & (!\light_0|Add2~29\)) # (!\light_0|div_490196_counter\(15) & ((\light_0|Add2~29\) # (GND)))
-- \light_0|Add2~31\ = CARRY((!\light_0|Add2~29\) # (!\light_0|div_490196_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(15),
	datad => VCC,
	cin => \light_0|Add2~29\,
	combout => \light_0|Add2~30_combout\,
	cout => \light_0|Add2~31\);

-- Location: FF_X16_Y27_N13
\light_0|div_490196_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|Add2~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(15));

-- Location: LCCOMB_X16_Y27_N14
\light_0|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~32_combout\ = (\light_0|div_490196_counter\(16) & (\light_0|Add2~31\ $ (GND))) # (!\light_0|div_490196_counter\(16) & (!\light_0|Add2~31\ & VCC))
-- \light_0|Add2~33\ = CARRY((\light_0|div_490196_counter\(16) & !\light_0|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|div_490196_counter\(16),
	datad => VCC,
	cin => \light_0|Add2~31\,
	combout => \light_0|Add2~32_combout\,
	cout => \light_0|Add2~33\);

-- Location: LCCOMB_X17_Y27_N28
\light_0|div_490196_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~1_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datad => \light_0|Add2~32_combout\,
	combout => \light_0|div_490196_counter~1_combout\);

-- Location: FF_X17_Y27_N29
\light_0|div_490196_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(16));

-- Location: LCCOMB_X16_Y27_N16
\light_0|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~34_combout\ = (\light_0|div_490196_counter\(17) & (!\light_0|Add2~33\)) # (!\light_0|div_490196_counter\(17) & ((\light_0|Add2~33\) # (GND)))
-- \light_0|Add2~35\ = CARRY((!\light_0|Add2~33\) # (!\light_0|div_490196_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(17),
	datad => VCC,
	cin => \light_0|Add2~33\,
	combout => \light_0|Add2~34_combout\,
	cout => \light_0|Add2~35\);

-- Location: LCCOMB_X17_Y27_N30
\light_0|div_490196_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~0_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datac => \light_0|Add2~34_combout\,
	combout => \light_0|div_490196_counter~0_combout\);

-- Location: FF_X17_Y27_N31
\light_0|div_490196_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(17));

-- Location: LCCOMB_X17_Y27_N8
\light_0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~1_combout\ = (\light_0|div_490196_counter\(17) & (\light_0|div_490196_counter\(16) & (\light_0|div_490196_counter\(14) & !\light_0|div_490196_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(17),
	datab => \light_0|div_490196_counter\(16),
	datac => \light_0|div_490196_counter\(14),
	datad => \light_0|div_490196_counter\(15),
	combout => \light_0|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y27_N16
\light_0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~0_combout\ = (\light_0|div_490196_counter\(12) & (\light_0|div_490196_counter\(18) & (\light_0|div_490196_counter\(13) & \light_0|div_490196_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(12),
	datab => \light_0|div_490196_counter\(18),
	datac => \light_0|div_490196_counter\(13),
	datad => \light_0|div_490196_counter\(11),
	combout => \light_0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y27_N22
\light_0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~2_combout\ = (!\light_0|div_490196_counter\(8) & (\light_0|div_490196_counter\(7) & (\light_0|div_490196_counter\(9) & !\light_0|div_490196_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(8),
	datab => \light_0|div_490196_counter\(7),
	datac => \light_0|div_490196_counter\(9),
	datad => \light_0|div_490196_counter\(10),
	combout => \light_0|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y27_N28
\light_0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~3_combout\ = (\light_0|div_490196_counter\(5) & (\light_0|div_490196_counter\(4) & (!\light_0|div_490196_counter\(3) & !\light_0|div_490196_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(5),
	datab => \light_0|div_490196_counter\(4),
	datac => \light_0|div_490196_counter\(3),
	datad => \light_0|div_490196_counter\(6),
	combout => \light_0|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y27_N26
\light_0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~4_combout\ = (\light_0|Equal0~1_combout\ & (\light_0|Equal0~0_combout\ & (\light_0|Equal0~2_combout\ & \light_0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~1_combout\,
	datab => \light_0|Equal0~0_combout\,
	datac => \light_0|Equal0~2_combout\,
	datad => \light_0|Equal0~3_combout\,
	combout => \light_0|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y27_N24
\light_0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal0~5_combout\ = (\light_0|div_490196_counter\(0) & (!\light_0|div_490196_counter\(1) & (\light_0|Equal0~4_combout\ & \light_0|div_490196_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(0),
	datab => \light_0|div_490196_counter\(1),
	datac => \light_0|Equal0~4_combout\,
	datad => \light_0|div_490196_counter\(2),
	combout => \light_0|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y27_N18
\light_0|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add2~36_combout\ = \light_0|Add2~35\ $ (!\light_0|div_490196_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_0|div_490196_counter\(18),
	cin => \light_0|Add2~35\,
	combout => \light_0|Add2~36_combout\);

-- Location: LCCOMB_X17_Y27_N2
\light_0|div_490196_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|div_490196_counter~2_combout\ = (!\light_0|Equal0~5_combout\ & \light_0|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal0~5_combout\,
	datad => \light_0|Add2~36_combout\,
	combout => \light_0|div_490196_counter~2_combout\);

-- Location: FF_X17_Y27_N3
\light_0|div_490196_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_0|div_490196_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|div_490196_counter\(18));

-- Location: LCCOMB_X16_Y27_N28
\light_0|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan2~0_combout\ = (!\light_0|div_490196_counter\(18) & (((!\light_0|div_490196_counter\(17)) # (!\light_0|div_490196_counter\(16))) # (!\light_0|div_490196_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(15),
	datab => \light_0|div_490196_counter\(16),
	datac => \light_0|div_490196_counter\(17),
	datad => \light_0|div_490196_counter\(18),
	combout => \light_0|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y27_N14
\light_0|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan2~2_combout\ = (\light_0|div_490196_counter\(4)) # ((\light_0|div_490196_counter\(3) & ((\light_0|div_490196_counter\(1)) # (\light_0|div_490196_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(4),
	datab => \light_0|div_490196_counter\(1),
	datac => \light_0|div_490196_counter\(3),
	datad => \light_0|div_490196_counter\(2),
	combout => \light_0|LessThan2~2_combout\);

-- Location: LCCOMB_X15_Y27_N30
\light_0|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan2~3_combout\ = (\light_0|div_490196_counter\(7)) # ((\light_0|div_490196_counter\(5) & (\light_0|LessThan2~2_combout\ & \light_0|div_490196_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(5),
	datab => \light_0|div_490196_counter\(7),
	datac => \light_0|LessThan2~2_combout\,
	datad => \light_0|div_490196_counter\(6),
	combout => \light_0|LessThan2~3_combout\);

-- Location: LCCOMB_X16_Y27_N22
\light_0|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan2~1_combout\ = (((!\light_0|div_490196_counter\(11)) # (!\light_0|div_490196_counter\(12))) # (!\light_0|div_490196_counter\(10))) # (!\light_0|div_490196_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(13),
	datab => \light_0|div_490196_counter\(10),
	datac => \light_0|div_490196_counter\(12),
	datad => \light_0|div_490196_counter\(11),
	combout => \light_0|LessThan2~1_combout\);

-- Location: LCCOMB_X16_Y27_N30
\light_0|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan2~4_combout\ = (\light_0|LessThan2~1_combout\) # ((!\light_0|div_490196_counter\(9) & ((!\light_0|LessThan2~3_combout\) # (!\light_0|div_490196_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(8),
	datab => \light_0|LessThan2~3_combout\,
	datac => \light_0|LessThan2~1_combout\,
	datad => \light_0|div_490196_counter\(9),
	combout => \light_0|LessThan2~4_combout\);

-- Location: LCCOMB_X16_Y27_N20
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\light_0|LessThan2~0_combout\) # ((!\light_0|div_490196_counter\(18) & (\light_0|LessThan2~4_combout\ & !\light_0|div_490196_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|div_490196_counter\(18),
	datab => \light_0|LessThan2~0_combout\,
	datac => \light_0|LessThan2~4_combout\,
	datad => \light_0|div_490196_counter\(14),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X3_Y24_N6
\light_0|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~0_combout\ = \light_0|pwm_num\(0) $ (VCC)
-- \light_0|Add6~1\ = CARRY(\light_0|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(0),
	datad => VCC,
	combout => \light_0|Add6~0_combout\,
	cout => \light_0|Add6~1\);

-- Location: LCCOMB_X2_Y24_N12
\light_0|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~0_combout\ = \light_0|pwm_num\(0) $ (VCC)
-- \light_0|Add5~1\ = CARRY(\light_0|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(0),
	datad => VCC,
	combout => \light_0|Add5~0_combout\,
	cout => \light_0|Add5~1\);

-- Location: LCCOMB_X1_Y23_N0
\light_0|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~0_combout\ = \light_0|led_counter\(0) $ (VCC)
-- \light_0|Add3~1\ = CARRY(\light_0|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(0),
	datad => VCC,
	combout => \light_0|Add3~0_combout\,
	cout => \light_0|Add3~1\);

-- Location: FF_X1_Y23_N1
\light_0|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(0));

-- Location: LCCOMB_X1_Y23_N2
\light_0|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~2_combout\ = (\light_0|led_counter\(1) & (!\light_0|Add3~1\)) # (!\light_0|led_counter\(1) & ((\light_0|Add3~1\) # (GND)))
-- \light_0|Add3~3\ = CARRY((!\light_0|Add3~1\) # (!\light_0|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(1),
	datad => VCC,
	cin => \light_0|Add3~1\,
	combout => \light_0|Add3~2_combout\,
	cout => \light_0|Add3~3\);

-- Location: FF_X1_Y23_N3
\light_0|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(1));

-- Location: LCCOMB_X1_Y23_N4
\light_0|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~4_combout\ = (\light_0|led_counter\(2) & (\light_0|Add3~3\ $ (GND))) # (!\light_0|led_counter\(2) & (!\light_0|Add3~3\ & VCC))
-- \light_0|Add3~5\ = CARRY((\light_0|led_counter\(2) & !\light_0|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(2),
	datad => VCC,
	cin => \light_0|Add3~3\,
	combout => \light_0|Add3~4_combout\,
	cout => \light_0|Add3~5\);

-- Location: LCCOMB_X1_Y23_N28
\light_0|led_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|led_counter~2_combout\ = (!\light_0|Equal1~2_combout\ & \light_0|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal1~2_combout\,
	datac => \light_0|Add3~4_combout\,
	combout => \light_0|led_counter~2_combout\);

-- Location: FF_X1_Y23_N29
\light_0|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|led_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(2));

-- Location: LCCOMB_X1_Y23_N6
\light_0|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~6_combout\ = (\light_0|led_counter\(3) & (!\light_0|Add3~5\)) # (!\light_0|led_counter\(3) & ((\light_0|Add3~5\) # (GND)))
-- \light_0|Add3~7\ = CARRY((!\light_0|Add3~5\) # (!\light_0|led_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(3),
	datad => VCC,
	cin => \light_0|Add3~5\,
	combout => \light_0|Add3~6_combout\,
	cout => \light_0|Add3~7\);

-- Location: FF_X1_Y23_N7
\light_0|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(3));

-- Location: LCCOMB_X1_Y23_N8
\light_0|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~8_combout\ = (\light_0|led_counter\(4) & (\light_0|Add3~7\ $ (GND))) # (!\light_0|led_counter\(4) & (!\light_0|Add3~7\ & VCC))
-- \light_0|Add3~9\ = CARRY((\light_0|led_counter\(4) & !\light_0|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(4),
	datad => VCC,
	cin => \light_0|Add3~7\,
	combout => \light_0|Add3~8_combout\,
	cout => \light_0|Add3~9\);

-- Location: FF_X1_Y23_N9
\light_0|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(4));

-- Location: LCCOMB_X1_Y23_N10
\light_0|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~10_combout\ = (\light_0|led_counter\(5) & (!\light_0|Add3~9\)) # (!\light_0|led_counter\(5) & ((\light_0|Add3~9\) # (GND)))
-- \light_0|Add3~11\ = CARRY((!\light_0|Add3~9\) # (!\light_0|led_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(5),
	datad => VCC,
	cin => \light_0|Add3~9\,
	combout => \light_0|Add3~10_combout\,
	cout => \light_0|Add3~11\);

-- Location: LCCOMB_X1_Y23_N26
\light_0|led_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|led_counter~1_combout\ = (!\light_0|Equal1~2_combout\ & \light_0|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_0|Equal1~2_combout\,
	datad => \light_0|Add3~10_combout\,
	combout => \light_0|led_counter~1_combout\);

-- Location: FF_X1_Y23_N27
\light_0|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|led_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(5));

-- Location: LCCOMB_X1_Y23_N12
\light_0|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~12_combout\ = (\light_0|led_counter\(6) & (\light_0|Add3~11\ $ (GND))) # (!\light_0|led_counter\(6) & (!\light_0|Add3~11\ & VCC))
-- \light_0|Add3~13\ = CARRY((\light_0|led_counter\(6) & !\light_0|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(6),
	datad => VCC,
	cin => \light_0|Add3~11\,
	combout => \light_0|Add3~12_combout\,
	cout => \light_0|Add3~13\);

-- Location: LCCOMB_X1_Y23_N24
\light_0|led_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|led_counter~0_combout\ = (!\light_0|Equal1~2_combout\ & \light_0|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_0|Equal1~2_combout\,
	datad => \light_0|Add3~12_combout\,
	combout => \light_0|led_counter~0_combout\);

-- Location: FF_X1_Y23_N25
\light_0|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|led_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(6));

-- Location: LCCOMB_X2_Y23_N4
\light_0|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal1~0_combout\ = (\light_0|led_counter\(5) & (\light_0|led_counter\(9) & (\light_0|led_counter\(6) & \light_0|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(5),
	datab => \light_0|led_counter\(9),
	datac => \light_0|led_counter\(6),
	datad => \light_0|led_counter\(1),
	combout => \light_0|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\light_0|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~14_combout\ = (\light_0|led_counter\(7) & (!\light_0|Add3~13\)) # (!\light_0|led_counter\(7) & ((\light_0|Add3~13\) # (GND)))
-- \light_0|Add3~15\ = CARRY((!\light_0|Add3~13\) # (!\light_0|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(7),
	datad => VCC,
	cin => \light_0|Add3~13\,
	combout => \light_0|Add3~14_combout\,
	cout => \light_0|Add3~15\);

-- Location: FF_X1_Y23_N15
\light_0|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(7));

-- Location: LCCOMB_X1_Y23_N16
\light_0|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~16_combout\ = (\light_0|led_counter\(8) & (\light_0|Add3~15\ $ (GND))) # (!\light_0|led_counter\(8) & (!\light_0|Add3~15\ & VCC))
-- \light_0|Add3~17\ = CARRY((\light_0|led_counter\(8) & !\light_0|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(8),
	datad => VCC,
	cin => \light_0|Add3~15\,
	combout => \light_0|Add3~16_combout\,
	cout => \light_0|Add3~17\);

-- Location: FF_X1_Y23_N17
\light_0|led_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|Add3~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(8));

-- Location: LCCOMB_X1_Y23_N20
\light_0|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal1~1_combout\ = (!\light_0|led_counter\(3) & (!\light_0|led_counter\(7) & (!\light_0|led_counter\(4) & !\light_0|led_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(3),
	datab => \light_0|led_counter\(7),
	datac => \light_0|led_counter\(4),
	datad => \light_0|led_counter\(8),
	combout => \light_0|Equal1~1_combout\);

-- Location: LCCOMB_X1_Y23_N30
\light_0|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal1~2_combout\ = (\light_0|Equal1~0_combout\ & (!\light_0|led_counter\(2) & (\light_0|led_counter\(0) & \light_0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Equal1~0_combout\,
	datab => \light_0|led_counter\(2),
	datac => \light_0|led_counter\(0),
	datad => \light_0|Equal1~1_combout\,
	combout => \light_0|Equal1~2_combout\);

-- Location: LCCOMB_X1_Y23_N18
\light_0|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add3~18_combout\ = \light_0|led_counter\(9) $ (\light_0|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(9),
	cin => \light_0|Add3~17\,
	combout => \light_0|Add3~18_combout\);

-- Location: LCCOMB_X1_Y23_N22
\light_0|led_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|led_counter~3_combout\ = (!\light_0|Equal1~2_combout\ & \light_0|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_0|Equal1~2_combout\,
	datad => \light_0|Add3~18_combout\,
	combout => \light_0|led_counter~3_combout\);

-- Location: FF_X1_Y23_N23
\light_0|led_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|led_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|led_counter\(9));

-- Location: LCCOMB_X1_Y24_N28
\light_0|pwm_num[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num[5]~0_combout\ = (\light_0|led_counter\(7) & (\light_0|led_counter\(6) & (\light_0|led_counter\(5) & \light_0|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(7),
	datab => \light_0|led_counter\(6),
	datac => \light_0|led_counter\(5),
	datad => \light_0|led_counter\(1),
	combout => \light_0|pwm_num[5]~0_combout\);

-- Location: LCCOMB_X1_Y24_N6
\light_0|pwm_num[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num[5]~1_combout\ = (\light_0|led_counter\(2) & (\light_0|led_counter\(3) & (\light_0|led_counter\(4) & \light_0|pwm_num[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(2),
	datab => \light_0|led_counter\(3),
	datac => \light_0|led_counter\(4),
	datad => \light_0|pwm_num[5]~0_combout\,
	combout => \light_0|pwm_num[5]~1_combout\);

-- Location: LCCOMB_X1_Y24_N4
\light_0|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan3~0_combout\ = (!\light_0|led_counter\(9) & (!\light_0|led_counter\(8) & ((!\light_0|pwm_num[5]~1_combout\) # (!\light_0|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(9),
	datab => \light_0|led_counter\(0),
	datac => \light_0|led_counter\(8),
	datad => \light_0|pwm_num[5]~1_combout\,
	combout => \light_0|LessThan3~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\light_0|pwm_num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~2_combout\ = (\light_0|led_counter\(9)) # ((\light_0|led_counter\(8) & ((\light_0|pwm_num[5]~1_combout\))) # (!\light_0|led_counter\(8) & ((!\light_0|pwm_num[5]~1_combout\) # (!\light_0|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(9),
	datab => \light_0|led_counter\(0),
	datac => \light_0|led_counter\(8),
	datad => \light_0|pwm_num[5]~1_combout\,
	combout => \light_0|pwm_num~2_combout\);

-- Location: LCCOMB_X2_Y24_N6
\light_0|pwm_num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~10_combout\ = (\light_0|Add6~0_combout\ & (((\light_0|Add5~0_combout\ & \light_0|LessThan3~0_combout\)) # (!\light_0|pwm_num~2_combout\))) # (!\light_0|Add6~0_combout\ & (\light_0|Add5~0_combout\ & (\light_0|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add6~0_combout\,
	datab => \light_0|Add5~0_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~10_combout\);

-- Location: LCCOMB_X1_Y24_N16
\light_0|gear_counter[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|gear_counter[2]~0_combout\ = \light_0|gear_counter\(2) $ (((\light_0|led_counter\(0) & \light_0|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_0|led_counter\(0),
	datac => \light_0|gear_counter\(2),
	datad => \light_0|led_counter\(1),
	combout => \light_0|gear_counter[2]~0_combout\);

-- Location: FF_X1_Y24_N17
\light_0|gear_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|gear_counter[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|gear_counter\(2));

-- Location: LCCOMB_X1_Y24_N30
\light_0|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Equal3~0_combout\ = (!\light_0|led_counter\(1) & (!\light_0|gear_counter\(2) & !\light_0|led_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|led_counter\(1),
	datab => \light_0|gear_counter\(2),
	datad => \light_0|led_counter\(0),
	combout => \light_0|Equal3~0_combout\);

-- Location: FF_X2_Y24_N7
\light_0|pwm_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~10_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(0));

-- Location: LCCOMB_X2_Y24_N14
\light_0|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~2_combout\ = (\light_0|pwm_num\(1) & (!\light_0|Add5~1\)) # (!\light_0|pwm_num\(1) & ((\light_0|Add5~1\) # (GND)))
-- \light_0|Add5~3\ = CARRY((!\light_0|Add5~1\) # (!\light_0|pwm_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(1),
	datad => VCC,
	cin => \light_0|Add5~1\,
	combout => \light_0|Add5~2_combout\,
	cout => \light_0|Add5~3\);

-- Location: LCCOMB_X3_Y24_N8
\light_0|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~2_combout\ = (\light_0|pwm_num\(1) & (\light_0|Add6~1\ & VCC)) # (!\light_0|pwm_num\(1) & (!\light_0|Add6~1\))
-- \light_0|Add6~3\ = CARRY((!\light_0|pwm_num\(1) & !\light_0|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(1),
	datad => VCC,
	cin => \light_0|Add6~1\,
	combout => \light_0|Add6~2_combout\,
	cout => \light_0|Add6~3\);

-- Location: LCCOMB_X2_Y24_N0
\light_0|pwm_num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~9_combout\ = (\light_0|Add5~2_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~2_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~2_combout\ & (\light_0|Add6~2_combout\ & ((!\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~2_combout\,
	datab => \light_0|Add6~2_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~9_combout\);

-- Location: FF_X2_Y24_N1
\light_0|pwm_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~9_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(1));

-- Location: LCCOMB_X2_Y24_N16
\light_0|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~4_combout\ = (\light_0|pwm_num\(2) & (\light_0|Add5~3\ $ (GND))) # (!\light_0|pwm_num\(2) & (!\light_0|Add5~3\ & VCC))
-- \light_0|Add5~5\ = CARRY((\light_0|pwm_num\(2) & !\light_0|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(2),
	datad => VCC,
	cin => \light_0|Add5~3\,
	combout => \light_0|Add5~4_combout\,
	cout => \light_0|Add5~5\);

-- Location: LCCOMB_X3_Y24_N10
\light_0|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~4_combout\ = (\light_0|pwm_num\(2) & ((GND) # (!\light_0|Add6~3\))) # (!\light_0|pwm_num\(2) & (\light_0|Add6~3\ $ (GND)))
-- \light_0|Add6~5\ = CARRY((\light_0|pwm_num\(2)) # (!\light_0|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(2),
	datad => VCC,
	cin => \light_0|Add6~3\,
	combout => \light_0|Add6~4_combout\,
	cout => \light_0|Add6~5\);

-- Location: LCCOMB_X2_Y24_N30
\light_0|pwm_num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~8_combout\ = (\light_0|Add5~4_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~4_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~4_combout\ & (\light_0|Add6~4_combout\ & ((!\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~4_combout\,
	datab => \light_0|Add6~4_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~8_combout\);

-- Location: FF_X2_Y24_N31
\light_0|pwm_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~8_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(2));

-- Location: LCCOMB_X2_Y24_N18
\light_0|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~6_combout\ = (\light_0|pwm_num\(3) & (!\light_0|Add5~5\)) # (!\light_0|pwm_num\(3) & ((\light_0|Add5~5\) # (GND)))
-- \light_0|Add5~7\ = CARRY((!\light_0|Add5~5\) # (!\light_0|pwm_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(3),
	datad => VCC,
	cin => \light_0|Add5~5\,
	combout => \light_0|Add5~6_combout\,
	cout => \light_0|Add5~7\);

-- Location: LCCOMB_X3_Y24_N12
\light_0|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~6_combout\ = (\light_0|pwm_num\(3) & (\light_0|Add6~5\ & VCC)) # (!\light_0|pwm_num\(3) & (!\light_0|Add6~5\))
-- \light_0|Add6~7\ = CARRY((!\light_0|pwm_num\(3) & !\light_0|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(3),
	datad => VCC,
	cin => \light_0|Add6~5\,
	combout => \light_0|Add6~6_combout\,
	cout => \light_0|Add6~7\);

-- Location: LCCOMB_X2_Y24_N8
\light_0|pwm_num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~7_combout\ = (\light_0|Add5~6_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~6_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~6_combout\ & (\light_0|Add6~6_combout\ & ((!\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~6_combout\,
	datab => \light_0|Add6~6_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~7_combout\);

-- Location: FF_X2_Y24_N9
\light_0|pwm_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~7_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(3));

-- Location: LCCOMB_X2_Y24_N20
\light_0|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~8_combout\ = (\light_0|pwm_num\(4) & (\light_0|Add5~7\ $ (GND))) # (!\light_0|pwm_num\(4) & (!\light_0|Add5~7\ & VCC))
-- \light_0|Add5~9\ = CARRY((\light_0|pwm_num\(4) & !\light_0|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(4),
	datad => VCC,
	cin => \light_0|Add5~7\,
	combout => \light_0|Add5~8_combout\,
	cout => \light_0|Add5~9\);

-- Location: LCCOMB_X3_Y24_N14
\light_0|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~8_combout\ = (\light_0|pwm_num\(4) & ((GND) # (!\light_0|Add6~7\))) # (!\light_0|pwm_num\(4) & (\light_0|Add6~7\ $ (GND)))
-- \light_0|Add6~9\ = CARRY((\light_0|pwm_num\(4)) # (!\light_0|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(4),
	datad => VCC,
	cin => \light_0|Add6~7\,
	combout => \light_0|Add6~8_combout\,
	cout => \light_0|Add6~9\);

-- Location: LCCOMB_X2_Y24_N2
\light_0|pwm_num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~6_combout\ = (\light_0|Add5~8_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~8_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~8_combout\ & (\light_0|Add6~8_combout\ & ((!\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~8_combout\,
	datab => \light_0|Add6~8_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~6_combout\);

-- Location: FF_X2_Y24_N3
\light_0|pwm_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~6_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(4));

-- Location: LCCOMB_X2_Y24_N22
\light_0|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~10_combout\ = (\light_0|pwm_num\(5) & (!\light_0|Add5~9\)) # (!\light_0|pwm_num\(5) & ((\light_0|Add5~9\) # (GND)))
-- \light_0|Add5~11\ = CARRY((!\light_0|Add5~9\) # (!\light_0|pwm_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(5),
	datad => VCC,
	cin => \light_0|Add5~9\,
	combout => \light_0|Add5~10_combout\,
	cout => \light_0|Add5~11\);

-- Location: LCCOMB_X3_Y24_N16
\light_0|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~10_combout\ = (\light_0|pwm_num\(5) & (\light_0|Add6~9\ & VCC)) # (!\light_0|pwm_num\(5) & (!\light_0|Add6~9\))
-- \light_0|Add6~11\ = CARRY((!\light_0|pwm_num\(5) & !\light_0|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_0|pwm_num\(5),
	datad => VCC,
	cin => \light_0|Add6~9\,
	combout => \light_0|Add6~10_combout\,
	cout => \light_0|Add6~11\);

-- Location: LCCOMB_X2_Y24_N4
\light_0|pwm_num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~5_combout\ = (\light_0|Add5~10_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~10_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~10_combout\ & (\light_0|Add6~10_combout\ & ((!\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~10_combout\,
	datab => \light_0|Add6~10_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~5_combout\);

-- Location: FF_X2_Y24_N5
\light_0|pwm_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~5_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(5));

-- Location: LCCOMB_X2_Y24_N24
\light_0|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~12_combout\ = (\light_0|pwm_num\(6) & (\light_0|Add5~11\ $ (GND))) # (!\light_0|pwm_num\(6) & (!\light_0|Add5~11\ & VCC))
-- \light_0|Add5~13\ = CARRY((\light_0|pwm_num\(6) & !\light_0|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(6),
	datad => VCC,
	cin => \light_0|Add5~11\,
	combout => \light_0|Add5~12_combout\,
	cout => \light_0|Add5~13\);

-- Location: LCCOMB_X3_Y24_N18
\light_0|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~12_combout\ = (\light_0|pwm_num\(6) & ((GND) # (!\light_0|Add6~11\))) # (!\light_0|pwm_num\(6) & (\light_0|Add6~11\ $ (GND)))
-- \light_0|Add6~13\ = CARRY((\light_0|pwm_num\(6)) # (!\light_0|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(6),
	datad => VCC,
	cin => \light_0|Add6~11\,
	combout => \light_0|Add6~12_combout\,
	cout => \light_0|Add6~13\);

-- Location: LCCOMB_X2_Y24_N10
\light_0|pwm_num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~4_combout\ = (\light_0|Add5~12_combout\ & ((\light_0|LessThan3~0_combout\) # ((!\light_0|pwm_num~2_combout\ & \light_0|Add6~12_combout\)))) # (!\light_0|Add5~12_combout\ & (!\light_0|pwm_num~2_combout\ & ((\light_0|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~12_combout\,
	datab => \light_0|pwm_num~2_combout\,
	datac => \light_0|LessThan3~0_combout\,
	datad => \light_0|Add6~12_combout\,
	combout => \light_0|pwm_num~4_combout\);

-- Location: FF_X2_Y24_N11
\light_0|pwm_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~4_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(6));

-- Location: LCCOMB_X2_Y24_N26
\light_0|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add5~14_combout\ = \light_0|Add5~13\ $ (\light_0|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_0|pwm_num\(7),
	cin => \light_0|Add5~13\,
	combout => \light_0|Add5~14_combout\);

-- Location: LCCOMB_X3_Y24_N20
\light_0|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|Add6~14_combout\ = \light_0|Add6~13\ $ (!\light_0|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_0|pwm_num\(7),
	cin => \light_0|Add6~13\,
	combout => \light_0|Add6~14_combout\);

-- Location: LCCOMB_X2_Y24_N28
\light_0|pwm_num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|pwm_num~3_combout\ = (\light_0|Add5~14_combout\ & ((\light_0|LessThan3~0_combout\) # ((\light_0|Add6~14_combout\ & !\light_0|pwm_num~2_combout\)))) # (!\light_0|Add5~14_combout\ & (((\light_0|Add6~14_combout\ & !\light_0|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|Add5~14_combout\,
	datab => \light_0|LessThan3~0_combout\,
	datac => \light_0|Add6~14_combout\,
	datad => \light_0|pwm_num~2_combout\,
	combout => \light_0|pwm_num~3_combout\);

-- Location: FF_X2_Y24_N29
\light_0|pwm_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \light_0|pwm_num~3_combout\,
	clrn => \reset~input_o\,
	ena => \light_0|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_0|pwm_num\(7));

-- Location: LCCOMB_X4_Y24_N2
\light_0|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~1_cout\ = CARRY((\light_0|pwm_counter\(0) & !\light_0|pwm_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(0),
	datab => \light_0|pwm_num\(0),
	datad => VCC,
	cout => \light_0|LessThan5~1_cout\);

-- Location: LCCOMB_X4_Y24_N4
\light_0|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~3_cout\ = CARRY((\light_0|pwm_num\(1) & ((!\light_0|LessThan5~1_cout\) # (!\light_0|pwm_counter\(1)))) # (!\light_0|pwm_num\(1) & (!\light_0|pwm_counter\(1) & !\light_0|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(1),
	datab => \light_0|pwm_counter\(1),
	datad => VCC,
	cin => \light_0|LessThan5~1_cout\,
	cout => \light_0|LessThan5~3_cout\);

-- Location: LCCOMB_X4_Y24_N6
\light_0|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~5_cout\ = CARRY((\light_0|pwm_num\(2) & (\light_0|pwm_counter\(2) & !\light_0|LessThan5~3_cout\)) # (!\light_0|pwm_num\(2) & ((\light_0|pwm_counter\(2)) # (!\light_0|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(2),
	datab => \light_0|pwm_counter\(2),
	datad => VCC,
	cin => \light_0|LessThan5~3_cout\,
	cout => \light_0|LessThan5~5_cout\);

-- Location: LCCOMB_X4_Y24_N8
\light_0|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~7_cout\ = CARRY((\light_0|pwm_counter\(3) & (\light_0|pwm_num\(3) & !\light_0|LessThan5~5_cout\)) # (!\light_0|pwm_counter\(3) & ((\light_0|pwm_num\(3)) # (!\light_0|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(3),
	datab => \light_0|pwm_num\(3),
	datad => VCC,
	cin => \light_0|LessThan5~5_cout\,
	cout => \light_0|LessThan5~7_cout\);

-- Location: LCCOMB_X4_Y24_N10
\light_0|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~9_cout\ = CARRY((\light_0|pwm_counter\(4) & ((!\light_0|LessThan5~7_cout\) # (!\light_0|pwm_num\(4)))) # (!\light_0|pwm_counter\(4) & (!\light_0|pwm_num\(4) & !\light_0|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(4),
	datab => \light_0|pwm_num\(4),
	datad => VCC,
	cin => \light_0|LessThan5~7_cout\,
	cout => \light_0|LessThan5~9_cout\);

-- Location: LCCOMB_X4_Y24_N12
\light_0|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~11_cout\ = CARRY((\light_0|pwm_counter\(5) & (\light_0|pwm_num\(5) & !\light_0|LessThan5~9_cout\)) # (!\light_0|pwm_counter\(5) & ((\light_0|pwm_num\(5)) # (!\light_0|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(5),
	datab => \light_0|pwm_num\(5),
	datad => VCC,
	cin => \light_0|LessThan5~9_cout\,
	cout => \light_0|LessThan5~11_cout\);

-- Location: LCCOMB_X4_Y24_N14
\light_0|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~13_cout\ = CARRY((\light_0|pwm_num\(6) & (\light_0|pwm_counter\(6) & !\light_0|LessThan5~11_cout\)) # (!\light_0|pwm_num\(6) & ((\light_0|pwm_counter\(6)) # (!\light_0|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_num\(6),
	datab => \light_0|pwm_counter\(6),
	datad => VCC,
	cin => \light_0|LessThan5~11_cout\,
	cout => \light_0|LessThan5~13_cout\);

-- Location: LCCOMB_X4_Y24_N16
\light_0|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_0|LessThan5~14_combout\ = (\light_0|pwm_counter\(7) & ((\light_0|LessThan5~13_cout\) # (!\light_0|pwm_num\(7)))) # (!\light_0|pwm_counter\(7) & (!\light_0|pwm_num\(7) & \light_0|LessThan5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_0|pwm_counter\(7),
	datab => \light_0|pwm_num\(7),
	cin => \light_0|LessThan5~13_cout\,
	combout => \light_0|LessThan5~14_combout\);

-- Location: LCCOMB_X9_Y26_N16
\light_1|pwm_div_counter[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[0]~6_combout\ = \light_1|pwm_div_counter\(0) $ (VCC)
-- \light_1|pwm_div_counter[0]~7\ = CARRY(\light_1|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_div_counter\(0),
	datad => VCC,
	combout => \light_1|pwm_div_counter[0]~6_combout\,
	cout => \light_1|pwm_div_counter[0]~7\);

-- Location: LCCOMB_X9_Y26_N22
\light_1|pwm_div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[3]~12_combout\ = (\light_1|pwm_div_counter\(3) & (!\light_1|pwm_div_counter[2]~11\)) # (!\light_1|pwm_div_counter\(3) & ((\light_1|pwm_div_counter[2]~11\) # (GND)))
-- \light_1|pwm_div_counter[3]~13\ = CARRY((!\light_1|pwm_div_counter[2]~11\) # (!\light_1|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_div_counter\(3),
	datad => VCC,
	cin => \light_1|pwm_div_counter[2]~11\,
	combout => \light_1|pwm_div_counter[3]~12_combout\,
	cout => \light_1|pwm_div_counter[3]~13\);

-- Location: LCCOMB_X9_Y26_N24
\light_1|pwm_div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[4]~14_combout\ = (\light_1|pwm_div_counter\(4) & (\light_1|pwm_div_counter[3]~13\ $ (GND))) # (!\light_1|pwm_div_counter\(4) & (!\light_1|pwm_div_counter[3]~13\ & VCC))
-- \light_1|pwm_div_counter[4]~15\ = CARRY((\light_1|pwm_div_counter\(4) & !\light_1|pwm_div_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_div_counter\(4),
	datad => VCC,
	cin => \light_1|pwm_div_counter[3]~13\,
	combout => \light_1|pwm_div_counter[4]~14_combout\,
	cout => \light_1|pwm_div_counter[4]~15\);

-- Location: FF_X9_Y26_N25
\light_1|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|pwm_div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(4));

-- Location: LCCOMB_X9_Y26_N26
\light_1|pwm_div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[5]~16_combout\ = \light_1|pwm_div_counter[4]~15\ $ (\light_1|pwm_div_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_1|pwm_div_counter\(5),
	cin => \light_1|pwm_div_counter[4]~15\,
	combout => \light_1|pwm_div_counter[5]~16_combout\);

-- Location: FF_X9_Y26_N27
\light_1|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|pwm_div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(5));

-- Location: LCCOMB_X8_Y26_N4
\light_1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan1~0_combout\ = (!\light_1|pwm_div_counter\(1) & (!\light_1|pwm_div_counter\(0) & !\light_1|pwm_div_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_div_counter\(1),
	datac => \light_1|pwm_div_counter\(0),
	datad => \light_1|pwm_div_counter\(2),
	combout => \light_1|LessThan1~0_combout\);

-- Location: LCCOMB_X9_Y26_N30
\light_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan0~0_combout\ = (\light_1|pwm_div_counter\(4) & (\light_1|pwm_div_counter\(5) & ((\light_1|pwm_div_counter\(3)) # (!\light_1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_div_counter\(3),
	datab => \light_1|pwm_div_counter\(4),
	datac => \light_1|pwm_div_counter\(5),
	datad => \light_1|LessThan1~0_combout\,
	combout => \light_1|LessThan0~0_combout\);

-- Location: FF_X8_Y26_N5
\light_1|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \light_1|pwm_div_counter[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(0));

-- Location: LCCOMB_X9_Y26_N18
\light_1|pwm_div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[1]~8_combout\ = (\light_1|pwm_div_counter\(1) & (!\light_1|pwm_div_counter[0]~7\)) # (!\light_1|pwm_div_counter\(1) & ((\light_1|pwm_div_counter[0]~7\) # (GND)))
-- \light_1|pwm_div_counter[1]~9\ = CARRY((!\light_1|pwm_div_counter[0]~7\) # (!\light_1|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_div_counter\(1),
	datad => VCC,
	cin => \light_1|pwm_div_counter[0]~7\,
	combout => \light_1|pwm_div_counter[1]~8_combout\,
	cout => \light_1|pwm_div_counter[1]~9\);

-- Location: LCCOMB_X9_Y26_N10
\light_1|pwm_div_counter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[1]~feeder_combout\ = \light_1|pwm_div_counter[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \light_1|pwm_div_counter[1]~8_combout\,
	combout => \light_1|pwm_div_counter[1]~feeder_combout\);

-- Location: FF_X9_Y26_N11
\light_1|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|pwm_div_counter[1]~feeder_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(1));

-- Location: LCCOMB_X9_Y26_N20
\light_1|pwm_div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_div_counter[2]~10_combout\ = (\light_1|pwm_div_counter\(2) & (\light_1|pwm_div_counter[1]~9\ $ (GND))) # (!\light_1|pwm_div_counter\(2) & (!\light_1|pwm_div_counter[1]~9\ & VCC))
-- \light_1|pwm_div_counter[2]~11\ = CARRY((\light_1|pwm_div_counter\(2) & !\light_1|pwm_div_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_div_counter\(2),
	datad => VCC,
	cin => \light_1|pwm_div_counter[1]~9\,
	combout => \light_1|pwm_div_counter[2]~10_combout\,
	cout => \light_1|pwm_div_counter[2]~11\);

-- Location: FF_X9_Y26_N21
\light_1|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|pwm_div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(2));

-- Location: FF_X9_Y26_N23
\light_1|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|pwm_div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \light_1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_div_counter\(3));

-- Location: LCCOMB_X9_Y26_N12
\rtl~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = LCELL((!\light_1|pwm_div_counter\(5) & (((\light_1|LessThan1~0_combout\) # (!\light_1|pwm_div_counter\(4))) # (!\light_1|pwm_div_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_div_counter\(3),
	datab => \light_1|LessThan1~0_combout\,
	datac => \light_1|pwm_div_counter\(5),
	datad => \light_1|pwm_div_counter\(4),
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X3_Y26_N14
\light_1|pwm_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[0]~21_combout\ = !\light_1|pwm_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|pwm_counter\(0),
	combout => \light_1|pwm_counter[0]~21_combout\);

-- Location: FF_X3_Y26_N15
\light_1|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(0));

-- Location: LCCOMB_X3_Y26_N0
\light_1|pwm_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[1]~7_combout\ = (\light_1|pwm_counter\(0) & (\light_1|pwm_counter\(1) $ (VCC))) # (!\light_1|pwm_counter\(0) & (\light_1|pwm_counter\(1) & VCC))
-- \light_1|pwm_counter[1]~8\ = CARRY((\light_1|pwm_counter\(0) & \light_1|pwm_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_counter\(0),
	datab => \light_1|pwm_counter\(1),
	datad => VCC,
	combout => \light_1|pwm_counter[1]~7_combout\,
	cout => \light_1|pwm_counter[1]~8\);

-- Location: FF_X3_Y26_N1
\light_1|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(1));

-- Location: LCCOMB_X3_Y26_N2
\light_1|pwm_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[2]~9_combout\ = (\light_1|pwm_counter\(2) & (!\light_1|pwm_counter[1]~8\)) # (!\light_1|pwm_counter\(2) & ((\light_1|pwm_counter[1]~8\) # (GND)))
-- \light_1|pwm_counter[2]~10\ = CARRY((!\light_1|pwm_counter[1]~8\) # (!\light_1|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_counter\(2),
	datad => VCC,
	cin => \light_1|pwm_counter[1]~8\,
	combout => \light_1|pwm_counter[2]~9_combout\,
	cout => \light_1|pwm_counter[2]~10\);

-- Location: FF_X3_Y26_N3
\light_1|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(2));

-- Location: LCCOMB_X3_Y26_N4
\light_1|pwm_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[3]~11_combout\ = (\light_1|pwm_counter\(3) & (\light_1|pwm_counter[2]~10\ $ (GND))) # (!\light_1|pwm_counter\(3) & (!\light_1|pwm_counter[2]~10\ & VCC))
-- \light_1|pwm_counter[3]~12\ = CARRY((\light_1|pwm_counter\(3) & !\light_1|pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_counter\(3),
	datad => VCC,
	cin => \light_1|pwm_counter[2]~10\,
	combout => \light_1|pwm_counter[3]~11_combout\,
	cout => \light_1|pwm_counter[3]~12\);

-- Location: FF_X3_Y26_N5
\light_1|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(3));

-- Location: LCCOMB_X3_Y26_N6
\light_1|pwm_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[4]~13_combout\ = (\light_1|pwm_counter\(4) & (!\light_1|pwm_counter[3]~12\)) # (!\light_1|pwm_counter\(4) & ((\light_1|pwm_counter[3]~12\) # (GND)))
-- \light_1|pwm_counter[4]~14\ = CARRY((!\light_1|pwm_counter[3]~12\) # (!\light_1|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_counter\(4),
	datad => VCC,
	cin => \light_1|pwm_counter[3]~12\,
	combout => \light_1|pwm_counter[4]~13_combout\,
	cout => \light_1|pwm_counter[4]~14\);

-- Location: FF_X3_Y26_N7
\light_1|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(4));

-- Location: LCCOMB_X3_Y26_N8
\light_1|pwm_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[5]~15_combout\ = (\light_1|pwm_counter\(5) & (\light_1|pwm_counter[4]~14\ $ (GND))) # (!\light_1|pwm_counter\(5) & (!\light_1|pwm_counter[4]~14\ & VCC))
-- \light_1|pwm_counter[5]~16\ = CARRY((\light_1|pwm_counter\(5) & !\light_1|pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_counter\(5),
	datad => VCC,
	cin => \light_1|pwm_counter[4]~14\,
	combout => \light_1|pwm_counter[5]~15_combout\,
	cout => \light_1|pwm_counter[5]~16\);

-- Location: FF_X3_Y26_N9
\light_1|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(5));

-- Location: LCCOMB_X3_Y26_N10
\light_1|pwm_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[6]~17_combout\ = (\light_1|pwm_counter\(6) & (!\light_1|pwm_counter[5]~16\)) # (!\light_1|pwm_counter\(6) & ((\light_1|pwm_counter[5]~16\) # (GND)))
-- \light_1|pwm_counter[6]~18\ = CARRY((!\light_1|pwm_counter[5]~16\) # (!\light_1|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_counter\(6),
	datad => VCC,
	cin => \light_1|pwm_counter[5]~16\,
	combout => \light_1|pwm_counter[6]~17_combout\,
	cout => \light_1|pwm_counter[6]~18\);

-- Location: FF_X3_Y26_N11
\light_1|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(6));

-- Location: LCCOMB_X3_Y26_N12
\light_1|pwm_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_counter[7]~19_combout\ = \light_1|pwm_counter[6]~18\ $ (!\light_1|pwm_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_1|pwm_counter\(7),
	cin => \light_1|pwm_counter[6]~18\,
	combout => \light_1|pwm_counter[7]~19_combout\);

-- Location: FF_X3_Y26_N13
\light_1|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~3clkctrl_outclk\,
	d => \light_1|pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_counter\(7));

-- Location: LCCOMB_X9_Y28_N14
\light_1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~0_combout\ = \light_1|div_490196_counter\(0) $ (VCC)
-- \light_1|Add2~1\ = CARRY(\light_1|div_490196_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(0),
	datad => VCC,
	combout => \light_1|Add2~0_combout\,
	cout => \light_1|Add2~1\);

-- Location: FF_X9_Y28_N15
\light_1|div_490196_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_1|Add2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(0));

-- Location: LCCOMB_X9_Y28_N16
\light_1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~2_combout\ = (\light_1|div_490196_counter\(1) & (!\light_1|Add2~1\)) # (!\light_1|div_490196_counter\(1) & ((\light_1|Add2~1\) # (GND)))
-- \light_1|Add2~3\ = CARRY((!\light_1|Add2~1\) # (!\light_1|div_490196_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(1),
	datad => VCC,
	cin => \light_1|Add2~1\,
	combout => \light_1|Add2~2_combout\,
	cout => \light_1|Add2~3\);

-- Location: LCCOMB_X9_Y28_N10
\light_1|div_490196_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~11_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal0~5_combout\,
	datad => \light_1|Add2~2_combout\,
	combout => \light_1|div_490196_counter~11_combout\);

-- Location: FF_X9_Y28_N11
\light_1|div_490196_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(1));

-- Location: LCCOMB_X9_Y28_N18
\light_1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~4_combout\ = (\light_1|div_490196_counter\(2) & (\light_1|Add2~3\ $ (GND))) # (!\light_1|div_490196_counter\(2) & (!\light_1|Add2~3\ & VCC))
-- \light_1|Add2~5\ = CARRY((\light_1|div_490196_counter\(2) & !\light_1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(2),
	datad => VCC,
	cin => \light_1|Add2~3\,
	combout => \light_1|Add2~4_combout\,
	cout => \light_1|Add2~5\);

-- Location: LCCOMB_X9_Y26_N6
\light_1|div_490196_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~10_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Equal0~5_combout\,
	datad => \light_1|Add2~4_combout\,
	combout => \light_1|div_490196_counter~10_combout\);

-- Location: FF_X9_Y26_N7
\light_1|div_490196_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(2));

-- Location: LCCOMB_X9_Y28_N20
\light_1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~6_combout\ = (\light_1|div_490196_counter\(3) & (!\light_1|Add2~5\)) # (!\light_1|div_490196_counter\(3) & ((\light_1|Add2~5\) # (GND)))
-- \light_1|Add2~7\ = CARRY((!\light_1|Add2~5\) # (!\light_1|div_490196_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(3),
	datad => VCC,
	cin => \light_1|Add2~5\,
	combout => \light_1|Add2~6_combout\,
	cout => \light_1|Add2~7\);

-- Location: FF_X9_Y28_N21
\light_1|div_490196_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|Add2~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(3));

-- Location: LCCOMB_X9_Y28_N22
\light_1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~8_combout\ = (\light_1|div_490196_counter\(4) & (\light_1|Add2~7\ $ (GND))) # (!\light_1|div_490196_counter\(4) & (!\light_1|Add2~7\ & VCC))
-- \light_1|Add2~9\ = CARRY((\light_1|div_490196_counter\(4) & !\light_1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(4),
	datad => VCC,
	cin => \light_1|Add2~7\,
	combout => \light_1|Add2~8_combout\,
	cout => \light_1|Add2~9\);

-- Location: LCCOMB_X9_Y28_N8
\light_1|div_490196_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~9_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal0~5_combout\,
	datad => \light_1|Add2~8_combout\,
	combout => \light_1|div_490196_counter~9_combout\);

-- Location: FF_X9_Y28_N9
\light_1|div_490196_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(4));

-- Location: LCCOMB_X9_Y28_N24
\light_1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~10_combout\ = (\light_1|div_490196_counter\(5) & (!\light_1|Add2~9\)) # (!\light_1|div_490196_counter\(5) & ((\light_1|Add2~9\) # (GND)))
-- \light_1|Add2~11\ = CARRY((!\light_1|Add2~9\) # (!\light_1|div_490196_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(5),
	datad => VCC,
	cin => \light_1|Add2~9\,
	combout => \light_1|Add2~10_combout\,
	cout => \light_1|Add2~11\);

-- Location: LCCOMB_X9_Y28_N12
\light_1|div_490196_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~7_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal0~5_combout\,
	datad => \light_1|Add2~10_combout\,
	combout => \light_1|div_490196_counter~7_combout\);

-- Location: FF_X9_Y28_N13
\light_1|div_490196_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(5));

-- Location: LCCOMB_X9_Y28_N26
\light_1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~12_combout\ = (\light_1|div_490196_counter\(6) & (\light_1|Add2~11\ $ (GND))) # (!\light_1|div_490196_counter\(6) & (!\light_1|Add2~11\ & VCC))
-- \light_1|Add2~13\ = CARRY((\light_1|div_490196_counter\(6) & !\light_1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(6),
	datad => VCC,
	cin => \light_1|Add2~11\,
	combout => \light_1|Add2~12_combout\,
	cout => \light_1|Add2~13\);

-- Location: FF_X9_Y28_N27
\light_1|div_490196_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|Add2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(6));

-- Location: LCCOMB_X9_Y28_N6
\light_1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~3_combout\ = (!\light_1|div_490196_counter\(6) & (!\light_1|div_490196_counter\(3) & (\light_1|div_490196_counter\(4) & \light_1|div_490196_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(6),
	datab => \light_1|div_490196_counter\(3),
	datac => \light_1|div_490196_counter\(4),
	datad => \light_1|div_490196_counter\(5),
	combout => \light_1|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y28_N28
\light_1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~14_combout\ = (\light_1|div_490196_counter\(7) & (!\light_1|Add2~13\)) # (!\light_1|div_490196_counter\(7) & ((\light_1|Add2~13\) # (GND)))
-- \light_1|Add2~15\ = CARRY((!\light_1|Add2~13\) # (!\light_1|div_490196_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(7),
	datad => VCC,
	cin => \light_1|Add2~13\,
	combout => \light_1|Add2~14_combout\,
	cout => \light_1|Add2~15\);

-- Location: LCCOMB_X9_Y28_N0
\light_1|div_490196_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~8_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal0~5_combout\,
	datad => \light_1|Add2~14_combout\,
	combout => \light_1|div_490196_counter~8_combout\);

-- Location: FF_X9_Y28_N1
\light_1|div_490196_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(7));

-- Location: LCCOMB_X9_Y28_N30
\light_1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~16_combout\ = (\light_1|div_490196_counter\(8) & (\light_1|Add2~15\ $ (GND))) # (!\light_1|div_490196_counter\(8) & (!\light_1|Add2~15\ & VCC))
-- \light_1|Add2~17\ = CARRY((\light_1|div_490196_counter\(8) & !\light_1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(8),
	datad => VCC,
	cin => \light_1|Add2~15\,
	combout => \light_1|Add2~16_combout\,
	cout => \light_1|Add2~17\);

-- Location: FF_X9_Y28_N31
\light_1|div_490196_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|Add2~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(8));

-- Location: LCCOMB_X9_Y27_N0
\light_1|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~18_combout\ = (\light_1|div_490196_counter\(9) & (!\light_1|Add2~17\)) # (!\light_1|div_490196_counter\(9) & ((\light_1|Add2~17\) # (GND)))
-- \light_1|Add2~19\ = CARRY((!\light_1|Add2~17\) # (!\light_1|div_490196_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(9),
	datad => VCC,
	cin => \light_1|Add2~17\,
	combout => \light_1|Add2~18_combout\,
	cout => \light_1|Add2~19\);

-- Location: LCCOMB_X9_Y27_N2
\light_1|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~20_combout\ = (\light_1|div_490196_counter\(10) & (\light_1|Add2~19\ $ (GND))) # (!\light_1|div_490196_counter\(10) & (!\light_1|Add2~19\ & VCC))
-- \light_1|Add2~21\ = CARRY((\light_1|div_490196_counter\(10) & !\light_1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(10),
	datad => VCC,
	cin => \light_1|Add2~19\,
	combout => \light_1|Add2~20_combout\,
	cout => \light_1|Add2~21\);

-- Location: FF_X9_Y27_N3
\light_1|div_490196_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_1|Add2~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(10));

-- Location: LCCOMB_X9_Y27_N4
\light_1|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~22_combout\ = (\light_1|div_490196_counter\(11) & (!\light_1|Add2~21\)) # (!\light_1|div_490196_counter\(11) & ((\light_1|Add2~21\) # (GND)))
-- \light_1|Add2~23\ = CARRY((!\light_1|Add2~21\) # (!\light_1|div_490196_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(11),
	datad => VCC,
	cin => \light_1|Add2~21\,
	combout => \light_1|Add2~22_combout\,
	cout => \light_1|Add2~23\);

-- Location: LCCOMB_X9_Y27_N20
\light_1|div_490196_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~6_combout\ = (\light_1|Add2~22_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add2~22_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~6_combout\);

-- Location: FF_X9_Y27_N21
\light_1|div_490196_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(11));

-- Location: LCCOMB_X9_Y27_N6
\light_1|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~24_combout\ = (\light_1|div_490196_counter\(12) & (\light_1|Add2~23\ $ (GND))) # (!\light_1|div_490196_counter\(12) & (!\light_1|Add2~23\ & VCC))
-- \light_1|Add2~25\ = CARRY((\light_1|div_490196_counter\(12) & !\light_1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(12),
	datad => VCC,
	cin => \light_1|Add2~23\,
	combout => \light_1|Add2~24_combout\,
	cout => \light_1|Add2~25\);

-- Location: LCCOMB_X9_Y27_N26
\light_1|div_490196_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~5_combout\ = (\light_1|Add2~24_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Add2~24_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~5_combout\);

-- Location: FF_X9_Y27_N27
\light_1|div_490196_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(12));

-- Location: LCCOMB_X9_Y27_N8
\light_1|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~26_combout\ = (\light_1|div_490196_counter\(13) & (!\light_1|Add2~25\)) # (!\light_1|div_490196_counter\(13) & ((\light_1|Add2~25\) # (GND)))
-- \light_1|Add2~27\ = CARRY((!\light_1|Add2~25\) # (!\light_1|div_490196_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|div_490196_counter\(13),
	datad => VCC,
	cin => \light_1|Add2~25\,
	combout => \light_1|Add2~26_combout\,
	cout => \light_1|Add2~27\);

-- Location: LCCOMB_X10_Y27_N16
\light_1|div_490196_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~4_combout\ = (\light_1|Add2~26_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add2~26_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~4_combout\);

-- Location: FF_X10_Y27_N17
\light_1|div_490196_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(13));

-- Location: LCCOMB_X9_Y27_N10
\light_1|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~28_combout\ = (\light_1|div_490196_counter\(14) & (\light_1|Add2~27\ $ (GND))) # (!\light_1|div_490196_counter\(14) & (!\light_1|Add2~27\ & VCC))
-- \light_1|Add2~29\ = CARRY((\light_1|div_490196_counter\(14) & !\light_1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(14),
	datad => VCC,
	cin => \light_1|Add2~27\,
	combout => \light_1|Add2~28_combout\,
	cout => \light_1|Add2~29\);

-- Location: LCCOMB_X9_Y27_N24
\light_1|div_490196_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~12_combout\ = (\light_1|Add2~28_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Add2~28_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~12_combout\);

-- Location: FF_X9_Y27_N25
\light_1|div_490196_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(14));

-- Location: LCCOMB_X9_Y27_N12
\light_1|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~30_combout\ = (\light_1|div_490196_counter\(15) & (!\light_1|Add2~29\)) # (!\light_1|div_490196_counter\(15) & ((\light_1|Add2~29\) # (GND)))
-- \light_1|Add2~31\ = CARRY((!\light_1|Add2~29\) # (!\light_1|div_490196_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(15),
	datad => VCC,
	cin => \light_1|Add2~29\,
	combout => \light_1|Add2~30_combout\,
	cout => \light_1|Add2~31\);

-- Location: FF_X9_Y27_N13
\light_1|div_490196_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|Add2~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(15));

-- Location: LCCOMB_X9_Y27_N14
\light_1|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~32_combout\ = (\light_1|div_490196_counter\(16) & (\light_1|Add2~31\ $ (GND))) # (!\light_1|div_490196_counter\(16) & (!\light_1|Add2~31\ & VCC))
-- \light_1|Add2~33\ = CARRY((\light_1|div_490196_counter\(16) & !\light_1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(16),
	datad => VCC,
	cin => \light_1|Add2~31\,
	combout => \light_1|Add2~32_combout\,
	cout => \light_1|Add2~33\);

-- Location: LCCOMB_X9_Y27_N22
\light_1|div_490196_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~1_combout\ = (\light_1|Add2~32_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Add2~32_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~1_combout\);

-- Location: FF_X9_Y27_N23
\light_1|div_490196_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(16));

-- Location: LCCOMB_X9_Y27_N16
\light_1|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~34_combout\ = (\light_1|div_490196_counter\(17) & (!\light_1|Add2~33\)) # (!\light_1|div_490196_counter\(17) & ((\light_1|Add2~33\) # (GND)))
-- \light_1|Add2~35\ = CARRY((!\light_1|Add2~33\) # (!\light_1|div_490196_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(17),
	datad => VCC,
	cin => \light_1|Add2~33\,
	combout => \light_1|Add2~34_combout\,
	cout => \light_1|Add2~35\);

-- Location: LCCOMB_X9_Y27_N28
\light_1|div_490196_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~0_combout\ = (\light_1|Add2~34_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Add2~34_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~0_combout\);

-- Location: FF_X9_Y27_N29
\light_1|div_490196_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(17));

-- Location: LCCOMB_X9_Y27_N18
\light_1|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add2~36_combout\ = \light_1|div_490196_counter\(18) $ (!\light_1|Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(18),
	cin => \light_1|Add2~35\,
	combout => \light_1|Add2~36_combout\);

-- Location: LCCOMB_X9_Y27_N30
\light_1|div_490196_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~2_combout\ = (\light_1|Add2~36_combout\ & !\light_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Add2~36_combout\,
	datad => \light_1|Equal0~5_combout\,
	combout => \light_1|div_490196_counter~2_combout\);

-- Location: FF_X9_Y27_N31
\light_1|div_490196_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(18));

-- Location: LCCOMB_X10_Y27_N30
\light_1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~0_combout\ = (\light_1|div_490196_counter\(13) & (\light_1|div_490196_counter\(18) & (\light_1|div_490196_counter\(12) & \light_1|div_490196_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(13),
	datab => \light_1|div_490196_counter\(18),
	datac => \light_1|div_490196_counter\(12),
	datad => \light_1|div_490196_counter\(11),
	combout => \light_1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y26_N14
\light_1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~2_combout\ = (\light_1|div_490196_counter\(9) & (!\light_1|div_490196_counter\(8) & (!\light_1|div_490196_counter\(10) & \light_1|div_490196_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(9),
	datab => \light_1|div_490196_counter\(8),
	datac => \light_1|div_490196_counter\(10),
	datad => \light_1|div_490196_counter\(7),
	combout => \light_1|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y27_N30
\light_1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~1_combout\ = (\light_1|div_490196_counter\(17) & (\light_1|div_490196_counter\(14) & (!\light_1|div_490196_counter\(15) & \light_1|div_490196_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(17),
	datab => \light_1|div_490196_counter\(14),
	datac => \light_1|div_490196_counter\(15),
	datad => \light_1|div_490196_counter\(16),
	combout => \light_1|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y26_N8
\light_1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~4_combout\ = (\light_1|Equal0~3_combout\ & (\light_1|Equal0~0_combout\ & (\light_1|Equal0~2_combout\ & \light_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Equal0~3_combout\,
	datab => \light_1|Equal0~0_combout\,
	datac => \light_1|Equal0~2_combout\,
	datad => \light_1|Equal0~1_combout\,
	combout => \light_1|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y26_N28
\light_1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal0~5_combout\ = (!\light_1|div_490196_counter\(1) & (\light_1|div_490196_counter\(2) & (\light_1|Equal0~4_combout\ & \light_1|div_490196_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(1),
	datab => \light_1|div_490196_counter\(2),
	datac => \light_1|Equal0~4_combout\,
	datad => \light_1|div_490196_counter\(0),
	combout => \light_1|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y26_N0
\light_1|div_490196_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|div_490196_counter~3_combout\ = (!\light_1|Equal0~5_combout\ & \light_1|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_1|Equal0~5_combout\,
	datac => \light_1|Add2~18_combout\,
	combout => \light_1|div_490196_counter~3_combout\);

-- Location: FF_X9_Y26_N1
\light_1|div_490196_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_1|div_490196_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|div_490196_counter\(9));

-- Location: LCCOMB_X10_Y27_N12
\light_1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan2~1_combout\ = (((!\light_1|div_490196_counter\(11)) # (!\light_1|div_490196_counter\(12))) # (!\light_1|div_490196_counter\(13))) # (!\light_1|div_490196_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(10),
	datab => \light_1|div_490196_counter\(13),
	datac => \light_1|div_490196_counter\(12),
	datad => \light_1|div_490196_counter\(11),
	combout => \light_1|LessThan2~1_combout\);

-- Location: LCCOMB_X9_Y28_N4
\light_1|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan2~2_combout\ = (\light_1|div_490196_counter\(4)) # ((\light_1|div_490196_counter\(3) & ((\light_1|div_490196_counter\(1)) # (\light_1|div_490196_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(1),
	datab => \light_1|div_490196_counter\(2),
	datac => \light_1|div_490196_counter\(4),
	datad => \light_1|div_490196_counter\(3),
	combout => \light_1|LessThan2~2_combout\);

-- Location: LCCOMB_X9_Y28_N2
\light_1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan2~3_combout\ = (\light_1|div_490196_counter\(7)) # ((\light_1|div_490196_counter\(6) & (\light_1|LessThan2~2_combout\ & \light_1|div_490196_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(6),
	datab => \light_1|div_490196_counter\(7),
	datac => \light_1|LessThan2~2_combout\,
	datad => \light_1|div_490196_counter\(5),
	combout => \light_1|LessThan2~3_combout\);

-- Location: LCCOMB_X8_Y27_N6
\light_1|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan2~4_combout\ = (\light_1|LessThan2~1_combout\) # ((!\light_1|div_490196_counter\(9) & ((!\light_1|LessThan2~3_combout\) # (!\light_1|div_490196_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(9),
	datab => \light_1|div_490196_counter\(8),
	datac => \light_1|LessThan2~1_combout\,
	datad => \light_1|LessThan2~3_combout\,
	combout => \light_1|LessThan2~4_combout\);

-- Location: LCCOMB_X8_Y27_N0
\light_1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan2~0_combout\ = (!\light_1|div_490196_counter\(18) & (((!\light_1|div_490196_counter\(17)) # (!\light_1|div_490196_counter\(15))) # (!\light_1|div_490196_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|div_490196_counter\(16),
	datab => \light_1|div_490196_counter\(15),
	datac => \light_1|div_490196_counter\(18),
	datad => \light_1|div_490196_counter\(17),
	combout => \light_1|LessThan2~0_combout\);

-- Location: LCCOMB_X8_Y27_N2
\rtl~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = LCELL((\light_1|LessThan2~0_combout\) # ((\light_1|LessThan2~4_combout\ & (!\light_1|div_490196_counter\(14) & !\light_1|div_490196_counter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|LessThan2~4_combout\,
	datab => \light_1|div_490196_counter\(14),
	datac => \light_1|div_490196_counter\(18),
	datad => \light_1|LessThan2~0_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X8_Y26_N6
\light_1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~0_combout\ = \light_1|led_counter\(0) $ (VCC)
-- \light_1|Add3~1\ = CARRY(\light_1|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(0),
	datad => VCC,
	combout => \light_1|Add3~0_combout\,
	cout => \light_1|Add3~1\);

-- Location: FF_X8_Y26_N7
\light_1|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(0));

-- Location: LCCOMB_X8_Y26_N8
\light_1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~2_combout\ = (\light_1|led_counter\(1) & (!\light_1|Add3~1\)) # (!\light_1|led_counter\(1) & ((\light_1|Add3~1\) # (GND)))
-- \light_1|Add3~3\ = CARRY((!\light_1|Add3~1\) # (!\light_1|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|led_counter\(1),
	datad => VCC,
	cin => \light_1|Add3~1\,
	combout => \light_1|Add3~2_combout\,
	cout => \light_1|Add3~3\);

-- Location: FF_X8_Y26_N9
\light_1|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(1));

-- Location: LCCOMB_X8_Y26_N10
\light_1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~4_combout\ = (\light_1|led_counter\(2) & (\light_1|Add3~3\ $ (GND))) # (!\light_1|led_counter\(2) & (!\light_1|Add3~3\ & VCC))
-- \light_1|Add3~5\ = CARRY((\light_1|led_counter\(2) & !\light_1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|led_counter\(2),
	datad => VCC,
	cin => \light_1|Add3~3\,
	combout => \light_1|Add3~4_combout\,
	cout => \light_1|Add3~5\);

-- Location: LCCOMB_X8_Y26_N0
\light_1|led_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|led_counter~2_combout\ = (!\light_1|Equal1~2_combout\ & \light_1|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal1~2_combout\,
	datad => \light_1|Add3~4_combout\,
	combout => \light_1|led_counter~2_combout\);

-- Location: FF_X8_Y26_N1
\light_1|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|led_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(2));

-- Location: LCCOMB_X8_Y26_N12
\light_1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~6_combout\ = (\light_1|led_counter\(3) & (!\light_1|Add3~5\)) # (!\light_1|led_counter\(3) & ((\light_1|Add3~5\) # (GND)))
-- \light_1|Add3~7\ = CARRY((!\light_1|Add3~5\) # (!\light_1|led_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(3),
	datad => VCC,
	cin => \light_1|Add3~5\,
	combout => \light_1|Add3~6_combout\,
	cout => \light_1|Add3~7\);

-- Location: FF_X8_Y26_N13
\light_1|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(3));

-- Location: LCCOMB_X8_Y26_N14
\light_1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~8_combout\ = (\light_1|led_counter\(4) & (\light_1|Add3~7\ $ (GND))) # (!\light_1|led_counter\(4) & (!\light_1|Add3~7\ & VCC))
-- \light_1|Add3~9\ = CARRY((\light_1|led_counter\(4) & !\light_1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|led_counter\(4),
	datad => VCC,
	cin => \light_1|Add3~7\,
	combout => \light_1|Add3~8_combout\,
	cout => \light_1|Add3~9\);

-- Location: FF_X8_Y26_N15
\light_1|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(4));

-- Location: LCCOMB_X8_Y26_N16
\light_1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~10_combout\ = (\light_1|led_counter\(5) & (!\light_1|Add3~9\)) # (!\light_1|led_counter\(5) & ((\light_1|Add3~9\) # (GND)))
-- \light_1|Add3~11\ = CARRY((!\light_1|Add3~9\) # (!\light_1|led_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(5),
	datad => VCC,
	cin => \light_1|Add3~9\,
	combout => \light_1|Add3~10_combout\,
	cout => \light_1|Add3~11\);

-- Location: LCCOMB_X8_Y26_N30
\light_1|led_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|led_counter~1_combout\ = (!\light_1|Equal1~2_combout\ & \light_1|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal1~2_combout\,
	datad => \light_1|Add3~10_combout\,
	combout => \light_1|led_counter~1_combout\);

-- Location: FF_X8_Y26_N31
\light_1|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|led_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(5));

-- Location: LCCOMB_X8_Y26_N18
\light_1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~12_combout\ = (\light_1|led_counter\(6) & (\light_1|Add3~11\ $ (GND))) # (!\light_1|led_counter\(6) & (!\light_1|Add3~11\ & VCC))
-- \light_1|Add3~13\ = CARRY((\light_1|led_counter\(6) & !\light_1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(6),
	datad => VCC,
	cin => \light_1|Add3~11\,
	combout => \light_1|Add3~12_combout\,
	cout => \light_1|Add3~13\);

-- Location: LCCOMB_X8_Y26_N28
\light_1|led_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|led_counter~0_combout\ = (!\light_1|Equal1~2_combout\ & \light_1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal1~2_combout\,
	datad => \light_1|Add3~12_combout\,
	combout => \light_1|led_counter~0_combout\);

-- Location: FF_X8_Y26_N29
\light_1|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|led_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(6));

-- Location: LCCOMB_X8_Y26_N20
\light_1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~14_combout\ = (\light_1|led_counter\(7) & (!\light_1|Add3~13\)) # (!\light_1|led_counter\(7) & ((\light_1|Add3~13\) # (GND)))
-- \light_1|Add3~15\ = CARRY((!\light_1|Add3~13\) # (!\light_1|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|led_counter\(7),
	datad => VCC,
	cin => \light_1|Add3~13\,
	combout => \light_1|Add3~14_combout\,
	cout => \light_1|Add3~15\);

-- Location: FF_X8_Y26_N21
\light_1|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(7));

-- Location: LCCOMB_X8_Y26_N22
\light_1|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~16_combout\ = (\light_1|led_counter\(8) & (\light_1|Add3~15\ $ (GND))) # (!\light_1|led_counter\(8) & (!\light_1|Add3~15\ & VCC))
-- \light_1|Add3~17\ = CARRY((\light_1|led_counter\(8) & !\light_1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(8),
	datad => VCC,
	cin => \light_1|Add3~15\,
	combout => \light_1|Add3~16_combout\,
	cout => \light_1|Add3~17\);

-- Location: FF_X8_Y26_N23
\light_1|led_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|Add3~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(8));

-- Location: LCCOMB_X8_Y26_N26
\light_1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal1~1_combout\ = (!\light_1|led_counter\(7) & (!\light_1|led_counter\(4) & (!\light_1|led_counter\(8) & !\light_1|led_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(7),
	datab => \light_1|led_counter\(4),
	datac => \light_1|led_counter\(8),
	datad => \light_1|led_counter\(3),
	combout => \light_1|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y26_N24
\light_1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal1~0_combout\ = (\light_1|led_counter\(9) & (\light_1|led_counter\(1) & (\light_1|led_counter\(6) & \light_1|led_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(9),
	datab => \light_1|led_counter\(1),
	datac => \light_1|led_counter\(6),
	datad => \light_1|led_counter\(5),
	combout => \light_1|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y26_N26
\light_1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal1~2_combout\ = (\light_1|led_counter\(0) & (\light_1|Equal1~1_combout\ & (!\light_1|led_counter\(2) & \light_1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(0),
	datab => \light_1|Equal1~1_combout\,
	datac => \light_1|led_counter\(2),
	datad => \light_1|Equal1~0_combout\,
	combout => \light_1|Equal1~2_combout\);

-- Location: LCCOMB_X8_Y26_N24
\light_1|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add3~18_combout\ = \light_1|led_counter\(9) $ (\light_1|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(9),
	cin => \light_1|Add3~17\,
	combout => \light_1|Add3~18_combout\);

-- Location: LCCOMB_X8_Y26_N2
\light_1|led_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|led_counter~3_combout\ = (!\light_1|Equal1~2_combout\ & \light_1|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_1|Equal1~2_combout\,
	datad => \light_1|Add3~18_combout\,
	combout => \light_1|led_counter~3_combout\);

-- Location: FF_X8_Y26_N3
\light_1|led_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|led_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|led_counter\(9));

-- Location: LCCOMB_X7_Y26_N12
\light_1|pwm_num[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num[3]~0_combout\ = (\light_1|led_counter\(7) & (\light_1|led_counter\(1) & (\light_1|led_counter\(6) & \light_1|led_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(7),
	datab => \light_1|led_counter\(1),
	datac => \light_1|led_counter\(6),
	datad => \light_1|led_counter\(5),
	combout => \light_1|pwm_num[3]~0_combout\);

-- Location: LCCOMB_X7_Y26_N14
\light_1|pwm_num[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num[3]~1_combout\ = (\light_1|led_counter\(2) & (\light_1|led_counter\(3) & (\light_1|led_counter\(4) & \light_1|pwm_num[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(2),
	datab => \light_1|led_counter\(3),
	datac => \light_1|led_counter\(4),
	datad => \light_1|pwm_num[3]~0_combout\,
	combout => \light_1|pwm_num[3]~1_combout\);

-- Location: LCCOMB_X7_Y26_N20
\light_1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan3~0_combout\ = (!\light_1|led_counter\(9) & (!\light_1|led_counter\(8) & ((!\light_1|led_counter\(0)) # (!\light_1|pwm_num[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(9),
	datab => \light_1|led_counter\(8),
	datac => \light_1|pwm_num[3]~1_combout\,
	datad => \light_1|led_counter\(0),
	combout => \light_1|LessThan3~0_combout\);

-- Location: LCCOMB_X5_Y26_N4
\light_1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~0_combout\ = \light_1|pwm_num\(0) $ (VCC)
-- \light_1|Add5~1\ = CARRY(\light_1|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(0),
	datad => VCC,
	combout => \light_1|Add5~0_combout\,
	cout => \light_1|Add5~1\);

-- Location: LCCOMB_X6_Y26_N0
\light_1|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~0_combout\ = \light_1|pwm_num\(0) $ (VCC)
-- \light_1|Add6~1\ = CARRY(\light_1|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(0),
	datad => VCC,
	combout => \light_1|Add6~0_combout\,
	cout => \light_1|Add6~1\);

-- Location: LCCOMB_X7_Y26_N10
\light_1|pwm_num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~2_combout\ = (\light_1|led_counter\(9)) # ((\light_1|led_counter\(8) & (\light_1|pwm_num[3]~1_combout\)) # (!\light_1|led_counter\(8) & ((!\light_1|led_counter\(0)) # (!\light_1|pwm_num[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(9),
	datab => \light_1|led_counter\(8),
	datac => \light_1|pwm_num[3]~1_combout\,
	datad => \light_1|led_counter\(0),
	combout => \light_1|pwm_num~2_combout\);

-- Location: LCCOMB_X6_Y26_N30
\light_1|pwm_num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~10_combout\ = (\light_1|Add5~0_combout\ & ((\light_1|LessThan3~0_combout\) # ((\light_1|Add6~0_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|Add5~0_combout\ & (\light_1|Add6~0_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add5~0_combout\,
	datab => \light_1|Add6~0_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|LessThan3~0_combout\,
	combout => \light_1|pwm_num~10_combout\);

-- Location: LCCOMB_X7_Y26_N28
\light_1|gear_counter[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|gear_counter[3]~0_combout\ = \light_1|gear_counter\(3) $ (((\light_1|gear_counter\(1) & (\light_1|gear_counter\(2) & \light_1|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|gear_counter\(1),
	datab => \light_1|gear_counter\(2),
	datac => \light_1|gear_counter\(3),
	datad => \light_1|led_counter\(0),
	combout => \light_1|gear_counter[3]~0_combout\);

-- Location: FF_X7_Y26_N29
\light_1|gear_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|gear_counter[3]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|gear_counter\(3));

-- Location: LCCOMB_X7_Y26_N22
\light_1|gear_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|gear_counter~1_combout\ = (\light_1|led_counter\(0) & (!\light_1|gear_counter\(1) & ((\light_1|gear_counter\(3)) # (!\light_1|gear_counter\(2))))) # (!\light_1|led_counter\(0) & (((\light_1|gear_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(0),
	datab => \light_1|gear_counter\(2),
	datac => \light_1|gear_counter\(1),
	datad => \light_1|gear_counter\(3),
	combout => \light_1|gear_counter~1_combout\);

-- Location: FF_X7_Y26_N23
\light_1|gear_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|gear_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|gear_counter\(1));

-- Location: LCCOMB_X7_Y26_N16
\light_1|gear_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|gear_counter~2_combout\ = (\light_1|gear_counter\(1) & ((\light_1|gear_counter\(2) $ (\light_1|led_counter\(0))))) # (!\light_1|gear_counter\(1) & (\light_1|gear_counter\(2) & ((\light_1|gear_counter\(3)) # (!\light_1|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|gear_counter\(1),
	datab => \light_1|gear_counter\(3),
	datac => \light_1|gear_counter\(2),
	datad => \light_1|led_counter\(0),
	combout => \light_1|gear_counter~2_combout\);

-- Location: FF_X7_Y26_N17
\light_1|gear_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|gear_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|gear_counter\(2));

-- Location: LCCOMB_X7_Y26_N30
\light_1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Equal3~0_combout\ = (!\light_1|led_counter\(0) & (!\light_1|gear_counter\(2) & (!\light_1|gear_counter\(1) & !\light_1|gear_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|led_counter\(0),
	datab => \light_1|gear_counter\(2),
	datac => \light_1|gear_counter\(1),
	datad => \light_1|gear_counter\(3),
	combout => \light_1|Equal3~0_combout\);

-- Location: FF_X6_Y26_N31
\light_1|pwm_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~10_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(0));

-- Location: LCCOMB_X6_Y26_N2
\light_1|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~2_combout\ = (\light_1|pwm_num\(1) & (\light_1|Add6~1\ & VCC)) # (!\light_1|pwm_num\(1) & (!\light_1|Add6~1\))
-- \light_1|Add6~3\ = CARRY((!\light_1|pwm_num\(1) & !\light_1|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(1),
	datad => VCC,
	cin => \light_1|Add6~1\,
	combout => \light_1|Add6~2_combout\,
	cout => \light_1|Add6~3\);

-- Location: LCCOMB_X5_Y26_N6
\light_1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~2_combout\ = (\light_1|pwm_num\(1) & (!\light_1|Add5~1\)) # (!\light_1|pwm_num\(1) & ((\light_1|Add5~1\) # (GND)))
-- \light_1|Add5~3\ = CARRY((!\light_1|Add5~1\) # (!\light_1|pwm_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(1),
	datad => VCC,
	cin => \light_1|Add5~1\,
	combout => \light_1|Add5~2_combout\,
	cout => \light_1|Add5~3\);

-- Location: LCCOMB_X6_Y26_N20
\light_1|pwm_num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~9_combout\ = (\light_1|Add6~2_combout\ & (((\light_1|Add5~2_combout\ & \light_1|LessThan3~0_combout\)) # (!\light_1|pwm_num~2_combout\))) # (!\light_1|Add6~2_combout\ & (\light_1|Add5~2_combout\ & ((\light_1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add6~2_combout\,
	datab => \light_1|Add5~2_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|LessThan3~0_combout\,
	combout => \light_1|pwm_num~9_combout\);

-- Location: FF_X6_Y26_N21
\light_1|pwm_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~9_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(1));

-- Location: LCCOMB_X5_Y26_N8
\light_1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~4_combout\ = (\light_1|pwm_num\(2) & (\light_1|Add5~3\ $ (GND))) # (!\light_1|pwm_num\(2) & (!\light_1|Add5~3\ & VCC))
-- \light_1|Add5~5\ = CARRY((\light_1|pwm_num\(2) & !\light_1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(2),
	datad => VCC,
	cin => \light_1|Add5~3\,
	combout => \light_1|Add5~4_combout\,
	cout => \light_1|Add5~5\);

-- Location: LCCOMB_X6_Y26_N4
\light_1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~4_combout\ = (\light_1|pwm_num\(2) & ((GND) # (!\light_1|Add6~3\))) # (!\light_1|pwm_num\(2) & (\light_1|Add6~3\ $ (GND)))
-- \light_1|Add6~5\ = CARRY((\light_1|pwm_num\(2)) # (!\light_1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(2),
	datad => VCC,
	cin => \light_1|Add6~3\,
	combout => \light_1|Add6~4_combout\,
	cout => \light_1|Add6~5\);

-- Location: LCCOMB_X6_Y26_N18
\light_1|pwm_num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~8_combout\ = (\light_1|Add5~4_combout\ & ((\light_1|LessThan3~0_combout\) # ((\light_1|Add6~4_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|Add5~4_combout\ & (\light_1|Add6~4_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add5~4_combout\,
	datab => \light_1|Add6~4_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|LessThan3~0_combout\,
	combout => \light_1|pwm_num~8_combout\);

-- Location: FF_X6_Y26_N19
\light_1|pwm_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~8_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(2));

-- Location: LCCOMB_X6_Y26_N6
\light_1|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~6_combout\ = (\light_1|pwm_num\(3) & (\light_1|Add6~5\ & VCC)) # (!\light_1|pwm_num\(3) & (!\light_1|Add6~5\))
-- \light_1|Add6~7\ = CARRY((!\light_1|pwm_num\(3) & !\light_1|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(3),
	datad => VCC,
	cin => \light_1|Add6~5\,
	combout => \light_1|Add6~6_combout\,
	cout => \light_1|Add6~7\);

-- Location: LCCOMB_X5_Y26_N10
\light_1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~6_combout\ = (\light_1|pwm_num\(3) & (!\light_1|Add5~5\)) # (!\light_1|pwm_num\(3) & ((\light_1|Add5~5\) # (GND)))
-- \light_1|Add5~7\ = CARRY((!\light_1|Add5~5\) # (!\light_1|pwm_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(3),
	datad => VCC,
	cin => \light_1|Add5~5\,
	combout => \light_1|Add5~6_combout\,
	cout => \light_1|Add5~7\);

-- Location: LCCOMB_X6_Y26_N28
\light_1|pwm_num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~7_combout\ = (\light_1|LessThan3~0_combout\ & ((\light_1|Add5~6_combout\) # ((\light_1|Add6~6_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|LessThan3~0_combout\ & (\light_1|Add6~6_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|LessThan3~0_combout\,
	datab => \light_1|Add6~6_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|Add5~6_combout\,
	combout => \light_1|pwm_num~7_combout\);

-- Location: FF_X6_Y26_N29
\light_1|pwm_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~7_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(3));

-- Location: LCCOMB_X6_Y26_N8
\light_1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~8_combout\ = (\light_1|pwm_num\(4) & ((GND) # (!\light_1|Add6~7\))) # (!\light_1|pwm_num\(4) & (\light_1|Add6~7\ $ (GND)))
-- \light_1|Add6~9\ = CARRY((\light_1|pwm_num\(4)) # (!\light_1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(4),
	datad => VCC,
	cin => \light_1|Add6~7\,
	combout => \light_1|Add6~8_combout\,
	cout => \light_1|Add6~9\);

-- Location: LCCOMB_X5_Y26_N12
\light_1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~8_combout\ = (\light_1|pwm_num\(4) & (\light_1|Add5~7\ $ (GND))) # (!\light_1|pwm_num\(4) & (!\light_1|Add5~7\ & VCC))
-- \light_1|Add5~9\ = CARRY((\light_1|pwm_num\(4) & !\light_1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(4),
	datad => VCC,
	cin => \light_1|Add5~7\,
	combout => \light_1|Add5~8_combout\,
	cout => \light_1|Add5~9\);

-- Location: LCCOMB_X6_Y26_N22
\light_1|pwm_num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~6_combout\ = (\light_1|LessThan3~0_combout\ & ((\light_1|Add5~8_combout\) # ((\light_1|Add6~8_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|LessThan3~0_combout\ & (\light_1|Add6~8_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|LessThan3~0_combout\,
	datab => \light_1|Add6~8_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|Add5~8_combout\,
	combout => \light_1|pwm_num~6_combout\);

-- Location: FF_X6_Y26_N23
\light_1|pwm_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~6_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(4));

-- Location: LCCOMB_X6_Y26_N10
\light_1|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~10_combout\ = (\light_1|pwm_num\(5) & (\light_1|Add6~9\ & VCC)) # (!\light_1|pwm_num\(5) & (!\light_1|Add6~9\))
-- \light_1|Add6~11\ = CARRY((!\light_1|pwm_num\(5) & !\light_1|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(5),
	datad => VCC,
	cin => \light_1|Add6~9\,
	combout => \light_1|Add6~10_combout\,
	cout => \light_1|Add6~11\);

-- Location: LCCOMB_X5_Y26_N14
\light_1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~10_combout\ = (\light_1|pwm_num\(5) & (!\light_1|Add5~9\)) # (!\light_1|pwm_num\(5) & ((\light_1|Add5~9\) # (GND)))
-- \light_1|Add5~11\ = CARRY((!\light_1|Add5~9\) # (!\light_1|pwm_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(5),
	datad => VCC,
	cin => \light_1|Add5~9\,
	combout => \light_1|Add5~10_combout\,
	cout => \light_1|Add5~11\);

-- Location: LCCOMB_X6_Y26_N16
\light_1|pwm_num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~5_combout\ = (\light_1|LessThan3~0_combout\ & ((\light_1|Add5~10_combout\) # ((\light_1|Add6~10_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|LessThan3~0_combout\ & (\light_1|Add6~10_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|LessThan3~0_combout\,
	datab => \light_1|Add6~10_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|Add5~10_combout\,
	combout => \light_1|pwm_num~5_combout\);

-- Location: FF_X6_Y26_N17
\light_1|pwm_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~5_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(5));

-- Location: LCCOMB_X6_Y26_N12
\light_1|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~12_combout\ = (\light_1|pwm_num\(6) & ((GND) # (!\light_1|Add6~11\))) # (!\light_1|pwm_num\(6) & (\light_1|Add6~11\ $ (GND)))
-- \light_1|Add6~13\ = CARRY((\light_1|pwm_num\(6)) # (!\light_1|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(6),
	datad => VCC,
	cin => \light_1|Add6~11\,
	combout => \light_1|Add6~12_combout\,
	cout => \light_1|Add6~13\);

-- Location: LCCOMB_X5_Y26_N16
\light_1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~12_combout\ = (\light_1|pwm_num\(6) & (\light_1|Add5~11\ $ (GND))) # (!\light_1|pwm_num\(6) & (!\light_1|Add5~11\ & VCC))
-- \light_1|Add5~13\ = CARRY((\light_1|pwm_num\(6) & !\light_1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_1|pwm_num\(6),
	datad => VCC,
	cin => \light_1|Add5~11\,
	combout => \light_1|Add5~12_combout\,
	cout => \light_1|Add5~13\);

-- Location: LCCOMB_X6_Y26_N26
\light_1|pwm_num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~4_combout\ = (\light_1|Add6~12_combout\ & (((\light_1|Add5~12_combout\ & \light_1|LessThan3~0_combout\)) # (!\light_1|pwm_num~2_combout\))) # (!\light_1|Add6~12_combout\ & (((\light_1|Add5~12_combout\ & \light_1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|Add6~12_combout\,
	datab => \light_1|pwm_num~2_combout\,
	datac => \light_1|Add5~12_combout\,
	datad => \light_1|LessThan3~0_combout\,
	combout => \light_1|pwm_num~4_combout\);

-- Location: FF_X6_Y26_N27
\light_1|pwm_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~4_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(6));

-- Location: LCCOMB_X6_Y26_N14
\light_1|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add6~14_combout\ = \light_1|Add6~13\ $ (!\light_1|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_1|pwm_num\(7),
	cin => \light_1|Add6~13\,
	combout => \light_1|Add6~14_combout\);

-- Location: LCCOMB_X5_Y26_N18
\light_1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|Add5~14_combout\ = \light_1|Add5~13\ $ (\light_1|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_1|pwm_num\(7),
	cin => \light_1|Add5~13\,
	combout => \light_1|Add5~14_combout\);

-- Location: LCCOMB_X6_Y26_N24
\light_1|pwm_num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|pwm_num~3_combout\ = (\light_1|LessThan3~0_combout\ & ((\light_1|Add5~14_combout\) # ((\light_1|Add6~14_combout\ & !\light_1|pwm_num~2_combout\)))) # (!\light_1|LessThan3~0_combout\ & (\light_1|Add6~14_combout\ & (!\light_1|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|LessThan3~0_combout\,
	datab => \light_1|Add6~14_combout\,
	datac => \light_1|pwm_num~2_combout\,
	datad => \light_1|Add5~14_combout\,
	combout => \light_1|pwm_num~3_combout\);

-- Location: FF_X6_Y26_N25
\light_1|pwm_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~2clkctrl_outclk\,
	d => \light_1|pwm_num~3_combout\,
	clrn => \reset~input_o\,
	ena => \light_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_1|pwm_num\(7));

-- Location: LCCOMB_X3_Y26_N16
\light_1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~1_cout\ = CARRY((!\light_1|pwm_num\(0) & \light_1|pwm_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(0),
	datab => \light_1|pwm_counter\(0),
	datad => VCC,
	cout => \light_1|LessThan5~1_cout\);

-- Location: LCCOMB_X3_Y26_N18
\light_1|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~3_cout\ = CARRY((\light_1|pwm_counter\(1) & (\light_1|pwm_num\(1) & !\light_1|LessThan5~1_cout\)) # (!\light_1|pwm_counter\(1) & ((\light_1|pwm_num\(1)) # (!\light_1|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_counter\(1),
	datab => \light_1|pwm_num\(1),
	datad => VCC,
	cin => \light_1|LessThan5~1_cout\,
	cout => \light_1|LessThan5~3_cout\);

-- Location: LCCOMB_X3_Y26_N20
\light_1|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~5_cout\ = CARRY((\light_1|pwm_num\(2) & (\light_1|pwm_counter\(2) & !\light_1|LessThan5~3_cout\)) # (!\light_1|pwm_num\(2) & ((\light_1|pwm_counter\(2)) # (!\light_1|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(2),
	datab => \light_1|pwm_counter\(2),
	datad => VCC,
	cin => \light_1|LessThan5~3_cout\,
	cout => \light_1|LessThan5~5_cout\);

-- Location: LCCOMB_X3_Y26_N22
\light_1|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~7_cout\ = CARRY((\light_1|pwm_num\(3) & ((!\light_1|LessThan5~5_cout\) # (!\light_1|pwm_counter\(3)))) # (!\light_1|pwm_num\(3) & (!\light_1|pwm_counter\(3) & !\light_1|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(3),
	datab => \light_1|pwm_counter\(3),
	datad => VCC,
	cin => \light_1|LessThan5~5_cout\,
	cout => \light_1|LessThan5~7_cout\);

-- Location: LCCOMB_X3_Y26_N24
\light_1|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~9_cout\ = CARRY((\light_1|pwm_counter\(4) & ((!\light_1|LessThan5~7_cout\) # (!\light_1|pwm_num\(4)))) # (!\light_1|pwm_counter\(4) & (!\light_1|pwm_num\(4) & !\light_1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_counter\(4),
	datab => \light_1|pwm_num\(4),
	datad => VCC,
	cin => \light_1|LessThan5~7_cout\,
	cout => \light_1|LessThan5~9_cout\);

-- Location: LCCOMB_X3_Y26_N26
\light_1|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~11_cout\ = CARRY((\light_1|pwm_num\(5) & ((!\light_1|LessThan5~9_cout\) # (!\light_1|pwm_counter\(5)))) # (!\light_1|pwm_num\(5) & (!\light_1|pwm_counter\(5) & !\light_1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_num\(5),
	datab => \light_1|pwm_counter\(5),
	datad => VCC,
	cin => \light_1|LessThan5~9_cout\,
	cout => \light_1|LessThan5~11_cout\);

-- Location: LCCOMB_X3_Y26_N28
\light_1|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~13_cout\ = CARRY((\light_1|pwm_counter\(6) & ((!\light_1|LessThan5~11_cout\) # (!\light_1|pwm_num\(6)))) # (!\light_1|pwm_counter\(6) & (!\light_1|pwm_num\(6) & !\light_1|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_counter\(6),
	datab => \light_1|pwm_num\(6),
	datad => VCC,
	cin => \light_1|LessThan5~11_cout\,
	cout => \light_1|LessThan5~13_cout\);

-- Location: LCCOMB_X3_Y26_N30
\light_1|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_1|LessThan5~14_combout\ = (\light_1|pwm_counter\(7) & ((\light_1|LessThan5~13_cout\) # (!\light_1|pwm_num\(7)))) # (!\light_1|pwm_counter\(7) & (\light_1|LessThan5~13_cout\ & !\light_1|pwm_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_1|pwm_counter\(7),
	datad => \light_1|pwm_num\(7),
	cin => \light_1|LessThan5~13_cout\,
	combout => \light_1|LessThan5~14_combout\);

-- Location: LCCOMB_X10_Y27_N18
\light_2|pwm_div_counter[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[0]~6_combout\ = \light_2|pwm_div_counter\(0) $ (VCC)
-- \light_2|pwm_div_counter[0]~7\ = CARRY(\light_2|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_div_counter\(0),
	datad => VCC,
	combout => \light_2|pwm_div_counter[0]~6_combout\,
	cout => \light_2|pwm_div_counter[0]~7\);

-- Location: LCCOMB_X10_Y27_N6
\light_2|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[0]~feeder_combout\ = \light_2|pwm_div_counter[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|pwm_div_counter[0]~6_combout\,
	combout => \light_2|pwm_div_counter[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y27_N4
\light_2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan1~0_combout\ = (!\light_2|pwm_div_counter\(1) & (!\light_2|pwm_div_counter\(2) & !\light_2|pwm_div_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_div_counter\(1),
	datac => \light_2|pwm_div_counter\(2),
	datad => \light_2|pwm_div_counter\(0),
	combout => \light_2|LessThan1~0_combout\);

-- Location: LCCOMB_X10_Y27_N26
\light_2|pwm_div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[4]~14_combout\ = (\light_2|pwm_div_counter\(4) & (\light_2|pwm_div_counter[3]~13\ $ (GND))) # (!\light_2|pwm_div_counter\(4) & (!\light_2|pwm_div_counter[3]~13\ & VCC))
-- \light_2|pwm_div_counter[4]~15\ = CARRY((\light_2|pwm_div_counter\(4) & !\light_2|pwm_div_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_div_counter\(4),
	datad => VCC,
	cin => \light_2|pwm_div_counter[3]~13\,
	combout => \light_2|pwm_div_counter[4]~14_combout\,
	cout => \light_2|pwm_div_counter[4]~15\);

-- Location: LCCOMB_X10_Y27_N28
\light_2|pwm_div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[5]~16_combout\ = \light_2|pwm_div_counter[4]~15\ $ (\light_2|pwm_div_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_2|pwm_div_counter\(5),
	cin => \light_2|pwm_div_counter[4]~15\,
	combout => \light_2|pwm_div_counter[5]~16_combout\);

-- Location: FF_X10_Y27_N29
\light_2|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|pwm_div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(5));

-- Location: LCCOMB_X10_Y27_N10
\light_2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan0~0_combout\ = (\light_2|pwm_div_counter\(4) & (\light_2|pwm_div_counter\(5) & ((\light_2|pwm_div_counter\(3)) # (!\light_2|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|LessThan1~0_combout\,
	datab => \light_2|pwm_div_counter\(3),
	datac => \light_2|pwm_div_counter\(4),
	datad => \light_2|pwm_div_counter\(5),
	combout => \light_2|LessThan0~0_combout\);

-- Location: FF_X10_Y27_N7
\light_2|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_2|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(0));

-- Location: LCCOMB_X10_Y27_N20
\light_2|pwm_div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[1]~8_combout\ = (\light_2|pwm_div_counter\(1) & (!\light_2|pwm_div_counter[0]~7\)) # (!\light_2|pwm_div_counter\(1) & ((\light_2|pwm_div_counter[0]~7\) # (GND)))
-- \light_2|pwm_div_counter[1]~9\ = CARRY((!\light_2|pwm_div_counter[0]~7\) # (!\light_2|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_div_counter\(1),
	datad => VCC,
	cin => \light_2|pwm_div_counter[0]~7\,
	combout => \light_2|pwm_div_counter[1]~8_combout\,
	cout => \light_2|pwm_div_counter[1]~9\);

-- Location: LCCOMB_X10_Y27_N14
\light_2|pwm_div_counter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[1]~feeder_combout\ = \light_2|pwm_div_counter[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_div_counter[1]~8_combout\,
	combout => \light_2|pwm_div_counter[1]~feeder_combout\);

-- Location: FF_X10_Y27_N15
\light_2|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|pwm_div_counter[1]~feeder_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(1));

-- Location: LCCOMB_X10_Y27_N22
\light_2|pwm_div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[2]~10_combout\ = (\light_2|pwm_div_counter\(2) & (\light_2|pwm_div_counter[1]~9\ $ (GND))) # (!\light_2|pwm_div_counter\(2) & (!\light_2|pwm_div_counter[1]~9\ & VCC))
-- \light_2|pwm_div_counter[2]~11\ = CARRY((\light_2|pwm_div_counter\(2) & !\light_2|pwm_div_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_div_counter\(2),
	datad => VCC,
	cin => \light_2|pwm_div_counter[1]~9\,
	combout => \light_2|pwm_div_counter[2]~10_combout\,
	cout => \light_2|pwm_div_counter[2]~11\);

-- Location: FF_X10_Y27_N23
\light_2|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|pwm_div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(2));

-- Location: LCCOMB_X10_Y27_N24
\light_2|pwm_div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_div_counter[3]~12_combout\ = (\light_2|pwm_div_counter\(3) & (!\light_2|pwm_div_counter[2]~11\)) # (!\light_2|pwm_div_counter\(3) & ((\light_2|pwm_div_counter[2]~11\) # (GND)))
-- \light_2|pwm_div_counter[3]~13\ = CARRY((!\light_2|pwm_div_counter[2]~11\) # (!\light_2|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_div_counter\(3),
	datad => VCC,
	cin => \light_2|pwm_div_counter[2]~11\,
	combout => \light_2|pwm_div_counter[3]~12_combout\,
	cout => \light_2|pwm_div_counter[3]~13\);

-- Location: FF_X10_Y27_N25
\light_2|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|pwm_div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(3));

-- Location: FF_X10_Y27_N27
\light_2|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|pwm_div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \light_2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_div_counter\(4));

-- Location: LCCOMB_X10_Y27_N8
\rtl~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = LCELL((!\light_2|pwm_div_counter\(5) & (((\light_2|LessThan1~0_combout\) # (!\light_2|pwm_div_counter\(3))) # (!\light_2|pwm_div_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_div_counter\(4),
	datab => \light_2|pwm_div_counter\(5),
	datac => \light_2|LessThan1~0_combout\,
	datad => \light_2|pwm_div_counter\(3),
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X14_Y24_N0
\light_2|pwm_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[0]~21_combout\ = !\light_2|pwm_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|pwm_counter\(0),
	combout => \light_2|pwm_counter[0]~21_combout\);

-- Location: FF_X14_Y24_N1
\light_2|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(0));

-- Location: LCCOMB_X14_Y24_N10
\light_2|pwm_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[1]~7_combout\ = (\light_2|pwm_counter\(1) & (\light_2|pwm_counter\(0) $ (VCC))) # (!\light_2|pwm_counter\(1) & (\light_2|pwm_counter\(0) & VCC))
-- \light_2|pwm_counter[1]~8\ = CARRY((\light_2|pwm_counter\(1) & \light_2|pwm_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(1),
	datab => \light_2|pwm_counter\(0),
	datad => VCC,
	combout => \light_2|pwm_counter[1]~7_combout\,
	cout => \light_2|pwm_counter[1]~8\);

-- Location: FF_X14_Y24_N11
\light_2|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(1));

-- Location: LCCOMB_X14_Y24_N12
\light_2|pwm_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[2]~9_combout\ = (\light_2|pwm_counter\(2) & (!\light_2|pwm_counter[1]~8\)) # (!\light_2|pwm_counter\(2) & ((\light_2|pwm_counter[1]~8\) # (GND)))
-- \light_2|pwm_counter[2]~10\ = CARRY((!\light_2|pwm_counter[1]~8\) # (!\light_2|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(2),
	datad => VCC,
	cin => \light_2|pwm_counter[1]~8\,
	combout => \light_2|pwm_counter[2]~9_combout\,
	cout => \light_2|pwm_counter[2]~10\);

-- Location: FF_X14_Y24_N13
\light_2|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(2));

-- Location: LCCOMB_X14_Y24_N14
\light_2|pwm_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[3]~11_combout\ = (\light_2|pwm_counter\(3) & (\light_2|pwm_counter[2]~10\ $ (GND))) # (!\light_2|pwm_counter\(3) & (!\light_2|pwm_counter[2]~10\ & VCC))
-- \light_2|pwm_counter[3]~12\ = CARRY((\light_2|pwm_counter\(3) & !\light_2|pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_counter\(3),
	datad => VCC,
	cin => \light_2|pwm_counter[2]~10\,
	combout => \light_2|pwm_counter[3]~11_combout\,
	cout => \light_2|pwm_counter[3]~12\);

-- Location: FF_X14_Y24_N15
\light_2|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(3));

-- Location: LCCOMB_X14_Y24_N16
\light_2|pwm_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[4]~13_combout\ = (\light_2|pwm_counter\(4) & (!\light_2|pwm_counter[3]~12\)) # (!\light_2|pwm_counter\(4) & ((\light_2|pwm_counter[3]~12\) # (GND)))
-- \light_2|pwm_counter[4]~14\ = CARRY((!\light_2|pwm_counter[3]~12\) # (!\light_2|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_counter\(4),
	datad => VCC,
	cin => \light_2|pwm_counter[3]~12\,
	combout => \light_2|pwm_counter[4]~13_combout\,
	cout => \light_2|pwm_counter[4]~14\);

-- Location: FF_X14_Y24_N17
\light_2|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(4));

-- Location: LCCOMB_X14_Y24_N18
\light_2|pwm_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[5]~15_combout\ = (\light_2|pwm_counter\(5) & (\light_2|pwm_counter[4]~14\ $ (GND))) # (!\light_2|pwm_counter\(5) & (!\light_2|pwm_counter[4]~14\ & VCC))
-- \light_2|pwm_counter[5]~16\ = CARRY((\light_2|pwm_counter\(5) & !\light_2|pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_counter\(5),
	datad => VCC,
	cin => \light_2|pwm_counter[4]~14\,
	combout => \light_2|pwm_counter[5]~15_combout\,
	cout => \light_2|pwm_counter[5]~16\);

-- Location: FF_X14_Y24_N19
\light_2|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(5));

-- Location: LCCOMB_X14_Y24_N20
\light_2|pwm_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[6]~17_combout\ = (\light_2|pwm_counter\(6) & (!\light_2|pwm_counter[5]~16\)) # (!\light_2|pwm_counter\(6) & ((\light_2|pwm_counter[5]~16\) # (GND)))
-- \light_2|pwm_counter[6]~18\ = CARRY((!\light_2|pwm_counter[5]~16\) # (!\light_2|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_counter\(6),
	datad => VCC,
	cin => \light_2|pwm_counter[5]~16\,
	combout => \light_2|pwm_counter[6]~17_combout\,
	cout => \light_2|pwm_counter[6]~18\);

-- Location: FF_X14_Y24_N21
\light_2|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(6));

-- Location: LCCOMB_X14_Y24_N22
\light_2|pwm_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_counter[7]~19_combout\ = \light_2|pwm_counter\(7) $ (!\light_2|pwm_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(7),
	cin => \light_2|pwm_counter[6]~18\,
	combout => \light_2|pwm_counter[7]~19_combout\);

-- Location: FF_X14_Y24_N23
\light_2|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~5clkctrl_outclk\,
	d => \light_2|pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_counter\(7));

-- Location: LCCOMB_X24_Y27_N14
\light_2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~0_combout\ = \light_2|div_490196_counter\(0) $ (VCC)
-- \light_2|Add2~1\ = CARRY(\light_2|div_490196_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(0),
	datad => VCC,
	combout => \light_2|Add2~0_combout\,
	cout => \light_2|Add2~1\);

-- Location: FF_X24_Y27_N15
\light_2|div_490196_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_2|Add2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(0));

-- Location: LCCOMB_X24_Y27_N16
\light_2|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~2_combout\ = (\light_2|div_490196_counter\(1) & (!\light_2|Add2~1\)) # (!\light_2|div_490196_counter\(1) & ((\light_2|Add2~1\) # (GND)))
-- \light_2|Add2~3\ = CARRY((!\light_2|Add2~1\) # (!\light_2|div_490196_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(1),
	datad => VCC,
	cin => \light_2|Add2~1\,
	combout => \light_2|Add2~2_combout\,
	cout => \light_2|Add2~3\);

-- Location: LCCOMB_X24_Y27_N8
\light_2|div_490196_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~11_combout\ = (\light_2|Add2~2_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add2~2_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~11_combout\);

-- Location: FF_X24_Y27_N9
\light_2|div_490196_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(1));

-- Location: LCCOMB_X24_Y27_N18
\light_2|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~4_combout\ = (\light_2|div_490196_counter\(2) & (\light_2|Add2~3\ $ (GND))) # (!\light_2|div_490196_counter\(2) & (!\light_2|Add2~3\ & VCC))
-- \light_2|Add2~5\ = CARRY((\light_2|div_490196_counter\(2) & !\light_2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(2),
	datad => VCC,
	cin => \light_2|Add2~3\,
	combout => \light_2|Add2~4_combout\,
	cout => \light_2|Add2~5\);

-- Location: LCCOMB_X24_Y27_N0
\light_2|div_490196_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~10_combout\ = (\light_2|Add2~4_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|Add2~4_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~10_combout\);

-- Location: FF_X24_Y27_N1
\light_2|div_490196_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(2));

-- Location: LCCOMB_X24_Y27_N20
\light_2|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~6_combout\ = (\light_2|div_490196_counter\(3) & (!\light_2|Add2~5\)) # (!\light_2|div_490196_counter\(3) & ((\light_2|Add2~5\) # (GND)))
-- \light_2|Add2~7\ = CARRY((!\light_2|Add2~5\) # (!\light_2|div_490196_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(3),
	datad => VCC,
	cin => \light_2|Add2~5\,
	combout => \light_2|Add2~6_combout\,
	cout => \light_2|Add2~7\);

-- Location: FF_X24_Y27_N21
\light_2|div_490196_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|Add2~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(3));

-- Location: LCCOMB_X24_Y27_N22
\light_2|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~8_combout\ = (\light_2|div_490196_counter\(4) & (\light_2|Add2~7\ $ (GND))) # (!\light_2|div_490196_counter\(4) & (!\light_2|Add2~7\ & VCC))
-- \light_2|Add2~9\ = CARRY((\light_2|div_490196_counter\(4) & !\light_2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(4),
	datad => VCC,
	cin => \light_2|Add2~7\,
	combout => \light_2|Add2~8_combout\,
	cout => \light_2|Add2~9\);

-- Location: LCCOMB_X24_Y27_N2
\light_2|div_490196_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~9_combout\ = (\light_2|Add2~8_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add2~8_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~9_combout\);

-- Location: FF_X24_Y27_N3
\light_2|div_490196_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(4));

-- Location: LCCOMB_X24_Y27_N24
\light_2|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~10_combout\ = (\light_2|div_490196_counter\(5) & (!\light_2|Add2~9\)) # (!\light_2|div_490196_counter\(5) & ((\light_2|Add2~9\) # (GND)))
-- \light_2|Add2~11\ = CARRY((!\light_2|Add2~9\) # (!\light_2|div_490196_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(5),
	datad => VCC,
	cin => \light_2|Add2~9\,
	combout => \light_2|Add2~10_combout\,
	cout => \light_2|Add2~11\);

-- Location: LCCOMB_X24_Y27_N6
\light_2|div_490196_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~7_combout\ = (\light_2|Add2~10_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|Add2~10_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~7_combout\);

-- Location: FF_X24_Y27_N7
\light_2|div_490196_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(5));

-- Location: LCCOMB_X24_Y27_N26
\light_2|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~12_combout\ = (\light_2|div_490196_counter\(6) & (\light_2|Add2~11\ $ (GND))) # (!\light_2|div_490196_counter\(6) & (!\light_2|Add2~11\ & VCC))
-- \light_2|Add2~13\ = CARRY((\light_2|div_490196_counter\(6) & !\light_2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(6),
	datad => VCC,
	cin => \light_2|Add2~11\,
	combout => \light_2|Add2~12_combout\,
	cout => \light_2|Add2~13\);

-- Location: FF_X24_Y27_N27
\light_2|div_490196_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|Add2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(6));

-- Location: LCCOMB_X24_Y27_N28
\light_2|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~14_combout\ = (\light_2|div_490196_counter\(7) & (!\light_2|Add2~13\)) # (!\light_2|div_490196_counter\(7) & ((\light_2|Add2~13\) # (GND)))
-- \light_2|Add2~15\ = CARRY((!\light_2|Add2~13\) # (!\light_2|div_490196_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(7),
	datad => VCC,
	cin => \light_2|Add2~13\,
	combout => \light_2|Add2~14_combout\,
	cout => \light_2|Add2~15\);

-- Location: LCCOMB_X23_Y26_N10
\light_2|div_490196_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~8_combout\ = (!\light_2|Equal0~5_combout\ & \light_2|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Equal0~5_combout\,
	datad => \light_2|Add2~14_combout\,
	combout => \light_2|div_490196_counter~8_combout\);

-- Location: FF_X23_Y26_N11
\light_2|div_490196_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(7));

-- Location: LCCOMB_X24_Y27_N30
\light_2|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~16_combout\ = (\light_2|div_490196_counter\(8) & (\light_2|Add2~15\ $ (GND))) # (!\light_2|div_490196_counter\(8) & (!\light_2|Add2~15\ & VCC))
-- \light_2|Add2~17\ = CARRY((\light_2|div_490196_counter\(8) & !\light_2|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(8),
	datad => VCC,
	cin => \light_2|Add2~15\,
	combout => \light_2|Add2~16_combout\,
	cout => \light_2|Add2~17\);

-- Location: FF_X24_Y27_N31
\light_2|div_490196_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|Add2~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(8));

-- Location: LCCOMB_X24_Y26_N0
\light_2|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~18_combout\ = (\light_2|div_490196_counter\(9) & (!\light_2|Add2~17\)) # (!\light_2|div_490196_counter\(9) & ((\light_2|Add2~17\) # (GND)))
-- \light_2|Add2~19\ = CARRY((!\light_2|Add2~17\) # (!\light_2|div_490196_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(9),
	datad => VCC,
	cin => \light_2|Add2~17\,
	combout => \light_2|Add2~18_combout\,
	cout => \light_2|Add2~19\);

-- Location: LCCOMB_X23_Y26_N12
\light_2|div_490196_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~3_combout\ = (!\light_2|Equal0~5_combout\ & \light_2|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Equal0~5_combout\,
	datac => \light_2|Add2~18_combout\,
	combout => \light_2|div_490196_counter~3_combout\);

-- Location: FF_X23_Y26_N13
\light_2|div_490196_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(9));

-- Location: LCCOMB_X24_Y26_N2
\light_2|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~20_combout\ = (\light_2|div_490196_counter\(10) & (\light_2|Add2~19\ $ (GND))) # (!\light_2|div_490196_counter\(10) & (!\light_2|Add2~19\ & VCC))
-- \light_2|Add2~21\ = CARRY((\light_2|div_490196_counter\(10) & !\light_2|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(10),
	datad => VCC,
	cin => \light_2|Add2~19\,
	combout => \light_2|Add2~20_combout\,
	cout => \light_2|Add2~21\);

-- Location: FF_X24_Y26_N3
\light_2|div_490196_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_2|Add2~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(10));

-- Location: LCCOMB_X24_Y26_N26
\light_2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~2_combout\ = (\light_2|div_490196_counter\(7) & (!\light_2|div_490196_counter\(10) & (!\light_2|div_490196_counter\(8) & \light_2|div_490196_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(7),
	datab => \light_2|div_490196_counter\(10),
	datac => \light_2|div_490196_counter\(8),
	datad => \light_2|div_490196_counter\(9),
	combout => \light_2|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y26_N4
\light_2|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~22_combout\ = (\light_2|div_490196_counter\(11) & (!\light_2|Add2~21\)) # (!\light_2|div_490196_counter\(11) & ((\light_2|Add2~21\) # (GND)))
-- \light_2|Add2~23\ = CARRY((!\light_2|Add2~21\) # (!\light_2|div_490196_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(11),
	datad => VCC,
	cin => \light_2|Add2~21\,
	combout => \light_2|Add2~22_combout\,
	cout => \light_2|Add2~23\);

-- Location: LCCOMB_X23_Y26_N30
\light_2|div_490196_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~6_combout\ = (\light_2|Add2~22_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add2~22_combout\,
	datac => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~6_combout\);

-- Location: FF_X23_Y26_N31
\light_2|div_490196_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(11));

-- Location: LCCOMB_X24_Y26_N6
\light_2|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~24_combout\ = (\light_2|div_490196_counter\(12) & (\light_2|Add2~23\ $ (GND))) # (!\light_2|div_490196_counter\(12) & (!\light_2|Add2~23\ & VCC))
-- \light_2|Add2~25\ = CARRY((\light_2|div_490196_counter\(12) & !\light_2|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(12),
	datad => VCC,
	cin => \light_2|Add2~23\,
	combout => \light_2|Add2~24_combout\,
	cout => \light_2|Add2~25\);

-- Location: LCCOMB_X23_Y26_N24
\light_2|div_490196_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~5_combout\ = (\light_2|Add2~24_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|Add2~24_combout\,
	datac => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~5_combout\);

-- Location: FF_X23_Y26_N25
\light_2|div_490196_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(12));

-- Location: LCCOMB_X24_Y26_N8
\light_2|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~26_combout\ = (\light_2|div_490196_counter\(13) & (!\light_2|Add2~25\)) # (!\light_2|div_490196_counter\(13) & ((\light_2|Add2~25\) # (GND)))
-- \light_2|Add2~27\ = CARRY((!\light_2|Add2~25\) # (!\light_2|div_490196_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(13),
	datad => VCC,
	cin => \light_2|Add2~25\,
	combout => \light_2|Add2~26_combout\,
	cout => \light_2|Add2~27\);

-- Location: LCCOMB_X23_Y26_N28
\light_2|div_490196_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~4_combout\ = (\light_2|Add2~26_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add2~26_combout\,
	datac => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~4_combout\);

-- Location: FF_X23_Y26_N29
\light_2|div_490196_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(13));

-- Location: LCCOMB_X23_Y26_N4
\light_2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~0_combout\ = (\light_2|div_490196_counter\(11) & (\light_2|div_490196_counter\(12) & (\light_2|div_490196_counter\(13) & \light_2|div_490196_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(11),
	datab => \light_2|div_490196_counter\(12),
	datac => \light_2|div_490196_counter\(13),
	datad => \light_2|div_490196_counter\(18),
	combout => \light_2|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\light_2|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~28_combout\ = (\light_2|div_490196_counter\(14) & (\light_2|Add2~27\ $ (GND))) # (!\light_2|div_490196_counter\(14) & (!\light_2|Add2~27\ & VCC))
-- \light_2|Add2~29\ = CARRY((\light_2|div_490196_counter\(14) & !\light_2|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(14),
	datad => VCC,
	cin => \light_2|Add2~27\,
	combout => \light_2|Add2~28_combout\,
	cout => \light_2|Add2~29\);

-- Location: LCCOMB_X24_Y26_N24
\light_2|div_490196_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~12_combout\ = (\light_2|Add2~28_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add2~28_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~12_combout\);

-- Location: FF_X24_Y26_N25
\light_2|div_490196_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(14));

-- Location: LCCOMB_X24_Y26_N12
\light_2|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~30_combout\ = (\light_2|div_490196_counter\(15) & (!\light_2|Add2~29\)) # (!\light_2|div_490196_counter\(15) & ((\light_2|Add2~29\) # (GND)))
-- \light_2|Add2~31\ = CARRY((!\light_2|Add2~29\) # (!\light_2|div_490196_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(15),
	datad => VCC,
	cin => \light_2|Add2~29\,
	combout => \light_2|Add2~30_combout\,
	cout => \light_2|Add2~31\);

-- Location: FF_X24_Y26_N13
\light_2|div_490196_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|Add2~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(15));

-- Location: LCCOMB_X24_Y26_N14
\light_2|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~32_combout\ = (\light_2|div_490196_counter\(16) & (\light_2|Add2~31\ $ (GND))) # (!\light_2|div_490196_counter\(16) & (!\light_2|Add2~31\ & VCC))
-- \light_2|Add2~33\ = CARRY((\light_2|div_490196_counter\(16) & !\light_2|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|div_490196_counter\(16),
	datad => VCC,
	cin => \light_2|Add2~31\,
	combout => \light_2|Add2~32_combout\,
	cout => \light_2|Add2~33\);

-- Location: LCCOMB_X24_Y26_N28
\light_2|div_490196_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~1_combout\ = (!\light_2|Equal0~5_combout\ & \light_2|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Equal0~5_combout\,
	datad => \light_2|Add2~32_combout\,
	combout => \light_2|div_490196_counter~1_combout\);

-- Location: FF_X24_Y26_N29
\light_2|div_490196_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(16));

-- Location: LCCOMB_X23_Y26_N16
\light_2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~1_combout\ = (\light_2|div_490196_counter\(17) & (\light_2|div_490196_counter\(14) & (!\light_2|div_490196_counter\(15) & \light_2|div_490196_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(17),
	datab => \light_2|div_490196_counter\(14),
	datac => \light_2|div_490196_counter\(15),
	datad => \light_2|div_490196_counter\(16),
	combout => \light_2|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y27_N12
\light_2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~3_combout\ = (\light_2|div_490196_counter\(5) & (!\light_2|div_490196_counter\(3) & (!\light_2|div_490196_counter\(6) & \light_2|div_490196_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(5),
	datab => \light_2|div_490196_counter\(3),
	datac => \light_2|div_490196_counter\(6),
	datad => \light_2|div_490196_counter\(4),
	combout => \light_2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y26_N22
\light_2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~4_combout\ = (\light_2|Equal0~2_combout\ & (\light_2|Equal0~0_combout\ & (\light_2|Equal0~1_combout\ & \light_2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Equal0~2_combout\,
	datab => \light_2|Equal0~0_combout\,
	datac => \light_2|Equal0~1_combout\,
	datad => \light_2|Equal0~3_combout\,
	combout => \light_2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y26_N20
\light_2|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal0~5_combout\ = (\light_2|Equal0~4_combout\ & (!\light_2|div_490196_counter\(1) & (\light_2|div_490196_counter\(2) & \light_2|div_490196_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Equal0~4_combout\,
	datab => \light_2|div_490196_counter\(1),
	datac => \light_2|div_490196_counter\(2),
	datad => \light_2|div_490196_counter\(0),
	combout => \light_2|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y26_N16
\light_2|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~34_combout\ = (\light_2|div_490196_counter\(17) & (!\light_2|Add2~33\)) # (!\light_2|div_490196_counter\(17) & ((\light_2|Add2~33\) # (GND)))
-- \light_2|Add2~35\ = CARRY((!\light_2|Add2~33\) # (!\light_2|div_490196_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(17),
	datad => VCC,
	cin => \light_2|Add2~33\,
	combout => \light_2|Add2~34_combout\,
	cout => \light_2|Add2~35\);

-- Location: LCCOMB_X23_Y26_N26
\light_2|div_490196_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~0_combout\ = (!\light_2|Equal0~5_combout\ & \light_2|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Equal0~5_combout\,
	datad => \light_2|Add2~34_combout\,
	combout => \light_2|div_490196_counter~0_combout\);

-- Location: FF_X23_Y26_N27
\light_2|div_490196_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(17));

-- Location: LCCOMB_X24_Y26_N18
\light_2|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add2~36_combout\ = \light_2|div_490196_counter\(18) $ (!\light_2|Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(18),
	cin => \light_2|Add2~35\,
	combout => \light_2|Add2~36_combout\);

-- Location: LCCOMB_X24_Y26_N30
\light_2|div_490196_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|div_490196_counter~2_combout\ = (\light_2|Add2~36_combout\ & !\light_2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|Add2~36_combout\,
	datad => \light_2|Equal0~5_combout\,
	combout => \light_2|div_490196_counter~2_combout\);

-- Location: FF_X24_Y26_N31
\light_2|div_490196_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_2|div_490196_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|div_490196_counter\(18));

-- Location: LCCOMB_X23_Y26_N8
\light_2|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan2~1_combout\ = (((!\light_2|div_490196_counter\(12)) # (!\light_2|div_490196_counter\(11))) # (!\light_2|div_490196_counter\(13))) # (!\light_2|div_490196_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(10),
	datab => \light_2|div_490196_counter\(13),
	datac => \light_2|div_490196_counter\(11),
	datad => \light_2|div_490196_counter\(12),
	combout => \light_2|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y27_N4
\light_2|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan2~2_combout\ = (\light_2|div_490196_counter\(4)) # ((\light_2|div_490196_counter\(3) & ((\light_2|div_490196_counter\(2)) # (\light_2|div_490196_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(4),
	datab => \light_2|div_490196_counter\(2),
	datac => \light_2|div_490196_counter\(1),
	datad => \light_2|div_490196_counter\(3),
	combout => \light_2|LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y27_N10
\light_2|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan2~3_combout\ = (\light_2|div_490196_counter\(7)) # ((\light_2|div_490196_counter\(6) & (\light_2|LessThan2~2_combout\ & \light_2|div_490196_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(6),
	datab => \light_2|div_490196_counter\(7),
	datac => \light_2|LessThan2~2_combout\,
	datad => \light_2|div_490196_counter\(5),
	combout => \light_2|LessThan2~3_combout\);

-- Location: LCCOMB_X23_Y26_N20
\light_2|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan2~4_combout\ = (\light_2|LessThan2~1_combout\) # ((!\light_2|div_490196_counter\(9) & ((!\light_2|LessThan2~3_combout\) # (!\light_2|div_490196_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(9),
	datab => \light_2|div_490196_counter\(8),
	datac => \light_2|LessThan2~1_combout\,
	datad => \light_2|LessThan2~3_combout\,
	combout => \light_2|LessThan2~4_combout\);

-- Location: LCCOMB_X23_Y26_N14
\light_2|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan2~0_combout\ = (!\light_2|div_490196_counter\(18) & (((!\light_2|div_490196_counter\(16)) # (!\light_2|div_490196_counter\(17))) # (!\light_2|div_490196_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(18),
	datab => \light_2|div_490196_counter\(15),
	datac => \light_2|div_490196_counter\(17),
	datad => \light_2|div_490196_counter\(16),
	combout => \light_2|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y26_N22
\rtl~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = LCELL((\light_2|LessThan2~0_combout\) # ((!\light_2|div_490196_counter\(18) & (\light_2|LessThan2~4_combout\ & !\light_2|div_490196_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|div_490196_counter\(18),
	datab => \light_2|LessThan2~4_combout\,
	datac => \light_2|LessThan2~0_combout\,
	datad => \light_2|div_490196_counter\(14),
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X10_Y26_N12
\light_2|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~0_combout\ = \light_2|led_counter\(0) $ (VCC)
-- \light_2|Add3~1\ = CARRY(\light_2|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(0),
	datad => VCC,
	combout => \light_2|Add3~0_combout\,
	cout => \light_2|Add3~1\);

-- Location: FF_X10_Y26_N13
\light_2|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|Add3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(0));

-- Location: LCCOMB_X10_Y26_N14
\light_2|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~2_combout\ = (\light_2|led_counter\(1) & (!\light_2|Add3~1\)) # (!\light_2|led_counter\(1) & ((\light_2|Add3~1\) # (GND)))
-- \light_2|Add3~3\ = CARRY((!\light_2|Add3~1\) # (!\light_2|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(1),
	datad => VCC,
	cin => \light_2|Add3~1\,
	combout => \light_2|Add3~2_combout\,
	cout => \light_2|Add3~3\);

-- Location: FF_X10_Y26_N15
\light_2|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|Add3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(1));

-- Location: LCCOMB_X10_Y26_N16
\light_2|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~4_combout\ = (\light_2|led_counter\(2) & (\light_2|Add3~3\ $ (GND))) # (!\light_2|led_counter\(2) & (!\light_2|Add3~3\ & VCC))
-- \light_2|Add3~5\ = CARRY((\light_2|led_counter\(2) & !\light_2|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(2),
	datad => VCC,
	cin => \light_2|Add3~3\,
	combout => \light_2|Add3~4_combout\,
	cout => \light_2|Add3~5\);

-- Location: LCCOMB_X10_Y26_N10
\light_2|led_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|led_counter~2_combout\ = (\light_2|Add3~4_combout\ & !\light_2|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|Add3~4_combout\,
	datad => \light_2|Equal1~2_combout\,
	combout => \light_2|led_counter~2_combout\);

-- Location: FF_X10_Y26_N11
\light_2|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|led_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(2));

-- Location: LCCOMB_X10_Y26_N18
\light_2|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~6_combout\ = (\light_2|led_counter\(3) & (!\light_2|Add3~5\)) # (!\light_2|led_counter\(3) & ((\light_2|Add3~5\) # (GND)))
-- \light_2|Add3~7\ = CARRY((!\light_2|Add3~5\) # (!\light_2|led_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(3),
	datad => VCC,
	cin => \light_2|Add3~5\,
	combout => \light_2|Add3~6_combout\,
	cout => \light_2|Add3~7\);

-- Location: FF_X10_Y26_N19
\light_2|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|Add3~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(3));

-- Location: LCCOMB_X10_Y26_N20
\light_2|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~8_combout\ = (\light_2|led_counter\(4) & (\light_2|Add3~7\ $ (GND))) # (!\light_2|led_counter\(4) & (!\light_2|Add3~7\ & VCC))
-- \light_2|Add3~9\ = CARRY((\light_2|led_counter\(4) & !\light_2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(4),
	datad => VCC,
	cin => \light_2|Add3~7\,
	combout => \light_2|Add3~8_combout\,
	cout => \light_2|Add3~9\);

-- Location: FF_X10_Y26_N21
\light_2|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|Add3~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(4));

-- Location: LCCOMB_X10_Y26_N28
\light_2|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~16_combout\ = (\light_2|led_counter\(8) & (\light_2|Add3~15\ $ (GND))) # (!\light_2|led_counter\(8) & (!\light_2|Add3~15\ & VCC))
-- \light_2|Add3~17\ = CARRY((\light_2|led_counter\(8) & !\light_2|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(8),
	datad => VCC,
	cin => \light_2|Add3~15\,
	combout => \light_2|Add3~16_combout\,
	cout => \light_2|Add3~17\);

-- Location: LCCOMB_X10_Y26_N30
\light_2|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~18_combout\ = \light_2|Add3~17\ $ (\light_2|led_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_2|led_counter\(9),
	cin => \light_2|Add3~17\,
	combout => \light_2|Add3~18_combout\);

-- Location: LCCOMB_X10_Y26_N4
\light_2|led_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|led_counter~3_combout\ = (\light_2|Add3~18_combout\ & !\light_2|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add3~18_combout\,
	datad => \light_2|Equal1~2_combout\,
	combout => \light_2|led_counter~3_combout\);

-- Location: FF_X10_Y26_N5
\light_2|led_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|led_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(9));

-- Location: LCCOMB_X11_Y26_N22
\light_2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal1~1_combout\ = (!\light_2|led_counter\(7) & (!\light_2|led_counter\(4) & (\light_2|led_counter\(9) & !\light_2|led_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(7),
	datab => \light_2|led_counter\(4),
	datac => \light_2|led_counter\(9),
	datad => \light_2|led_counter\(8),
	combout => \light_2|Equal1~1_combout\);

-- Location: LCCOMB_X10_Y26_N22
\light_2|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~10_combout\ = (\light_2|led_counter\(5) & (!\light_2|Add3~9\)) # (!\light_2|led_counter\(5) & ((\light_2|Add3~9\) # (GND)))
-- \light_2|Add3~11\ = CARRY((!\light_2|Add3~9\) # (!\light_2|led_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(5),
	datad => VCC,
	cin => \light_2|Add3~9\,
	combout => \light_2|Add3~10_combout\,
	cout => \light_2|Add3~11\);

-- Location: LCCOMB_X10_Y26_N8
\light_2|led_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|led_counter~1_combout\ = (\light_2|Add3~10_combout\ & !\light_2|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add3~10_combout\,
	datad => \light_2|Equal1~2_combout\,
	combout => \light_2|led_counter~1_combout\);

-- Location: FF_X10_Y26_N9
\light_2|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|led_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(5));

-- Location: LCCOMB_X11_Y26_N24
\light_2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal1~0_combout\ = (\light_2|led_counter\(1) & (\light_2|led_counter\(6) & (\light_2|led_counter\(0) & \light_2|led_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(1),
	datab => \light_2|led_counter\(6),
	datac => \light_2|led_counter\(0),
	datad => \light_2|led_counter\(5),
	combout => \light_2|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y26_N4
\light_2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal1~2_combout\ = (!\light_2|led_counter\(2) & (!\light_2|led_counter\(3) & (\light_2|Equal1~1_combout\ & \light_2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(2),
	datab => \light_2|led_counter\(3),
	datac => \light_2|Equal1~1_combout\,
	datad => \light_2|Equal1~0_combout\,
	combout => \light_2|Equal1~2_combout\);

-- Location: LCCOMB_X10_Y26_N24
\light_2|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~12_combout\ = (\light_2|led_counter\(6) & (\light_2|Add3~11\ $ (GND))) # (!\light_2|led_counter\(6) & (!\light_2|Add3~11\ & VCC))
-- \light_2|Add3~13\ = CARRY((\light_2|led_counter\(6) & !\light_2|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(6),
	datad => VCC,
	cin => \light_2|Add3~11\,
	combout => \light_2|Add3~12_combout\,
	cout => \light_2|Add3~13\);

-- Location: LCCOMB_X11_Y26_N20
\light_2|led_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|led_counter~0_combout\ = (!\light_2|Equal1~2_combout\ & \light_2|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Equal1~2_combout\,
	datad => \light_2|Add3~12_combout\,
	combout => \light_2|led_counter~0_combout\);

-- Location: FF_X11_Y26_N21
\light_2|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|led_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(6));

-- Location: LCCOMB_X10_Y26_N26
\light_2|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add3~14_combout\ = (\light_2|led_counter\(7) & (!\light_2|Add3~13\)) # (!\light_2|led_counter\(7) & ((\light_2|Add3~13\) # (GND)))
-- \light_2|Add3~15\ = CARRY((!\light_2|Add3~13\) # (!\light_2|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|led_counter\(7),
	datad => VCC,
	cin => \light_2|Add3~13\,
	combout => \light_2|Add3~14_combout\,
	cout => \light_2|Add3~15\);

-- Location: LCCOMB_X11_Y26_N26
\light_2|led_counter[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|led_counter[7]~feeder_combout\ = \light_2|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_2|Add3~14_combout\,
	combout => \light_2|led_counter[7]~feeder_combout\);

-- Location: FF_X11_Y26_N27
\light_2|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|led_counter[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(7));

-- Location: FF_X10_Y26_N29
\light_2|led_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|Add3~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|led_counter\(8));

-- Location: LCCOMB_X11_Y26_N8
\light_2|pwm_num[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num[5]~0_combout\ = (\light_2|led_counter\(5) & (\light_2|led_counter\(6) & (\light_2|led_counter\(7) & \light_2|led_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(5),
	datab => \light_2|led_counter\(6),
	datac => \light_2|led_counter\(7),
	datad => \light_2|led_counter\(4),
	combout => \light_2|pwm_num[5]~0_combout\);

-- Location: LCCOMB_X11_Y26_N2
\light_2|pwm_num[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num[5]~1_combout\ = (\light_2|led_counter\(2) & (\light_2|led_counter\(3) & (\light_2|pwm_num[5]~0_combout\ & \light_2|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(2),
	datab => \light_2|led_counter\(3),
	datac => \light_2|pwm_num[5]~0_combout\,
	datad => \light_2|led_counter\(1),
	combout => \light_2|pwm_num[5]~1_combout\);

-- Location: LCCOMB_X11_Y26_N28
\light_2|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan3~0_combout\ = (!\light_2|led_counter\(8) & (!\light_2|led_counter\(9) & ((!\light_2|pwm_num[5]~1_combout\) # (!\light_2|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(0),
	datab => \light_2|led_counter\(8),
	datac => \light_2|led_counter\(9),
	datad => \light_2|pwm_num[5]~1_combout\,
	combout => \light_2|LessThan3~0_combout\);

-- Location: LCCOMB_X10_Y24_N16
\light_2|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~0_combout\ = \light_2|pwm_num\(0) $ (VCC)
-- \light_2|Add5~1\ = CARRY(\light_2|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(0),
	datad => VCC,
	combout => \light_2|Add5~0_combout\,
	cout => \light_2|Add5~1\);

-- Location: LCCOMB_X11_Y24_N4
\light_2|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~0_combout\ = \light_2|pwm_num\(0) $ (VCC)
-- \light_2|Add6~1\ = CARRY(\light_2|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(0),
	datad => VCC,
	combout => \light_2|Add6~0_combout\,
	cout => \light_2|Add6~1\);

-- Location: LCCOMB_X11_Y26_N18
\light_2|pwm_num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~2_combout\ = (\light_2|led_counter\(9)) # ((\light_2|led_counter\(8) & ((\light_2|pwm_num[5]~1_combout\))) # (!\light_2|led_counter\(8) & ((!\light_2|pwm_num[5]~1_combout\) # (!\light_2|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(0),
	datab => \light_2|led_counter\(8),
	datac => \light_2|led_counter\(9),
	datad => \light_2|pwm_num[5]~1_combout\,
	combout => \light_2|pwm_num~2_combout\);

-- Location: LCCOMB_X11_Y24_N2
\light_2|pwm_num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~10_combout\ = (\light_2|Add5~0_combout\ & ((\light_2|LessThan3~0_combout\) # ((\light_2|Add6~0_combout\ & !\light_2|pwm_num~2_combout\)))) # (!\light_2|Add5~0_combout\ & (\light_2|Add6~0_combout\ & ((!\light_2|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add5~0_combout\,
	datab => \light_2|Add6~0_combout\,
	datac => \light_2|LessThan3~0_combout\,
	datad => \light_2|pwm_num~2_combout\,
	combout => \light_2|pwm_num~10_combout\);

-- Location: LCCOMB_X10_Y26_N2
\light_2|gear_counter[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|gear_counter[3]~0_combout\ = \light_2|gear_counter\(3) $ (((\light_2|led_counter\(1) & (\light_2|led_counter\(0) & \light_2|gear_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(1),
	datab => \light_2|led_counter\(0),
	datac => \light_2|gear_counter\(3),
	datad => \light_2|gear_counter\(2),
	combout => \light_2|gear_counter[3]~0_combout\);

-- Location: FF_X10_Y26_N3
\light_2|gear_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|gear_counter[3]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|gear_counter\(3));

-- Location: LCCOMB_X10_Y26_N0
\light_2|gear_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|gear_counter~1_combout\ = (\light_2|led_counter\(1) & ((\light_2|led_counter\(0) & (!\light_2|gear_counter\(2) & \light_2|gear_counter\(3))) # (!\light_2|led_counter\(0) & (\light_2|gear_counter\(2))))) # (!\light_2|led_counter\(1) & 
-- (((\light_2|gear_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(1),
	datab => \light_2|led_counter\(0),
	datac => \light_2|gear_counter\(2),
	datad => \light_2|gear_counter\(3),
	combout => \light_2|gear_counter~1_combout\);

-- Location: FF_X10_Y26_N1
\light_2|gear_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|gear_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|gear_counter\(2));

-- Location: LCCOMB_X10_Y26_N6
\light_2|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Equal3~0_combout\ = (!\light_2|led_counter\(1) & (!\light_2|gear_counter\(2) & (!\light_2|led_counter\(0) & !\light_2|gear_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|led_counter\(1),
	datab => \light_2|gear_counter\(2),
	datac => \light_2|led_counter\(0),
	datad => \light_2|gear_counter\(3),
	combout => \light_2|Equal3~0_combout\);

-- Location: FF_X11_Y24_N3
\light_2|pwm_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~10_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(0));

-- Location: LCCOMB_X11_Y24_N6
\light_2|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~2_combout\ = (\light_2|pwm_num\(1) & (\light_2|Add6~1\ & VCC)) # (!\light_2|pwm_num\(1) & (!\light_2|Add6~1\))
-- \light_2|Add6~3\ = CARRY((!\light_2|pwm_num\(1) & !\light_2|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(1),
	datad => VCC,
	cin => \light_2|Add6~1\,
	combout => \light_2|Add6~2_combout\,
	cout => \light_2|Add6~3\);

-- Location: LCCOMB_X10_Y24_N18
\light_2|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~2_combout\ = (\light_2|pwm_num\(1) & (!\light_2|Add5~1\)) # (!\light_2|pwm_num\(1) & ((\light_2|Add5~1\) # (GND)))
-- \light_2|Add5~3\ = CARRY((!\light_2|Add5~1\) # (!\light_2|pwm_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(1),
	datad => VCC,
	cin => \light_2|Add5~1\,
	combout => \light_2|Add5~2_combout\,
	cout => \light_2|Add5~3\);

-- Location: LCCOMB_X11_Y24_N20
\light_2|pwm_num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~9_combout\ = (\light_2|Add6~2_combout\ & (((\light_2|Add5~2_combout\ & \light_2|LessThan3~0_combout\)) # (!\light_2|pwm_num~2_combout\))) # (!\light_2|Add6~2_combout\ & (\light_2|Add5~2_combout\ & (\light_2|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add6~2_combout\,
	datab => \light_2|Add5~2_combout\,
	datac => \light_2|LessThan3~0_combout\,
	datad => \light_2|pwm_num~2_combout\,
	combout => \light_2|pwm_num~9_combout\);

-- Location: FF_X11_Y24_N21
\light_2|pwm_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~9_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(1));

-- Location: LCCOMB_X11_Y24_N8
\light_2|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~4_combout\ = (\light_2|pwm_num\(2) & ((GND) # (!\light_2|Add6~3\))) # (!\light_2|pwm_num\(2) & (\light_2|Add6~3\ $ (GND)))
-- \light_2|Add6~5\ = CARRY((\light_2|pwm_num\(2)) # (!\light_2|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(2),
	datad => VCC,
	cin => \light_2|Add6~3\,
	combout => \light_2|Add6~4_combout\,
	cout => \light_2|Add6~5\);

-- Location: LCCOMB_X10_Y24_N20
\light_2|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~4_combout\ = (\light_2|pwm_num\(2) & (\light_2|Add5~3\ $ (GND))) # (!\light_2|pwm_num\(2) & (!\light_2|Add5~3\ & VCC))
-- \light_2|Add5~5\ = CARRY((\light_2|pwm_num\(2) & !\light_2|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(2),
	datad => VCC,
	cin => \light_2|Add5~3\,
	combout => \light_2|Add5~4_combout\,
	cout => \light_2|Add5~5\);

-- Location: LCCOMB_X11_Y24_N30
\light_2|pwm_num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~8_combout\ = (\light_2|Add6~4_combout\ & (((\light_2|Add5~4_combout\ & \light_2|LessThan3~0_combout\)) # (!\light_2|pwm_num~2_combout\))) # (!\light_2|Add6~4_combout\ & (\light_2|Add5~4_combout\ & (\light_2|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add6~4_combout\,
	datab => \light_2|Add5~4_combout\,
	datac => \light_2|LessThan3~0_combout\,
	datad => \light_2|pwm_num~2_combout\,
	combout => \light_2|pwm_num~8_combout\);

-- Location: FF_X11_Y24_N31
\light_2|pwm_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~8_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(2));

-- Location: LCCOMB_X11_Y24_N10
\light_2|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~6_combout\ = (\light_2|pwm_num\(3) & (\light_2|Add6~5\ & VCC)) # (!\light_2|pwm_num\(3) & (!\light_2|Add6~5\))
-- \light_2|Add6~7\ = CARRY((!\light_2|pwm_num\(3) & !\light_2|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(3),
	datad => VCC,
	cin => \light_2|Add6~5\,
	combout => \light_2|Add6~6_combout\,
	cout => \light_2|Add6~7\);

-- Location: LCCOMB_X10_Y24_N22
\light_2|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~6_combout\ = (\light_2|pwm_num\(3) & (!\light_2|Add5~5\)) # (!\light_2|pwm_num\(3) & ((\light_2|Add5~5\) # (GND)))
-- \light_2|Add5~7\ = CARRY((!\light_2|Add5~5\) # (!\light_2|pwm_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(3),
	datad => VCC,
	cin => \light_2|Add5~5\,
	combout => \light_2|Add5~6_combout\,
	cout => \light_2|Add5~7\);

-- Location: LCCOMB_X11_Y24_N28
\light_2|pwm_num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~7_combout\ = (\light_2|Add6~6_combout\ & (((\light_2|Add5~6_combout\ & \light_2|LessThan3~0_combout\)) # (!\light_2|pwm_num~2_combout\))) # (!\light_2|Add6~6_combout\ & (\light_2|Add5~6_combout\ & (\light_2|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add6~6_combout\,
	datab => \light_2|Add5~6_combout\,
	datac => \light_2|LessThan3~0_combout\,
	datad => \light_2|pwm_num~2_combout\,
	combout => \light_2|pwm_num~7_combout\);

-- Location: FF_X11_Y24_N29
\light_2|pwm_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~7_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(3));

-- Location: LCCOMB_X11_Y24_N12
\light_2|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~8_combout\ = (\light_2|pwm_num\(4) & ((GND) # (!\light_2|Add6~7\))) # (!\light_2|pwm_num\(4) & (\light_2|Add6~7\ $ (GND)))
-- \light_2|Add6~9\ = CARRY((\light_2|pwm_num\(4)) # (!\light_2|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(4),
	datad => VCC,
	cin => \light_2|Add6~7\,
	combout => \light_2|Add6~8_combout\,
	cout => \light_2|Add6~9\);

-- Location: LCCOMB_X10_Y24_N24
\light_2|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~8_combout\ = (\light_2|pwm_num\(4) & (\light_2|Add5~7\ $ (GND))) # (!\light_2|pwm_num\(4) & (!\light_2|Add5~7\ & VCC))
-- \light_2|Add5~9\ = CARRY((\light_2|pwm_num\(4) & !\light_2|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(4),
	datad => VCC,
	cin => \light_2|Add5~7\,
	combout => \light_2|Add5~8_combout\,
	cout => \light_2|Add5~9\);

-- Location: LCCOMB_X11_Y24_N22
\light_2|pwm_num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~6_combout\ = (\light_2|Add6~8_combout\ & (((\light_2|LessThan3~0_combout\ & \light_2|Add5~8_combout\)) # (!\light_2|pwm_num~2_combout\))) # (!\light_2|Add6~8_combout\ & (((\light_2|LessThan3~0_combout\ & \light_2|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|Add6~8_combout\,
	datab => \light_2|pwm_num~2_combout\,
	datac => \light_2|LessThan3~0_combout\,
	datad => \light_2|Add5~8_combout\,
	combout => \light_2|pwm_num~6_combout\);

-- Location: FF_X11_Y24_N23
\light_2|pwm_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~6_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(4));

-- Location: LCCOMB_X11_Y24_N14
\light_2|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~10_combout\ = (\light_2|pwm_num\(5) & (\light_2|Add6~9\ & VCC)) # (!\light_2|pwm_num\(5) & (!\light_2|Add6~9\))
-- \light_2|Add6~11\ = CARRY((!\light_2|pwm_num\(5) & !\light_2|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(5),
	datad => VCC,
	cin => \light_2|Add6~9\,
	combout => \light_2|Add6~10_combout\,
	cout => \light_2|Add6~11\);

-- Location: LCCOMB_X10_Y24_N26
\light_2|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~10_combout\ = (\light_2|pwm_num\(5) & (!\light_2|Add5~9\)) # (!\light_2|pwm_num\(5) & ((\light_2|Add5~9\) # (GND)))
-- \light_2|Add5~11\ = CARRY((!\light_2|Add5~9\) # (!\light_2|pwm_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(5),
	datad => VCC,
	cin => \light_2|Add5~9\,
	combout => \light_2|Add5~10_combout\,
	cout => \light_2|Add5~11\);

-- Location: LCCOMB_X11_Y24_N0
\light_2|pwm_num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~5_combout\ = (\light_2|LessThan3~0_combout\ & ((\light_2|Add5~10_combout\) # ((\light_2|Add6~10_combout\ & !\light_2|pwm_num~2_combout\)))) # (!\light_2|LessThan3~0_combout\ & (\light_2|Add6~10_combout\ & 
-- ((!\light_2|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|LessThan3~0_combout\,
	datab => \light_2|Add6~10_combout\,
	datac => \light_2|Add5~10_combout\,
	datad => \light_2|pwm_num~2_combout\,
	combout => \light_2|pwm_num~5_combout\);

-- Location: FF_X11_Y24_N1
\light_2|pwm_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~5_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(5));

-- Location: LCCOMB_X11_Y24_N16
\light_2|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~12_combout\ = (\light_2|pwm_num\(6) & ((GND) # (!\light_2|Add6~11\))) # (!\light_2|pwm_num\(6) & (\light_2|Add6~11\ $ (GND)))
-- \light_2|Add6~13\ = CARRY((\light_2|pwm_num\(6)) # (!\light_2|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(6),
	datad => VCC,
	cin => \light_2|Add6~11\,
	combout => \light_2|Add6~12_combout\,
	cout => \light_2|Add6~13\);

-- Location: LCCOMB_X10_Y24_N28
\light_2|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~12_combout\ = (\light_2|pwm_num\(6) & (\light_2|Add5~11\ $ (GND))) # (!\light_2|pwm_num\(6) & (!\light_2|Add5~11\ & VCC))
-- \light_2|Add5~13\ = CARRY((\light_2|pwm_num\(6) & !\light_2|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_2|pwm_num\(6),
	datad => VCC,
	cin => \light_2|Add5~11\,
	combout => \light_2|Add5~12_combout\,
	cout => \light_2|Add5~13\);

-- Location: LCCOMB_X11_Y24_N26
\light_2|pwm_num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~4_combout\ = (\light_2|LessThan3~0_combout\ & ((\light_2|Add5~12_combout\) # ((\light_2|Add6~12_combout\ & !\light_2|pwm_num~2_combout\)))) # (!\light_2|LessThan3~0_combout\ & (\light_2|Add6~12_combout\ & (!\light_2|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|LessThan3~0_combout\,
	datab => \light_2|Add6~12_combout\,
	datac => \light_2|pwm_num~2_combout\,
	datad => \light_2|Add5~12_combout\,
	combout => \light_2|pwm_num~4_combout\);

-- Location: FF_X11_Y24_N27
\light_2|pwm_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~4_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(6));

-- Location: LCCOMB_X11_Y24_N18
\light_2|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add6~14_combout\ = \light_2|Add6~13\ $ (!\light_2|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_2|pwm_num\(7),
	cin => \light_2|Add6~13\,
	combout => \light_2|Add6~14_combout\);

-- Location: LCCOMB_X10_Y24_N30
\light_2|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|Add5~14_combout\ = \light_2|Add5~13\ $ (\light_2|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_2|pwm_num\(7),
	cin => \light_2|Add5~13\,
	combout => \light_2|Add5~14_combout\);

-- Location: LCCOMB_X11_Y24_N24
\light_2|pwm_num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|pwm_num~3_combout\ = (\light_2|LessThan3~0_combout\ & ((\light_2|Add5~14_combout\) # ((\light_2|Add6~14_combout\ & !\light_2|pwm_num~2_combout\)))) # (!\light_2|LessThan3~0_combout\ & (\light_2|Add6~14_combout\ & (!\light_2|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|LessThan3~0_combout\,
	datab => \light_2|Add6~14_combout\,
	datac => \light_2|pwm_num~2_combout\,
	datad => \light_2|Add5~14_combout\,
	combout => \light_2|pwm_num~3_combout\);

-- Location: FF_X11_Y24_N25
\light_2|pwm_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~4clkctrl_outclk\,
	d => \light_2|pwm_num~3_combout\,
	clrn => \reset~input_o\,
	ena => \light_2|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_2|pwm_num\(7));

-- Location: LCCOMB_X12_Y24_N0
\light_2|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~1_cout\ = CARRY((!\light_2|pwm_num\(0) & \light_2|pwm_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(0),
	datab => \light_2|pwm_counter\(0),
	datad => VCC,
	cout => \light_2|LessThan5~1_cout\);

-- Location: LCCOMB_X12_Y24_N2
\light_2|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~3_cout\ = CARRY((\light_2|pwm_counter\(1) & (\light_2|pwm_num\(1) & !\light_2|LessThan5~1_cout\)) # (!\light_2|pwm_counter\(1) & ((\light_2|pwm_num\(1)) # (!\light_2|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(1),
	datab => \light_2|pwm_num\(1),
	datad => VCC,
	cin => \light_2|LessThan5~1_cout\,
	cout => \light_2|LessThan5~3_cout\);

-- Location: LCCOMB_X12_Y24_N4
\light_2|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~5_cout\ = CARRY((\light_2|pwm_counter\(2) & ((!\light_2|LessThan5~3_cout\) # (!\light_2|pwm_num\(2)))) # (!\light_2|pwm_counter\(2) & (!\light_2|pwm_num\(2) & !\light_2|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(2),
	datab => \light_2|pwm_num\(2),
	datad => VCC,
	cin => \light_2|LessThan5~3_cout\,
	cout => \light_2|LessThan5~5_cout\);

-- Location: LCCOMB_X12_Y24_N6
\light_2|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~7_cout\ = CARRY((\light_2|pwm_counter\(3) & (\light_2|pwm_num\(3) & !\light_2|LessThan5~5_cout\)) # (!\light_2|pwm_counter\(3) & ((\light_2|pwm_num\(3)) # (!\light_2|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(3),
	datab => \light_2|pwm_num\(3),
	datad => VCC,
	cin => \light_2|LessThan5~5_cout\,
	cout => \light_2|LessThan5~7_cout\);

-- Location: LCCOMB_X12_Y24_N8
\light_2|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~9_cout\ = CARRY((\light_2|pwm_counter\(4) & ((!\light_2|LessThan5~7_cout\) # (!\light_2|pwm_num\(4)))) # (!\light_2|pwm_counter\(4) & (!\light_2|pwm_num\(4) & !\light_2|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(4),
	datab => \light_2|pwm_num\(4),
	datad => VCC,
	cin => \light_2|LessThan5~7_cout\,
	cout => \light_2|LessThan5~9_cout\);

-- Location: LCCOMB_X12_Y24_N10
\light_2|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~11_cout\ = CARRY((\light_2|pwm_num\(5) & ((!\light_2|LessThan5~9_cout\) # (!\light_2|pwm_counter\(5)))) # (!\light_2|pwm_num\(5) & (!\light_2|pwm_counter\(5) & !\light_2|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(5),
	datab => \light_2|pwm_counter\(5),
	datad => VCC,
	cin => \light_2|LessThan5~9_cout\,
	cout => \light_2|LessThan5~11_cout\);

-- Location: LCCOMB_X12_Y24_N12
\light_2|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~13_cout\ = CARRY((\light_2|pwm_num\(6) & (\light_2|pwm_counter\(6) & !\light_2|LessThan5~11_cout\)) # (!\light_2|pwm_num\(6) & ((\light_2|pwm_counter\(6)) # (!\light_2|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_num\(6),
	datab => \light_2|pwm_counter\(6),
	datad => VCC,
	cin => \light_2|LessThan5~11_cout\,
	cout => \light_2|LessThan5~13_cout\);

-- Location: LCCOMB_X12_Y24_N14
\light_2|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_2|LessThan5~14_combout\ = (\light_2|pwm_counter\(7) & ((\light_2|LessThan5~13_cout\) # (!\light_2|pwm_num\(7)))) # (!\light_2|pwm_counter\(7) & (\light_2|LessThan5~13_cout\ & !\light_2|pwm_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_2|pwm_counter\(7),
	datad => \light_2|pwm_num\(7),
	cin => \light_2|LessThan5~13_cout\,
	combout => \light_2|LessThan5~14_combout\);

-- Location: LCCOMB_X14_Y27_N16
\light_3|pwm_div_counter[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[0]~6_combout\ = \light_3|pwm_div_counter\(0) $ (VCC)
-- \light_3|pwm_div_counter[0]~7\ = CARRY(\light_3|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_div_counter\(0),
	datad => VCC,
	combout => \light_3|pwm_div_counter[0]~6_combout\,
	cout => \light_3|pwm_div_counter[0]~7\);

-- Location: LCCOMB_X14_Y27_N22
\light_3|pwm_div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[3]~12_combout\ = (\light_3|pwm_div_counter\(3) & (!\light_3|pwm_div_counter[2]~11\)) # (!\light_3|pwm_div_counter\(3) & ((\light_3|pwm_div_counter[2]~11\) # (GND)))
-- \light_3|pwm_div_counter[3]~13\ = CARRY((!\light_3|pwm_div_counter[2]~11\) # (!\light_3|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_div_counter\(3),
	datad => VCC,
	cin => \light_3|pwm_div_counter[2]~11\,
	combout => \light_3|pwm_div_counter[3]~12_combout\,
	cout => \light_3|pwm_div_counter[3]~13\);

-- Location: LCCOMB_X14_Y27_N24
\light_3|pwm_div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[4]~14_combout\ = (\light_3|pwm_div_counter\(4) & (\light_3|pwm_div_counter[3]~13\ $ (GND))) # (!\light_3|pwm_div_counter\(4) & (!\light_3|pwm_div_counter[3]~13\ & VCC))
-- \light_3|pwm_div_counter[4]~15\ = CARRY((\light_3|pwm_div_counter\(4) & !\light_3|pwm_div_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_div_counter\(4),
	datad => VCC,
	cin => \light_3|pwm_div_counter[3]~13\,
	combout => \light_3|pwm_div_counter[4]~14_combout\,
	cout => \light_3|pwm_div_counter[4]~15\);

-- Location: FF_X14_Y27_N25
\light_3|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|pwm_div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(4));

-- Location: LCCOMB_X14_Y27_N26
\light_3|pwm_div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[5]~16_combout\ = \light_3|pwm_div_counter\(5) $ (\light_3|pwm_div_counter[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_div_counter\(5),
	cin => \light_3|pwm_div_counter[4]~15\,
	combout => \light_3|pwm_div_counter[5]~16_combout\);

-- Location: FF_X14_Y27_N27
\light_3|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|pwm_div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(5));

-- Location: LCCOMB_X15_Y27_N24
\light_3|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan1~0_combout\ = (!\light_3|pwm_div_counter\(1) & (!\light_3|pwm_div_counter\(0) & !\light_3|pwm_div_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_div_counter\(1),
	datac => \light_3|pwm_div_counter\(0),
	datad => \light_3|pwm_div_counter\(2),
	combout => \light_3|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y27_N26
\light_3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan0~0_combout\ = (\light_3|pwm_div_counter\(5) & (\light_3|pwm_div_counter\(4) & ((\light_3|pwm_div_counter\(3)) # (!\light_3|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_div_counter\(5),
	datab => \light_3|pwm_div_counter\(3),
	datac => \light_3|LessThan1~0_combout\,
	datad => \light_3|pwm_div_counter\(4),
	combout => \light_3|LessThan0~0_combout\);

-- Location: FF_X15_Y27_N23
\light_3|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \light_3|pwm_div_counter[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(0));

-- Location: LCCOMB_X14_Y27_N18
\light_3|pwm_div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[1]~8_combout\ = (\light_3|pwm_div_counter\(1) & (!\light_3|pwm_div_counter[0]~7\)) # (!\light_3|pwm_div_counter\(1) & ((\light_3|pwm_div_counter[0]~7\) # (GND)))
-- \light_3|pwm_div_counter[1]~9\ = CARRY((!\light_3|pwm_div_counter[0]~7\) # (!\light_3|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_div_counter\(1),
	datad => VCC,
	cin => \light_3|pwm_div_counter[0]~7\,
	combout => \light_3|pwm_div_counter[1]~8_combout\,
	cout => \light_3|pwm_div_counter[1]~9\);

-- Location: FF_X15_Y27_N21
\light_3|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \light_3|pwm_div_counter[1]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(1));

-- Location: LCCOMB_X14_Y27_N20
\light_3|pwm_div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_div_counter[2]~10_combout\ = (\light_3|pwm_div_counter\(2) & (\light_3|pwm_div_counter[1]~9\ $ (GND))) # (!\light_3|pwm_div_counter\(2) & (!\light_3|pwm_div_counter[1]~9\ & VCC))
-- \light_3|pwm_div_counter[2]~11\ = CARRY((\light_3|pwm_div_counter\(2) & !\light_3|pwm_div_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_div_counter\(2),
	datad => VCC,
	cin => \light_3|pwm_div_counter[1]~9\,
	combout => \light_3|pwm_div_counter[2]~10_combout\,
	cout => \light_3|pwm_div_counter[2]~11\);

-- Location: FF_X14_Y27_N21
\light_3|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|pwm_div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(2));

-- Location: FF_X14_Y27_N23
\light_3|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|pwm_div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \light_3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_div_counter\(3));

-- Location: LCCOMB_X14_Y27_N14
\rtl~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = LCELL((!\light_3|pwm_div_counter\(5) & (((\light_3|LessThan1~0_combout\) # (!\light_3|pwm_div_counter\(4))) # (!\light_3|pwm_div_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_div_counter\(3),
	datab => \light_3|LessThan1~0_combout\,
	datac => \light_3|pwm_div_counter\(5),
	datad => \light_3|pwm_div_counter\(4),
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X16_Y26_N28
\light_3|pwm_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[0]~21_combout\ = !\light_3|pwm_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|pwm_counter\(0),
	combout => \light_3|pwm_counter[0]~21_combout\);

-- Location: FF_X16_Y26_N29
\light_3|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(0));

-- Location: LCCOMB_X16_Y26_N8
\light_3|pwm_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[1]~7_combout\ = (\light_3|pwm_counter\(0) & (\light_3|pwm_counter\(1) $ (VCC))) # (!\light_3|pwm_counter\(0) & (\light_3|pwm_counter\(1) & VCC))
-- \light_3|pwm_counter[1]~8\ = CARRY((\light_3|pwm_counter\(0) & \light_3|pwm_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(0),
	datab => \light_3|pwm_counter\(1),
	datad => VCC,
	combout => \light_3|pwm_counter[1]~7_combout\,
	cout => \light_3|pwm_counter[1]~8\);

-- Location: FF_X16_Y26_N9
\light_3|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(1));

-- Location: LCCOMB_X16_Y26_N10
\light_3|pwm_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[2]~9_combout\ = (\light_3|pwm_counter\(2) & (!\light_3|pwm_counter[1]~8\)) # (!\light_3|pwm_counter\(2) & ((\light_3|pwm_counter[1]~8\) # (GND)))
-- \light_3|pwm_counter[2]~10\ = CARRY((!\light_3|pwm_counter[1]~8\) # (!\light_3|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(2),
	datad => VCC,
	cin => \light_3|pwm_counter[1]~8\,
	combout => \light_3|pwm_counter[2]~9_combout\,
	cout => \light_3|pwm_counter[2]~10\);

-- Location: FF_X16_Y26_N11
\light_3|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(2));

-- Location: LCCOMB_X16_Y26_N12
\light_3|pwm_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[3]~11_combout\ = (\light_3|pwm_counter\(3) & (\light_3|pwm_counter[2]~10\ $ (GND))) # (!\light_3|pwm_counter\(3) & (!\light_3|pwm_counter[2]~10\ & VCC))
-- \light_3|pwm_counter[3]~12\ = CARRY((\light_3|pwm_counter\(3) & !\light_3|pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_counter\(3),
	datad => VCC,
	cin => \light_3|pwm_counter[2]~10\,
	combout => \light_3|pwm_counter[3]~11_combout\,
	cout => \light_3|pwm_counter[3]~12\);

-- Location: FF_X16_Y26_N13
\light_3|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(3));

-- Location: LCCOMB_X16_Y26_N14
\light_3|pwm_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[4]~13_combout\ = (\light_3|pwm_counter\(4) & (!\light_3|pwm_counter[3]~12\)) # (!\light_3|pwm_counter\(4) & ((\light_3|pwm_counter[3]~12\) # (GND)))
-- \light_3|pwm_counter[4]~14\ = CARRY((!\light_3|pwm_counter[3]~12\) # (!\light_3|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_counter\(4),
	datad => VCC,
	cin => \light_3|pwm_counter[3]~12\,
	combout => \light_3|pwm_counter[4]~13_combout\,
	cout => \light_3|pwm_counter[4]~14\);

-- Location: FF_X16_Y26_N15
\light_3|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(4));

-- Location: LCCOMB_X16_Y26_N16
\light_3|pwm_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[5]~15_combout\ = (\light_3|pwm_counter\(5) & (\light_3|pwm_counter[4]~14\ $ (GND))) # (!\light_3|pwm_counter\(5) & (!\light_3|pwm_counter[4]~14\ & VCC))
-- \light_3|pwm_counter[5]~16\ = CARRY((\light_3|pwm_counter\(5) & !\light_3|pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_counter\(5),
	datad => VCC,
	cin => \light_3|pwm_counter[4]~14\,
	combout => \light_3|pwm_counter[5]~15_combout\,
	cout => \light_3|pwm_counter[5]~16\);

-- Location: FF_X16_Y26_N17
\light_3|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(5));

-- Location: LCCOMB_X16_Y26_N18
\light_3|pwm_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[6]~17_combout\ = (\light_3|pwm_counter\(6) & (!\light_3|pwm_counter[5]~16\)) # (!\light_3|pwm_counter\(6) & ((\light_3|pwm_counter[5]~16\) # (GND)))
-- \light_3|pwm_counter[6]~18\ = CARRY((!\light_3|pwm_counter[5]~16\) # (!\light_3|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_counter\(6),
	datad => VCC,
	cin => \light_3|pwm_counter[5]~16\,
	combout => \light_3|pwm_counter[6]~17_combout\,
	cout => \light_3|pwm_counter[6]~18\);

-- Location: FF_X16_Y26_N19
\light_3|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(6));

-- Location: LCCOMB_X16_Y26_N20
\light_3|pwm_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_counter[7]~19_combout\ = \light_3|pwm_counter[6]~18\ $ (!\light_3|pwm_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_3|pwm_counter\(7),
	cin => \light_3|pwm_counter[6]~18\,
	combout => \light_3|pwm_counter[7]~19_combout\);

-- Location: FF_X16_Y26_N21
\light_3|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~7clkctrl_outclk\,
	d => \light_3|pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_counter\(7));

-- Location: LCCOMB_X17_Y26_N14
\light_3|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~0_combout\ = \light_3|div_490196_counter\(0) $ (VCC)
-- \light_3|Add2~1\ = CARRY(\light_3|div_490196_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(0),
	datad => VCC,
	combout => \light_3|Add2~0_combout\,
	cout => \light_3|Add2~1\);

-- Location: FF_X17_Y26_N15
\light_3|div_490196_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_3|Add2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(0));

-- Location: LCCOMB_X17_Y26_N16
\light_3|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~2_combout\ = (\light_3|div_490196_counter\(1) & (!\light_3|Add2~1\)) # (!\light_3|div_490196_counter\(1) & ((\light_3|Add2~1\) # (GND)))
-- \light_3|Add2~3\ = CARRY((!\light_3|Add2~1\) # (!\light_3|div_490196_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(1),
	datad => VCC,
	cin => \light_3|Add2~1\,
	combout => \light_3|Add2~2_combout\,
	cout => \light_3|Add2~3\);

-- Location: LCCOMB_X16_Y25_N0
\light_3|div_490196_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~11_combout\ = (!\light_3|Equal0~5_combout\ & \light_3|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Equal0~5_combout\,
	datad => \light_3|Add2~2_combout\,
	combout => \light_3|div_490196_counter~11_combout\);

-- Location: FF_X16_Y25_N1
\light_3|div_490196_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(1));

-- Location: LCCOMB_X17_Y26_N18
\light_3|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~4_combout\ = (\light_3|div_490196_counter\(2) & (\light_3|Add2~3\ $ (GND))) # (!\light_3|div_490196_counter\(2) & (!\light_3|Add2~3\ & VCC))
-- \light_3|Add2~5\ = CARRY((\light_3|div_490196_counter\(2) & !\light_3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(2),
	datad => VCC,
	cin => \light_3|Add2~3\,
	combout => \light_3|Add2~4_combout\,
	cout => \light_3|Add2~5\);

-- Location: LCCOMB_X16_Y25_N6
\light_3|div_490196_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~10_combout\ = (\light_3|Add2~4_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add2~4_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~10_combout\);

-- Location: FF_X16_Y25_N7
\light_3|div_490196_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(2));

-- Location: LCCOMB_X17_Y26_N20
\light_3|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~6_combout\ = (\light_3|div_490196_counter\(3) & (!\light_3|Add2~5\)) # (!\light_3|div_490196_counter\(3) & ((\light_3|Add2~5\) # (GND)))
-- \light_3|Add2~7\ = CARRY((!\light_3|Add2~5\) # (!\light_3|div_490196_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(3),
	datad => VCC,
	cin => \light_3|Add2~5\,
	combout => \light_3|Add2~6_combout\,
	cout => \light_3|Add2~7\);

-- Location: FF_X17_Y26_N21
\light_3|div_490196_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|Add2~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(3));

-- Location: LCCOMB_X17_Y26_N22
\light_3|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~8_combout\ = (\light_3|div_490196_counter\(4) & (\light_3|Add2~7\ $ (GND))) # (!\light_3|div_490196_counter\(4) & (!\light_3|Add2~7\ & VCC))
-- \light_3|Add2~9\ = CARRY((\light_3|div_490196_counter\(4) & !\light_3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(4),
	datad => VCC,
	cin => \light_3|Add2~7\,
	combout => \light_3|Add2~8_combout\,
	cout => \light_3|Add2~9\);

-- Location: LCCOMB_X17_Y26_N4
\light_3|div_490196_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~9_combout\ = (\light_3|Add2~8_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add2~8_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~9_combout\);

-- Location: FF_X17_Y26_N5
\light_3|div_490196_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(4));

-- Location: LCCOMB_X17_Y26_N24
\light_3|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~10_combout\ = (\light_3|div_490196_counter\(5) & (!\light_3|Add2~9\)) # (!\light_3|div_490196_counter\(5) & ((\light_3|Add2~9\) # (GND)))
-- \light_3|Add2~11\ = CARRY((!\light_3|Add2~9\) # (!\light_3|div_490196_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(5),
	datad => VCC,
	cin => \light_3|Add2~9\,
	combout => \light_3|Add2~10_combout\,
	cout => \light_3|Add2~11\);

-- Location: LCCOMB_X17_Y26_N0
\light_3|div_490196_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~7_combout\ = (\light_3|Add2~10_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|Add2~10_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~7_combout\);

-- Location: FF_X17_Y26_N1
\light_3|div_490196_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(5));

-- Location: LCCOMB_X17_Y26_N26
\light_3|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~12_combout\ = (\light_3|div_490196_counter\(6) & (\light_3|Add2~11\ $ (GND))) # (!\light_3|div_490196_counter\(6) & (!\light_3|Add2~11\ & VCC))
-- \light_3|Add2~13\ = CARRY((\light_3|div_490196_counter\(6) & !\light_3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(6),
	datad => VCC,
	cin => \light_3|Add2~11\,
	combout => \light_3|Add2~12_combout\,
	cout => \light_3|Add2~13\);

-- Location: FF_X17_Y26_N27
\light_3|div_490196_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|Add2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(6));

-- Location: LCCOMB_X16_Y26_N30
\light_3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~3_combout\ = (!\light_3|div_490196_counter\(3) & (!\light_3|div_490196_counter\(6) & (\light_3|div_490196_counter\(5) & \light_3|div_490196_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(3),
	datab => \light_3|div_490196_counter\(6),
	datac => \light_3|div_490196_counter\(5),
	datad => \light_3|div_490196_counter\(4),
	combout => \light_3|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y26_N28
\light_3|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~14_combout\ = (\light_3|div_490196_counter\(7) & (!\light_3|Add2~13\)) # (!\light_3|div_490196_counter\(7) & ((\light_3|Add2~13\) # (GND)))
-- \light_3|Add2~15\ = CARRY((!\light_3|Add2~13\) # (!\light_3|div_490196_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(7),
	datad => VCC,
	cin => \light_3|Add2~13\,
	combout => \light_3|Add2~14_combout\,
	cout => \light_3|Add2~15\);

-- Location: LCCOMB_X17_Y26_N10
\light_3|div_490196_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~8_combout\ = (\light_3|Add2~14_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|Add2~14_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~8_combout\);

-- Location: FF_X17_Y26_N11
\light_3|div_490196_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(7));

-- Location: LCCOMB_X17_Y26_N30
\light_3|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~16_combout\ = (\light_3|div_490196_counter\(8) & (\light_3|Add2~15\ $ (GND))) # (!\light_3|div_490196_counter\(8) & (!\light_3|Add2~15\ & VCC))
-- \light_3|Add2~17\ = CARRY((\light_3|div_490196_counter\(8) & !\light_3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(8),
	datad => VCC,
	cin => \light_3|Add2~15\,
	combout => \light_3|Add2~16_combout\,
	cout => \light_3|Add2~17\);

-- Location: FF_X17_Y26_N31
\light_3|div_490196_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|Add2~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(8));

-- Location: LCCOMB_X17_Y25_N0
\light_3|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~18_combout\ = (\light_3|div_490196_counter\(9) & (!\light_3|Add2~17\)) # (!\light_3|div_490196_counter\(9) & ((\light_3|Add2~17\) # (GND)))
-- \light_3|Add2~19\ = CARRY((!\light_3|Add2~17\) # (!\light_3|div_490196_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(9),
	datad => VCC,
	cin => \light_3|Add2~17\,
	combout => \light_3|Add2~18_combout\,
	cout => \light_3|Add2~19\);

-- Location: LCCOMB_X16_Y25_N10
\light_3|div_490196_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~3_combout\ = (\light_3|Add2~18_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add2~18_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~3_combout\);

-- Location: FF_X16_Y25_N11
\light_3|div_490196_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(9));

-- Location: LCCOMB_X17_Y25_N2
\light_3|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~20_combout\ = (\light_3|div_490196_counter\(10) & (\light_3|Add2~19\ $ (GND))) # (!\light_3|div_490196_counter\(10) & (!\light_3|Add2~19\ & VCC))
-- \light_3|Add2~21\ = CARRY((\light_3|div_490196_counter\(10) & !\light_3|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(10),
	datad => VCC,
	cin => \light_3|Add2~19\,
	combout => \light_3|Add2~20_combout\,
	cout => \light_3|Add2~21\);

-- Location: FF_X17_Y25_N3
\light_3|div_490196_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_3|Add2~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(10));

-- Location: LCCOMB_X17_Y25_N4
\light_3|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~22_combout\ = (\light_3|div_490196_counter\(11) & (!\light_3|Add2~21\)) # (!\light_3|div_490196_counter\(11) & ((\light_3|Add2~21\) # (GND)))
-- \light_3|Add2~23\ = CARRY((!\light_3|Add2~21\) # (!\light_3|div_490196_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(11),
	datad => VCC,
	cin => \light_3|Add2~21\,
	combout => \light_3|Add2~22_combout\,
	cout => \light_3|Add2~23\);

-- Location: LCCOMB_X16_Y25_N2
\light_3|div_490196_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~6_combout\ = (\light_3|Add2~22_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add2~22_combout\,
	datac => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~6_combout\);

-- Location: FF_X16_Y25_N3
\light_3|div_490196_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(11));

-- Location: LCCOMB_X17_Y25_N6
\light_3|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~24_combout\ = (\light_3|div_490196_counter\(12) & (\light_3|Add2~23\ $ (GND))) # (!\light_3|div_490196_counter\(12) & (!\light_3|Add2~23\ & VCC))
-- \light_3|Add2~25\ = CARRY((\light_3|div_490196_counter\(12) & !\light_3|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(12),
	datad => VCC,
	cin => \light_3|Add2~23\,
	combout => \light_3|Add2~24_combout\,
	cout => \light_3|Add2~25\);

-- Location: LCCOMB_X16_Y25_N26
\light_3|div_490196_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~5_combout\ = (\light_3|Add2~24_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|Add2~24_combout\,
	datac => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~5_combout\);

-- Location: FF_X16_Y25_N27
\light_3|div_490196_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(12));

-- Location: LCCOMB_X17_Y25_N8
\light_3|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~26_combout\ = (\light_3|div_490196_counter\(13) & (!\light_3|Add2~25\)) # (!\light_3|div_490196_counter\(13) & ((\light_3|Add2~25\) # (GND)))
-- \light_3|Add2~27\ = CARRY((!\light_3|Add2~25\) # (!\light_3|div_490196_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(13),
	datad => VCC,
	cin => \light_3|Add2~25\,
	combout => \light_3|Add2~26_combout\,
	cout => \light_3|Add2~27\);

-- Location: LCCOMB_X17_Y25_N26
\light_3|div_490196_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~4_combout\ = (\light_3|Add2~26_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add2~26_combout\,
	datac => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~4_combout\);

-- Location: FF_X17_Y25_N27
\light_3|div_490196_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(13));

-- Location: LCCOMB_X17_Y25_N12
\light_3|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~30_combout\ = (\light_3|div_490196_counter\(15) & (!\light_3|Add2~29\)) # (!\light_3|div_490196_counter\(15) & ((\light_3|Add2~29\) # (GND)))
-- \light_3|Add2~31\ = CARRY((!\light_3|Add2~29\) # (!\light_3|div_490196_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(15),
	datad => VCC,
	cin => \light_3|Add2~29\,
	combout => \light_3|Add2~30_combout\,
	cout => \light_3|Add2~31\);

-- Location: LCCOMB_X17_Y25_N14
\light_3|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~32_combout\ = (\light_3|div_490196_counter\(16) & (\light_3|Add2~31\ $ (GND))) # (!\light_3|div_490196_counter\(16) & (!\light_3|Add2~31\ & VCC))
-- \light_3|Add2~33\ = CARRY((\light_3|div_490196_counter\(16) & !\light_3|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(16),
	datad => VCC,
	cin => \light_3|Add2~31\,
	combout => \light_3|Add2~32_combout\,
	cout => \light_3|Add2~33\);

-- Location: LCCOMB_X16_Y25_N24
\light_3|div_490196_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~1_combout\ = (\light_3|Add2~32_combout\ & !\light_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add2~32_combout\,
	datad => \light_3|Equal0~5_combout\,
	combout => \light_3|div_490196_counter~1_combout\);

-- Location: FF_X16_Y25_N25
\light_3|div_490196_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(16));

-- Location: LCCOMB_X17_Y25_N16
\light_3|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~34_combout\ = (\light_3|div_490196_counter\(17) & (!\light_3|Add2~33\)) # (!\light_3|div_490196_counter\(17) & ((\light_3|Add2~33\) # (GND)))
-- \light_3|Add2~35\ = CARRY((!\light_3|Add2~33\) # (!\light_3|div_490196_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(17),
	datad => VCC,
	cin => \light_3|Add2~33\,
	combout => \light_3|Add2~34_combout\,
	cout => \light_3|Add2~35\);

-- Location: LCCOMB_X16_Y25_N22
\light_3|div_490196_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~0_combout\ = (!\light_3|Equal0~5_combout\ & \light_3|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Equal0~5_combout\,
	datad => \light_3|Add2~34_combout\,
	combout => \light_3|div_490196_counter~0_combout\);

-- Location: FF_X16_Y25_N23
\light_3|div_490196_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(17));

-- Location: LCCOMB_X17_Y25_N18
\light_3|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~36_combout\ = \light_3|Add2~35\ $ (!\light_3|div_490196_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_3|div_490196_counter\(18),
	cin => \light_3|Add2~35\,
	combout => \light_3|Add2~36_combout\);

-- Location: LCCOMB_X16_Y25_N12
\light_3|div_490196_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~2_combout\ = (!\light_3|Equal0~5_combout\ & \light_3|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Equal0~5_combout\,
	datad => \light_3|Add2~36_combout\,
	combout => \light_3|div_490196_counter~2_combout\);

-- Location: FF_X16_Y25_N13
\light_3|div_490196_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(18));

-- Location: LCCOMB_X16_Y25_N28
\light_3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~0_combout\ = (\light_3|div_490196_counter\(13) & (\light_3|div_490196_counter\(18) & (\light_3|div_490196_counter\(12) & \light_3|div_490196_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(13),
	datab => \light_3|div_490196_counter\(18),
	datac => \light_3|div_490196_counter\(12),
	datad => \light_3|div_490196_counter\(11),
	combout => \light_3|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y25_N14
\light_3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~2_combout\ = (\light_3|div_490196_counter\(9) & (!\light_3|div_490196_counter\(8) & (\light_3|div_490196_counter\(7) & !\light_3|div_490196_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(9),
	datab => \light_3|div_490196_counter\(8),
	datac => \light_3|div_490196_counter\(7),
	datad => \light_3|div_490196_counter\(10),
	combout => \light_3|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y25_N20
\light_3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~1_combout\ = (\light_3|div_490196_counter\(17) & (\light_3|div_490196_counter\(14) & (!\light_3|div_490196_counter\(15) & \light_3|div_490196_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(17),
	datab => \light_3|div_490196_counter\(14),
	datac => \light_3|div_490196_counter\(15),
	datad => \light_3|div_490196_counter\(16),
	combout => \light_3|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y25_N30
\light_3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~4_combout\ = (\light_3|Equal0~3_combout\ & (\light_3|Equal0~0_combout\ & (\light_3|Equal0~2_combout\ & \light_3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Equal0~3_combout\,
	datab => \light_3|Equal0~0_combout\,
	datac => \light_3|Equal0~2_combout\,
	datad => \light_3|Equal0~1_combout\,
	combout => \light_3|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y25_N18
\light_3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal0~5_combout\ = (\light_3|div_490196_counter\(2) & (\light_3|div_490196_counter\(0) & (\light_3|Equal0~4_combout\ & !\light_3|div_490196_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(2),
	datab => \light_3|div_490196_counter\(0),
	datac => \light_3|Equal0~4_combout\,
	datad => \light_3|div_490196_counter\(1),
	combout => \light_3|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y25_N10
\light_3|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add2~28_combout\ = (\light_3|div_490196_counter\(14) & (\light_3|Add2~27\ $ (GND))) # (!\light_3|div_490196_counter\(14) & (!\light_3|Add2~27\ & VCC))
-- \light_3|Add2~29\ = CARRY((\light_3|div_490196_counter\(14) & !\light_3|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|div_490196_counter\(14),
	datad => VCC,
	cin => \light_3|Add2~27\,
	combout => \light_3|Add2~28_combout\,
	cout => \light_3|Add2~29\);

-- Location: LCCOMB_X16_Y25_N4
\light_3|div_490196_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|div_490196_counter~12_combout\ = (!\light_3|Equal0~5_combout\ & \light_3|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Equal0~5_combout\,
	datad => \light_3|Add2~28_combout\,
	combout => \light_3|div_490196_counter~12_combout\);

-- Location: FF_X16_Y25_N5
\light_3|div_490196_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|div_490196_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(14));

-- Location: FF_X17_Y25_N13
\light_3|div_490196_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_3|Add2~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|div_490196_counter\(15));

-- Location: LCCOMB_X16_Y25_N16
\light_3|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan2~0_combout\ = (!\light_3|div_490196_counter\(18) & (((!\light_3|div_490196_counter\(17)) # (!\light_3|div_490196_counter\(16))) # (!\light_3|div_490196_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(15),
	datab => \light_3|div_490196_counter\(16),
	datac => \light_3|div_490196_counter\(17),
	datad => \light_3|div_490196_counter\(18),
	combout => \light_3|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y25_N24
\light_3|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan2~1_combout\ = (((!\light_3|div_490196_counter\(11)) # (!\light_3|div_490196_counter\(12))) # (!\light_3|div_490196_counter\(10))) # (!\light_3|div_490196_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(13),
	datab => \light_3|div_490196_counter\(10),
	datac => \light_3|div_490196_counter\(12),
	datad => \light_3|div_490196_counter\(11),
	combout => \light_3|LessThan2~1_combout\);

-- Location: LCCOMB_X16_Y25_N8
\light_3|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan2~2_combout\ = (\light_3|div_490196_counter\(4)) # ((\light_3|div_490196_counter\(3) & ((\light_3|div_490196_counter\(2)) # (\light_3|div_490196_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(2),
	datab => \light_3|div_490196_counter\(1),
	datac => \light_3|div_490196_counter\(4),
	datad => \light_3|div_490196_counter\(3),
	combout => \light_3|LessThan2~2_combout\);

-- Location: LCCOMB_X17_Y26_N6
\light_3|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan2~3_combout\ = (\light_3|div_490196_counter\(7)) # ((\light_3|div_490196_counter\(6) & (\light_3|div_490196_counter\(5) & \light_3|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(6),
	datab => \light_3|div_490196_counter\(5),
	datac => \light_3|LessThan2~2_combout\,
	datad => \light_3|div_490196_counter\(7),
	combout => \light_3|LessThan2~3_combout\);

-- Location: LCCOMB_X17_Y25_N28
\light_3|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan2~4_combout\ = (\light_3|LessThan2~1_combout\) # ((!\light_3|div_490196_counter\(9) & ((!\light_3|LessThan2~3_combout\) # (!\light_3|div_490196_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|div_490196_counter\(8),
	datab => \light_3|LessThan2~1_combout\,
	datac => \light_3|LessThan2~3_combout\,
	datad => \light_3|div_490196_counter\(9),
	combout => \light_3|LessThan2~4_combout\);

-- Location: LCCOMB_X17_Y25_N20
\rtl~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = LCELL((\light_3|LessThan2~0_combout\) # ((\light_3|LessThan2~4_combout\ & (!\light_3|div_490196_counter\(14) & !\light_3|div_490196_counter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|LessThan2~0_combout\,
	datab => \light_3|LessThan2~4_combout\,
	datac => \light_3|div_490196_counter\(14),
	datad => \light_3|div_490196_counter\(18),
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X12_Y27_N4
\light_3|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~0_combout\ = \light_3|led_counter\(0) $ (VCC)
-- \light_3|Add3~1\ = CARRY(\light_3|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|led_counter\(0),
	datad => VCC,
	combout => \light_3|Add3~0_combout\,
	cout => \light_3|Add3~1\);

-- Location: FF_X12_Y27_N5
\light_3|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(0));

-- Location: LCCOMB_X12_Y27_N6
\light_3|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~2_combout\ = (\light_3|led_counter\(1) & (!\light_3|Add3~1\)) # (!\light_3|led_counter\(1) & ((\light_3|Add3~1\) # (GND)))
-- \light_3|Add3~3\ = CARRY((!\light_3|Add3~1\) # (!\light_3|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(1),
	datad => VCC,
	cin => \light_3|Add3~1\,
	combout => \light_3|Add3~2_combout\,
	cout => \light_3|Add3~3\);

-- Location: FF_X12_Y27_N7
\light_3|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(1));

-- Location: LCCOMB_X12_Y27_N8
\light_3|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~4_combout\ = (\light_3|led_counter\(2) & (\light_3|Add3~3\ $ (GND))) # (!\light_3|led_counter\(2) & (!\light_3|Add3~3\ & VCC))
-- \light_3|Add3~5\ = CARRY((\light_3|led_counter\(2) & !\light_3|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(2),
	datad => VCC,
	cin => \light_3|Add3~3\,
	combout => \light_3|Add3~4_combout\,
	cout => \light_3|Add3~5\);

-- Location: LCCOMB_X12_Y27_N26
\light_3|led_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|led_counter~2_combout\ = (\light_3|Add3~4_combout\ & !\light_3|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add3~4_combout\,
	datad => \light_3|Equal1~2_combout\,
	combout => \light_3|led_counter~2_combout\);

-- Location: FF_X12_Y27_N27
\light_3|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|led_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(2));

-- Location: LCCOMB_X12_Y27_N10
\light_3|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~6_combout\ = (\light_3|led_counter\(3) & (!\light_3|Add3~5\)) # (!\light_3|led_counter\(3) & ((\light_3|Add3~5\) # (GND)))
-- \light_3|Add3~7\ = CARRY((!\light_3|Add3~5\) # (!\light_3|led_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(3),
	datad => VCC,
	cin => \light_3|Add3~5\,
	combout => \light_3|Add3~6_combout\,
	cout => \light_3|Add3~7\);

-- Location: FF_X12_Y27_N11
\light_3|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(3));

-- Location: LCCOMB_X12_Y27_N12
\light_3|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~8_combout\ = (\light_3|led_counter\(4) & (\light_3|Add3~7\ $ (GND))) # (!\light_3|led_counter\(4) & (!\light_3|Add3~7\ & VCC))
-- \light_3|Add3~9\ = CARRY((\light_3|led_counter\(4) & !\light_3|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(4),
	datad => VCC,
	cin => \light_3|Add3~7\,
	combout => \light_3|Add3~8_combout\,
	cout => \light_3|Add3~9\);

-- Location: FF_X12_Y27_N13
\light_3|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(4));

-- Location: LCCOMB_X12_Y27_N14
\light_3|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~10_combout\ = (\light_3|led_counter\(5) & (!\light_3|Add3~9\)) # (!\light_3|led_counter\(5) & ((\light_3|Add3~9\) # (GND)))
-- \light_3|Add3~11\ = CARRY((!\light_3|Add3~9\) # (!\light_3|led_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(5),
	datad => VCC,
	cin => \light_3|Add3~9\,
	combout => \light_3|Add3~10_combout\,
	cout => \light_3|Add3~11\);

-- Location: LCCOMB_X12_Y27_N30
\light_3|led_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|led_counter~1_combout\ = (\light_3|Add3~10_combout\ & !\light_3|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add3~10_combout\,
	datad => \light_3|Equal1~2_combout\,
	combout => \light_3|led_counter~1_combout\);

-- Location: FF_X12_Y27_N31
\light_3|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|led_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(5));

-- Location: LCCOMB_X12_Y27_N20
\light_3|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~16_combout\ = (\light_3|led_counter\(8) & (\light_3|Add3~15\ $ (GND))) # (!\light_3|led_counter\(8) & (!\light_3|Add3~15\ & VCC))
-- \light_3|Add3~17\ = CARRY((\light_3|led_counter\(8) & !\light_3|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|led_counter\(8),
	datad => VCC,
	cin => \light_3|Add3~15\,
	combout => \light_3|Add3~16_combout\,
	cout => \light_3|Add3~17\);

-- Location: LCCOMB_X12_Y27_N22
\light_3|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~18_combout\ = \light_3|Add3~17\ $ (\light_3|led_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_3|led_counter\(9),
	cin => \light_3|Add3~17\,
	combout => \light_3|Add3~18_combout\);

-- Location: LCCOMB_X12_Y27_N28
\light_3|led_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|led_counter~3_combout\ = (\light_3|Add3~18_combout\ & !\light_3|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_3|Add3~18_combout\,
	datad => \light_3|Equal1~2_combout\,
	combout => \light_3|led_counter~3_combout\);

-- Location: FF_X12_Y27_N29
\light_3|led_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|led_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(9));

-- Location: LCCOMB_X11_Y27_N0
\light_3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal1~0_combout\ = (\light_3|led_counter\(5) & (\light_3|led_counter\(9) & (\light_3|led_counter\(6) & \light_3|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(5),
	datab => \light_3|led_counter\(9),
	datac => \light_3|led_counter\(6),
	datad => \light_3|led_counter\(1),
	combout => \light_3|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y27_N2
\light_3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal1~1_combout\ = (!\light_3|led_counter\(4) & (!\light_3|led_counter\(8) & (!\light_3|led_counter\(3) & !\light_3|led_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(4),
	datab => \light_3|led_counter\(8),
	datac => \light_3|led_counter\(3),
	datad => \light_3|led_counter\(7),
	combout => \light_3|Equal1~1_combout\);

-- Location: LCCOMB_X11_Y27_N14
\light_3|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal1~2_combout\ = (\light_3|led_counter\(0) & (\light_3|Equal1~0_combout\ & (!\light_3|led_counter\(2) & \light_3|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(0),
	datab => \light_3|Equal1~0_combout\,
	datac => \light_3|led_counter\(2),
	datad => \light_3|Equal1~1_combout\,
	combout => \light_3|Equal1~2_combout\);

-- Location: LCCOMB_X12_Y27_N16
\light_3|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~12_combout\ = (\light_3|led_counter\(6) & (\light_3|Add3~11\ $ (GND))) # (!\light_3|led_counter\(6) & (!\light_3|Add3~11\ & VCC))
-- \light_3|Add3~13\ = CARRY((\light_3|led_counter\(6) & !\light_3|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|led_counter\(6),
	datad => VCC,
	cin => \light_3|Add3~11\,
	combout => \light_3|Add3~12_combout\,
	cout => \light_3|Add3~13\);

-- Location: LCCOMB_X12_Y27_N0
\light_3|led_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|led_counter~0_combout\ = (!\light_3|Equal1~2_combout\ & \light_3|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Equal1~2_combout\,
	datad => \light_3|Add3~12_combout\,
	combout => \light_3|led_counter~0_combout\);

-- Location: FF_X12_Y27_N1
\light_3|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|led_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(6));

-- Location: LCCOMB_X12_Y27_N18
\light_3|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add3~14_combout\ = (\light_3|led_counter\(7) & (!\light_3|Add3~13\)) # (!\light_3|led_counter\(7) & ((\light_3|Add3~13\) # (GND)))
-- \light_3|Add3~15\ = CARRY((!\light_3|Add3~13\) # (!\light_3|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|led_counter\(7),
	datad => VCC,
	cin => \light_3|Add3~13\,
	combout => \light_3|Add3~14_combout\,
	cout => \light_3|Add3~15\);

-- Location: FF_X12_Y27_N19
\light_3|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(7));

-- Location: FF_X12_Y27_N21
\light_3|led_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|Add3~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|led_counter\(8));

-- Location: LCCOMB_X12_Y27_N24
\light_3|pwm_num[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num[0]~0_combout\ = (\light_3|led_counter\(5) & (\light_3|led_counter\(7) & (\light_3|led_counter\(6) & \light_3|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(5),
	datab => \light_3|led_counter\(7),
	datac => \light_3|led_counter\(6),
	datad => \light_3|led_counter\(1),
	combout => \light_3|pwm_num[0]~0_combout\);

-- Location: LCCOMB_X14_Y27_N12
\light_3|pwm_num[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num[0]~1_combout\ = (\light_3|led_counter\(3) & (\light_3|led_counter\(4) & (\light_3|led_counter\(2) & \light_3|pwm_num[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(3),
	datab => \light_3|led_counter\(4),
	datac => \light_3|led_counter\(2),
	datad => \light_3|pwm_num[0]~0_combout\,
	combout => \light_3|pwm_num[0]~1_combout\);

-- Location: LCCOMB_X14_Y27_N30
\light_3|pwm_num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~2_combout\ = (\light_3|led_counter\(9)) # ((\light_3|led_counter\(8) & ((\light_3|pwm_num[0]~1_combout\))) # (!\light_3|led_counter\(8) & ((!\light_3|pwm_num[0]~1_combout\) # (!\light_3|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(8),
	datab => \light_3|led_counter\(0),
	datac => \light_3|led_counter\(9),
	datad => \light_3|pwm_num[0]~1_combout\,
	combout => \light_3|pwm_num~2_combout\);

-- Location: LCCOMB_X15_Y26_N16
\light_3|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~0_combout\ = \light_3|pwm_num\(0) $ (VCC)
-- \light_3|Add5~1\ = CARRY(\light_3|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(0),
	datad => VCC,
	combout => \light_3|Add5~0_combout\,
	cout => \light_3|Add5~1\);

-- Location: LCCOMB_X14_Y26_N0
\light_3|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~0_combout\ = \light_3|pwm_num\(0) $ (VCC)
-- \light_3|Add6~1\ = CARRY(\light_3|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(0),
	datad => VCC,
	combout => \light_3|Add6~0_combout\,
	cout => \light_3|Add6~1\);

-- Location: LCCOMB_X14_Y27_N28
\light_3|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan3~0_combout\ = (!\light_3|led_counter\(8) & (!\light_3|led_counter\(9) & ((!\light_3|pwm_num[0]~1_combout\) # (!\light_3|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(8),
	datab => \light_3|led_counter\(0),
	datac => \light_3|led_counter\(9),
	datad => \light_3|pwm_num[0]~1_combout\,
	combout => \light_3|LessThan3~0_combout\);

-- Location: LCCOMB_X14_Y26_N22
\light_3|pwm_num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~10_combout\ = (\light_3|Add5~0_combout\ & ((\light_3|LessThan3~0_combout\) # ((\light_3|Add6~0_combout\ & !\light_3|pwm_num~2_combout\)))) # (!\light_3|Add5~0_combout\ & (\light_3|Add6~0_combout\ & (!\light_3|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add5~0_combout\,
	datab => \light_3|Add6~0_combout\,
	datac => \light_3|pwm_num~2_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~10_combout\);

-- Location: LCCOMB_X14_Y27_N8
\light_3|gear_counter[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|gear_counter[2]~1_combout\ = \light_3|gear_counter\(2) $ (((\light_3|led_counter\(0) & \light_3|gear_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_3|led_counter\(0),
	datac => \light_3|gear_counter\(2),
	datad => \light_3|gear_counter\(1),
	combout => \light_3|gear_counter[2]~1_combout\);

-- Location: FF_X14_Y27_N9
\light_3|gear_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|gear_counter[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|gear_counter\(2));

-- Location: LCCOMB_X14_Y27_N0
\light_3|gear_counter[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|gear_counter[3]~0_combout\ = \light_3|gear_counter\(3) $ (((\light_3|gear_counter\(1) & (\light_3|led_counter\(0) & \light_3|gear_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|gear_counter\(1),
	datab => \light_3|led_counter\(0),
	datac => \light_3|gear_counter\(3),
	datad => \light_3|gear_counter\(2),
	combout => \light_3|gear_counter[3]~0_combout\);

-- Location: FF_X14_Y27_N1
\light_3|gear_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|gear_counter[3]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|gear_counter\(3));

-- Location: LCCOMB_X14_Y27_N10
\light_3|gear_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|gear_counter~2_combout\ = (\light_3|led_counter\(0) & (!\light_3|gear_counter\(1) & ((\light_3|gear_counter\(2)) # (\light_3|gear_counter\(3))))) # (!\light_3|led_counter\(0) & (((\light_3|gear_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|led_counter\(0),
	datab => \light_3|gear_counter\(2),
	datac => \light_3|gear_counter\(1),
	datad => \light_3|gear_counter\(3),
	combout => \light_3|gear_counter~2_combout\);

-- Location: FF_X14_Y27_N11
\light_3|gear_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|gear_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|gear_counter\(1));

-- Location: LCCOMB_X14_Y27_N4
\light_3|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Equal3~0_combout\ = (!\light_3|gear_counter\(1) & (!\light_3|gear_counter\(2) & (!\light_3|led_counter\(0) & !\light_3|gear_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|gear_counter\(1),
	datab => \light_3|gear_counter\(2),
	datac => \light_3|led_counter\(0),
	datad => \light_3|gear_counter\(3),
	combout => \light_3|Equal3~0_combout\);

-- Location: FF_X14_Y26_N23
\light_3|pwm_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~10_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(0));

-- Location: LCCOMB_X15_Y26_N18
\light_3|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~2_combout\ = (\light_3|pwm_num\(1) & (!\light_3|Add5~1\)) # (!\light_3|pwm_num\(1) & ((\light_3|Add5~1\) # (GND)))
-- \light_3|Add5~3\ = CARRY((!\light_3|Add5~1\) # (!\light_3|pwm_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(1),
	datad => VCC,
	cin => \light_3|Add5~1\,
	combout => \light_3|Add5~2_combout\,
	cout => \light_3|Add5~3\);

-- Location: LCCOMB_X14_Y26_N2
\light_3|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~2_combout\ = (\light_3|pwm_num\(1) & (\light_3|Add6~1\ & VCC)) # (!\light_3|pwm_num\(1) & (!\light_3|Add6~1\))
-- \light_3|Add6~3\ = CARRY((!\light_3|pwm_num\(1) & !\light_3|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(1),
	datad => VCC,
	cin => \light_3|Add6~1\,
	combout => \light_3|Add6~2_combout\,
	cout => \light_3|Add6~3\);

-- Location: LCCOMB_X14_Y26_N16
\light_3|pwm_num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~9_combout\ = (\light_3|pwm_num~2_combout\ & (\light_3|Add5~2_combout\ & ((\light_3|LessThan3~0_combout\)))) # (!\light_3|pwm_num~2_combout\ & ((\light_3|Add6~2_combout\) # ((\light_3|Add5~2_combout\ & \light_3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num~2_combout\,
	datab => \light_3|Add5~2_combout\,
	datac => \light_3|Add6~2_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~9_combout\);

-- Location: FF_X14_Y26_N17
\light_3|pwm_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~9_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(1));

-- Location: LCCOMB_X15_Y26_N20
\light_3|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~4_combout\ = (\light_3|pwm_num\(2) & (\light_3|Add5~3\ $ (GND))) # (!\light_3|pwm_num\(2) & (!\light_3|Add5~3\ & VCC))
-- \light_3|Add5~5\ = CARRY((\light_3|pwm_num\(2) & !\light_3|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(2),
	datad => VCC,
	cin => \light_3|Add5~3\,
	combout => \light_3|Add5~4_combout\,
	cout => \light_3|Add5~5\);

-- Location: LCCOMB_X14_Y26_N4
\light_3|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~4_combout\ = (\light_3|pwm_num\(2) & ((GND) # (!\light_3|Add6~3\))) # (!\light_3|pwm_num\(2) & (\light_3|Add6~3\ $ (GND)))
-- \light_3|Add6~5\ = CARRY((\light_3|pwm_num\(2)) # (!\light_3|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(2),
	datad => VCC,
	cin => \light_3|Add6~3\,
	combout => \light_3|Add6~4_combout\,
	cout => \light_3|Add6~5\);

-- Location: LCCOMB_X14_Y26_N18
\light_3|pwm_num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~8_combout\ = (\light_3|Add5~4_combout\ & ((\light_3|LessThan3~0_combout\) # ((\light_3|Add6~4_combout\ & !\light_3|pwm_num~2_combout\)))) # (!\light_3|Add5~4_combout\ & (\light_3|Add6~4_combout\ & (!\light_3|pwm_num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add5~4_combout\,
	datab => \light_3|Add6~4_combout\,
	datac => \light_3|pwm_num~2_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~8_combout\);

-- Location: FF_X14_Y26_N19
\light_3|pwm_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~8_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(2));

-- Location: LCCOMB_X14_Y26_N6
\light_3|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~6_combout\ = (\light_3|pwm_num\(3) & (\light_3|Add6~5\ & VCC)) # (!\light_3|pwm_num\(3) & (!\light_3|Add6~5\))
-- \light_3|Add6~7\ = CARRY((!\light_3|pwm_num\(3) & !\light_3|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(3),
	datad => VCC,
	cin => \light_3|Add6~5\,
	combout => \light_3|Add6~6_combout\,
	cout => \light_3|Add6~7\);

-- Location: LCCOMB_X15_Y26_N22
\light_3|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~6_combout\ = (\light_3|pwm_num\(3) & (!\light_3|Add5~5\)) # (!\light_3|pwm_num\(3) & ((\light_3|Add5~5\) # (GND)))
-- \light_3|Add5~7\ = CARRY((!\light_3|Add5~5\) # (!\light_3|pwm_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(3),
	datad => VCC,
	cin => \light_3|Add5~5\,
	combout => \light_3|Add5~6_combout\,
	cout => \light_3|Add5~7\);

-- Location: LCCOMB_X14_Y26_N20
\light_3|pwm_num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~7_combout\ = (\light_3|Add6~6_combout\ & (((\light_3|Add5~6_combout\ & \light_3|LessThan3~0_combout\)) # (!\light_3|pwm_num~2_combout\))) # (!\light_3|Add6~6_combout\ & (\light_3|Add5~6_combout\ & ((\light_3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add6~6_combout\,
	datab => \light_3|Add5~6_combout\,
	datac => \light_3|pwm_num~2_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~7_combout\);

-- Location: FF_X14_Y26_N21
\light_3|pwm_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~7_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(3));

-- Location: LCCOMB_X14_Y26_N8
\light_3|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~8_combout\ = (\light_3|pwm_num\(4) & ((GND) # (!\light_3|Add6~7\))) # (!\light_3|pwm_num\(4) & (\light_3|Add6~7\ $ (GND)))
-- \light_3|Add6~9\ = CARRY((\light_3|pwm_num\(4)) # (!\light_3|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(4),
	datad => VCC,
	cin => \light_3|Add6~7\,
	combout => \light_3|Add6~8_combout\,
	cout => \light_3|Add6~9\);

-- Location: LCCOMB_X15_Y26_N24
\light_3|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~8_combout\ = (\light_3|pwm_num\(4) & (\light_3|Add5~7\ $ (GND))) # (!\light_3|pwm_num\(4) & (!\light_3|Add5~7\ & VCC))
-- \light_3|Add5~9\ = CARRY((\light_3|pwm_num\(4) & !\light_3|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(4),
	datad => VCC,
	cin => \light_3|Add5~7\,
	combout => \light_3|Add5~8_combout\,
	cout => \light_3|Add5~9\);

-- Location: LCCOMB_X14_Y26_N26
\light_3|pwm_num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~6_combout\ = (\light_3|pwm_num~2_combout\ & (((\light_3|Add5~8_combout\ & \light_3|LessThan3~0_combout\)))) # (!\light_3|pwm_num~2_combout\ & ((\light_3|Add6~8_combout\) # ((\light_3|Add5~8_combout\ & \light_3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num~2_combout\,
	datab => \light_3|Add6~8_combout\,
	datac => \light_3|Add5~8_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~6_combout\);

-- Location: FF_X14_Y26_N27
\light_3|pwm_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~6_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(4));

-- Location: LCCOMB_X14_Y26_N10
\light_3|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~10_combout\ = (\light_3|pwm_num\(5) & (\light_3|Add6~9\ & VCC)) # (!\light_3|pwm_num\(5) & (!\light_3|Add6~9\))
-- \light_3|Add6~11\ = CARRY((!\light_3|pwm_num\(5) & !\light_3|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(5),
	datad => VCC,
	cin => \light_3|Add6~9\,
	combout => \light_3|Add6~10_combout\,
	cout => \light_3|Add6~11\);

-- Location: LCCOMB_X15_Y26_N26
\light_3|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~10_combout\ = (\light_3|pwm_num\(5) & (!\light_3|Add5~9\)) # (!\light_3|pwm_num\(5) & ((\light_3|Add5~9\) # (GND)))
-- \light_3|Add5~11\ = CARRY((!\light_3|Add5~9\) # (!\light_3|pwm_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(5),
	datad => VCC,
	cin => \light_3|Add5~9\,
	combout => \light_3|Add5~10_combout\,
	cout => \light_3|Add5~11\);

-- Location: LCCOMB_X14_Y26_N28
\light_3|pwm_num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~5_combout\ = (\light_3|Add6~10_combout\ & (((\light_3|Add5~10_combout\ & \light_3|LessThan3~0_combout\)) # (!\light_3|pwm_num~2_combout\))) # (!\light_3|Add6~10_combout\ & (\light_3|Add5~10_combout\ & ((\light_3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|Add6~10_combout\,
	datab => \light_3|Add5~10_combout\,
	datac => \light_3|pwm_num~2_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~5_combout\);

-- Location: FF_X14_Y26_N29
\light_3|pwm_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~5_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(5));

-- Location: LCCOMB_X14_Y26_N12
\light_3|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~12_combout\ = (\light_3|pwm_num\(6) & ((GND) # (!\light_3|Add6~11\))) # (!\light_3|pwm_num\(6) & (\light_3|Add6~11\ $ (GND)))
-- \light_3|Add6~13\ = CARRY((\light_3|pwm_num\(6)) # (!\light_3|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(6),
	datad => VCC,
	cin => \light_3|Add6~11\,
	combout => \light_3|Add6~12_combout\,
	cout => \light_3|Add6~13\);

-- Location: LCCOMB_X15_Y26_N28
\light_3|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~12_combout\ = (\light_3|pwm_num\(6) & (\light_3|Add5~11\ $ (GND))) # (!\light_3|pwm_num\(6) & (!\light_3|Add5~11\ & VCC))
-- \light_3|Add5~13\ = CARRY((\light_3|pwm_num\(6) & !\light_3|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_3|pwm_num\(6),
	datad => VCC,
	cin => \light_3|Add5~11\,
	combout => \light_3|Add5~12_combout\,
	cout => \light_3|Add5~13\);

-- Location: LCCOMB_X14_Y26_N30
\light_3|pwm_num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~4_combout\ = (\light_3|pwm_num~2_combout\ & (((\light_3|LessThan3~0_combout\ & \light_3|Add5~12_combout\)))) # (!\light_3|pwm_num~2_combout\ & ((\light_3|Add6~12_combout\) # ((\light_3|LessThan3~0_combout\ & \light_3|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num~2_combout\,
	datab => \light_3|Add6~12_combout\,
	datac => \light_3|LessThan3~0_combout\,
	datad => \light_3|Add5~12_combout\,
	combout => \light_3|pwm_num~4_combout\);

-- Location: FF_X14_Y26_N31
\light_3|pwm_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~4_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(6));

-- Location: LCCOMB_X14_Y26_N14
\light_3|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add6~14_combout\ = \light_3|Add6~13\ $ (!\light_3|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_3|pwm_num\(7),
	cin => \light_3|Add6~13\,
	combout => \light_3|Add6~14_combout\);

-- Location: LCCOMB_X15_Y26_N30
\light_3|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|Add5~14_combout\ = \light_3|Add5~13\ $ (\light_3|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_3|pwm_num\(7),
	cin => \light_3|Add5~13\,
	combout => \light_3|Add5~14_combout\);

-- Location: LCCOMB_X14_Y26_N24
\light_3|pwm_num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|pwm_num~3_combout\ = (\light_3|pwm_num~2_combout\ & (((\light_3|Add5~14_combout\ & \light_3|LessThan3~0_combout\)))) # (!\light_3|pwm_num~2_combout\ & ((\light_3|Add6~14_combout\) # ((\light_3|Add5~14_combout\ & \light_3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num~2_combout\,
	datab => \light_3|Add6~14_combout\,
	datac => \light_3|Add5~14_combout\,
	datad => \light_3|LessThan3~0_combout\,
	combout => \light_3|pwm_num~3_combout\);

-- Location: FF_X14_Y26_N25
\light_3|pwm_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~6clkctrl_outclk\,
	d => \light_3|pwm_num~3_combout\,
	clrn => \reset~input_o\,
	ena => \light_3|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_3|pwm_num\(7));

-- Location: LCCOMB_X15_Y26_N0
\light_3|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~1_cout\ = CARRY((\light_3|pwm_counter\(0) & !\light_3|pwm_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(0),
	datab => \light_3|pwm_num\(0),
	datad => VCC,
	cout => \light_3|LessThan5~1_cout\);

-- Location: LCCOMB_X15_Y26_N2
\light_3|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~3_cout\ = CARRY((\light_3|pwm_num\(1) & ((!\light_3|LessThan5~1_cout\) # (!\light_3|pwm_counter\(1)))) # (!\light_3|pwm_num\(1) & (!\light_3|pwm_counter\(1) & !\light_3|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(1),
	datab => \light_3|pwm_counter\(1),
	datad => VCC,
	cin => \light_3|LessThan5~1_cout\,
	cout => \light_3|LessThan5~3_cout\);

-- Location: LCCOMB_X15_Y26_N4
\light_3|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~5_cout\ = CARRY((\light_3|pwm_counter\(2) & ((!\light_3|LessThan5~3_cout\) # (!\light_3|pwm_num\(2)))) # (!\light_3|pwm_counter\(2) & (!\light_3|pwm_num\(2) & !\light_3|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(2),
	datab => \light_3|pwm_num\(2),
	datad => VCC,
	cin => \light_3|LessThan5~3_cout\,
	cout => \light_3|LessThan5~5_cout\);

-- Location: LCCOMB_X15_Y26_N6
\light_3|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~7_cout\ = CARRY((\light_3|pwm_counter\(3) & (\light_3|pwm_num\(3) & !\light_3|LessThan5~5_cout\)) # (!\light_3|pwm_counter\(3) & ((\light_3|pwm_num\(3)) # (!\light_3|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(3),
	datab => \light_3|pwm_num\(3),
	datad => VCC,
	cin => \light_3|LessThan5~5_cout\,
	cout => \light_3|LessThan5~7_cout\);

-- Location: LCCOMB_X15_Y26_N8
\light_3|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~9_cout\ = CARRY((\light_3|pwm_num\(4) & (\light_3|pwm_counter\(4) & !\light_3|LessThan5~7_cout\)) # (!\light_3|pwm_num\(4) & ((\light_3|pwm_counter\(4)) # (!\light_3|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_num\(4),
	datab => \light_3|pwm_counter\(4),
	datad => VCC,
	cin => \light_3|LessThan5~7_cout\,
	cout => \light_3|LessThan5~9_cout\);

-- Location: LCCOMB_X15_Y26_N10
\light_3|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~11_cout\ = CARRY((\light_3|pwm_counter\(5) & (\light_3|pwm_num\(5) & !\light_3|LessThan5~9_cout\)) # (!\light_3|pwm_counter\(5) & ((\light_3|pwm_num\(5)) # (!\light_3|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(5),
	datab => \light_3|pwm_num\(5),
	datad => VCC,
	cin => \light_3|LessThan5~9_cout\,
	cout => \light_3|LessThan5~11_cout\);

-- Location: LCCOMB_X15_Y26_N12
\light_3|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~13_cout\ = CARRY((\light_3|pwm_counter\(6) & ((!\light_3|LessThan5~11_cout\) # (!\light_3|pwm_num\(6)))) # (!\light_3|pwm_counter\(6) & (!\light_3|pwm_num\(6) & !\light_3|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(6),
	datab => \light_3|pwm_num\(6),
	datad => VCC,
	cin => \light_3|LessThan5~11_cout\,
	cout => \light_3|LessThan5~13_cout\);

-- Location: LCCOMB_X15_Y26_N14
\light_3|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_3|LessThan5~14_combout\ = (\light_3|pwm_counter\(7) & ((\light_3|LessThan5~13_cout\) # (!\light_3|pwm_num\(7)))) # (!\light_3|pwm_counter\(7) & (!\light_3|pwm_num\(7) & \light_3|LessThan5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_3|pwm_counter\(7),
	datab => \light_3|pwm_num\(7),
	cin => \light_3|LessThan5~13_cout\,
	combout => \light_3|LessThan5~14_combout\);

-- Location: LCCOMB_X20_Y26_N14
\light_4|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~0_combout\ = \light_4|div_490196_counter\(0) $ (VCC)
-- \light_4|Add2~1\ = CARRY(\light_4|div_490196_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(0),
	datad => VCC,
	combout => \light_4|Add2~0_combout\,
	cout => \light_4|Add2~1\);

-- Location: FF_X20_Y26_N15
\light_4|div_490196_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_4|Add2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(0));

-- Location: LCCOMB_X20_Y26_N16
\light_4|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~2_combout\ = (\light_4|div_490196_counter\(1) & (!\light_4|Add2~1\)) # (!\light_4|div_490196_counter\(1) & ((\light_4|Add2~1\) # (GND)))
-- \light_4|Add2~3\ = CARRY((!\light_4|Add2~1\) # (!\light_4|div_490196_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(1),
	datad => VCC,
	cin => \light_4|Add2~1\,
	combout => \light_4|Add2~2_combout\,
	cout => \light_4|Add2~3\);

-- Location: LCCOMB_X20_Y26_N2
\light_4|div_490196_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~11_combout\ = (\light_4|Add2~2_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add2~2_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~11_combout\);

-- Location: FF_X20_Y26_N3
\light_4|div_490196_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(1));

-- Location: LCCOMB_X20_Y26_N18
\light_4|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~4_combout\ = (\light_4|div_490196_counter\(2) & (\light_4|Add2~3\ $ (GND))) # (!\light_4|div_490196_counter\(2) & (!\light_4|Add2~3\ & VCC))
-- \light_4|Add2~5\ = CARRY((\light_4|div_490196_counter\(2) & !\light_4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(2),
	datad => VCC,
	cin => \light_4|Add2~3\,
	combout => \light_4|Add2~4_combout\,
	cout => \light_4|Add2~5\);

-- Location: LCCOMB_X20_Y26_N12
\light_4|div_490196_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~10_combout\ = (\light_4|Add2~4_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|Add2~4_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~10_combout\);

-- Location: FF_X20_Y26_N13
\light_4|div_490196_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(2));

-- Location: LCCOMB_X20_Y25_N2
\light_4|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~20_combout\ = (\light_4|div_490196_counter\(10) & (\light_4|Add2~19\ $ (GND))) # (!\light_4|div_490196_counter\(10) & (!\light_4|Add2~19\ & VCC))
-- \light_4|Add2~21\ = CARRY((\light_4|div_490196_counter\(10) & !\light_4|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(10),
	datad => VCC,
	cin => \light_4|Add2~19\,
	combout => \light_4|Add2~20_combout\,
	cout => \light_4|Add2~21\);

-- Location: LCCOMB_X20_Y25_N4
\light_4|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~22_combout\ = (\light_4|div_490196_counter\(11) & (!\light_4|Add2~21\)) # (!\light_4|div_490196_counter\(11) & ((\light_4|Add2~21\) # (GND)))
-- \light_4|Add2~23\ = CARRY((!\light_4|Add2~21\) # (!\light_4|div_490196_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(11),
	datad => VCC,
	cin => \light_4|Add2~21\,
	combout => \light_4|Add2~22_combout\,
	cout => \light_4|Add2~23\);

-- Location: LCCOMB_X19_Y25_N16
\light_4|div_490196_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~6_combout\ = (\light_4|Add2~22_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add2~22_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~6_combout\);

-- Location: FF_X19_Y25_N17
\light_4|div_490196_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(11));

-- Location: LCCOMB_X20_Y25_N6
\light_4|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~24_combout\ = (\light_4|div_490196_counter\(12) & (\light_4|Add2~23\ $ (GND))) # (!\light_4|div_490196_counter\(12) & (!\light_4|Add2~23\ & VCC))
-- \light_4|Add2~25\ = CARRY((\light_4|div_490196_counter\(12) & !\light_4|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(12),
	datad => VCC,
	cin => \light_4|Add2~23\,
	combout => \light_4|Add2~24_combout\,
	cout => \light_4|Add2~25\);

-- Location: LCCOMB_X19_Y25_N22
\light_4|div_490196_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~5_combout\ = (\light_4|Add2~24_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add2~24_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~5_combout\);

-- Location: FF_X19_Y25_N23
\light_4|div_490196_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(12));

-- Location: LCCOMB_X20_Y25_N8
\light_4|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~26_combout\ = (\light_4|div_490196_counter\(13) & (!\light_4|Add2~25\)) # (!\light_4|div_490196_counter\(13) & ((\light_4|Add2~25\) # (GND)))
-- \light_4|Add2~27\ = CARRY((!\light_4|Add2~25\) # (!\light_4|div_490196_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(13),
	datad => VCC,
	cin => \light_4|Add2~25\,
	combout => \light_4|Add2~26_combout\,
	cout => \light_4|Add2~27\);

-- Location: LCCOMB_X20_Y25_N24
\light_4|div_490196_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~4_combout\ = (\light_4|Add2~26_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add2~26_combout\,
	datab => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~4_combout\);

-- Location: FF_X20_Y25_N25
\light_4|div_490196_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(13));

-- Location: LCCOMB_X20_Y25_N10
\light_4|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~28_combout\ = (\light_4|div_490196_counter\(14) & (\light_4|Add2~27\ $ (GND))) # (!\light_4|div_490196_counter\(14) & (!\light_4|Add2~27\ & VCC))
-- \light_4|Add2~29\ = CARRY((\light_4|div_490196_counter\(14) & !\light_4|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(14),
	datad => VCC,
	cin => \light_4|Add2~27\,
	combout => \light_4|Add2~28_combout\,
	cout => \light_4|Add2~29\);

-- Location: LCCOMB_X20_Y25_N28
\light_4|div_490196_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~12_combout\ = (\light_4|Add2~28_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|Add2~28_combout\,
	datac => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~12_combout\);

-- Location: FF_X20_Y25_N29
\light_4|div_490196_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(14));

-- Location: LCCOMB_X20_Y25_N12
\light_4|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~30_combout\ = (\light_4|div_490196_counter\(15) & (!\light_4|Add2~29\)) # (!\light_4|div_490196_counter\(15) & ((\light_4|Add2~29\) # (GND)))
-- \light_4|Add2~31\ = CARRY((!\light_4|Add2~29\) # (!\light_4|div_490196_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(15),
	datad => VCC,
	cin => \light_4|Add2~29\,
	combout => \light_4|Add2~30_combout\,
	cout => \light_4|Add2~31\);

-- Location: FF_X20_Y25_N13
\light_4|div_490196_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|Add2~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(15));

-- Location: LCCOMB_X20_Y25_N14
\light_4|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~32_combout\ = (\light_4|div_490196_counter\(16) & (\light_4|Add2~31\ $ (GND))) # (!\light_4|div_490196_counter\(16) & (!\light_4|Add2~31\ & VCC))
-- \light_4|Add2~33\ = CARRY((\light_4|div_490196_counter\(16) & !\light_4|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(16),
	datad => VCC,
	cin => \light_4|Add2~31\,
	combout => \light_4|Add2~32_combout\,
	cout => \light_4|Add2~33\);

-- Location: LCCOMB_X19_Y25_N28
\light_4|div_490196_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~1_combout\ = (\light_4|Add2~32_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add2~32_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~1_combout\);

-- Location: FF_X19_Y25_N29
\light_4|div_490196_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(16));

-- Location: LCCOMB_X20_Y25_N16
\light_4|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~34_combout\ = (\light_4|div_490196_counter\(17) & (!\light_4|Add2~33\)) # (!\light_4|div_490196_counter\(17) & ((\light_4|Add2~33\) # (GND)))
-- \light_4|Add2~35\ = CARRY((!\light_4|Add2~33\) # (!\light_4|div_490196_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(17),
	datad => VCC,
	cin => \light_4|Add2~33\,
	combout => \light_4|Add2~34_combout\,
	cout => \light_4|Add2~35\);

-- Location: LCCOMB_X19_Y25_N10
\light_4|div_490196_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~0_combout\ = (!\light_4|Equal0~5_combout\ & \light_4|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Equal0~5_combout\,
	datad => \light_4|Add2~34_combout\,
	combout => \light_4|div_490196_counter~0_combout\);

-- Location: FF_X19_Y25_N11
\light_4|div_490196_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(17));

-- Location: LCCOMB_X20_Y25_N18
\light_4|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~36_combout\ = \light_4|div_490196_counter\(18) $ (!\light_4|Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(18),
	cin => \light_4|Add2~35\,
	combout => \light_4|Add2~36_combout\);

-- Location: LCCOMB_X19_Y25_N8
\light_4|div_490196_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~2_combout\ = (!\light_4|Equal0~5_combout\ & \light_4|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Equal0~5_combout\,
	datad => \light_4|Add2~36_combout\,
	combout => \light_4|div_490196_counter~2_combout\);

-- Location: FF_X19_Y25_N9
\light_4|div_490196_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(18));

-- Location: LCCOMB_X19_Y25_N12
\light_4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~0_combout\ = (\light_4|div_490196_counter\(11) & (\light_4|div_490196_counter\(18) & (\light_4|div_490196_counter\(12) & \light_4|div_490196_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(11),
	datab => \light_4|div_490196_counter\(18),
	datac => \light_4|div_490196_counter\(12),
	datad => \light_4|div_490196_counter\(13),
	combout => \light_4|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y25_N20
\light_4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~1_combout\ = (\light_4|div_490196_counter\(17) & (\light_4|div_490196_counter\(16) & (!\light_4|div_490196_counter\(15) & \light_4|div_490196_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(17),
	datab => \light_4|div_490196_counter\(16),
	datac => \light_4|div_490196_counter\(15),
	datad => \light_4|div_490196_counter\(14),
	combout => \light_4|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y26_N20
\light_4|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~6_combout\ = (\light_4|div_490196_counter\(3) & (!\light_4|Add2~5\)) # (!\light_4|div_490196_counter\(3) & ((\light_4|Add2~5\) # (GND)))
-- \light_4|Add2~7\ = CARRY((!\light_4|Add2~5\) # (!\light_4|div_490196_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(3),
	datad => VCC,
	cin => \light_4|Add2~5\,
	combout => \light_4|Add2~6_combout\,
	cout => \light_4|Add2~7\);

-- Location: FF_X20_Y26_N21
\light_4|div_490196_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|Add2~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(3));

-- Location: LCCOMB_X20_Y26_N22
\light_4|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~8_combout\ = (\light_4|div_490196_counter\(4) & (\light_4|Add2~7\ $ (GND))) # (!\light_4|div_490196_counter\(4) & (!\light_4|Add2~7\ & VCC))
-- \light_4|Add2~9\ = CARRY((\light_4|div_490196_counter\(4) & !\light_4|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(4),
	datad => VCC,
	cin => \light_4|Add2~7\,
	combout => \light_4|Add2~8_combout\,
	cout => \light_4|Add2~9\);

-- Location: LCCOMB_X20_Y26_N8
\light_4|div_490196_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~9_combout\ = (\light_4|Add2~8_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add2~8_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~9_combout\);

-- Location: FF_X20_Y26_N9
\light_4|div_490196_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(4));

-- Location: LCCOMB_X20_Y26_N24
\light_4|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~10_combout\ = (\light_4|div_490196_counter\(5) & (!\light_4|Add2~9\)) # (!\light_4|div_490196_counter\(5) & ((\light_4|Add2~9\) # (GND)))
-- \light_4|Add2~11\ = CARRY((!\light_4|Add2~9\) # (!\light_4|div_490196_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|div_490196_counter\(5),
	datad => VCC,
	cin => \light_4|Add2~9\,
	combout => \light_4|Add2~10_combout\,
	cout => \light_4|Add2~11\);

-- Location: LCCOMB_X20_Y26_N0
\light_4|div_490196_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~7_combout\ = (\light_4|Add2~10_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|Add2~10_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~7_combout\);

-- Location: FF_X20_Y26_N1
\light_4|div_490196_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(5));

-- Location: LCCOMB_X20_Y26_N26
\light_4|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~12_combout\ = (\light_4|div_490196_counter\(6) & (\light_4|Add2~11\ $ (GND))) # (!\light_4|div_490196_counter\(6) & (!\light_4|Add2~11\ & VCC))
-- \light_4|Add2~13\ = CARRY((\light_4|div_490196_counter\(6) & !\light_4|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(6),
	datad => VCC,
	cin => \light_4|Add2~11\,
	combout => \light_4|Add2~12_combout\,
	cout => \light_4|Add2~13\);

-- Location: FF_X20_Y26_N27
\light_4|div_490196_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|Add2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(6));

-- Location: LCCOMB_X20_Y26_N28
\light_4|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~14_combout\ = (\light_4|div_490196_counter\(7) & (!\light_4|Add2~13\)) # (!\light_4|div_490196_counter\(7) & ((\light_4|Add2~13\) # (GND)))
-- \light_4|Add2~15\ = CARRY((!\light_4|Add2~13\) # (!\light_4|div_490196_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(7),
	datad => VCC,
	cin => \light_4|Add2~13\,
	combout => \light_4|Add2~14_combout\,
	cout => \light_4|Add2~15\);

-- Location: LCCOMB_X20_Y26_N6
\light_4|div_490196_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~8_combout\ = (\light_4|Add2~14_combout\ & !\light_4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|Add2~14_combout\,
	datad => \light_4|Equal0~5_combout\,
	combout => \light_4|div_490196_counter~8_combout\);

-- Location: FF_X20_Y26_N7
\light_4|div_490196_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(7));

-- Location: LCCOMB_X20_Y26_N30
\light_4|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~16_combout\ = (\light_4|div_490196_counter\(8) & (\light_4|Add2~15\ $ (GND))) # (!\light_4|div_490196_counter\(8) & (!\light_4|Add2~15\ & VCC))
-- \light_4|Add2~17\ = CARRY((\light_4|div_490196_counter\(8) & !\light_4|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(8),
	datad => VCC,
	cin => \light_4|Add2~15\,
	combout => \light_4|Add2~16_combout\,
	cout => \light_4|Add2~17\);

-- Location: FF_X20_Y26_N31
\light_4|div_490196_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|Add2~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(8));

-- Location: LCCOMB_X20_Y25_N26
\light_4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~2_combout\ = (\light_4|div_490196_counter\(9) & (!\light_4|div_490196_counter\(10) & (!\light_4|div_490196_counter\(8) & \light_4|div_490196_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(9),
	datab => \light_4|div_490196_counter\(10),
	datac => \light_4|div_490196_counter\(8),
	datad => \light_4|div_490196_counter\(7),
	combout => \light_4|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y26_N4
\light_4|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~3_combout\ = (!\light_4|div_490196_counter\(3) & (\light_4|div_490196_counter\(5) & (\light_4|div_490196_counter\(4) & !\light_4|div_490196_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(3),
	datab => \light_4|div_490196_counter\(5),
	datac => \light_4|div_490196_counter\(4),
	datad => \light_4|div_490196_counter\(6),
	combout => \light_4|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y25_N30
\light_4|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~4_combout\ = (\light_4|Equal0~0_combout\ & (\light_4|Equal0~1_combout\ & (\light_4|Equal0~2_combout\ & \light_4|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Equal0~0_combout\,
	datab => \light_4|Equal0~1_combout\,
	datac => \light_4|Equal0~2_combout\,
	datad => \light_4|Equal0~3_combout\,
	combout => \light_4|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y25_N20
\light_4|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal0~5_combout\ = (\light_4|div_490196_counter\(2) & (\light_4|div_490196_counter\(0) & (\light_4|Equal0~4_combout\ & !\light_4|div_490196_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(2),
	datab => \light_4|div_490196_counter\(0),
	datac => \light_4|Equal0~4_combout\,
	datad => \light_4|div_490196_counter\(1),
	combout => \light_4|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y25_N0
\light_4|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add2~18_combout\ = (\light_4|div_490196_counter\(9) & (!\light_4|Add2~17\)) # (!\light_4|div_490196_counter\(9) & ((\light_4|Add2~17\) # (GND)))
-- \light_4|Add2~19\ = CARRY((!\light_4|Add2~17\) # (!\light_4|div_490196_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(9),
	datad => VCC,
	cin => \light_4|Add2~17\,
	combout => \light_4|Add2~18_combout\,
	cout => \light_4|Add2~19\);

-- Location: LCCOMB_X20_Y25_N22
\light_4|div_490196_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|div_490196_counter~3_combout\ = (!\light_4|Equal0~5_combout\ & \light_4|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|Equal0~5_combout\,
	datad => \light_4|Add2~18_combout\,
	combout => \light_4|div_490196_counter~3_combout\);

-- Location: FF_X20_Y25_N23
\light_4|div_490196_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|div_490196_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(9));

-- Location: FF_X20_Y25_N3
\light_4|div_490196_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_4|Add2~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|div_490196_counter\(10));

-- Location: LCCOMB_X19_Y25_N26
\light_4|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan2~1_combout\ = (((!\light_4|div_490196_counter\(13)) # (!\light_4|div_490196_counter\(12))) # (!\light_4|div_490196_counter\(11))) # (!\light_4|div_490196_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(10),
	datab => \light_4|div_490196_counter\(11),
	datac => \light_4|div_490196_counter\(12),
	datad => \light_4|div_490196_counter\(13),
	combout => \light_4|LessThan2~1_combout\);

-- Location: LCCOMB_X20_Y26_N10
\light_4|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan2~2_combout\ = (\light_4|div_490196_counter\(4)) # ((\light_4|div_490196_counter\(3) & ((\light_4|div_490196_counter\(2)) # (\light_4|div_490196_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(2),
	datab => \light_4|div_490196_counter\(3),
	datac => \light_4|div_490196_counter\(4),
	datad => \light_4|div_490196_counter\(1),
	combout => \light_4|LessThan2~2_combout\);

-- Location: LCCOMB_X20_Y26_N4
\light_4|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan2~3_combout\ = (\light_4|div_490196_counter\(7)) # ((\light_4|LessThan2~2_combout\ & (\light_4|div_490196_counter\(5) & \light_4|div_490196_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|LessThan2~2_combout\,
	datab => \light_4|div_490196_counter\(5),
	datac => \light_4|div_490196_counter\(6),
	datad => \light_4|div_490196_counter\(7),
	combout => \light_4|LessThan2~3_combout\);

-- Location: LCCOMB_X19_Y25_N30
\light_4|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan2~4_combout\ = (\light_4|LessThan2~1_combout\) # ((!\light_4|div_490196_counter\(9) & ((!\light_4|LessThan2~3_combout\) # (!\light_4|div_490196_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|LessThan2~1_combout\,
	datab => \light_4|div_490196_counter\(8),
	datac => \light_4|LessThan2~3_combout\,
	datad => \light_4|div_490196_counter\(9),
	combout => \light_4|LessThan2~4_combout\);

-- Location: LCCOMB_X19_Y25_N4
\light_4|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan2~0_combout\ = (!\light_4|div_490196_counter\(18) & (((!\light_4|div_490196_counter\(16)) # (!\light_4|div_490196_counter\(15))) # (!\light_4|div_490196_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|div_490196_counter\(17),
	datab => \light_4|div_490196_counter\(15),
	datac => \light_4|div_490196_counter\(18),
	datad => \light_4|div_490196_counter\(16),
	combout => \light_4|LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y25_N24
\rtl~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = LCELL((\light_4|LessThan2~0_combout\) # ((\light_4|LessThan2~4_combout\ & (!\light_4|div_490196_counter\(14) & !\light_4|div_490196_counter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|LessThan2~4_combout\,
	datab => \light_4|div_490196_counter\(14),
	datac => \light_4|LessThan2~0_combout\,
	datad => \light_4|div_490196_counter\(18),
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X14_Y20_N12
\light_4|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~0_combout\ = \light_4|led_counter\(0) $ (VCC)
-- \light_4|Add3~1\ = CARRY(\light_4|led_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(0),
	datad => VCC,
	combout => \light_4|Add3~0_combout\,
	cout => \light_4|Add3~1\);

-- Location: FF_X14_Y20_N13
\light_4|led_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(0));

-- Location: LCCOMB_X14_Y20_N14
\light_4|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~2_combout\ = (\light_4|led_counter\(1) & (!\light_4|Add3~1\)) # (!\light_4|led_counter\(1) & ((\light_4|Add3~1\) # (GND)))
-- \light_4|Add3~3\ = CARRY((!\light_4|Add3~1\) # (!\light_4|led_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(1),
	datad => VCC,
	cin => \light_4|Add3~1\,
	combout => \light_4|Add3~2_combout\,
	cout => \light_4|Add3~3\);

-- Location: FF_X14_Y20_N15
\light_4|led_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(1));

-- Location: LCCOMB_X14_Y20_N16
\light_4|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~4_combout\ = (\light_4|led_counter\(2) & (\light_4|Add3~3\ $ (GND))) # (!\light_4|led_counter\(2) & (!\light_4|Add3~3\ & VCC))
-- \light_4|Add3~5\ = CARRY((\light_4|led_counter\(2) & !\light_4|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(2),
	datad => VCC,
	cin => \light_4|Add3~3\,
	combout => \light_4|Add3~4_combout\,
	cout => \light_4|Add3~5\);

-- Location: LCCOMB_X14_Y20_N4
\light_4|led_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|led_counter~2_combout\ = (!\light_4|Equal1~2_combout\ & \light_4|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Equal1~2_combout\,
	datad => \light_4|Add3~4_combout\,
	combout => \light_4|led_counter~2_combout\);

-- Location: FF_X14_Y20_N5
\light_4|led_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|led_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(2));

-- Location: LCCOMB_X14_Y20_N18
\light_4|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~6_combout\ = (\light_4|led_counter\(3) & (!\light_4|Add3~5\)) # (!\light_4|led_counter\(3) & ((\light_4|Add3~5\) # (GND)))
-- \light_4|Add3~7\ = CARRY((!\light_4|Add3~5\) # (!\light_4|led_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(3),
	datad => VCC,
	cin => \light_4|Add3~5\,
	combout => \light_4|Add3~6_combout\,
	cout => \light_4|Add3~7\);

-- Location: FF_X14_Y20_N19
\light_4|led_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(3));

-- Location: LCCOMB_X14_Y20_N20
\light_4|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~8_combout\ = (\light_4|led_counter\(4) & (\light_4|Add3~7\ $ (GND))) # (!\light_4|led_counter\(4) & (!\light_4|Add3~7\ & VCC))
-- \light_4|Add3~9\ = CARRY((\light_4|led_counter\(4) & !\light_4|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(4),
	datad => VCC,
	cin => \light_4|Add3~7\,
	combout => \light_4|Add3~8_combout\,
	cout => \light_4|Add3~9\);

-- Location: FF_X14_Y20_N21
\light_4|led_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(4));

-- Location: LCCOMB_X14_Y20_N0
\light_4|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal1~1_combout\ = (!\light_4|led_counter\(3) & (!\light_4|led_counter\(4) & (!\light_4|led_counter\(7) & !\light_4|led_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(3),
	datab => \light_4|led_counter\(4),
	datac => \light_4|led_counter\(7),
	datad => \light_4|led_counter\(8),
	combout => \light_4|Equal1~1_combout\);

-- Location: LCCOMB_X14_Y20_N22
\light_4|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~10_combout\ = (\light_4|led_counter\(5) & (!\light_4|Add3~9\)) # (!\light_4|led_counter\(5) & ((\light_4|Add3~9\) # (GND)))
-- \light_4|Add3~11\ = CARRY((!\light_4|Add3~9\) # (!\light_4|led_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(5),
	datad => VCC,
	cin => \light_4|Add3~9\,
	combout => \light_4|Add3~10_combout\,
	cout => \light_4|Add3~11\);

-- Location: LCCOMB_X14_Y20_N6
\light_4|led_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|led_counter~1_combout\ = (\light_4|Add3~10_combout\ & !\light_4|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add3~10_combout\,
	datad => \light_4|Equal1~2_combout\,
	combout => \light_4|led_counter~1_combout\);

-- Location: FF_X14_Y20_N7
\light_4|led_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|led_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(5));

-- Location: LCCOMB_X15_Y20_N6
\light_4|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal1~0_combout\ = (\light_4|led_counter\(9) & (\light_4|led_counter\(5) & (\light_4|led_counter\(1) & \light_4|led_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(9),
	datab => \light_4|led_counter\(5),
	datac => \light_4|led_counter\(1),
	datad => \light_4|led_counter\(6),
	combout => \light_4|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y20_N10
\light_4|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal1~2_combout\ = (\light_4|led_counter\(0) & (\light_4|Equal1~1_combout\ & (!\light_4|led_counter\(2) & \light_4|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(0),
	datab => \light_4|Equal1~1_combout\,
	datac => \light_4|led_counter\(2),
	datad => \light_4|Equal1~0_combout\,
	combout => \light_4|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y20_N24
\light_4|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~12_combout\ = (\light_4|led_counter\(6) & (\light_4|Add3~11\ $ (GND))) # (!\light_4|led_counter\(6) & (!\light_4|Add3~11\ & VCC))
-- \light_4|Add3~13\ = CARRY((\light_4|led_counter\(6) & !\light_4|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(6),
	datad => VCC,
	cin => \light_4|Add3~11\,
	combout => \light_4|Add3~12_combout\,
	cout => \light_4|Add3~13\);

-- Location: LCCOMB_X14_Y20_N8
\light_4|led_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|led_counter~0_combout\ = (!\light_4|Equal1~2_combout\ & \light_4|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Equal1~2_combout\,
	datad => \light_4|Add3~12_combout\,
	combout => \light_4|led_counter~0_combout\);

-- Location: FF_X14_Y20_N9
\light_4|led_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|led_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(6));

-- Location: LCCOMB_X14_Y20_N26
\light_4|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~14_combout\ = (\light_4|led_counter\(7) & (!\light_4|Add3~13\)) # (!\light_4|led_counter\(7) & ((\light_4|Add3~13\) # (GND)))
-- \light_4|Add3~15\ = CARRY((!\light_4|Add3~13\) # (!\light_4|led_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(7),
	datad => VCC,
	cin => \light_4|Add3~13\,
	combout => \light_4|Add3~14_combout\,
	cout => \light_4|Add3~15\);

-- Location: FF_X14_Y20_N27
\light_4|led_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(7));

-- Location: LCCOMB_X14_Y20_N28
\light_4|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~16_combout\ = (\light_4|led_counter\(8) & (\light_4|Add3~15\ $ (GND))) # (!\light_4|led_counter\(8) & (!\light_4|Add3~15\ & VCC))
-- \light_4|Add3~17\ = CARRY((\light_4|led_counter\(8) & !\light_4|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|led_counter\(8),
	datad => VCC,
	cin => \light_4|Add3~15\,
	combout => \light_4|Add3~16_combout\,
	cout => \light_4|Add3~17\);

-- Location: FF_X14_Y20_N29
\light_4|led_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|Add3~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(8));

-- Location: LCCOMB_X14_Y20_N30
\light_4|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add3~18_combout\ = \light_4|Add3~17\ $ (\light_4|led_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_4|led_counter\(9),
	cin => \light_4|Add3~17\,
	combout => \light_4|Add3~18_combout\);

-- Location: LCCOMB_X14_Y20_N2
\light_4|led_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|led_counter~3_combout\ = (\light_4|Add3~18_combout\ & !\light_4|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|Add3~18_combout\,
	datad => \light_4|Equal1~2_combout\,
	combout => \light_4|led_counter~3_combout\);

-- Location: FF_X14_Y20_N3
\light_4|led_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|led_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|led_counter\(9));

-- Location: LCCOMB_X15_Y20_N24
\light_4|pwm_num[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num[7]~0_combout\ = (\light_4|led_counter\(6) & (\light_4|led_counter\(5) & (\light_4|led_counter\(7) & \light_4|led_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(6),
	datab => \light_4|led_counter\(5),
	datac => \light_4|led_counter\(7),
	datad => \light_4|led_counter\(1),
	combout => \light_4|pwm_num[7]~0_combout\);

-- Location: LCCOMB_X15_Y20_N18
\light_4|pwm_num[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num[7]~1_combout\ = (\light_4|led_counter\(4) & (\light_4|led_counter\(3) & (\light_4|led_counter\(2) & \light_4|pwm_num[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(4),
	datab => \light_4|led_counter\(3),
	datac => \light_4|led_counter\(2),
	datad => \light_4|pwm_num[7]~0_combout\,
	combout => \light_4|pwm_num[7]~1_combout\);

-- Location: LCCOMB_X15_Y20_N14
\light_4|pwm_num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~2_combout\ = (\light_4|led_counter\(9)) # ((\light_4|led_counter\(8) & ((\light_4|pwm_num[7]~1_combout\))) # (!\light_4|led_counter\(8) & ((!\light_4|pwm_num[7]~1_combout\) # (!\light_4|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(9),
	datab => \light_4|led_counter\(8),
	datac => \light_4|led_counter\(0),
	datad => \light_4|pwm_num[7]~1_combout\,
	combout => \light_4|pwm_num~2_combout\);

-- Location: LCCOMB_X15_Y22_N0
\light_4|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~0_combout\ = \light_4|pwm_num\(0) $ (VCC)
-- \light_4|Add5~1\ = CARRY(\light_4|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(0),
	datad => VCC,
	combout => \light_4|Add5~0_combout\,
	cout => \light_4|Add5~1\);

-- Location: LCCOMB_X16_Y22_N8
\light_4|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~0_combout\ = \light_4|pwm_num\(0) $ (VCC)
-- \light_4|Add6~1\ = CARRY(\light_4|pwm_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(0),
	datad => VCC,
	combout => \light_4|Add6~0_combout\,
	cout => \light_4|Add6~1\);

-- Location: LCCOMB_X15_Y20_N20
\light_4|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan3~0_combout\ = (!\light_4|led_counter\(9) & (!\light_4|led_counter\(8) & ((!\light_4|pwm_num[7]~1_combout\) # (!\light_4|led_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|led_counter\(9),
	datab => \light_4|led_counter\(8),
	datac => \light_4|led_counter\(0),
	datad => \light_4|pwm_num[7]~1_combout\,
	combout => \light_4|LessThan3~0_combout\);

-- Location: LCCOMB_X15_Y22_N22
\light_4|pwm_num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~10_combout\ = (\light_4|Add5~0_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~0_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~0_combout\ & (\light_4|Add6~0_combout\ & ((!\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~0_combout\,
	datab => \light_4|Add6~0_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~10_combout\);

-- Location: LCCOMB_X15_Y20_N4
\light_4|gear_counter[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|gear_counter[3]~0_combout\ = \light_4|gear_counter\(3) $ (((\light_4|gear_counter\(2) & (\light_4|gear_counter\(1) & \light_4|gear_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|gear_counter\(2),
	datab => \light_4|gear_counter\(1),
	datac => \light_4|gear_counter\(3),
	datad => \light_4|gear_counter\(0),
	combout => \light_4|gear_counter[3]~0_combout\);

-- Location: FF_X15_Y20_N5
\light_4|gear_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|gear_counter[3]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|gear_counter\(3));

-- Location: LCCOMB_X15_Y20_N10
\light_4|gear_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|gear_counter~3_combout\ = (!\light_4|gear_counter\(0) & ((\light_4|gear_counter\(2)) # ((\light_4|gear_counter\(3)) # (\light_4|gear_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|gear_counter\(2),
	datab => \light_4|gear_counter\(3),
	datac => \light_4|gear_counter\(0),
	datad => \light_4|gear_counter\(1),
	combout => \light_4|gear_counter~3_combout\);

-- Location: FF_X15_Y20_N11
\light_4|gear_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|gear_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|gear_counter\(0));

-- Location: LCCOMB_X15_Y20_N28
\light_4|gear_counter[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|gear_counter[1]~2_combout\ = \light_4|gear_counter\(1) $ (\light_4|gear_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|gear_counter\(1),
	datad => \light_4|gear_counter\(0),
	combout => \light_4|gear_counter[1]~2_combout\);

-- Location: FF_X15_Y20_N29
\light_4|gear_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|gear_counter[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|gear_counter\(1));

-- Location: LCCOMB_X15_Y20_N26
\light_4|gear_counter[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|gear_counter[2]~1_combout\ = \light_4|gear_counter\(2) $ (((\light_4|gear_counter\(1) & \light_4|gear_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|gear_counter\(1),
	datac => \light_4|gear_counter\(2),
	datad => \light_4|gear_counter\(0),
	combout => \light_4|gear_counter[2]~1_combout\);

-- Location: FF_X15_Y20_N27
\light_4|gear_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|gear_counter[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|gear_counter\(2));

-- Location: LCCOMB_X15_Y20_N16
\light_4|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Equal3~0_combout\ = (!\light_4|gear_counter\(2) & (!\light_4|gear_counter\(1) & (!\light_4|gear_counter\(3) & !\light_4|gear_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|gear_counter\(2),
	datab => \light_4|gear_counter\(1),
	datac => \light_4|gear_counter\(3),
	datad => \light_4|gear_counter\(0),
	combout => \light_4|Equal3~0_combout\);

-- Location: FF_X15_Y22_N23
\light_4|pwm_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~10_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(0));

-- Location: LCCOMB_X16_Y22_N10
\light_4|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~2_combout\ = (\light_4|pwm_num\(1) & (\light_4|Add6~1\ & VCC)) # (!\light_4|pwm_num\(1) & (!\light_4|Add6~1\))
-- \light_4|Add6~3\ = CARRY((!\light_4|pwm_num\(1) & !\light_4|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(1),
	datad => VCC,
	cin => \light_4|Add6~1\,
	combout => \light_4|Add6~2_combout\,
	cout => \light_4|Add6~3\);

-- Location: LCCOMB_X15_Y22_N2
\light_4|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~2_combout\ = (\light_4|pwm_num\(1) & (!\light_4|Add5~1\)) # (!\light_4|pwm_num\(1) & ((\light_4|Add5~1\) # (GND)))
-- \light_4|Add5~3\ = CARRY((!\light_4|Add5~1\) # (!\light_4|pwm_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(1),
	datad => VCC,
	cin => \light_4|Add5~1\,
	combout => \light_4|Add5~2_combout\,
	cout => \light_4|Add5~3\);

-- Location: LCCOMB_X15_Y22_N16
\light_4|pwm_num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~9_combout\ = (\light_4|Add6~2_combout\ & (((\light_4|Add5~2_combout\ & \light_4|LessThan3~0_combout\)) # (!\light_4|pwm_num~2_combout\))) # (!\light_4|Add6~2_combout\ & (\light_4|Add5~2_combout\ & (\light_4|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add6~2_combout\,
	datab => \light_4|Add5~2_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~9_combout\);

-- Location: FF_X15_Y22_N17
\light_4|pwm_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~9_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(1));

-- Location: LCCOMB_X15_Y22_N4
\light_4|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~4_combout\ = (\light_4|pwm_num\(2) & (\light_4|Add5~3\ $ (GND))) # (!\light_4|pwm_num\(2) & (!\light_4|Add5~3\ & VCC))
-- \light_4|Add5~5\ = CARRY((\light_4|pwm_num\(2) & !\light_4|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(2),
	datad => VCC,
	cin => \light_4|Add5~3\,
	combout => \light_4|Add5~4_combout\,
	cout => \light_4|Add5~5\);

-- Location: LCCOMB_X16_Y22_N12
\light_4|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~4_combout\ = (\light_4|pwm_num\(2) & ((GND) # (!\light_4|Add6~3\))) # (!\light_4|pwm_num\(2) & (\light_4|Add6~3\ $ (GND)))
-- \light_4|Add6~5\ = CARRY((\light_4|pwm_num\(2)) # (!\light_4|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(2),
	datad => VCC,
	cin => \light_4|Add6~3\,
	combout => \light_4|Add6~4_combout\,
	cout => \light_4|Add6~5\);

-- Location: LCCOMB_X15_Y22_N26
\light_4|pwm_num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~8_combout\ = (\light_4|Add5~4_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~4_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~4_combout\ & (\light_4|Add6~4_combout\ & ((!\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~4_combout\,
	datab => \light_4|Add6~4_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~8_combout\);

-- Location: FF_X15_Y22_N27
\light_4|pwm_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~8_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(2));

-- Location: LCCOMB_X15_Y22_N6
\light_4|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~6_combout\ = (\light_4|pwm_num\(3) & (!\light_4|Add5~5\)) # (!\light_4|pwm_num\(3) & ((\light_4|Add5~5\) # (GND)))
-- \light_4|Add5~7\ = CARRY((!\light_4|Add5~5\) # (!\light_4|pwm_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(3),
	datad => VCC,
	cin => \light_4|Add5~5\,
	combout => \light_4|Add5~6_combout\,
	cout => \light_4|Add5~7\);

-- Location: LCCOMB_X16_Y22_N14
\light_4|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~6_combout\ = (\light_4|pwm_num\(3) & (\light_4|Add6~5\ & VCC)) # (!\light_4|pwm_num\(3) & (!\light_4|Add6~5\))
-- \light_4|Add6~7\ = CARRY((!\light_4|pwm_num\(3) & !\light_4|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(3),
	datad => VCC,
	cin => \light_4|Add6~5\,
	combout => \light_4|Add6~6_combout\,
	cout => \light_4|Add6~7\);

-- Location: LCCOMB_X15_Y22_N24
\light_4|pwm_num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~7_combout\ = (\light_4|Add5~6_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~6_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~6_combout\ & (\light_4|Add6~6_combout\ & ((!\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~6_combout\,
	datab => \light_4|Add6~6_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~7_combout\);

-- Location: FF_X15_Y22_N25
\light_4|pwm_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~7_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(3));

-- Location: LCCOMB_X15_Y22_N8
\light_4|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~8_combout\ = (\light_4|pwm_num\(4) & (\light_4|Add5~7\ $ (GND))) # (!\light_4|pwm_num\(4) & (!\light_4|Add5~7\ & VCC))
-- \light_4|Add5~9\ = CARRY((\light_4|pwm_num\(4) & !\light_4|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(4),
	datad => VCC,
	cin => \light_4|Add5~7\,
	combout => \light_4|Add5~8_combout\,
	cout => \light_4|Add5~9\);

-- Location: LCCOMB_X16_Y22_N16
\light_4|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~8_combout\ = (\light_4|pwm_num\(4) & ((GND) # (!\light_4|Add6~7\))) # (!\light_4|pwm_num\(4) & (\light_4|Add6~7\ $ (GND)))
-- \light_4|Add6~9\ = CARRY((\light_4|pwm_num\(4)) # (!\light_4|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(4),
	datad => VCC,
	cin => \light_4|Add6~7\,
	combout => \light_4|Add6~8_combout\,
	cout => \light_4|Add6~9\);

-- Location: LCCOMB_X15_Y22_N30
\light_4|pwm_num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~6_combout\ = (\light_4|Add5~8_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~8_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~8_combout\ & (\light_4|Add6~8_combout\ & ((!\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~8_combout\,
	datab => \light_4|Add6~8_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~6_combout\);

-- Location: FF_X15_Y22_N31
\light_4|pwm_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~6_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(4));

-- Location: LCCOMB_X15_Y22_N10
\light_4|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~10_combout\ = (\light_4|pwm_num\(5) & (!\light_4|Add5~9\)) # (!\light_4|pwm_num\(5) & ((\light_4|Add5~9\) # (GND)))
-- \light_4|Add5~11\ = CARRY((!\light_4|Add5~9\) # (!\light_4|pwm_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(5),
	datad => VCC,
	cin => \light_4|Add5~9\,
	combout => \light_4|Add5~10_combout\,
	cout => \light_4|Add5~11\);

-- Location: LCCOMB_X16_Y22_N18
\light_4|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~10_combout\ = (\light_4|pwm_num\(5) & (\light_4|Add6~9\ & VCC)) # (!\light_4|pwm_num\(5) & (!\light_4|Add6~9\))
-- \light_4|Add6~11\ = CARRY((!\light_4|pwm_num\(5) & !\light_4|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(5),
	datad => VCC,
	cin => \light_4|Add6~9\,
	combout => \light_4|Add6~10_combout\,
	cout => \light_4|Add6~11\);

-- Location: LCCOMB_X15_Y22_N28
\light_4|pwm_num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~5_combout\ = (\light_4|Add5~10_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~10_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~10_combout\ & (\light_4|Add6~10_combout\ & ((!\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~10_combout\,
	datab => \light_4|Add6~10_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~5_combout\);

-- Location: FF_X15_Y22_N29
\light_4|pwm_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~5_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(5));

-- Location: LCCOMB_X15_Y22_N12
\light_4|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~12_combout\ = (\light_4|pwm_num\(6) & (\light_4|Add5~11\ $ (GND))) # (!\light_4|pwm_num\(6) & (!\light_4|Add5~11\ & VCC))
-- \light_4|Add5~13\ = CARRY((\light_4|pwm_num\(6) & !\light_4|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(6),
	datad => VCC,
	cin => \light_4|Add5~11\,
	combout => \light_4|Add5~12_combout\,
	cout => \light_4|Add5~13\);

-- Location: LCCOMB_X16_Y22_N20
\light_4|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~12_combout\ = (\light_4|pwm_num\(6) & ((GND) # (!\light_4|Add6~11\))) # (!\light_4|pwm_num\(6) & (\light_4|Add6~11\ $ (GND)))
-- \light_4|Add6~13\ = CARRY((\light_4|pwm_num\(6)) # (!\light_4|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_num\(6),
	datad => VCC,
	cin => \light_4|Add6~11\,
	combout => \light_4|Add6~12_combout\,
	cout => \light_4|Add6~13\);

-- Location: LCCOMB_X15_Y22_N18
\light_4|pwm_num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~4_combout\ = (\light_4|Add5~12_combout\ & ((\light_4|LessThan3~0_combout\) # ((\light_4|Add6~12_combout\ & !\light_4|pwm_num~2_combout\)))) # (!\light_4|Add5~12_combout\ & (((\light_4|Add6~12_combout\ & !\light_4|pwm_num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|Add5~12_combout\,
	datab => \light_4|LessThan3~0_combout\,
	datac => \light_4|Add6~12_combout\,
	datad => \light_4|pwm_num~2_combout\,
	combout => \light_4|pwm_num~4_combout\);

-- Location: FF_X15_Y22_N19
\light_4|pwm_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~4_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(6));

-- Location: LCCOMB_X15_Y22_N14
\light_4|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add5~14_combout\ = \light_4|Add5~13\ $ (\light_4|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_4|pwm_num\(7),
	cin => \light_4|Add5~13\,
	combout => \light_4|Add5~14_combout\);

-- Location: LCCOMB_X16_Y22_N22
\light_4|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|Add6~14_combout\ = \light_4|Add6~13\ $ (!\light_4|pwm_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_4|pwm_num\(7),
	cin => \light_4|Add6~13\,
	combout => \light_4|Add6~14_combout\);

-- Location: LCCOMB_X15_Y22_N20
\light_4|pwm_num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_num~3_combout\ = (\light_4|pwm_num~2_combout\ & (\light_4|Add5~14_combout\ & (\light_4|LessThan3~0_combout\))) # (!\light_4|pwm_num~2_combout\ & ((\light_4|Add6~14_combout\) # ((\light_4|Add5~14_combout\ & \light_4|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num~2_combout\,
	datab => \light_4|Add5~14_combout\,
	datac => \light_4|LessThan3~0_combout\,
	datad => \light_4|Add6~14_combout\,
	combout => \light_4|pwm_num~3_combout\);

-- Location: FF_X15_Y22_N21
\light_4|pwm_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~8clkctrl_outclk\,
	d => \light_4|pwm_num~3_combout\,
	clrn => \reset~input_o\,
	ena => \light_4|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_num\(7));

-- Location: LCCOMB_X1_Y21_N0
\light_4|pwm_div_counter[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[0]~6_combout\ = \light_4|pwm_div_counter\(0) $ (VCC)
-- \light_4|pwm_div_counter[0]~7\ = CARRY(\light_4|pwm_div_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_div_counter\(0),
	datad => VCC,
	combout => \light_4|pwm_div_counter[0]~6_combout\,
	cout => \light_4|pwm_div_counter[0]~7\);

-- Location: LCCOMB_X1_Y21_N30
\light_4|pwm_div_counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[0]~feeder_combout\ = \light_4|pwm_div_counter[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter[0]~6_combout\,
	combout => \light_4|pwm_div_counter[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y21_N28
\light_4|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan1~0_combout\ = (!\light_4|pwm_div_counter\(0) & (!\light_4|pwm_div_counter\(2) & !\light_4|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter\(0),
	datac => \light_4|pwm_div_counter\(2),
	datad => \light_4|pwm_div_counter\(1),
	combout => \light_4|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\light_4|pwm_div_counter[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[3]~12_combout\ = (\light_4|pwm_div_counter\(3) & (!\light_4|pwm_div_counter[2]~11\)) # (!\light_4|pwm_div_counter\(3) & ((\light_4|pwm_div_counter[2]~11\) # (GND)))
-- \light_4|pwm_div_counter[3]~13\ = CARRY((!\light_4|pwm_div_counter[2]~11\) # (!\light_4|pwm_div_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter\(3),
	datad => VCC,
	cin => \light_4|pwm_div_counter[2]~11\,
	combout => \light_4|pwm_div_counter[3]~12_combout\,
	cout => \light_4|pwm_div_counter[3]~13\);

-- Location: LCCOMB_X1_Y21_N8
\light_4|pwm_div_counter[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[4]~14_combout\ = (\light_4|pwm_div_counter\(4) & (\light_4|pwm_div_counter[3]~13\ $ (GND))) # (!\light_4|pwm_div_counter\(4) & (!\light_4|pwm_div_counter[3]~13\ & VCC))
-- \light_4|pwm_div_counter[4]~15\ = CARRY((\light_4|pwm_div_counter\(4) & !\light_4|pwm_div_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_div_counter\(4),
	datad => VCC,
	cin => \light_4|pwm_div_counter[3]~13\,
	combout => \light_4|pwm_div_counter[4]~14_combout\,
	cout => \light_4|pwm_div_counter[4]~15\);

-- Location: FF_X1_Y21_N9
\light_4|pwm_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|pwm_div_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(4));

-- Location: LCCOMB_X1_Y21_N10
\light_4|pwm_div_counter[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[5]~16_combout\ = \light_4|pwm_div_counter[4]~15\ $ (\light_4|pwm_div_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_4|pwm_div_counter\(5),
	cin => \light_4|pwm_div_counter[4]~15\,
	combout => \light_4|pwm_div_counter[5]~16_combout\);

-- Location: FF_X1_Y21_N11
\light_4|pwm_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|pwm_div_counter[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(5));

-- Location: LCCOMB_X1_Y21_N24
\light_4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan0~0_combout\ = (\light_4|pwm_div_counter\(4) & (\light_4|pwm_div_counter\(5) & ((\light_4|pwm_div_counter\(3)) # (!\light_4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter\(3),
	datab => \light_4|LessThan1~0_combout\,
	datac => \light_4|pwm_div_counter\(4),
	datad => \light_4|pwm_div_counter\(5),
	combout => \light_4|LessThan0~0_combout\);

-- Location: FF_X1_Y21_N31
\light_4|pwm_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \light_4|pwm_div_counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(0));

-- Location: LCCOMB_X1_Y21_N2
\light_4|pwm_div_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[1]~8_combout\ = (\light_4|pwm_div_counter\(1) & (!\light_4|pwm_div_counter[0]~7\)) # (!\light_4|pwm_div_counter\(1) & ((\light_4|pwm_div_counter[0]~7\) # (GND)))
-- \light_4|pwm_div_counter[1]~9\ = CARRY((!\light_4|pwm_div_counter[0]~7\) # (!\light_4|pwm_div_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_div_counter\(1),
	datad => VCC,
	cin => \light_4|pwm_div_counter[0]~7\,
	combout => \light_4|pwm_div_counter[1]~8_combout\,
	cout => \light_4|pwm_div_counter[1]~9\);

-- Location: LCCOMB_X1_Y21_N18
\light_4|pwm_div_counter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[1]~feeder_combout\ = \light_4|pwm_div_counter[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter[1]~8_combout\,
	combout => \light_4|pwm_div_counter[1]~feeder_combout\);

-- Location: FF_X1_Y21_N19
\light_4|pwm_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|pwm_div_counter[1]~feeder_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(1));

-- Location: LCCOMB_X1_Y21_N4
\light_4|pwm_div_counter[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_div_counter[2]~10_combout\ = (\light_4|pwm_div_counter\(2) & (\light_4|pwm_div_counter[1]~9\ $ (GND))) # (!\light_4|pwm_div_counter\(2) & (!\light_4|pwm_div_counter[1]~9\ & VCC))
-- \light_4|pwm_div_counter[2]~11\ = CARRY((\light_4|pwm_div_counter\(2) & !\light_4|pwm_div_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_div_counter\(2),
	datad => VCC,
	cin => \light_4|pwm_div_counter[1]~9\,
	combout => \light_4|pwm_div_counter[2]~10_combout\,
	cout => \light_4|pwm_div_counter[2]~11\);

-- Location: FF_X1_Y21_N5
\light_4|pwm_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|pwm_div_counter[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(2));

-- Location: FF_X1_Y21_N7
\light_4|pwm_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \light_4|pwm_div_counter[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \light_4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_div_counter\(3));

-- Location: LCCOMB_X1_Y21_N26
\rtl~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = LCELL((!\light_4|pwm_div_counter\(5) & (((\light_4|LessThan1~0_combout\) # (!\light_4|pwm_div_counter\(4))) # (!\light_4|pwm_div_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_div_counter\(3),
	datab => \light_4|pwm_div_counter\(4),
	datac => \light_4|LessThan1~0_combout\,
	datad => \light_4|pwm_div_counter\(5),
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G1
\rtl~9clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X15_Y23_N14
\light_4|pwm_counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[0]~21_combout\ = !\light_4|pwm_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \light_4|pwm_counter\(0),
	combout => \light_4|pwm_counter[0]~21_combout\);

-- Location: FF_X15_Y23_N15
\light_4|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(0));

-- Location: LCCOMB_X15_Y23_N0
\light_4|pwm_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[1]~7_combout\ = (\light_4|pwm_counter\(0) & (\light_4|pwm_counter\(1) $ (VCC))) # (!\light_4|pwm_counter\(0) & (\light_4|pwm_counter\(1) & VCC))
-- \light_4|pwm_counter[1]~8\ = CARRY((\light_4|pwm_counter\(0) & \light_4|pwm_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_counter\(0),
	datab => \light_4|pwm_counter\(1),
	datad => VCC,
	combout => \light_4|pwm_counter[1]~7_combout\,
	cout => \light_4|pwm_counter[1]~8\);

-- Location: FF_X15_Y23_N1
\light_4|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(1));

-- Location: LCCOMB_X15_Y23_N2
\light_4|pwm_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[2]~9_combout\ = (\light_4|pwm_counter\(2) & (!\light_4|pwm_counter[1]~8\)) # (!\light_4|pwm_counter\(2) & ((\light_4|pwm_counter[1]~8\) # (GND)))
-- \light_4|pwm_counter[2]~10\ = CARRY((!\light_4|pwm_counter[1]~8\) # (!\light_4|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_counter\(2),
	datad => VCC,
	cin => \light_4|pwm_counter[1]~8\,
	combout => \light_4|pwm_counter[2]~9_combout\,
	cout => \light_4|pwm_counter[2]~10\);

-- Location: FF_X15_Y23_N3
\light_4|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(2));

-- Location: LCCOMB_X15_Y23_N4
\light_4|pwm_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[3]~11_combout\ = (\light_4|pwm_counter\(3) & (\light_4|pwm_counter[2]~10\ $ (GND))) # (!\light_4|pwm_counter\(3) & (!\light_4|pwm_counter[2]~10\ & VCC))
-- \light_4|pwm_counter[3]~12\ = CARRY((\light_4|pwm_counter\(3) & !\light_4|pwm_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_counter\(3),
	datad => VCC,
	cin => \light_4|pwm_counter[2]~10\,
	combout => \light_4|pwm_counter[3]~11_combout\,
	cout => \light_4|pwm_counter[3]~12\);

-- Location: FF_X15_Y23_N5
\light_4|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(3));

-- Location: LCCOMB_X15_Y23_N6
\light_4|pwm_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[4]~13_combout\ = (\light_4|pwm_counter\(4) & (!\light_4|pwm_counter[3]~12\)) # (!\light_4|pwm_counter\(4) & ((\light_4|pwm_counter[3]~12\) # (GND)))
-- \light_4|pwm_counter[4]~14\ = CARRY((!\light_4|pwm_counter[3]~12\) # (!\light_4|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_counter\(4),
	datad => VCC,
	cin => \light_4|pwm_counter[3]~12\,
	combout => \light_4|pwm_counter[4]~13_combout\,
	cout => \light_4|pwm_counter[4]~14\);

-- Location: FF_X15_Y23_N7
\light_4|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(4));

-- Location: LCCOMB_X15_Y23_N8
\light_4|pwm_counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[5]~15_combout\ = (\light_4|pwm_counter\(5) & (\light_4|pwm_counter[4]~14\ $ (GND))) # (!\light_4|pwm_counter\(5) & (!\light_4|pwm_counter[4]~14\ & VCC))
-- \light_4|pwm_counter[5]~16\ = CARRY((\light_4|pwm_counter\(5) & !\light_4|pwm_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_counter\(5),
	datad => VCC,
	cin => \light_4|pwm_counter[4]~14\,
	combout => \light_4|pwm_counter[5]~15_combout\,
	cout => \light_4|pwm_counter[5]~16\);

-- Location: FF_X15_Y23_N9
\light_4|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(5));

-- Location: LCCOMB_X15_Y23_N10
\light_4|pwm_counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[6]~17_combout\ = (\light_4|pwm_counter\(6) & (!\light_4|pwm_counter[5]~16\)) # (!\light_4|pwm_counter\(6) & ((\light_4|pwm_counter[5]~16\) # (GND)))
-- \light_4|pwm_counter[6]~18\ = CARRY((!\light_4|pwm_counter[5]~16\) # (!\light_4|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \light_4|pwm_counter\(6),
	datad => VCC,
	cin => \light_4|pwm_counter[5]~16\,
	combout => \light_4|pwm_counter[6]~17_combout\,
	cout => \light_4|pwm_counter[6]~18\);

-- Location: FF_X15_Y23_N11
\light_4|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(6));

-- Location: LCCOMB_X15_Y23_N12
\light_4|pwm_counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|pwm_counter[7]~19_combout\ = \light_4|pwm_counter[6]~18\ $ (!\light_4|pwm_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \light_4|pwm_counter\(7),
	cin => \light_4|pwm_counter[6]~18\,
	combout => \light_4|pwm_counter[7]~19_combout\);

-- Location: FF_X15_Y23_N13
\light_4|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~9clkctrl_outclk\,
	d => \light_4|pwm_counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \light_4|pwm_counter\(7));

-- Location: LCCOMB_X15_Y23_N16
\light_4|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~1_cout\ = CARRY((!\light_4|pwm_num\(0) & \light_4|pwm_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(0),
	datab => \light_4|pwm_counter\(0),
	datad => VCC,
	cout => \light_4|LessThan5~1_cout\);

-- Location: LCCOMB_X15_Y23_N18
\light_4|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~3_cout\ = CARRY((\light_4|pwm_counter\(1) & (\light_4|pwm_num\(1) & !\light_4|LessThan5~1_cout\)) # (!\light_4|pwm_counter\(1) & ((\light_4|pwm_num\(1)) # (!\light_4|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_counter\(1),
	datab => \light_4|pwm_num\(1),
	datad => VCC,
	cin => \light_4|LessThan5~1_cout\,
	cout => \light_4|LessThan5~3_cout\);

-- Location: LCCOMB_X15_Y23_N20
\light_4|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~5_cout\ = CARRY((\light_4|pwm_num\(2) & (\light_4|pwm_counter\(2) & !\light_4|LessThan5~3_cout\)) # (!\light_4|pwm_num\(2) & ((\light_4|pwm_counter\(2)) # (!\light_4|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(2),
	datab => \light_4|pwm_counter\(2),
	datad => VCC,
	cin => \light_4|LessThan5~3_cout\,
	cout => \light_4|LessThan5~5_cout\);

-- Location: LCCOMB_X15_Y23_N22
\light_4|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~7_cout\ = CARRY((\light_4|pwm_num\(3) & ((!\light_4|LessThan5~5_cout\) # (!\light_4|pwm_counter\(3)))) # (!\light_4|pwm_num\(3) & (!\light_4|pwm_counter\(3) & !\light_4|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(3),
	datab => \light_4|pwm_counter\(3),
	datad => VCC,
	cin => \light_4|LessThan5~5_cout\,
	cout => \light_4|LessThan5~7_cout\);

-- Location: LCCOMB_X15_Y23_N24
\light_4|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~9_cout\ = CARRY((\light_4|pwm_counter\(4) & ((!\light_4|LessThan5~7_cout\) # (!\light_4|pwm_num\(4)))) # (!\light_4|pwm_counter\(4) & (!\light_4|pwm_num\(4) & !\light_4|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_counter\(4),
	datab => \light_4|pwm_num\(4),
	datad => VCC,
	cin => \light_4|LessThan5~7_cout\,
	cout => \light_4|LessThan5~9_cout\);

-- Location: LCCOMB_X15_Y23_N26
\light_4|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~11_cout\ = CARRY((\light_4|pwm_num\(5) & ((!\light_4|LessThan5~9_cout\) # (!\light_4|pwm_counter\(5)))) # (!\light_4|pwm_num\(5) & (!\light_4|pwm_counter\(5) & !\light_4|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(5),
	datab => \light_4|pwm_counter\(5),
	datad => VCC,
	cin => \light_4|LessThan5~9_cout\,
	cout => \light_4|LessThan5~11_cout\);

-- Location: LCCOMB_X15_Y23_N28
\light_4|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~13_cout\ = CARRY((\light_4|pwm_num\(6) & (\light_4|pwm_counter\(6) & !\light_4|LessThan5~11_cout\)) # (!\light_4|pwm_num\(6) & ((\light_4|pwm_counter\(6)) # (!\light_4|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(6),
	datab => \light_4|pwm_counter\(6),
	datad => VCC,
	cin => \light_4|LessThan5~11_cout\,
	cout => \light_4|LessThan5~13_cout\);

-- Location: LCCOMB_X15_Y23_N30
\light_4|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \light_4|LessThan5~14_combout\ = (\light_4|pwm_num\(7) & (\light_4|LessThan5~13_cout\ & \light_4|pwm_counter\(7))) # (!\light_4|pwm_num\(7) & ((\light_4|LessThan5~13_cout\) # (\light_4|pwm_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \light_4|pwm_num\(7),
	datad => \light_4|pwm_counter\(7),
	cin => \light_4|LessThan5~13_cout\,
	combout => \light_4|LessThan5~14_combout\);

ww_light_out(0) <= \light_out[0]~output_o\;

ww_light_out(1) <= \light_out[1]~output_o\;

ww_light_out(2) <= \light_out[2]~output_o\;

ww_light_out(3) <= \light_out[3]~output_o\;

ww_light_out(4) <= \light_out[4]~output_o\;
END structure;


