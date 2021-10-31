--------------------------------
--  00857005 周固廷  作業1-2   --
--  用加號減號實作加減法器      --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_subtractor_arithmetic is
port(
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	A_S:in std_logic;  --決定是加法還是減法
	
	Sum:out std_logic_vector(3 downto 0); 
	C_out: out std_logic); 
	
end adder_subtractor_arithmetic;

architecture insideComponent of adder_subtractor_arithmetic is
signal result:std_logic_vector(4 downto 0);
begin
	result<= ('0'&A) + ('0'&B) when A_S = '0' else
				('0'&A) - ('0'&B);
	
	Sum<=result(3 downto 0);
	C_out<=result(4);
end insideComponent;