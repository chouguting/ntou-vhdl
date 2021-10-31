--------------------------------
--  00857005 周固廷  作業3-1   --
-- 		 上下階梯波 	      --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity step_wave is
port(
	reset,clk:in std_logic;
	F_out:out std_logic_vector(7 downto 0)
);
end step_wave;

architecture waveCreator of step_wave is
signal counter:std_logic_vector(3 downto 0);
begin
	process(reset,clk)
	begin
		if(reset='0') then	
			counter<=x"0";
		elsif(rising_edge(clk)) then
			if(counter=x"E") then
				counter<=x"1";
			else
				counter<=counter+1;
			end if;
		end if;
	end process;
	
	F_out<="00000001" when counter=x"1" else
			 "00000010" when counter=x"2" else
			 "00000100" when counter=x"3" else
			 "00001000" when counter=x"4" else
			 "00010000" when counter=x"5" else
			 "00100000" when counter=x"6" else
			 "01000000" when counter=x"7" else
			 "10000000" when counter=x"8" else
			 "01000000" when counter=x"9" else
			 "00100000" when counter=x"A" else
			 "00010000" when counter=x"B" else
			 "00001000" when counter=x"C" else
			 "00000100" when counter=x"D" else
			 "00000010" when counter=x"E" else
			 "00000000";
end waveCreator;