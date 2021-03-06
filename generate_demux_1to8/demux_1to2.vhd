--------------------------------
--  00857005 周固廷  作業5-2   --
--       1 to 2 demux         --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity demux_1to2 is
port(
	D_in:in std_logic; --輸入
	sel:in std_logic;  --選擇線
	Y:out std_logic_vector(1 downto 0) --demux的輸出
);
end demux_1to2;

architecture demux of demux_1to2 is
begin
	Y<=('0'&D_in) when sel='0' else
		(D_in&'0');
end demux;