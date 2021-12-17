library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rgb_light_setting_by_switch is
port(
	brightness_in:in std_logic_vector(7 downto 0);
	choose_reg:in std_logic_vector(1 downto 0);
	clk:in std_logic;
	reset:in std_logic;
	R_led:out std_logic;
	G_led:out std_logic;
	B_led:out std_logic;
	hex0:out std_logic_vector(7 downto 0);
	hex1:out std_logic_vector(7 downto 0)
);
end rgb_light_setting_by_switch;

architecture rgb_light of rgb_light_setting_by_switch is
signal div_counter:std_logic_vector(8 downto 0);  --除512用的
signal divided_512_clk:std_logic; --除以512後的clk

signal reg_R,reg_G,reg_B:std_logic_vector(7 downto 0); --存RGB各自的亮度

signal light_counter:std_logic_vector(7 downto 0); --0數到255

component seven_seg_decoder is
port(
	num:in std_logic_vector(3 downto 0);
	decoded_out:out std_logic_vector(7 downto 0)
);
end component;

signal mux_out:std_logic_vector(7 downto 0);

begin
	process(clk,reset) begin
		if(reset = '0') then
			div_counter <= (others=>'0');
		elsif(rising_edge(clk)) then
			div_counter <= div_counter + 1;
		end if;
	end process;
	
	divided_512_clk <= div_counter(8); --除以512後的clk
	
	process(divided_512_clk,reset) begin
		if(reset = '0') then
			reg_R <= (others=>'0');
			reg_G <= (others=>'0');
			reg_B <= (others=>'0');
			light_counter <= (others=>'0');
		elsif(rising_edge(divided_512_clk)) then
			if(choose_reg = "00") then
				reg_R <= brightness_in;
			elsif(choose_reg = "01") then
				reg_G <= brightness_in;
			elsif(choose_reg = "10") then
				reg_B <= brightness_in;
			end if;
			light_counter <= light_counter + 1;
		end if;
	end process;
	
	R_led <= '0' when (light_counter <  reg_R) else '1';
	G_led <= '0' when (light_counter <  reg_G) else '1';
	B_led <= '0' when (light_counter <  reg_B) else '1';
	
	--多工器輸出
	mux_out <= reg_R when choose_reg = "00" else
				  reg_G when choose_reg = "01" else
				  reg_B when choose_reg = "10" else
				  x"00";
	
	dec0:seven_seg_decoder port map(mux_out(3 downto 0),hex0);
	dec1:seven_seg_decoder port map(mux_out(7 downto 4),hex1);
	
end rgb_light;
