--------------------------------
--  00857005 周固廷  作業4-2   --
--   4bit上數BCD counter       --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_cascading_counter_4bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	casin:in std_logic;
	count:buffer std_logic_vector(3 downto 0);
	casout:out std_logic
);
end BCD_cascading_counter_4bit;

architecture counter of BCD_cascading_counter_4bit is
begin
	process(clk,reset,casin) begin
		if(reset='0') then
			count<=x"0";
		elsif(rising_edge(clk) and casin='1') then
			if(count=x"9") then
				count<=x"0";
			else
				count<=count+1;
			end if;
		end if;
	end process;
	
	casout<='1' when (casin='1' and count=x"9") else
			  '0';
end counter;