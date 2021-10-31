--------------------------------
--  00857005 周固廷  作業3-1   --
--      可串接BCD上數器        --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_cascading_counter is
port(
	reset,clk:in std_logic;
	cascade_in:in std_logic;  --現在能不能加一
	cascade_out:out std_logic;  --進位到下一位
	Cout: buffer std_logic_vector(3 downto 0)
);
end BCD_cascading_counter;

architecture counter of BCD_cascading_counter is
begin
	process(reset,clk)
	begin
		if(reset='0') then
			Cout<=x"0";
		elsif(cascade_in='1' and rising_edge(clk)) then
			if(Cout=x"9") then
				Cout<=x"0";
			else
				Cout<=Cout+1;
			end if;
		end if;
	end process;
	
	cascade_out<='1'  when cascade_in='1' and Cout=x"9" else	'0';
end counter;
