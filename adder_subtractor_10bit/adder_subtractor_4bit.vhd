--------------------------------
--  00857005 周固廷  作業4-1   --
--        4bit加減法器         --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_subtractor_4bit is
port(
	X:in std_logic_vector(3 downto 0);
	Y:in std_logic_vector(3 downto 0);
	C_in:in std_logic;
	Mode:in std_logic;
	S:out std_logic_vector(3 downto 0);
	C_out:out std_logic
);
end adder_subtractor_4bit;

architecture adder_subtractor of adder_subtractor_4bit is
signal temp:std_logic_vector(4 downto 0);
begin
	process(X,Y,C_in,Mode) begin
		if(Mode='0') then
			temp<=('0'&X)+Y+C_in;
		else
			temp<=('0'&X)-Y-C_in;
		end if;
	end process;
	
	S<=temp(3 downto 0);
	C_out<=temp(4);
end adder_subtractor;