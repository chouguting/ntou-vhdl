library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity connected_bcd_counter is
port(
	clk_orginal:in std_logic;
	clk_in,reset_in,casin:in std_logic;
	button0,button1:in std_logic;
	casout:out std_logic;
	clk1,clk2,reset1,reset2,stop:out std_logic;
	HEX0,HEX1,HEX2,HEX3:out std_logic_vector(7 downto 0)
);
end connected_bcd_counter;


architecture counter of connected_bcd_counter is
	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;

	component BCD_cascading_counter_4bit is
	port(
		clk:in std_logic;
		reset:in std_logic;
		casin:in std_logic;
		count:buffer std_logic_vector(3 downto 0);
		casout:out std_logic
	);
	end component;
	
	signal div_5000_counter:std_logic_vector(12 downto 0);
	signal clk_10000Hz:std_logic;
	
	signal count1,count2,count3,count4:std_logic_vector(3 downto 0);
	signal c1,c2,c3:std_logic;

begin
	process(clk_orginal,reset_in) begin
		if(reset_in='0') then
			div_5000_counter<=(others=>'0');
		elsif(rising_edge(clk_orginal)) then
			if(div_5000_counter="1001110001000"-1) then
				div_5000_counter<=(others=>'0');
			else
				div_5000_counter<=div_5000_counter+1;
			end if;
		end if;
	end process;
	
	clk_10000Hz<=div_5000_counter(12);
	
	--用4個可串接counter從0000數到9999
	counter1: BCD_cascading_counter_4bit port map(clk_in,reset_in,casin,count1,c1);
	counter2: BCD_cascading_counter_4bit port map(clk_in,reset_in,c1,count2,c2);
	counter3: BCD_cascading_counter_4bit port map(clk_in,reset_in,c2,count3,c3);
	counter4: BCD_cascading_counter_4bit port map(clk_in,reset_in,c3,count4,casout);
	
	--把4個counter的計數值轉成7個segment的解碼值
	decoder1: seven_seg_decoder port map(count1,HEX0);
	decoder2: seven_seg_decoder port map(count2,HEX1);
	decoder3: seven_seg_decoder port map(count3,HEX2);
	decoder4: seven_seg_decoder port map(count4,HEX3);
	
	
	clk1 <= clk_10000Hz;
	clk2 <= clk_10000Hz;
	
	reset1 <= button0;
	reset2 <= button0;
	
	stop <= button1;
	
end counter;
