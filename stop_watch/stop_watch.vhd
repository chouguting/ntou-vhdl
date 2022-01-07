library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity stop_watch is
port(
	clk:in std_logic;
	reset:in std_logic;
	start_button:in std_logic;
	look_button:in std_logic;
	LED:out std_logic_vector(9 downto 0);
	HEX0,HEX1,HEX2,HEX3:out std_logic_vector(7 downto 0)
);
end stop_watch;

architecture timer_arc of stop_watch is
type int_array is Array(0 to 3) of integer range 0 to 9;
type logic_array is Array(0 to 3) of std_logic_vector(3 downto 0);
type record_array is Array(0 to 9) of std_logic_vector(13 downto 0);
signal num_int:int_array;
signal num_logic:logic_array;
signal num_record:record_array;

signal div_counter:std_logic_vector(22 downto 0);
signal num_counter:std_logic_vector(13 downto 0); --0000~9999
signal display:std_logic_vector(13 downto 0);

signal divided_clk:std_logic;
signal record_counter:integer range 0 to 9;

signal state_flag:std_logic;

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
			elsif(state_flag='0') then
				num_counter <= num_counter + 1;
			end if;
		end if;
	end process;
	
	process(start_button,reset) begin
		if(reset='0') then
			state_flag <= '0';
		elsif(falling_edge(start_button)) then
			state_flag <= not state_flag;
		end if;
	end process;
	
	process(look_button,reset) begin
		if(reset='0') then
			record_counter <= 0;
			num_record(0) <= (others=>'0');
			num_record(1) <= (others=>'0');
			num_record(2) <= (others=>'0');
			num_record(3) <= (others=>'0');
			num_record(4) <= (others=>'0');
			num_record(5) <= (others=>'0');
			num_record(6) <= (others=>'0');
			num_record(7) <= (others=>'0');
			num_record(8) <= (others=>'0');
			num_record(9) <= (others=>'0');
			
		elsif(falling_edge(look_button)) then
			if(state_flag='0') then
				num_record(record_counter) <= num_counter;
			end if;
			if(record_counter = 9) then
				record_counter <= 0;
			else
				record_counter <= record_counter + 1;
			end if;
		end if;
	end process;
	
	display <= num_record(record_counter) when state_flag = '1' else
				  num_counter;
				  
	LED <= "1000000000" when record_counter = 0 else
			 "0100000000" when record_counter = 1 else
			 "0010000000" when record_counter = 2 else
			 "0001000000" when record_counter = 3 else
			 "0000100000" when record_counter = 4 else
			 "0000010000" when record_counter = 5 else
			 "0000001000" when record_counter = 6 else
			 "0000000100" when record_counter = 7 else
			 "0000000010" when record_counter = 8 else
			 "0000000001" when record_counter = 9 else
			 "0000000000";
	
	
	num_int(3) <= conv_integer(display)/1000; 
	num_int(2) <= (conv_integer(display)/100) mod 10; 
	num_int(1) <= (conv_integer(display)/10) mod 10;
	num_int(0) <= conv_integer(display) mod 10; 

	num_logic(3) <= conv_std_logic_vector(num_int(3),4);
	num_logic(2) <= conv_std_logic_vector(num_int(2),4);
	num_logic(1) <= conv_std_logic_vector(num_int(1),4);
	num_logic(0) <= conv_std_logic_vector(num_int(0),4);
	
	dec0:seven_seg_decoder port map(num_logic(0),HEX0);
	dec1:seven_seg_decoder port map(num_logic(1),HEX1);
	dec2:seven_seg_decoder port map(num_logic(2),HEX2);
	dec3:seven_seg_decoder port map(num_logic(3),HEX3);
	
	
end timer_arc;