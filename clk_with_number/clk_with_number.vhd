library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clk_with_number is
port(
	clk:in std_logic;
	reset:in std_logic;
	decoded_out:out std_logic_vector(7 downto 0);
	decoded_out2:out std_logic_vector(7 downto 0);
	decoded_out3:out std_logic_vector(7 downto 0);
	decoded_out4:out std_logic_vector(7 downto 0)
);
end clk_with_number;

architecture oneSecClk of clk_with_number is
signal count:std_logic_vector(25 downto 0);
signal zero_to_nine_counter:std_logic_vector(3 downto 0);
signal zero_to_nine_counter2:std_logic_vector(3 downto 0);
signal zero_to_nine_counter3:std_logic_vector(3 downto 0);
signal zero_to_nine_counter4:std_logic_vector(3 downto 0);
signal c1,c2,c3:std_logic;
signal temp:std_logic;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(count = "00000000111101000010010000"-1) then
				count <= (others=>'0');
				temp <= not temp;
			else
				count <= count+1;
			end if;
		end if;
	end process;
	
	
	process(temp) begin
		if(reset = '0') then
			zero_to_nine_counter <= x"0";
		elsif(rising_edge(temp)) then
			if(zero_to_nine_counter=x"9") then
				zero_to_nine_counter <= x"0";
				c1<='0';
			else
				zero_to_nine_counter <= zero_to_nine_counter+1;
				c1<='1';
			end if;
		end if;
	end process;
	
	
	process(c1) begin
		if(reset = '0') then
			zero_to_nine_counter2 <= x"0";
		elsif(rising_edge(c1)) then
			if(zero_to_nine_counter2=x"9") then
				zero_to_nine_counter2 <= x"0";
				c2<='0';
			else
				zero_to_nine_counter2 <= zero_to_nine_counter2+1;
				c2<='1';
			end if;
		end if;
	end process;
	
	process(c2) begin
		if(reset = '0') then
			zero_to_nine_counter3 <= x"0";
		elsif(rising_edge(c2)) then
			if(zero_to_nine_counter3=x"9") then
				zero_to_nine_counter3 <= x"0";
				c3<='0';
			else
				zero_to_nine_counter3 <= zero_to_nine_counter3+1;
				c3<='1';
			end if;
		end if;
	end process;
	
	process(c3) begin
		if(reset = '0') then
			zero_to_nine_counter4 <= x"0";
		elsif(rising_edge(c3)) then
			if(zero_to_nine_counter4=x"9") then
				zero_to_nine_counter4 <= x"0";
			else
				zero_to_nine_counter4 <= zero_to_nine_counter4+1;
			end if;
		end if;
	end process;
	
	 decoded_out <= "11000000" when zero_to_nine_counter = x"0" else
                   "11111001" when zero_to_nine_counter = x"1" else
                   "10100100" when zero_to_nine_counter = x"2" else
                   "10110000" when zero_to_nine_counter = x"3" else
                   "10011001" when zero_to_nine_counter = x"4" else
                   "10010010" when zero_to_nine_counter = x"5" else
                   "10000010" when zero_to_nine_counter = x"6" else
                   "11111000" when zero_to_nine_counter = x"7" else
                   "10000000" when zero_to_nine_counter = x"8" else
                   "10010000" when zero_to_nine_counter = x"9" else
                   "00000000";
						 
	
						 
	 decoded_out2 <= "11000000" when zero_to_nine_counter2 = x"0" else
                   "11111001" when zero_to_nine_counter2 = x"1" else
                   "10100100" when zero_to_nine_counter2 = x"2" else
                   "10110000" when zero_to_nine_counter2 = x"3" else
                   "10011001" when zero_to_nine_counter2 = x"4" else
                   "10010010" when zero_to_nine_counter2 = x"5" else
                   "10000010" when zero_to_nine_counter2 = x"6" else
                   "11111000" when zero_to_nine_counter2 = x"7" else
                   "10000000" when zero_to_nine_counter2 = x"8" else
                   "10010000" when zero_to_nine_counter2 = x"9" else
                   "00000000";
						 
	 decoded_out3 <= "11000000" when zero_to_nine_counter3 = x"0" else
                   "11111001" when zero_to_nine_counter3 = x"1" else
                   "10100100" when zero_to_nine_counter3 = x"2" else
                   "10110000" when zero_to_nine_counter3 = x"3" else
                   "10011001" when zero_to_nine_counter3 = x"4" else
                   "10010010" when zero_to_nine_counter3 = x"5" else
                   "10000010" when zero_to_nine_counter3 = x"6" else
                   "11111000" when zero_to_nine_counter3 = x"7" else
                   "10000000" when zero_to_nine_counter3 = x"8" else
                   "10010000" when zero_to_nine_counter3 = x"9" else
                   "00000000";
	
	decoded_out4 <= "11000000" when zero_to_nine_counter4 = x"0" else
                   "11111001" when zero_to_nine_counter4 = x"1" else
                   "10100100" when zero_to_nine_counter4 = x"2" else
                   "10110000" when zero_to_nine_counter4 = x"3" else
                   "10011001" when zero_to_nine_counter4 = x"4" else
                   "10010010" when zero_to_nine_counter4 = x"5" else
                   "10000010" when zero_to_nine_counter4 = x"6" else
                   "11111000" when zero_to_nine_counter4 = x"7" else
                   "10000000" when zero_to_nine_counter4 = x"8" else
                   "10010000" when zero_to_nine_counter4 = x"9" else
                   "00000000";
	
end oneSecClk;