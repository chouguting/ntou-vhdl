--------------------------------
--  00857005 周固廷  作業6-1   --
--       8bit快速乘法器        --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fast_multiplier_8bit is
port(
	X:in std_logic_vector(7 downto 0);
	Y:in std_logic_vector(7 downto 0);
	mult_out: out std_logic_vector(15 downto 0)
);
end fast_multiplier_8bit;

architecture mult of fast_multiplier_8bit is
	signal K0,K1,K2,K3,K4,K5,K6,K7:std_logic_vector(7 downto 0); --各個位數的乘積
	
	signal G0_1,G1_2,G2_3,G3_4,G4_5,G5_6,G6_7:std_logic_vector(7 downto 0); -- 各層adder的輸出
	signal C0_1,C1_2,C2_3,C3_4,C4_5,C5_6,C6_7:std_logic; -- 各層adder的進位
	
	--8 bit adder
	component adder_8bit is
	port(X:in std_logic_vector(7 downto 0);
		Y:in std_logic_vector(7 downto 0);
		C_in:in std_logic;
		Sum:out std_logic_vector(7 downto 0);
		C_out:out std_logic);
	end component;

begin

	-- 先把各個位數的乘積算出來
	process(X,Y) begin
		for i in 0 to 7 loop
			K0(i) <= X(i) and Y(0);
			K1(i) <= X(i) and Y(1);
			K2(i) <= X(i) and Y(2);
			K3(i) <= X(i) and Y(3);
			K4(i) <= X(i) and Y(4);
			K5(i) <= X(i) and Y(5);
			K6(i) <= X(i) and Y(6);
			K7(i) <= X(i) and Y(7);
		end loop;
	end process;
	
	--把各個位數的乘積加起來
	A1:adder_8bit port map(('0'&K0(7 downto 1)),K1,'0',G0_1,C0_1);
	A2:adder_8bit port map((C0_1&G0_1(7 downto 1)),K2,'0',G1_2,C1_2);
	A3:adder_8bit port map((C1_2&G1_2(7 downto 1)),K3,'0',G2_3,C2_3);
	A4:adder_8bit port map((C2_3&G2_3(7 downto 1)),K4,'0',G3_4,C3_4);
	A5:adder_8bit port map((C3_4&G3_4(7 downto 1)),K5,'0',G4_5,C4_5);
	A6:adder_8bit port map((C4_5&G4_5(7 downto 1)),K6,'0',G5_6,C5_6);
	A7:adder_8bit port map((C5_6&G5_6(7 downto 1)),K7,'0',G6_7,C6_7);
	
	--輸出
	mult_out(0) <= K0(0);
	mult_out(1) <= G0_1(0);
	mult_out(2) <= G1_2(0);
	mult_out(3) <= G2_3(0);
	mult_out(4) <= G3_4(0);
	mult_out(5) <= G4_5(0);
	mult_out(6) <= G5_6(0);
	mult_out(15 downto 7) <= (C6_7&G6_7);
end mult;