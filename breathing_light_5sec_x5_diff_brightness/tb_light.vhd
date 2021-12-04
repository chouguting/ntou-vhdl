library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_light is
end tb_light;

architecture test of tb_light is
component breathing_light_5sec_x5_diff_brightness is
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:out std_logic_vector(4 downto 0)
);
end component;

signal clk,reset:std_logic :='0';
signal light_out: std_logic_vector(4 downto 0);

begin
	light:breathing_light_5sec_x5_diff_brightness port map(clk,reset,light_out);
	
	clk <= not(clk) after 50ns;
	
	reset <= '0', 
				'1' after 150 ns;
	

end test;

