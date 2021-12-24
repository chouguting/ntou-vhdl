library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ping_pong_ex is
port(
	clk:in std_logic;
	reset:in std_logic;
	p:in std_logic; --racket
	LED:out std_logic_vector(9 downto 0);
	HEX:out std_logic_vector(7 downto 0)
);
end ping_pong_ex;

architecture pong of ping_pong_ex is
type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20);
signal nextState: state;
signal presentState: state;

signal clk_div_counter: std_logic_vector(24 downto 0); --1011111010111100001000000  
signal clk_2Hz:std_logic;

signal score:std_logic_vector(3 downto 0);
signal point:std_logic;
signal loss:std_logic;

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

begin
	process(clk) begin
		if(rising_edge(clk)) then
			if(clk_div_counter = "1011111010111100001000000"-1) then
				clk_div_counter <= (others=>'0');
			else 
				clk_div_counter <= clk_div_counter + 1;
			end if;
		end if;
	end process;
	
	clk_2Hz <= clk_div_counter(24);
	
	process(clk_2Hz,reset) begin
		if(reset='0') then
			presentState <= s0;
		elsif(rising_edge(clk_2Hz)) then
			presentState <= nextState;
		end if;
	end process;
	
	process(p,presentState) begin
		point <= '0';
		loss <= '0';
		case presentState is
			when s0 => 
				if(p='1') then
					nextState <= s0;
				else 
					nextState <= s1;
				end if;
				LED <= "0000000000";
			when s1 => 
				nextState <= s2;
				LED <= "0000000001";
			when s2 => 
				nextState <= s3;
				LED <= "0000000010";
			when s3 => 
				nextState <= s4;
				LED <= "0000000100";
			when s4 => 
				nextState <= s5;
				LED <= "0000001000";
			when s5 => 
				nextState <= s6;
				LED <= "0000010000";
			when s6 => 
				nextState <= s7;
				LED <= "0000100000";
			when s7 => 
				nextState <= s8;
				LED <= "0001000000";
			when s8 => 
				nextState <= s9;
				LED <= "0010000000";
			when s9 => 
				nextState <= s10;
				LED <= "0100000000";
			when s10 => 
				nextState <= s11;
				LED <= "1000000000";
			when s11 => 
				nextState <= s12;
				LED <= "0100000000";
			when s12 => 
				nextState <= s13;
				LED <= "0010000000";
			when s13 => 
				nextState <= s14;
				LED <= "0001000000";
			when s14 => 
				nextState <= s15;
				LED <= "0000100000";
			when s15 => 
				nextState <= s16;
				LED <= "0000010000";
			when s16 => 
				nextState <= s17;
				LED <= "0000001000";
			when s17 => 
				nextState <= s18;
				LED <= "0000000100";
			when s18 => 
				if(p='1') then
					nextState <= s19;
				else 
					nextState <= s0;
					loss <= '1';
				end if;
				LED <= "0000000010";
			when s19 => 
				if(p='1') then
					nextState <= s0;
					loss <= '1';
				else 
					nextState <= s2;
					point <= '1';
				end if;
				LED <= "0000000001";
			when s20 => 
				nextState <= s0;
				LED <= "0000000000";
		end case;
	end process;
	
	process(point,clk_2Hz) begin
		if(reset='0') then
			score <= (others=>'0');
		elsif(rising_edge(clk_2Hz)) then
			if(point='1') then
				if(score="1001") then
					score <= "1001";
				else
					score <= score + 1;
				end if;
				
			elsif(loss='1') then
				score <= "0000";
			end if;
		
		end if;
	end process;
	
	dec1: seven_seg_decoder port map(score,HEX);
	
end pong;
