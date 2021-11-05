--------------------------------
--  00857005 周固廷  作業5-3   --
--      8bit位移暫存器         --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_shift_register_8bit_ex is
port(
	D_in:in std_logic; --移入的新資料
	L_R:in std_logic; --定是左移還是右移(0代表左,1代表右)
	clk:in std_logic;
	reset:in std_logic;
	Q:out std_logic_vector(7 downto 0) --位移暫存器的輸出
);
end generic_shift_register_8bit_ex;

architecture sft_reg of generic_shift_register_8bit_ex is

component generic_shift_register is
generic(bit_count:integer range 1 to 64);
port(
	D_in:in std_logic; --移入的新資料
	L_R:in std_logic; --定是左移還是右移(0代表左,1代表右)
	clk:in std_logic;
	reset:in std_logic;
	Q:out std_logic_vector(bit_count-1 downto 0) --位移暫存器的輸出
);
end component;

begin
	sft_reg_1:generic_shift_register generic map(8)
												port map(D_in,L_R,clk,reset,Q);

end sft_reg;