-----------------------------------------
--  00857005 周固廷  作業1-3            --
--用2對1多工器及4對1多工器實現8對1多工器  --
-----------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux8_1 is
port(
	I: in std_logic_vector(7 downto 0);
	sel: in std_logic_vector(2 downto 0);
	D_out: out std_logic
);
end mux8_1;

architecture insideMux of mux8_1 is
signal X:std_logic_vector(1 downto 0);
begin
	X<=I(4)&I(0) when sel(1 downto 0)="00" else
		I(5)&I(1) when sel(1 downto 0)="01" else
		I(6)&I(2) when sel(1 downto 0)="10" else
		I(7)&I(3) when sel(1 downto 0)="11";
	
	D_out<=X(0) when sel(2)='0' else
			  X(1);
end insideMux;