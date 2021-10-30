library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity div_20 is
port(
	clk:in std_logic;
	rst:in std_logic;
	P:out std_logic
);
end div_20;

architecture div of div_20 is
signal cnt:std_logic_vector(4 downto 0);
begin
	process(clk,rst) begin
		if(rst='1') then 
			cnt<=(others=>'0');
		elsif(rising_edge(clk)) then
			if(cnt=19) then
				cnt<=(others=>'0');
			else
				cnt<=cnt+1;
			end if;
		end if;
	end process;

	P<='0' when cnt<10 else
		'1';
end div;