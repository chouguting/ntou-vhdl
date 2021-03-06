library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lr_register_1bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	L_in:in std_logic;
	R_in:in std_logic;
	LR_mode:in std_logic;
	D_out:out std_logic
);
end lr_register_1bit;

architecture lr_register_1bit of lr_register_1bit is
begin
	process(clk,reset) begin
		if(reset='1') then
			D_out <= '0';
		elsif(rising_edge(clk)) then
			if(LR_mode='0') then
				D_out <= R_in;
			else 
				D_out <= L_in;
			end if;
		end if;
	end process;


end lr_register_1bit;