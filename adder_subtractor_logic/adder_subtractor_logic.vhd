--------------------------------
--  00857005 周固廷  作業1-1   --
--  用logic gate實作加減法器   --
--------------------------------
 
library IEEE;
use ieee.std_logic_1164.all;

entity adder_subtractor_logic is
port(
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	A_S:in std_logic;  --決定是加法還是減法
	
	Sum:out std_logic_vector(3 downto 0); 
	C_out: out std_logic;
	overflow: out std_logic);  --判斷是否有overflow
	
end adder_subtractor_logic;

architecture insideComponent of adder_subtractor_logic is
signal C1,C2,C3,C4:std_logic;  --中間節點
signal B_in:std_logic_vector(3 downto 0);
begin
	B_in(0) <= B(0) xor A_S;
	Sum(0) <= A(0) xor B_in(0) xor A_S;
	C1 <= (A(0) and B_in(0)) or (A(0) and A_S) or (B_in(0) and A_S);
	
	B_in(1) <= B(1) xor A_S;
	Sum(1) <= A(1) xor B_in(1) xor C1;
	C2 <= (A(1) and B_in(1)) or (A(1) and C1) or (B_in(1) and C1);
	
	B_in(2) <= B(2) xor A_S;
	Sum(2) <= A(2) xor B_in(2) xor C2;
	C3 <= (A(2) and B_in(2)) or (A(2) and C2) or (B_in(2) and C2);
	
	B_in(3) <= B(3) xor A_S;
	Sum(3) <= A(3) xor B_in(3) xor C3;
	C4 <= (A(3) and B_in(3)) or (A(3) and C3) or (B_in(3) and C3);
	
	overflow<=C4 xor C3;
	
	C_out<=C4;
end insideComponent;