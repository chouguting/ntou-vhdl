library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity dynamic_clk_divider is
port(
	reset: in std_logic;
	clk: in std_logic;
	Hz_select:in std_logic_vector(3 downto 0); --目標是幾Hz (1~10)
	divided_clk:out std_logic
);
end dynamic_clk_divider;

architecture divider of dynamic_clk_divider is
	signal div_counter:std_logic_vector(25 downto 0); --最慢的1Hz需要的 (需要除最多)
	signal div_upper_bound:std_logic_vector(25 downto 0);  --對應每個Hz數要數到多少
begin
	div_upper_bound <= "00010011000100101100111111" when Hz_select = x"A" else
							 "00010101001100010101100010" when Hz_select = x"9" else
							 "00010111110101111000001111" when Hz_select = x"8" else
							 "00011011001111110111001000" when Hz_select = x"7" else
							 "00011111110010100000010100" when Hz_select = x"6" else
							 "00100110001001011001111111" when Hz_select = x"5" else
							 "00101111101011110000011111" when Hz_select = x"4" else
							 "00111111100101000000101001" when Hz_select = x"3" else
							 "01011111010111100000111111" when Hz_select = x"2" else
							 "10111110101111000001111111" when Hz_select = x"1" else
							 "00010011000100101100111111";
		
	process(clk,reset) begin
		if(reset = '0') then
			div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(div_counter = div_upper_bound) then
				div_counter <= (others=>'0');
			else
				div_counter <= div_counter + 1;
			end if;
		end if;
	end process;
	
	divided_clk <= div_counter(22) when Hz_select = x"A" else
						div_counter(22) when Hz_select = x"9" else
						div_counter(22) when Hz_select = x"8" else
						div_counter(22) when Hz_select = x"7" else
						div_counter(22) when Hz_select = x"6" else
						div_counter(23) when Hz_select = x"5" else
						div_counter(23) when Hz_select = x"4" else
						div_counter(23) when Hz_select = x"3" else
					   div_counter(24) when Hz_select = x"2" else
						div_counter(25) when Hz_select = x"1" else
						'0' when Hz_select = x"0" else
						div_counter(22);
	
	
end divider;