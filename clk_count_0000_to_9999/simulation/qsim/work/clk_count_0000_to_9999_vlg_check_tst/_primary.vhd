library verilog;
use verilog.vl_types.all;
entity clk_count_0000_to_9999_vlg_check_tst is
    port(
        light           : in     vl_logic_vector(9 downto 0);
        seven_seg_decoded1: in     vl_logic_vector(7 downto 0);
        seven_seg_decoded2: in     vl_logic_vector(7 downto 0);
        seven_seg_decoded3: in     vl_logic_vector(7 downto 0);
        seven_seg_decoded4: in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end clk_count_0000_to_9999_vlg_check_tst;
