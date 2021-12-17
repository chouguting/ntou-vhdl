library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vhdlClkTest is
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:buffer std_logic
);
end vhdlClkTest;

architecture light of vhdlClkTest is
-- 0~255再從254~1,共需要256+254=510個clk
-- 510clk/5sec => 102clk/1sec
-- De0提供50MHz ，除以490196後大約是102Hz
signal div_490196_counter: std_logic_vector(18 downto 0); 
signal led_counter: std_logic_vector(8 downto 0);

signal clk_102Hz:std_logic;
begin

	--製造出102Hz
	process(clk,reset,div_490196_counter)
	begin
		if(reset='0') then
			div_490196_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			--real:490165
			--Test:9
			if(div_490196_counter = 490165) then
				div_490196_counter <= (others=>'0');
			else 
				div_490196_counter <= div_490196_counter+1;
			end if;
		end if;
	end process;
	
	--real:245098
	--Test:5
	--clk_102Hz <= '1' when (div_490196_counter < 245098) else '0';
	clk_102Hz <= div_490196_counter(18);
	
	
	process(clk_102Hz,reset,led_counter)
	begin
		if(reset='0') then
			led_counter <= (others=>'0');
			light_out <= '0';
		elsif(rising_edge(clk_102Hz)) then
			if(led_counter = 101) then
				led_counter <= (others=>'0');
				light_out <= not light_out;
			else 
				led_counter <= led_counter+1;
			end if;
		end if;
	end process;
	
	
end light;