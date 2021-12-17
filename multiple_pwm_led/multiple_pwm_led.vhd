library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiple_pwm_led is
port(
	clk:in std_logic;
	reset:in std_logic;
	led_out:out std_logic_vector(9 downto 0)
);
end multiple_pwm_led;

architecture pwm of multiple_pwm_led is
component pwm_led is
port(
	clk:in std_logic;
	reset:in std_logic;
	brightness:in std_logic_vector(7 downto 0);
	led_out:out std_logic
);
end component;

begin
	L0: pwm_led port map(clk,reset,x"00",led_out(0));
	L1: pwm_led port map(clk,reset,x"05",led_out(1));
	L2: pwm_led port map(clk,reset,x"0f",led_out(2));
	L3: pwm_led port map(clk,reset,x"1f",led_out(3));
	L4: pwm_led port map(clk,reset,x"2f",led_out(4));
	L5: pwm_led port map(clk,reset,x"3f",led_out(5));
	L6: pwm_led port map(clk,reset,x"5f",led_out(6));
	L7: pwm_led port map(clk,reset,x"80",led_out(7));
	L8: pwm_led port map(clk,reset,x"c6",led_out(8));
	L9: pwm_led port map(clk,reset,x"ff",led_out(9));


end pwm;