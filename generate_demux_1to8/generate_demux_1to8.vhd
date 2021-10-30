--------------------------------
--  00857005 周固廷  作業5-2   --
--       1 to 8 demux         --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generate_demux_1to8 is
port(
	D_in:in std_logic;  --輸入
	sel:in std_logic_vector(2 downto 0); --選擇線
	Y:out std_logic_vector(7 downto 0) --demux的輸出
);
end generate_demux_1to8;

architecture demux of generate_demux_1to8 is
component demux_1to2 is
port(
	D_in:in std_logic; --輸入
	sel:in std_logic;  --選擇線
	Y:out std_logic_vector(1 downto 0) --demux的輸出
);
end component;

signal A:std_logic_vector(1 downto 0); --Layer1到Layer2之間的傳輸線
signal B:std_logic_vector(3 downto 0); --Layer2到Layer3之間的傳輸線

begin
	--Layer 1
	demux_L1:demux_1to2 port map(D_in,sel(2),A);

	--Layer2
	L2: for i in 0 to 1 generate
		demux_L2:demux_1to2 port map(A(i),sel(1),B(2*i+1 downto 2*i));
	end generate L2;
	
	--Layer3
	L3: for i in 0 to 3 generate
		demux_L3:demux_1to2 port map(B(i),sel(0),Y(2*i+1 downto 2*i));
	end generate L3;
end demux;