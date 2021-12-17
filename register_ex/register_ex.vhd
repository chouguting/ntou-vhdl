library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity register_ex is
port(
	clk:in std_logic;
	data:in std_logic_vector(7 downto 0);
	reset:in std_logic;
	sel:in std_logic_vector(1 downto 0);
	hex0:out std_logic_vector(7 downto 0);
	hex1:out std_logic_vector(7 downto 0)
);
end register_ex;

architecture register_ex of register_ex is
signal A,B,C,D:std_logic_vector(7 downto 0);
signal en_A,en_B,en_C,en_D:std_logic;
signal mux_out:std_logic_vector(7 downto 0);

component seven_seg_decoder is
port(
	num:in std_logic_vector(3 downto 0);
	decoded_out:out std_logic_vector(7 downto 0)
);
end component;

begin
	--decoder
	en_A <= '1' when sel = "00" else '0';
	en_B <= '1' when sel = "01" else '0';
	en_C <= '1' when sel = "10" else '0';
	en_D <= '1' when sel = "11" else '0';
	
	--存入暫存器
	process(clk,reset)
	begin
		--放開按鈕的時候
		if(reset='0') then
			A <= (others=>'0');
			B <= (others=>'0');
			C <= (others=>'0');
			D <= (others=>'0');
		elsif(rising_edge(clk)) then
			if(en_A = '1') then
				A <= data;
			elsif(en_B = '1') then
				B <= data;
			elsif(en_C = '1') then
				C <= data;
			else
				D <= data;
			end if;
		end if;
	end process;
	
	--多工器輸出
	mux_out <= A when sel = "00" else
				  B when sel = "01" else
				  C when sel = "10" else
				  D;
				  
	dec0:seven_seg_decoder port map(mux_out(3 downto 0),hex0);
	dec1:seven_seg_decoder port map(mux_out(7 downto 4),hex1);
	
end register_ex;