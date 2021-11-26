library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity oneSecClk is
port(
	clk:in std_logic;
	onesec_out:out std_logic_vector(9 downto 0)
);
end oneSecClk;

architecture oneSecClk of oneSecClk is
signal count:std_logic_vector(25 downto 0);

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(count = "10111110101111000010000000"-1) then
				count <= (others=>'0');
			else
				count <= count+1;
			end if;
		end if;
	end process;
	
	
	process(count) begin
		for i in 0 to 9 loop
			if(count < "01011111010111100001000000") then
				onesec_out(i) <= '1'; 
			else
				onesec_out(i) <= '0'; 
			end if;
		end loop;
	end process;
	
	
end oneSecClk;