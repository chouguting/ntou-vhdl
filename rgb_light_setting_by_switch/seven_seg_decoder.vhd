--------------------------------
--   00857005 周固廷  作業7-1  --
--      七段顯示器解碼器       --
--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seven_seg_decoder is
port(
	num:in std_logic_vector(3 downto 0);
	decoded_out:out std_logic_vector(7 downto 0)
);
end seven_seg_decoder;

architecture decoder of seven_seg_decoder is
begin
	decoded_out <= "11000000" when num = x"0" else
                  "11111001" when num = x"1" else
                  "10100100" when num = x"2" else
                  "10110000" when num = x"3" else
                  "10011001" when num = x"4" else
                  "10010010" when num = x"5" else
                  "10000010" when num = x"6" else
                  "11111000" when num = x"7" else
                  "10000000" when num = x"8" else
                  "10010000" when num = x"9" else
                  "10001000" when num = x"A" else
						"10000011" when num = x"B" else
						"11000110" when num = x"C" else
						"10100001" when num = x"D" else
						"10000110" when num = x"E" else
						"10001110" when num = x"F" else
						"00000000";
end decoder;