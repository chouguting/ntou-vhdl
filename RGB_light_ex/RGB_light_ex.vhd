library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RGB_light_ex is
port(
	clk:in std_logic;
	sw:in std_logic_vector(8 downto 0);
	R_led,G_led,B_led:out std_logic
);
end RGB_light_ex;

architecture LA of RGB_light_ex is
	signal led_counter:std_logic_vector(2 downto 0);
	signal div_counter:std_logic_vector(8 downto 0);
	signal pwm_clk:std_logic;
begin
	
	process(clk) begin
		if(rising_edge(clk)) then
			div_counter <= div_counter+1;
		end if;
	end process;
	
	pwm_clk <= div_counter(8); --50MHz大約會變成100kHz
	
	process(pwm_clk) begin
		if(rising_edge(pwm_clk)) then
			led_counter <= led_counter+1;
		end if;
	end process;
	
	R_led <= '0' when led_counter < sw(8 downto 6) else '1';
	G_led <= '0' when led_counter < sw(5 downto 3) else '1';
	B_led <= '0' when led_counter < sw(2 downto 0) else '1';

end LA;