--------------------------------
--  00857005 周固廷  作業2-2   --
-- 8bit上下數counter (20H~A0H) --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_20_to_A0 is
port(
	clk:in std_logic;
	reset:in std_logic;
	up_or_down:in std_logic;
	output_num:buffer std_logic_vector(7 downto 0)
);
end counter_20_to_A0;

architecture counter of counter_20_to_A0 is
begin
	process(clk,reset,up_or_down)
	begin
		if(reset='0') then
			output_num<=x"20";
		elsif(rising_edge(clk)) then
			if(up_or_down='0') then
				if(output_num=x"A0") then
					output_num<=x"20";
				else
					output_num<=output_num+1;
				end if;
			else
				if(output_num=x"20") then
					output_num<=x"A0";
				else
					output_num<=output_num-1;
				end if;
			end if;
		end if;
	end process;
end counter;