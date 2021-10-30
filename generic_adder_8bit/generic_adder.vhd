--------------------------------
--  00857005 周固廷  作業5-1   --
--     參數化可擴充加法器       --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_adder is
	generic(bit_size:integer :=4);
	port(
			A:in std_logic_vector((bit_size-1) downto 0);
			B:in std_logic_vector((bit_size-1) downto 0);
			c_in:in std_logic;
			sum:out std_logic_vector((bit_size-1) downto 0);
			c_out:out std_logic
		);
end generic_adder;

architecture adder of generic_adder is
begin
	process(A,B,c_in) 
	variable carry:std_logic;
	begin
		carry:=c_in;
		for i in 0 to (bit_size-1) loop
			sum(i)<= A(i) xor B(i) xor carry;
			carry:= (A(i) and B(i)) or
					  (A(i) and carry) or
					  (B(i) and carry);
		end loop;
		c_out<=carry;
	end process;
end adder;