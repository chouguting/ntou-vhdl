--------------------------------
--  00857005 周固廷  作業5-1   --
--        8bit加法器           --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_adder_8bit is
	port(
			A:in std_logic_vector(7 downto 0);
			B:in std_logic_vector(7 downto 0);
			c_in:in std_logic;
			sum:out std_logic_vector(7 downto 0);
			c_out:out std_logic
		);
end generic_adder_8bit;

architecture adder of generic_adder_8bit is
component generic_adder is
	generic(bit_size:integer);
	port(
			A:in std_logic_vector((bit_size-1) downto 0);
			B:in std_logic_vector((bit_size-1) downto 0);
			c_in:in std_logic;
			sum:out std_logic_vector((bit_size-1) downto 0);
			c_out:out std_logic
		);
end component;

begin
	adder1:generic_adder generic map(bit_size=>8)
								port map(A=>A,
											B=>B,
											c_in=>c_in,
											sum=>sum,
											c_out=>c_out);
end adder;