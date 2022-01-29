--------------------------------
--   00857005 周固廷  作業12-2  --
--       四個數字的拉霸機        --
--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity slot_machine_four_digit is
port(
	clk:in std_logic;
	up_down_switch:in std_logic_vector(3 downto 0);
	HEX0,HEX1,HEX2,HEX3:out std_logic_vector(7 downto 0);
	start_button:in std_logic;
	stop_button:in std_logic;
	reset:in std_logic;
	LED:buffer std_logic_vector(9 downto 0)
);
end slot_machine_four_digit;

architecture machine of slot_machine_four_digit is

	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;
	
	component dynamic_clk_divider is
	port(
		reset: in std_logic;
		clk: in std_logic;
		Hz_select:in std_logic_vector(3 downto 0); --格臬嗾Hz (1~10)
		divided_clk:out std_logic
	);
	end component;
	
	component generic_up_down_counter is
	generic(limit:integer range 1 to 16);
	port(
		clk:in std_logic;
		reset:in std_logic;
		up_or_down:in std_logic;  --1:up 0:down
		num_out:buffer std_logic_vector(3 downto 0)
	);
	end component;
	
	type state is(game_ready,spinning, T0,T1,T2,T3,T4,T5,T6,T7,judge1,judge2,finish);
	signal current_state,next_state:state;
	
	signal clk_1Hz:std_logic;
	signal clk_HEX3:std_logic;
	signal clk_HEX2:std_logic;
	signal clk_HEX1:std_logic;
	signal clk_HEX0:std_logic;
	
	
	signal counter_HEX3,counter_HEX2,counter_HEX1,counter_HEX0:std_logic_vector(3 downto 0);
	
	signal Hz_select_HEX3,Hz_select_HEX2,Hz_select_HEX1,Hz_select_HEX0:std_logic_vector(3 downto 0);
begin
	system_clk_divider: dynamic_clk_divider port map(reset,clk,x"1",clk_1Hz);
	
	counter3: generic_up_down_counter generic map(9) 
												port map(clk_HEX3,reset,up_down_switch(3),counter_HEX3);
	counter2: generic_up_down_counter generic map(9) 
												port map(clk_HEX2,reset,up_down_switch(2),counter_HEX2);
	counter1: generic_up_down_counter generic map(9) 
												port map(clk_HEX1,reset,up_down_switch(1),counter_HEX1);
	counter0: generic_up_down_counter generic map(9) 
												port map(clk_HEX0,reset,up_down_switch(0),counter_HEX0);	
	
	decoder3: seven_seg_decoder port map(counter_HEX3,HEX3);
	decoder2: seven_seg_decoder port map(counter_HEX2,HEX2);
	decoder1: seven_seg_decoder port map(counter_HEX1,HEX1);
	decoder0: seven_seg_decoder port map(counter_HEX0,HEX0);
	
	div3: dynamic_clk_divider port map(reset,clk,Hz_select_HEX3,clk_HEX3);
	div2: dynamic_clk_divider port map(reset,clk,Hz_select_HEX2,clk_HEX2);
	div1: dynamic_clk_divider port map(reset,clk,Hz_select_HEX1,clk_HEX1);
	div0: dynamic_clk_divider port map(reset,clk,Hz_select_HEX0,clk_HEX0);
	
	process(clk_1Hz,reset) begin
		if(reset = '0') then
			current_state <= game_ready;
		elsif(rising_edge(clk_1Hz)) then
			current_state <= next_state;
		end if;
	end process;
	
	process(current_state,start_button,stop_button,up_down_switch) begin
		next_state <= game_ready;
		Hz_select_HEX3 <= x"0";
		Hz_select_HEX2 <= x"0";
		Hz_select_HEX1 <= x"0";
		Hz_select_HEX0 <= x"0";
		LED <= (others=>'0');
		case current_state is
			when game_ready =>
				if(start_button='0') then
					next_state <= spinning;
				else
					next_state <= game_ready;
				end if;
			when spinning =>
				Hz_select_HEX3 <= x"7";
				Hz_select_HEX2 <= x"8";
				Hz_select_HEX1 <= x"9";
				Hz_select_HEX0 <= x"A";
				if(stop_button='0') then
					next_state <= T0;
				else
					next_state <= spinning;
				end if;
			when T0 =>
				Hz_select_HEX3 <= x"5";
				Hz_select_HEX2 <= x"7";
				Hz_select_HEX1 <= x"8";
				Hz_select_HEX0 <= x"8";
				next_state <= T1;
			when T1 =>
				Hz_select_HEX3 <= x"3";
				Hz_select_HEX2 <= x"6";
				Hz_select_HEX1 <= x"7";
				Hz_select_HEX0 <= x"7";
				next_state <= T2;
			when T2 =>
				Hz_select_HEX3 <= x"2";
				Hz_select_HEX2 <= x"5";
				Hz_select_HEX1 <= x"6";
				Hz_select_HEX0 <= x"6";
				next_state <= T3;
			when T3 =>
				Hz_select_HEX3 <= x"0";
				Hz_select_HEX2 <= x"3";
				Hz_select_HEX1 <= x"6";
				Hz_select_HEX0 <= x"5";
				next_state <= T4;
			when T4 =>
				Hz_select_HEX3 <= x"0";
				Hz_select_HEX2 <= x"2";
				Hz_select_HEX1 <= x"5";
				Hz_select_HEX0 <= x"5";
				next_state <= T5;	
			when T5 =>
				Hz_select_HEX3 <= x"0";
				Hz_select_HEX2 <= x"0";
				Hz_select_HEX1 <= x"2";
				Hz_select_HEX0 <= x"5";
				next_state <= T6;	
			when T6 =>
				Hz_select_HEX3 <= x"0";
				Hz_select_HEX2 <= x"0";
				Hz_select_HEX1 <= x"0";
				Hz_select_HEX0 <= x"4";
				next_state <= T7;	
			when T7 =>
				Hz_select_HEX3 <= x"0";
				Hz_select_HEX2 <= x"0";
				Hz_select_HEX1 <= x"0";
				Hz_select_HEX0 <= x"2";
				next_state <= judge1;	
			when judge1 =>
				if(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX1 and counter_HEX3=counter_HEX0) then
					LED(9 downto 6) <= clk_1Hz&clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX1) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX1 and counter_HEX3=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX2=counter_HEX1 and counter_HEX2=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 or counter_HEX3=counter_HEX1 or counter_HEX3=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				elsif(counter_HEX2=counter_HEX1 or counter_HEX2=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				elsif(counter_HEX1=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				end if;
				next_state <= judge2;
			when judge2 =>
				if(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX1 and counter_HEX3=counter_HEX0) then
					LED(9 downto 6) <= clk_1Hz&clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX1) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 and counter_HEX3=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX1 and counter_HEX3=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX2=counter_HEX1 and counter_HEX2=counter_HEX0) then
					LED(9 downto 7) <= clk_1Hz&clk_1Hz&clk_1Hz;
				elsif(counter_HEX3=counter_HEX2 or counter_HEX3=counter_HEX1 or counter_HEX3=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				elsif(counter_HEX2=counter_HEX1 or counter_HEX2=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				elsif(counter_HEX1=counter_HEX0) then
					LED(9 downto 8) <= clk_1Hz&clk_1Hz;
				end if;
				next_state <= finish;
			when finish =>
				next_state <= finish;		
		end case;
	end process;
	
end machine;