library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder_14bits is
port(
	X:in std_logic_vector(13 downto 0);
	Y:in std_logic_vector(13 downto 0);
	C:in std_logic;
	S:out std_logic_vector(13 downto 0);
	Co:out std_logic
);
end entity;

architecture adder of adder_14bits is

signal C1,C2,C3:std_logic;
signal temp:std_logic_vector(3 downto 0);

component adder_4bits is
port(
	X:in std_logic_vector(3 downto 0);
	Y:in std_logic_vector(3 downto 0);
	C:in std_logic;
	S:out std_logic_vector(3 downto 0);
	Co:out std_logic
);
end component;

begin
	U1:adder_4bits port map(X=>X(3 downto 0),
									Y=>Y(3 downto 0),
									C=>C,
									S=>S(3 downto 0),
									Co=>C1);
									
	U2:adder_4bits port map(X=>X(7 downto 4),
									Y=>Y(7 downto 4),
									C=>C1,
									S=>S(7 downto 4),
									Co=>C2);
									
	U3:adder_4bits port map(X=>X(11 downto 8),
									Y=>Y(11 downto 8),
									C=>C2,
									S=>S(11 downto 8),
									Co=>C3);
									
	U4:adder_4bits port map(X=>("00"&X(13 downto 12)),
									Y=>("00"&Y(13 downto 12)),
									C=>C3,
									S(1 downto 0)=>S(13 downto 12),
									S(2)=>Co);	
	--S(13 downto 12)<=temp(1 downto 0);	
	--Co<=temp(3);
	
end adder;