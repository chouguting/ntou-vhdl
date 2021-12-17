--------------------------------
--   00857005 周固廷  作業7-1  --
--  100Hz 0000到9999的上數器   --
--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity clk_count_0000_to_9999 is
port(
	reset:in std_logic;
	clk:in std_logic;
	seven_seg_decoded1:out std_logic_vector(7 downto 0);
	seven_seg_decoded2:out std_logic_vector(7 downto 0);
	seven_seg_decoded3:out std_logic_vector(7 downto 0);
	seven_seg_decoded4:out std_logic_vector(7 downto 0);
	light:out std_logic_vector(9 downto 0)
);
end clk_count_0000_to_9999;

architecture counter of clk_count_0000_to_9999 is
	--七段顯示器解碼器
	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;

	--4bit 可串接BCD上數器
	component BCD_cascading_counter_4bit is
	port(
		clk:in std_logic;
		reset:in std_logic;
		casin:in std_logic;
		count:buffer std_logic_vector(3 downto 0);
		casout:out std_logic
	);
	end component;
	
	signal count:std_logic_vector(25 downto 0);
	signal divided_clk:std_logic;
	
	signal count1,count2,count3,count4:std_logic_vector(3 downto 0);
	signal c1,c2,c3,c4:std_logic;
	
begin
	
	process(clk,reset,count) begin
		if(reset = '0') then
			count <= (others=>'0');
		elsif(rising_edge(clk)) then
			--目標是100Hz, DE0提供的是50MHZ, 所以我們要除50萬
			--也就是在外部clk 50MHZ且1個clk數一下的情況下,我們每數到50萬就要完成一個內部clk週期
			--這樣結果才會是1秒鐘有100個clk
			--如果我讓內部clk每數到25萬反向一次,也會有同樣效果(100hz)
			--25萬 = "00000000111101000010010000"
			--測試用 = "00000000000000000000000010"
			if(count = "00000000111101000010010000"-1) then
				count <= (others=>'0');
				divided_clk <= not divided_clk;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	--用4個可串接counter從0000數到9999
	counter1: BCD_cascading_counter_4bit port map(divided_clk,reset,'1',count1,c1);
	counter2: BCD_cascading_counter_4bit port map(divided_clk,reset,c1,count2,c2);
	counter3: BCD_cascading_counter_4bit port map(divided_clk,reset,c2,count3,c3);
	counter4: BCD_cascading_counter_4bit port map(divided_clk,reset,c3,count4,c4);
	
	--把4個counter的計數值轉成7個segment的解碼值
	decoder1: seven_seg_decoder port map(count1,seven_seg_decoded1);
	decoder2: seven_seg_decoder port map(count2,seven_seg_decoded2);
	decoder3: seven_seg_decoder port map(count3,seven_seg_decoded3);
	decoder4: seven_seg_decoder port map(count4,seven_seg_decoded4);
	
	--旁邊LED燈的酷炫效果(和作業沒關係)
	light <= not "1111111110" when count2 = x"0" else
				not "1111111101" when count2 = x"1" else
				not "1111111011" when count2 = x"2" else
				not "1111110111" when count2 = x"3" else
				not "1111101111" when count2 = x"4" else
				not "1111011111" when count2 = x"5" else
				not "1110111111" when count2 = x"6" else
				not "1101111111" when count2 = x"7" else
				not "1011111111" when count2 = x"8" else
				not "0111111111" when count2 = x"9" else
				not "0000000000";

end counter;