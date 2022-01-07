library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity timer is
port(
	clk:in std_logic;
	reset:in std_logic;
	HEX0,HEX1,HEX2,HEX3:out std_logic_vector(7 downto 0)
);
end timer;

architecture timer_arc of timer is
type int_array is Array(0 to 3) of integer range 0 to 9;
type logic_array is Array(0 to 3) of std_logic_vector(3 downto 0);
signal num_int:int_array;
signal num_logic:logic_array;

signal div_counter:std_logic_vector(22 downto 0);
signal num_counter:std_logic_vector(13 downto 0); --0000~9999

signal divided_clk:std_logic;

component seven_seg_decoder is
port(
	num:in std_logic_vector(3 downto 0);
	decoded_out:out std_logic_vector(7 downto 0)
);
end component;

begin	
	process(clk,reset) begin
		if(reset='0') then
			div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			div_counter <= div_counter + 1;
		end if;
	end process;

	divided_clk <= div_counter(17);
	
	process(divided_clk,reset) begin
		if(reset='0') then
			num_counter <= (others=>'0');
		elsif(rising_edge(divided_clk)) then
			if(num_counter = 9999) then
				num_counter <= (others=>'0');
			else
				num_counter <= num_counter + 1;
			end if;
		end if;
	end process;
	
	num_int(3) <= conv_integer(num_counter)/1000; 
	num_int(2) <= (conv_integer(num_counter)/100) mod 10; 
	num_int(1) <= (conv_integer(num_counter)/10) mod 10;
	num_int(0) <= conv_integer(num_counter) mod 10; 

	num_logic(3) <= conv_std_logic_vector(num_int(3),4);
	num_logic(2) <= conv_std_logic_vector(num_int(2),4);
	num_logic(1) <= conv_std_logic_vector(num_int(1),4);
	num_logic(0) <= conv_std_logic_vector(num_int(0),4);
	
	dec0:seven_seg_decoder port map(num_logic(0),HEX0);
	dec1:seven_seg_decoder port map(num_logic(1),HEX1);
	dec2:seven_seg_decoder port map(num_logic(2),HEX2);
	dec3:seven_seg_decoder port map(num_logic(3),HEX3);
	
	
end timer_arc;