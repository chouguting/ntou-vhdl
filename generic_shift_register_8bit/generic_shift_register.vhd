--------------------------------
--  00857005 周固廷  作業5-3   --
--     參數化位移暫存器        --
--------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generic_shift_register is
generic(bit_count:integer range 1 to 64 :=8);
port(
	D_in:in std_logic; --移入的新資料
	L_R:in std_logic; --定是左移還是右移(0代表左,1代表右)
	clk:in std_logic;
	reset:in std_logic;
	Q:buffer std_logic_vector(bit_count-1 downto 0) --位移暫存器的輸出
);
end generic_shift_register;

architecture sft_reg of generic_shift_register is
--mid_data:將位移後的資料從接給下一個狀態用
signal mid_data:std_logic_vector(bit_count-1 downto 0);

component register_1bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	D_in:in std_logic;
	D_out:out std_logic
);
end component;

begin
	
	--作業要求使用if
	shift_reg: for i in 0 to bit_count-1 generate
	DFF0:	if i=0 generate  
			D0:register_1bit port map(clk,reset,mid_data(0),Q(0));  
		end generate DFF0;
	DFFx:	if i>0 generate
			Dx:register_1bit port map(clk,reset,mid_data(i),Q(i));
		end generate DFFx;
	end generate shift_reg;
	
	--判斷是左移還是右移,往左接或往右接
	mid_data <= (Q(bit_count-2 downto 0)&D_in) when L_R='0' else
				   (D_in&Q(bit_count-1 downto 1));
end sft_reg;