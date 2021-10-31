library verilog;
use verilog.vl_types.all;
entity counter_20_to_A0_vlg_check_tst is
    port(
        output_num      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end counter_20_to_A0_vlg_check_tst;
