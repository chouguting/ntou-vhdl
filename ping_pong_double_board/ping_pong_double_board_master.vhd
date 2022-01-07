-----------------------------------
--  00857005 周固廷              --
--  00857011 林雅芸  作業11加分題  --
--    雙版桌球的主控版          --
-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ping_pong_double_board_master is
port(
	clk:in std_logic;
	reset:in std_logic;
	LED:buffer std_logic_vector(9 downto 0);
	B_score:out std_logic_vector(3 downto 0);
	B_LED_control:out std_logic_vector(3 downto 0);  --A:全亮   F:全暗  數字:第幾個LED
	HEX3:out std_logic_vector(7 downto 0);
	A_button:in std_logic;
	B_button:in std_logic
);
end ping_pong_double_board_master;

architecture ping_pong of ping_pong_double_board_master is
	signal clk_div_counter:std_logic_vector(22 downto 0);
	signal clk_6Hz:std_logic;
	
	type state is (finished_by_A,finished_by_B,game_ready,
						A_wait,AB0,AB1,AB2,AB3,AB4,AB5,AB6,AB7,AB8,AB9,
						AB10,AB11,AB12,AB13,AB14,AB15,AB16,AB17,AB18,B_hit_turn,
						B_wait,BA0,BA1,BA2,BA3,BA4,BA5,BA6,BA7,BA8,BA9,
						BA10,BA11,BA12,BA13,BA14,BA15,BA16,BA17,BA18,A_hit_turn);
	
	signal current_state,next_state:state;
	signal score_of_A,score_of_B:std_logic_vector(3 downto 0);
	signal A_get_point,B_get_point: std_logic;
	
	component seven_seg_decoder is
		port(
			num:in std_logic_vector(3 downto 0);
			decoded_out:out std_logic_vector(7 downto 0)
		);
	end component;
	
	
