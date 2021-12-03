library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity breathing_light_5sec is
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:buffer std_logic
);
end breathing_light_5sec;

architecture light of breathing_light_5sec is
-- 0~255再從254~1,共需要256+254=510個clk
-- 510clk/5sec => 102clk/1sec
-- De0提供50MHz ，除以490196後大約是102Hz
signal div_490196_counter: std_logic_vector(18 downto 0); 

signal clk_102Hz:std_logic;

signal led_counter: std_logic_vector(7 downto 0); 

begin
	process(clk)
	begin
		if(reset='0') then
			div_490196_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(div_490196_counter = 490165) then
				div_490196_counter <= (others=>'0');
			else 
				div_490196_counter <= div_490196_counter+1;
			end if;
		end if;
	end process;
	
	clk_102Hz <= '1' when div_490196_counter < 245098 else '0';
	
	
   process(clk_102Hz)
	begin
		if(reset='0') then
			led_counter <= (others=>'0');
		elsif(rising_edge(clk_102Hz)) then
			if(led_counter = 101) then
				led_counter <= (others=>'0');
				light_out <= not light_out;
			else 
				led_counter <= led_counter+1;
			end if;
		end if;
	end process;
	
	--light_out <= '1' when led_counter < 51 else
	--             '0';
	
	
	
end light;