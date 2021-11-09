--------------------------------
--  00857005 周固廷  作業6-1   --
--  8bit加法器(乘法器內要用的)  --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_8bit is
port(X:in std_logic_vector(7 downto 0);
		Y:in std_logic_vector(7 downto 0);
		C_in:in std_logic;
		Sum:out std_logic_vector(7 downto 0);
		C_out:out std_logic);
end adder_8bit;

architecture adder of adder_8bit is
signal temp:std_logic_vector(8 downto 0);
begin
		temp <= ('0'&X) + Y + C_in;
		C_out <= temp(8);
		Sum <= temp(7 downto 0);
end adder;