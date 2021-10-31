library verilog;
use verilog.vl_types.all;
entity counter_20_to_A0_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        up_or_down      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_20_to_A0_vlg_sample_tst;
