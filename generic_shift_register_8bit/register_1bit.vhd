--------------------------------
--  00857005 周固廷  作業5-3   --
--     1 bit暫存器(DFF)       --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity register_1bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	D_in:in std_logic;
	D_out:out std_logic
);
end register_1bit;
	

architecture register_1bit of register_1bit is
begin
	process(D_in,reset,clk) begin
		if(reset='1') then
			D_out<='0';
		elsif(rising_edge(clk)) then
			D_out<=D_in;
		end if;
	end process;
end register_1bit;