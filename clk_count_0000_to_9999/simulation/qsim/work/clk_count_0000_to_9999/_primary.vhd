library verilog;
use verilog.vl_types.all;
entity clk_count_0000_to_9999 is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        seven_seg_decoded1: out    vl_logic_vector(7 downto 0);
        seven_seg_decoded2: out    vl_logic_vector(7 downto 0);
        seven_seg_decoded3: out    vl_logic_vector(7 downto 0);
        seven_seg_decoded4: out    vl_logic_vector(7 downto 0);
        light           : out    vl_logic_vector(9 downto 0)
    );
end clk_count_0000_to_9999;
