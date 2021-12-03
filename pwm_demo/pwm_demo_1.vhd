library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pwm_demo_1 is
port(
	clk:in std_logic;
	reset:in std_logic;
	LED:out std_logic_vector(9 downto 0)
);
end pwm_demo_1;

architecture pwm of pwm_demo_1 is
signal pwm_count:std_logic_vector(7 downto 0); --0 count to 255
signal div_count:std_logic_vector(5 downto 0); --目標是1,000,000Hz  要除50除頻器
signal div_ms_count:std_logic_vector(20 downto 0); --目標是1,00Hz  從usClk要除10000除頻器


signal usClk:std_logic;  --1 microSec的clk (1,000,000Hz)

signal msClk10:std_logic;   --10 milisecond的clk


signal r0,r1,r2,r3,r4,r5,r6,r7,r8,r9:std_logic_vector(7 downto 0); --7個LED自己的暫存器

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(div_count>=49) then
				div_count <= (others=>'0');
			else
				div_count <= div_count +1;
			end if;
		end if;
	end process;
	
	usClk <= '1' when div_count < 25 else
			   '0';
				
	process(usClk)
	begin
		if(rising_edge(usClk)) then
			if(div_ms_count>=99999) then
				div_ms_count <= (others=>'0');
			else
				div_ms_count <= div_ms_count +1;
			end if;
		end if;
	end process;
	
	msClk10 <= '1' when div_ms_count < 50000 else
			   '0';
	
	process(usClk) 
	begin
		if(rising_edge(usClk)) then
			pwm_count <= pwm_count + 1;
		end if;
	end process;
	
	process(msclk10,reset)
	begin
		if(reset='0') then
			r0 <= x"16";
			r1 <= x"2c";
			r2 <= x"42";
			r3 <= x"58";
			r4 <= x"6E";
			r5 <= x"84";
			r6 <= x"9A";
			r7 <= x"B0";
			r8 <= x"C6";
			r9 <= x"FF";
		elsif(rising_edge(msclk10)) then
			r0 <= r0+1;
			r1 <= r1+1;
			r2 <= r2+1;
			r3 <= r3+1;
			r4 <= r4+1;
			r5 <= r5+1;
			r6 <= r6+1;
			r7 <= r7+1;
			r8 <= r8+1;
			r9 <= r9+1;
		end if;
	end process;
	
	LED(9) <= '1' when pwm_count < r0 else
				 '0';
	LED(8) <= '1' when pwm_count < r1 else
				 '0';
	LED(7) <= '1' when pwm_count < r2 else
				 '0';
	LED(6) <= '1' when pwm_count < r3 else
				 '0';
	LED(5) <= '1' when pwm_count < r4 else
				 '0';
	LED(4) <= '1' when pwm_count < r5 else
				 '0';
	LED(3) <= '1' when pwm_count < r6 else
				 '0';
	LED(2) <= '1' when pwm_count < r7 else
				 '0';
	LED(1) <= '1' when pwm_count < r8 else
				 '0';
	LED(0) <= '1' when pwm_count < r9 else
				 '0';
	 

end pwm;