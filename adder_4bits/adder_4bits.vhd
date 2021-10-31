--------------------------------
--  00857005 周固廷  作業2-1   --
--  用process寫 4bit加法器     --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_4bits is
port(
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	S:buffer std_logic_vector(3 downto 0);
	C:buffer std_logic
);
end adder_4bits;

architecture inside_adder of adder_4bits is
signal temp_out: std_logic_vector(4 downto 0);
begin
	process(A,B)
	begin
		temp_out <= ('0'&A) + ('0'&B);
	end process;
	
	S<=temp_out(3 downto 0);
	C<=temp_out(4);
end inside_adder;