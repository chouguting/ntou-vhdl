--------------------------------
--   00857005 周固廷  作業8-1  --
--   周期為五秒鐘的呼吸燈      --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity breathing_light_5sec is
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:out std_logic
);
end breathing_light_5sec;

architecture light of breathing_light_5sec is
-- 0~255再從254~1,共需要256+254=510個clk
-- 510clk/5sec => 102clk/1sec
-- De0提供50MHz ，除以490196後大約是102Hz
signal div_490196_counter: std_logic_vector(18 downto 0); 

signal clk_102Hz:std_logic;

--0數到509需要9個bit
signal led_counter: std_logic_vector(8 downto 0); --0數到509(102Hz跑510個clk會是5秒)
signal pwm_num: std_logic_vector(7 downto 0);
signal pwm_counter:std_logic_vector(7 downto 0); --pwm 0 count to 255

signal pwm_div_counter:std_logic_vector(5 downto 0); --目標是1,000,000Hz  要除50除頻器
signal usClk:std_logic;  --1 microSec的clk (1,000,000Hz)

begin

	--PWM 的CLK
	process(clk,reset)
	begin
		if(reset='0') then
			pwm_div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(pwm_div_counter>=49) then
				pwm_div_counter <= (others=>'0');
			else
				pwm_div_counter <= pwm_div_counter +1;
			end if;
		end if;
	end process;

	usClk <= '1' when pwm_div_counter < 25 else
			   '0';
				
	--PWM的clk週期用1 microsec	
	process(usClk) 
	begin
		if(rising_edge(usClk)) then
			pwm_counter <= pwm_counter + 1;
		end if;
	end process;

	--製造出102Hz
	process(clk,reset,div_490196_counter)
	begin
		if(reset='0') then
			div_490196_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			--real:490165
			--Test:9
			if(div_490196_counter = 490165) then
				div_490196_counter <= (others=>'0');
			else 
				div_490196_counter <= div_490196_counter+1;
			end if;
		end if;
	end process;
	
	--real:245098
	--Test:5
	--clk_102Hz <= '1' when (div_490196_counter < 245098) else '0';
	clk_102Hz <= div_490196_counter(18);
	
	--102Hz數到510剛好是5秒鐘
	process(clk_102Hz,reset,led_counter)
	begin
		if(reset='0') then
			led_counter<=(others=>'0');
		elsif(rising_edge(clk_102Hz)) then
			if(led_counter=509) then
				led_counter<=(others=>'0');
			else
				led_counter<=led_counter+1;
			end if;
		end if;
	end process;
	
	process(clk_102Hz,led_counter,reset)
	begin
		if(reset='0') then
			pwm_num<=(others=>'0');
		elsif(rising_edge(clk_102Hz)) then
			if(led_counter<255) then
				pwm_num <= pwm_num+1;
			else
				pwm_num <= pwm_num-1;
			end if;
		end if;
	end process;
	
	light_out <= '1' when pwm_counter <= pwm_num else
					 '0';
	
end light;