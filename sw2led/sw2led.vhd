library ieee;
use ieee.std_logic_1164.all;

entity sw2led is
port(
	SW:in std_logic_vector(9 downto 0);
	LED:out std_logic_vector(9 downto 0)
);
end sw2led;

architecture sw2led of sw2led is
begin
	LED <= SW;
end sw2led;