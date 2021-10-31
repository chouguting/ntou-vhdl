--------------------------------
--  00857005 周固廷  作業4-2   --
-- 12bit(三位數)上數BCD counter--
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_cascading_counter_12bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	casin:in std_logic;
	count:buffer std_logic_vector(11 downto 0);
	casout:out std_logic
);
end BCD_cascading_counter_12bit;


architecture counter of BCD_cascading_counter_12bit is
signal c1,c2:std_logic;
component BCD_cascading_counter_4bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	casin:in std_logic;
	count:buffer std_logic_vector(3 downto 0);
	casout:out std_logic
);
end component;

begin
	counter1:BCD_cascading_counter_4bit port map(clk=>clk,
												 reset=>reset,
												 casin=>casin,
												 count=>count(3 downto 0),
												 casout=>c1);

	counter2:BCD_cascading_counter_4bit port map(clk=>clk,
												 reset=>reset,
												 casin=>c1,
												 count=>count(7 downto 4),
												 casout=>c2);

	counter3:BCD_cascading_counter_4bit port map(clk=>clk,
												 reset=>reset,
												 casin=>c2,
												 count=>count(11 downto 8),
												 casout=>casout);
end counter;