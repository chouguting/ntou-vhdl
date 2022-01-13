library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity generic_up_down_counter is
generic(limit:integer range 1 to 16 := 9);
port(
	clk:in std_logic;
	reset:in std_logic;
	up_or_down:in std_logic;  --1:up 0:down
	num_out:buffer std_logic_vector(3 downto 0)
);
end generic_up_down_counter;

architecture counter of generic_up_down_counter is

begin
	process(clk,reset) begin
		if(reset='0') then
			num_out <= x"0";
		elsif(rising_edge(clk)) then
			if(up_or_down='1') then
				if(num_out = limit) then
					num_out <= x"0";
				else
					num_out <= num_out+1;
				end if;
			else
				if(num_out = x"0") then
					num_out <= conv_std_logic_vector(limit,4);
				else
					num_out <= num_out-1;
				end if;
			end if;
		end if;
	end process;
end counter;