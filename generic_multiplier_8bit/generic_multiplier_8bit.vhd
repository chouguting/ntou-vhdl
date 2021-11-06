library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_multiplier_8bit is 
port(
	X:in std_logic_vector(7 downto 0);
	Y:in std_logic_vector(7 downto 0);
	mult_out:out std_logic_vector(15 downto 0)
);
end generic_multiplier_8bit;

architecture mult of generic_multiplier_8bit is
component generic_multiplier is 
generic(bit_count:integer range 1 to 8);
port(
	X:in std_logic_vector(bit_count-1 downto 0);
	Y:in std_logic_vector(bit_count-1 downto 0);
	mult_out:out std_logic_vector(bit_count*2-1 downto 0)
);
end component;

begin
	
	multiplier:generic_multiplier generic map(8)
											port map(X,Y,mult_out);

end mult;
