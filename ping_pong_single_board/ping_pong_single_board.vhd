--------------------------------
--  00857005 周固廷  作業11-1  --
--      單板子的桌球      --
--------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ping_pong_single_board is
port(
	clk:in std_logic;
	reset:in std_logic;
	LED:buffer std_logic_vector(9 downto 0);
	button_A:in std_logic;
	button_B:in std_logic;
	HEX0:out std_logic_vector(7 downto 0);
	HEX1:out std_logic_vector(7 downto 0);
	HEX2:out std_logic_vector(7 downto 0);
	HEX3:out std_logic_vector(7 downto 0)
);
end ping_pong_single_board;

architecture ping_pong of ping_pong_single_board is

	component seven_seg_decoder is
	port(
		num:in std_logic_vector(3 downto 0);
		decoded_out:out std_logic_vector(7 downto 0)
	);
	end component;
	
	type state is (finished,game_ready,
						A_wait,AB0,AB1,AB2,AB3,AB4,AB5,AB6,AB7,AB8,B_hit_turn,
						B_wait,BA0,BA1,BA2,BA3,BA4,BA5,BA6,BA7,BA8,A_hit_turn);
	
	signal clk_div_counter: std_logic_vector(23 downto 0); --1011111010111100001000000  
	signal clk_4Hz:std_logic;
	
	signal current_state,next_state:state;
	
	signal scoreOFA,scoreOFB:std_logic_vector(3 downto 0);
	
	signal A_get_point,B_get_point:std_logic;
	
begin
	process(clk) begin
		if(rising_edge(clk)) then
			if(clk_div_counter = "101111101011110000100000"-1) then
				clk_div_counter <= (others=>'0');
			else 
				clk_div_counter <= clk_div_counter + 1;
			end if;
		end if;
	end process;
	
	clk_4Hz <= clk_div_counter(23);
	
	process(reset,clk_4Hz) begin
		if(reset='0') then
			current_state <= game_ready;
		
		elsif(rising_edge(clk_4Hz)) then
			current_state <= next_state;
			if(scoreOFA = x"9" or scoreOFB=x"9") then
				current_state <= finished;
			end if;
			
		end if;
	end process;
	
	process(clk_4Hz,reset,A_get_point,B_get_point) begin
		if(reset='0') then
			scoreOFA <= x"0";
			scoreOFB <= x"0";
		elsif(rising_edge(clk_4Hz)) then
			if(A_get_point='1') then
				scoreOFA <= scoreOFA + 1;
			end if;
			
			if(B_get_point='1') then
				scoreOFB <= scoreOFB + 1;
			end if;
			
		end if;
	end process;
	
	
	
	process(button_A,button_B,current_state) begin
		A_get_point <= '0';
		B_get_point <= '0';
		next_state <= game_ready;
		case current_state is
			when game_ready => 
				if(button_A='0' and button_B='0') then
					next_state <= game_ready;
				elsif(button_A='0') then
					next_state <= AB0;
				elsif(button_B='0') then
					next_state <= BA0;
				end if;
				LED <= "0000000000";
			when BA0 =>
				next_state <= BA1;
				LED <= "0000000001";
			when AB0 =>
				next_state <= AB1;
				LED <= "1000000000";
			when AB1 =>
				next_state <= AB2;
				LED <= "0100000000";
			when AB2 =>
				next_state <= AB3;
				LED <= "0010000000";
			when AB3 =>
				next_state <= AB4;
				LED <= "0001000000";
			when AB4 =>
				next_state <= AB5;
				LED <= "0000100000";
			when AB5 =>
				next_state <= AB6;
				LED <= "0000010000";
			when AB6 =>
				next_state <= AB7;
				LED <= "0000001000";
			when AB7 =>
				next_state <= AB8;
				LED <= "0000000100";
			when AB8 =>
				if(button_B='0') then
					next_state <= A_wait;
					A_get_point <= '1';
				else
					next_state <= B_hit_turn;
				end if;
				LED <= "0000000010";
			when B_hit_turn =>
				if(button_B='1') then
					next_state <= A_wait;
					A_get_point <= '1';
				else
					next_state <= BA1;
				end if;
				LED <= "0000000001";
			when BA1 =>
				next_state <= BA2;
				LED <= "0000000010";
			when BA2 =>
				next_state <= BA3;
				LED <= "0000000100";
			when BA3 =>
				next_state <= BA4;
				LED <= "0000001000";
			when BA4 =>
				next_state <= BA5;
				LED <= "0000010000";
			when BA5 =>
				next_state <= BA6;
				LED <= "0000100000";
			when BA6 =>
				next_state <= BA7;
				LED <= "0001000000";
			when BA7 =>
				next_state <= BA8;
				LED <= "0010000000";	
			when BA8 =>
				if(button_A='0') then
					next_state <= B_wait;
					B_get_point <= '1';
				else
					next_state <= A_hit_turn;
				end if;
				LED <= "0100000000";	
			when A_hit_turn =>
				if(button_A='1') then
					next_state <= B_wait;
					B_get_point <= '1';
				else
					next_state <= AB1;
				end if;
				LED <= "1000000000";	
				
			when A_wait =>
				if(button_A='0') then
					next_state <= AB0;
				else
					next_state <= A_wait;
				end if;
				LED <= "0000000000";	
			when B_wait =>
				if(button_B='0') then
					next_state <= BA0;
				else
					next_state <= B_wait;
				end if;
				LED <= "0000000000";	
			when finished =>
				next_state <= finished;
				LED <= "1111111111";	
		end case;
		
		
		
	end process;
	
	decoder3: seven_seg_decoder port map(scoreOFA,HEX3);
	decoder2: seven_seg_decoder port map(x"0",HEX2);
	decoder1: seven_seg_decoder port map(x"0",HEX1);
	decoder0: seven_seg_decoder port map(scoreOFB,HEX0);
	
end ping_pong;