begin
	process(clk,reset) begin
		if(reset = '0') then
			clk_div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(clk_div_counter = "11111110010100000010101"-1) then
				clk_div_counter <= (others=>'0');
			else
				clk_div_counter <= clk_div_counter +1;
			end if;
		end if;
	end process;
	
	clk_6Hz <= clk_div_counter(22);
	
	process(clk_6Hz,reset) begin
		if(reset='0') then
			current_state <= game_ready;
			score_of_A <= x"0";
			score_of_B <= x"0";
		elsif(rising_edge(clk_6Hz)) then
			
			if(A_get_point = '1') then
				score_of_A <= score_of_A+1;
			end if;
			
			if(B_get_point = '1') then
				score_of_B <= score_of_B+1;
			end if;
			
			if(score_of_A = x"9") then
				current_state <= finished_by_A;
			elsif(score_of_B = x"9") then
				current_state <= finished_by_B;
			else
				current_state <= next_state;
			end if;
		end if;
	end process;
	
	process(current_state,A_button,B_button) begin
		next_state <= game_ready;
		A_get_point <= '0';
		B_get_point <= '0';
		LED <= "0000000000";
		B_lED_control <= x"F";
		case current_state is
			when game_ready =>
				if(A_button = '0' and B_button = '0') then
					next_state <= game_ready;
				elsif(A_button = '0') then
					next_state <= AB0;
				elsif(B_button = '0') then
					next_state <= BA0;
				end if;
				LED <= "0000000000";
				B_lED_control <= x"F";
			when BA0 =>
				next_state <= BA1;
				LED <= "0000000000";
				B_lED_control <= x"0";
			when AB0 =>
				next_state <= AB1;
				LED <= "1000000000";
				B_lED_control <= x"F";
			when AB1 =>
				next_state <= AB2;
				LED <= "0100000000";
				B_lED_control <= x"F";
			when AB2 =>
				next_state <= AB3;
				LED <= "0010000000";
				B_lED_control <= x"F";
			when AB3 =>
				next_state <= AB4;
				LED <= "0001000000";
				B_lED_control <= x"F";
			when AB4 =>
				next_state <= AB5;
				LED <= "0000100000";
				B_lED_control <= x"F";
			when AB5 =>
				next_state <= AB6;
				LED <= "0000010000";
				B_lED_control <= x"F";
			when AB6 =>
				next_state <= AB7;
				LED <= "0000001000";
				B_lED_control <= x"F";
			when AB7 =>
				next_state <= AB8;
				LED <= "0000000100";
				B_lED_control <= x"F";
			when AB8 =>
				next_state <= AB9;
				LED <= "0000000010";
				B_lED_control <= x"F";
			when AB9 =>
				next_state <= AB10;
				LED <= "0000000001";
				B_lED_control <= x"F";
			when AB10 =>
				next_state <= AB11;
				LED <= "0000000000";
				B_lED_control <= x"9";
			when AB11 =>
				next_state <= AB12;
				LED <= "0000000000";
				B_lED_control <= x"8";
			when AB12 =>
				next_state <= AB13;
				LED <= "0000000000";
				B_lED_control <= x"7";
			when AB13 =>
				next_state <= AB14;
				LED <= "0000000000";
				B_lED_control <= x"6";
			when AB14 =>
				next_state <= AB15;
				LED <= "0000000000";
				B_lED_control <= x"5";
			when AB15 =>
				next_state <= AB16;
				LED <= "0000000000";
				B_lED_control <= x"4";
			when AB16 =>
				if(B_button='0') then
					next_state <= A_wait;
					A_get_point <= '1';
				else 
					next_state <= AB17;
				end if;
				LED <= "0000000000";
				B_lED_control <= x"3";
			when AB17 =>
				if(B_button='0') then
					next_state <= A_wait;
					A_get_point <= '1';
				else 
					next_state <= AB18;
				end if;
				LED <= "0000000000";
				B_lED_control <= x"2";
			when AB18 =>
				if(B_button='0') then
					next_state <= A_wait;
					A_get_point <= '1';
				else 
					next_state <= B_hit_turn;
				end if;
				LED <= "0000000000";
				B_lED_control <= x"1";
			when B_hit_turn =>
				if(B_button='1') then
					next_state <= A_wait;
					A_get_point <= '1';
				else 
					next_state <= BA1;
				end if;
				
				LED <= "0000000000";
				B_lED_control <= x"0";
			when BA1 =>
				next_state <= BA2;
				LED <= "0000000000";
				B_lED_control <= x"1";
			when BA2 =>
				next_state <= BA3;
				LED <= "0000000000";
				B_lED_control <= x"2";
			when BA3 =>
				next_state <= BA4;
				LED <= "0000000000";
				B_lED_control <= x"3";
			when BA4 =>
				next_state <= BA5;
				LED <= "0000000000";
				B_lED_control <= x"4";
			when BA5 =>
				next_state <= BA6;
				LED <= "0000000000";
				B_lED_control <= x"5";
			when BA6 =>
				next_state <= BA7;
				LED <= "0000000000";
				B_lED_control <= x"6";
			when BA7 =>
				next_state <= BA8;
				LED <= "0000000000";
				B_lED_control <= x"7";
			when BA8 =>
				next_state <= BA9;
				LED <= "0000000000";
				B_lED_control <= x"8";
			when BA9 =>
				next_state <= BA10;
				LED <= "0000000000";
				B_lED_control <= x"9";
			when BA10 =>
				next_state <= BA11;
				LED <= "0000000001";
				B_lED_control <= x"F";
			when BA11 =>
				next_state <= BA12;
				LED <= "0000000010";
				B_lED_control <= x"F";
			when BA12 =>
				next_state <= BA13;
				LED <= "0000000100";
				B_lED_control <= x"F";
			when BA13 =>
				next_state <= BA14;
				LED <= "0000001000";
				B_lED_control <= x"F";
			when BA14 =>
				next_state <= BA15;
				LED <= "0000010000";
				B_lED_control <= x"F";
			when BA15 =>
				next_state <= BA16;
				LED <= "0000100000";
				B_lED_control <= x"F";
			when BA16 =>
				if(A_button='0') then
					next_state <= B_wait;
					B_get_point <= '1';
				else 
					next_state <= BA17;
				end if;
				LED <= "0001000000";
				B_lED_control <= x"F";
			when BA17 =>
				if(A_button='0') then
					next_state <= B_wait;
					B_get_point <= '1';
				else 
					next_state <= BA18;
				end if;
				
				LED <= "0010000000";
				B_lED_control <= x"F";
			when BA18 =>
				if(A_button='0') then
					next_state <= B_wait;
					B_get_point <= '1';
				else 
					next_state <= A_hit_turn;
				end if;
				
				LED <= "0100000000";
				B_lED_control <= x"F";
			when A_hit_turn =>
				if(A_button='1') then
					next_state <= B_wait;
					B_get_point <= '1';
				else 
					next_state <= AB1;
				end if;
				
				LED <= "1000000000";
				B_lED_control <= x"F";
			when A_wait =>
				if(A_button = '0') then
					next_state <= AB0;
				else 
					next_state <= A_wait;
				end if;
			when B_wait =>
				if(B_button = '0') then
					next_state <= BA0;
				else 
					next_state <= B_wait;
				end if;
			when finished_by_A =>
				next_state <= finished_by_A;
				LED <= "1111111111";
				B_LED_control <= x"F";
			when finished_by_B =>
				next_state <= finished_by_A;
				LED <= "0000000000";
				B_LED_control <= x"A";
			
		end case;
		
	end process;
	
	dec1: seven_seg_decoder port map(score_of_A,HEX3);	
	B_score <= score_of_B;
	
end ping_pong;