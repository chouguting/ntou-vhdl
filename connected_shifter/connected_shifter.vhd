library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity connected_shifter is
port(
	clk_org:in std_logic;
	reset_in:in std_logic;
	clk_in:in std_logic;
	data_in:in std_logic;
	button0,button1:in std_logic;
	data_out:out std_logic;
	clk1,clk2,reset1,reset2:out std_logic;
	data:out std_logic;
	LED:buffer std_logic_vector(9 downto 0)
);
end connected_shifter;

architecture shifter of connected_shifter is
signal div_500000_counter:std_logic_vector(22 downto 0); --10011000100101101000000
signal clk_10Hz:std_logic;
begin
	process(clk_org,reset_in) begin
		if(reset_in='0') then
			div_500000_counter <= (others=>'0');
		elsif(rising_edge(clk_org)) then
			if(div_500000_counter = "10011000100101101000000"-1) then
				div_500000_counter <= (others=>'0');
			else	
				div_500000_counter <= div_500000_counter + 1;
			end if;
		end if;
	end process;
	
	clk_10Hz <= div_500000_counter(22);
	
	process(clk_in,reset_in) begin
		if(reset_in='0') then
			LED <= (others=>'0');
		elsif(rising_edge(clk_in)) then
			LED <= data_in&LED(9 downto 1);
		end if;
	end process;
	
	clk1 <= clk_10Hz;
	clk2 <= clk_10Hz;
	
	reset1 <= button0;
	reset2 <= button0;
	
	data <= not button1;
	
	data_out <= LED(0);

end shifter;