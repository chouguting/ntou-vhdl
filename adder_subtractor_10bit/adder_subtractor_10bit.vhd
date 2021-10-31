--------------------------------
--  00857005 周固廷  作業4-1   --
--        10bit加減法器        --
--------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_subtractor_10bit is
port(
	X:in std_logic_vector(9 downto 0);
	Y:in std_logic_vector(9 downto 0);
	C_in:in std_logic;
	Mode:in std_logic;
	S:out std_logic_vector(9 downto 0);
	C_out:out std_logic
);
end adder_subtractor_10bit;

architecture adder_subtractor of adder_subtractor_10bit is
signal c1,c2:std_logic;
component adder_subtractor_4bit is
port(
	X:in std_logic_vector(3 downto 0);
	Y:in std_logic_vector(3 downto 0);
	C_in:in std_logic;
	Mode:in std_logic;
	S:out std_logic_vector(3 downto 0);
	C_out:out std_logic
);
end component;

begin
	adder1:adder_subtractor_4bit port map(X=>X(3 downto 0),
										  Y=>Y(3 downto 0),
										  C_in=>C_in,
										  Mode=>Mode,
										  S=>S(3 downto 0),
										  C_out=>c1);
													  
	adder2:adder_subtractor_4bit port map(X=>X(7 downto 4),
										  Y=>Y(7 downto 4),
										  C_in=>c1,
										  Mode=>Mode,
										  S=>S(7 downto 4),
										  C_out=>c2);
						
								--X和Y的第10和11位補零
	adder3:adder_subtractor_4bit port map(X=>("00"&X(9 downto 8)),
										  Y=>("00"&Y(9 downto 8)),
										  C_in=>c2,
										  Mode=>Mode,
										  S(1 downto 0)=>S(9 downto 8),
										  S(2)=>C_out);

								--S的0和1位做為運算結果的最高兩位數
								--S的第2位做為給下一位的進位或借位
end adder_subtractor;