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

architecture lr_sft of generic_shift_register is
component lr_register_1bit is
port(
	clk:in std_logic;
	reset:in std_logic;
	L_in:in std_logic;
	R_in:in std_logic;
	LR_mode:in std_logic;
	D_out:buffer std_logic
);
end component;

begin

	DFFs:for i in 0 to bit_count generate
		D0:if(i=0) generate
			D: lr_register_1bit port map(clk,reset,Q(i+1),D_in,L_R,Q(i));
		end generate D0;
		
		Dx:if(i>0 and i<bit_count-1) generate
			D: lr_register_1bit port map(clk,reset,Q(i+1),Q(i-1),L_R,Q(i));
		end generate Dx;
		
		De:if(i=bit_count-1) generate
			D: lr_register_1bit port map(clk,reset,D_in,Q(i-1),L_R,Q(i));
		end generate De;
		
	end generate DFFs;

end lr_sft;