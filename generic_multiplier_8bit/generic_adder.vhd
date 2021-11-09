--------------------------------
--  00857005 周固廷  作業6-2   --
--        可擴充加法器         --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_adder is
generic(bit_count:integer := 8);
port(
	X:in std_logic_vector(bit_count-1 downto 0);
	Y:in std_logic_vector(bit_count-1 downto 0);
	C_in:in std_logic;
	Sum:out std_logic_vector(bit_count-1 downto 0);
	C_out:out std_logic
);
end generic_adder;

architecture adder of generic_adder is
signal temp:std_logic_vector(bit_count downto 0);
begin
	temp <= ('0'&X) + Y +C_in;
	Sum <= temp(bit_count-1 downto 0);
	C_out <= temp(bit_count);
end adder;
