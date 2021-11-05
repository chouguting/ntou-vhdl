library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_multiplier is
	port(
			generic(number : integer);
			X : in std_logic_vector(number-1 downto 0);
			Y : in std_logic_vector(number-1 downto 0);
			result : out std_logic_vector(2*number-1 downto 0)
			);
end generic_multiplier;

architecture multiplier of generic_multiplier is
signal K0,K1,K3: std_logic_vector(number-1 downto 0);
begin

process(X,Y) begin
	LOOP:for i in range 0 to number-1 then
		LOOP2:for j in range 0 to number-1 then
		end LOOP2;
	end LOOP;
end process;
	

end multiplier;