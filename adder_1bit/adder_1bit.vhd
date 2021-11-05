library IEEE;
use IEEE.std_logic_1164.all;

entity adder_1bit is
	Port (
		A:in STD_logic;
		B:in STD_logic;
		C:in STD_logic;
		S:out STD_logic;
		c_out:out STD_logic
		);
end adder_1bit;

architecture adder_1bit of adder_1bit is
begin
	S <= A xor B xor C;
	c_out <= (A and B) or (B and C) or (A and C);
end adder_1bit;