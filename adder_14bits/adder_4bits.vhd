library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_4bits is
port(
	X:in std_logic_vector(3 downto 0);
	Y:in std_logic_vector(3 downto 0);
	C:in std_logic;
	S:out std_logic_vector(3 downto 0);
	Co:out std_logic
);
end entity;

architecture adder of adder_4bits is
signal temp:std_logic_vector(4 downto 0);
begin
	temp<=('0'&X)+Y+C;
	S<=temp(3 downto 0);
	Co<=temp(4);
end adder;