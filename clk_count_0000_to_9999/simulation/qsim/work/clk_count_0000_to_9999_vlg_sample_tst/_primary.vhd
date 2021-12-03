library verilog;
use verilog.vl_types.all;
entity clk_count_0000_to_9999_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clk_count_0000_to_9999_vlg_sample_tst;
