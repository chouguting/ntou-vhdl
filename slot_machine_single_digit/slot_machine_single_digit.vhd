library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity slot_machine_single_digit is
port(
	clk:in std_logic;
	answer_switch:in std_logic_vector(3 downto 0);
	HEX0,HEX3:out std_logic_vector(7 downto 0);
	start_button:in std_logic;
	stop_button:in std_logic;
	reset:in std_logic;
	LED:buffer std_logic_vector(9 downto 0)
);
end slot_machine_single_digit;

architecture machine of slot_machine_single_digit is
	
	component dynamic_clk_divider is
	port(
		reset: in std_logic;
		clk: in std_logic;
		Hz_select:in std_logic_vector(3 downto 0); --目標是幾Hz (1~10)
		divided_clk:out std_logic
	);
	end component;
	
	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;
	
	signal Hz_select:std_logic_vector(3 downto 0);
	signal decrease_Hz,increase_Hz:std_logic;
	signal divided_clk:std_logic;
	
	signal game_number:std_logic_vector(3 downto 0);
	signal can_count:std_logic;
	
	type state is (game_ready,spinning,fast_slowdown,mid_slowdown,
						slow_slowdown,finish_slowdown,winning,finish);
	
	signal current_state,next_state:state;
	
	signal function_counter:std_logic_vector(3 downto 0);
	signal reset_function_counter:std_logic;
	
	signal led_on:std_logic;
	
begin

	clk_divider: dynamic_clk_divider port map(reset,clk,Hz_select,divided_clk);
	decoder: seven_seg_decoder port map(game_number,HEX3);
	decoder2: seven_seg_decoder port map(answer_switch,HEX0);
	
	LED <= divided_clk&divided_clk&divided_clk&divided_clk&divided_clk&divided_clk&
				divided_clk&divided_clk&divided_clk&divided_clk when led_on = '1' else
			 "0000000000";

	process(divided_clk,reset) begin
		if(reset = '0') then
			Hz_select <= x"A";
			current_state <= game_ready;
			game_number <= x"0";
		elsif(rising_edge(divided_clk)) then
			if(decrease_Hz = '1') then
				Hz_select <= Hz_select - 1;
			end if;
			
			if(can_count = '1') then
				if(game_number = x"2") then
					game_number <= x"0";
				else
					game_number <= game_number + 1;
				end if;
			end if;
			
			if(reset_function_counter = '1') then
				function_counter <= x"0";
			else 
				function_counter <= function_counter + 1;
			end if;
			
			current_state <= next_state;
		end if;
	end process;
	
	process(current_state,start_button,stop_button,function_counter,answer_switch,game_number) begin
		decrease_Hz <= '0';
		can_count <= '1';
		reset_function_counter <= '0';
		next_state <= game_ready;
		led_on <= '0';
		case current_state is
			when game_ready =>
				can_count <= '0';
				if(start_button = '0') then
					next_state <= spinning;
				else 
					next_state <= game_ready;
				end if;
			when spinning =>
				if(stop_button = '0') then
					next_state <= fast_slowdown;
					reset_function_counter <= '1';
					decrease_Hz <= '1';
				else 
					next_state <= spinning;
				end if;
			when fast_slowdown =>
				if(function_counter(1 downto 0) = "11") then
					decrease_Hz <= '1';
				end if;
				
				if(function_counter = x"F") then
					next_state <= mid_slowdown;
					reset_function_counter <= '1';
				else	
					next_state <= fast_slowdown;
				end if;
				
			when mid_slowdown =>
				if(function_counter(1 downto 0) = "00" and  function_counter /= x"0") then
					decrease_Hz <= '1';
				end if;
				
				if(function_counter = x"C") then
					next_state <= slow_slowdown;
					reset_function_counter <= '1';
				else	
					next_state <= mid_slowdown;
				end if;
				
			when slow_slowdown =>
				if(function_counter = x"5") then
					decrease_Hz <= '1';
				end if;
				
				if(function_counter = x"5") then
					next_state <= finish_slowdown;
					reset_function_counter <= '1';
				else	
					next_state <= slow_slowdown;
				end if;
			
			when finish_slowdown =>		
				if(function_counter = x"1") then
					reset_function_counter <= '1';
					can_count <= '0';
					if(game_number = answer_switch) then
						next_state <= winning;
					else
						next_state <= finish;
					end if;
				else	
					next_state <= finish_slowdown;
				end if;
				
			when winning =>
				can_count <= '0';
				led_on <= '1';
				if(function_counter = x"1") then
					next_state <= finish;
				else	
					next_state <= winning;
				end if;
				
			when finish =>
				can_count <= '0';
				next_state <= finish;
		end case;
	end process;
	
	
	
end machine;