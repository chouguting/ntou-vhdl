--------------------------------
--   00857005 周固廷  作業8-2  --
--   五個呼吸燈 (設定為不同亮度) --
--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity breathing_light_5sec_x5_diff_brightness is
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:out std_logic_vector(4 downto 0)
);
end breathing_light_5sec_x5_diff_brightness;

architecture light of breathing_light_5sec_x5_diff_brightness is
component breathing_light_5sec_1secStop is
	generic(brightness_gear:integer range 1 to 8); --最大亮度的齒輪比
	port(
		clk:in std_logic;
		reset:in std_logic;
		light_out:out std_logic
	);
end component;


begin
	light_4: breathing_light_5sec_1secStop generic map(1)
														port map(clk,reset,light_out(4));
														
	light_3: breathing_light_5sec_1secStop generic map(2)
														port map(clk,reset,light_out(3));
														
	light_2: breathing_light_5sec_1secStop generic map(4)
														port map(clk,reset,light_out(2));
														
	light_1: breathing_light_5sec_1secStop generic map(6)
														port map(clk,reset,light_out(1));
														
	light_0: breathing_light_5sec_1secStop generic map(8)
														port map(clk,reset,light_out(0));
														
end light;														
														