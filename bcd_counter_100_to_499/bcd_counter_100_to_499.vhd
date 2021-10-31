--------------------------------
--  00857005 周固廷  作業2-3   --
--  3位數BCD上數器 (100~499)   --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_counter_100_to_499 is
	port(
		clk:in std_logic;
		reset:in std_logic;
		output_num:out std_logic_vector(11 downto 0)
	);

end bcd_counter_100_to_499;

architecture counter of bcd_counter_100_to_499 is
signal num_2,num_1,num_0:std_logic_vector(3 downto 0);
begin
	output_num<=num_2&num_1&num_0;
	
	--BCD 最低位
	process(clk,reset)
	begin
		if(reset='0') then
			num_0<=x"0";
		elsif(rising_edge(clk)) then
			if(num_0=x"9") then
				num_0<=x"0";
			else
				num_0<=num_0+1;
			end if;
		end if;
	end process;
	
	--BCD 中間位
	process(reset,clk,num_0)
	begin
		if(reset='0') then
			num_1<=x"0";
		elsif(rising_edge(clk) and num_0=x"9") then
			if(num_1=x"9") then
				num_1<=x"0";
			else
				num_1<=num_1+1;
			end if;
		end if;
	end process;
	
	--BCD 最高位
	process(reset,clk,num_1)
	begin
		if(reset='0') then
			num_2<=x"1";
		elsif(rising_edge(clk) and num_1=x"9") then
			if(num_2=x"4") then
				num_2<=x"1";
			else
				num_2<=num_2+1;
			end if;
		end if;
	end process;

end counter;