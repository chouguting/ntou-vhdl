library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pwm_led is
port(
	clk:in std_logic;
	reset:in std_logic;
	brightness:in std_logic_vector(7 downto 0);
	led_out:out std_logic
);
end pwm_led;

architecture pwm of pwm_led is
signal pwm_div_counter:std_logic_vector(6 downto 0);
signal pwm_clk:std_logic;

signal led_counter:std_logic_vector(7 downto 0);

begin
	process(clk,reset)
	begin
		if(reset='0') then
			pwm_div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(pwm_div_counter = 49) then
				pwm_div_counter <= (others=>'0');
			else
				pwm_div_counter <= pwm_div_counter + 1;
			end if;
		end if;
	end process;
	
	pwm_clk <= '1' when (pwm_div_counter < 25) else '0';
	
	process(pwm_clk,reset)
	begin
		if(reset='0') then
			led_counter <= (others=>'0');
		elsif(rising_edge(pwm_clk)) then
			led_counter <= led_counter + 1;
		end if;
	end process;
	
	led_out <= '1' when (led_counter < brightness) else '0';
	
end pwm;