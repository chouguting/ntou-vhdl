--------------------------------
--  00857005 周固廷   	       --
--  00857011 林雅芸  作業10-1  --
--      PWM調節的三色LED      --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity connected_loadable_shifter is
port(
	reset_in:in std_logic;
	clk_org:in std_logic;
	button0,button2:in std_logic;
	clk1,clk2:out std_logic;
	load1,load2:out std_logic;
	reset1,reset2:out std_logic;
	data_in:in std_logic;
	clk_in:in std_logic;
	load_in:in std_logic;
	data_out:out std_logic;
	switch:in std_logic_vector(9 downto 0); --指撥開關輸入
	LED:buffer std_logic_vector(9 downto 0) --LED輸出
);
end connected_loadable_shifter;

architecture shifter of connected_loadable_shifter is
	signal div_5000000_counter:std_logic_vector(22 downto 0);  --10011000100101101000000
	signal clk_10Hz:std_logic;
	
	
	
begin
	
	process(clk_org,reset_in) begin
		if(reset_in='0') then
			div_5000000_counter <= (others=>'0');
		elsif(rising_edge(clk_org)) then
			if(div_5000000_counter = "10011000100101101000000"-1) then
				div_5000000_counter <= (others=>'0');
			else
				div_5000000_counter <= div_5000000_counter + 1;
			end if;
		end if;
	end process;
	
	process(clk_in,reset_in,load_in) begin
		if(reset_in = '0') then
			LED <= (others=>'0');
		elsif(load_in = '0') then
			LED <= switch;
		elsif(rising_edge(clk_in)) then
			LED <= data_in&LED(9 downto 1);
		end if;
	end process;
	
	data_out <= LED(0);
	
	clk_10Hz <= div_5000000_counter(22);
	
	clk1 <= clk_10Hz;
	clk2 <= clk_10Hz;
	
	load1 <= button2;
	load2 <= button2;
	
	reset1 <= button0;
	reset2 <= button0;


end shifter;