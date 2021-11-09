--------------------------------
--  00857005 周固廷  作業6-2   --
--      1~8bit 可擴充乘法器    --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_multiplier is 
generic(bit_count:integer range 1 to 8 := 8);
port(
	X:in std_logic_vector(bit_count-1 downto 0);
	Y:in std_logic_vector(bit_count-1 downto 0);
	mult_out:out std_logic_vector(bit_count*2-1 downto 0)
);
end generic_multiplier;

architecture mult of generic_multiplier is
type data_2d_bit_count is array(bit_count-1 downto 0) of std_logic_vector(bit_count-1 downto 0);
signal K:data_2d_bit_count;  --各個位數的乘積
signal G:data_2d_bit_count;  -- 各層adder的輸出
signal C:std_logic_vector(bit_count-1 downto 0);  -- 各層adder的進位

component generic_adder is
generic(bit_count:integer);
port(
	X:in std_logic_vector(bit_count-1 downto 0);
	Y:in std_logic_vector(bit_count-1 downto 0);
	C_in:in std_logic;
	Sum:out std_logic_vector(bit_count-1 downto 0);
	C_out:out std_logic
);
end component;
begin
	process(X,Y) begin
		for i in 0 to bit_count-1 loop
			for j in 0 to bit_count-1 loop
				K(i)(j) <= X(j) and Y(i);
			end loop;
		end loop;
	end process;
	
	C(0) <='0';
	G(0) <= K(0);
	
	adder_part:for i in 1 to bit_count-1 generate
		adder:generic_adder generic map(bit_count)
								  port map((C(i-1) & G(i-1)(bit_count-1 downto 1)), k(i), '0', G(i), C(i));
	end generate adder_part;
	
	mult_out(0) <= k(0)(0);
	process(G) begin
		for i in 1 to bit_count-2 loop
			mult_out(i) <= G(i)(0);
		end loop;
	end process;
	
	mult_out(bit_count*2-1 downto bit_count-1) <= (C(bit_count-1) & G(bit_count-1));	
end mult;