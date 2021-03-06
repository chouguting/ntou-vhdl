--------------------------------
--   00857005 周固廷  作業8-2  --
--    一個五秒鐘的呼吸燈        --
--    每呼吸一輪會暫停一秒      --
--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity breathing_light_5sec_1secStop is
generic(brightness_gear:integer range 1 to 8 := 1); --最大亮度的齒輪比
port(
	clk:in std_logic;
	reset:in std_logic;
	light_out:out std_logic
);
end breathing_light_5sec_1secStop;

architecture light of breathing_light_5sec_1secStop is
-- 0~255再從254~1,共需要256+254=510個clk
-- 510clk/5sec => 102clk/1sec
-- De0提供50MHz ，除以490196後大約是102Hz
signal div_490196_counter: std_logic_vector(18 downto 0); 

signal clk_102Hz:std_logic;

-- 要再停下來一秒所以共要數102*6個clk
--0數到612需要10個bit
signal led_counter: std_logic_vector(9 downto 0); --0數到611(102Hz跑612個clk會是6秒)
signal pwm_num: std_logic_vector(7 downto 0);
signal pwm_counter:std_logic_vector(7 downto 0); --pwm 0 count to 255

signal pwm_div_counter:std_logic_vector(5 downto 0); --目標是1,000,000Hz  要除50除頻器
signal usClk:std_logic;  --1 microSec的clk (1,000,000Hz)


signal gear_counter:std_logic_vector(3 downto 0);

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
	
	
	--102Hz數到612剛好是6秒鐘
	process(clk_102Hz,reset,led_counter)
	begin
		if(reset='0') then
			led_counter<=(others=>'0');
		elsif(rising_edge(clk_102Hz)) then
			if(led_counter=611) then
				led_counter<=(others=>'0');
			else
				led_counter<=led_counter+1;
			end if;
		end if;
	end process;
	
	process(clk_102Hz,gear_counter,reset)
	begin
		if(reset='0') then
			gear_counter<=(others=>'0');
		elsif(rising_edge(clk_102Hz)) then
			if(gear_counter=brightness_gear-1) then
				gear_counter<=(others=>'0');
			else
				gear_counter<=gear_counter+1;
			end if;
		end if;
	end process;
	
	process(clk_102Hz,led_counter,gear_counter,reset)
	begin
		if(reset='0') then
			pwm_num<=(others=>'0');
		elsif(rising_edge(clk_102Hz) and gear_counter = x"0") then
			if(led_counter<255) then
				pwm_num <= pwm_num+1;
			elsif(led_counter<510) then
				pwm_num <= pwm_num-1;
			else	
				pwm_num <= (others=>'0');
			end if;
		end if;
	end process;
	
	
	light_out <= '1' when pwm_counter <= pwm_num else
					 '0';
	
	
end light;