-----------------------------------
--  00857005 周固廷              --
--  00857011 林雅芸  作業11加分題  --
--    雙版桌球的副板          --
-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ping_pong_slave is
port(
	B_score:in std_logic_vector(3 downto 0);
	B_LED_control:in std_logic_vector(3 downto 0 );
	system_B_button:in std_logic;
	B_button_out:out std_logic;
	LED:buffer std_logic_vector(9 downto 0);
	HEX0:out std_logic_vector(7 downto 0)
);
end ping_pong_slave;


architecture ping_pong of ping_pong_slave is
	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;

begin
	LED <= "0000000000" when B_LED_control = x"F" else
			 "0000000001" when B_LED_control = x"0" else
			 "0000000010" when B_LED_control = x"1" else
			 "0000000100" when B_LED_control = x"2" else
			 "0000001000" when B_LED_control = x"3" else
			 "0000010000" when B_LED_control = x"4" else
			 "0000100000" when B_LED_control = x"5" else
			 "0001000000" when B_LED_control = x"6" else
			 "0010000000" when B_LED_control = x"7" else
			 "0100000000" when B_LED_control = x"8" else
			 "1000000000" when B_LED_control = x"9" else
			 "1111111111" when B_LED_control = x"A" else
			 "0000000000";
 	dec1: seven_seg_decoder port map(B_score,HEX0);
	B_button_out <= system_B_button;
	
end ping_pong;
