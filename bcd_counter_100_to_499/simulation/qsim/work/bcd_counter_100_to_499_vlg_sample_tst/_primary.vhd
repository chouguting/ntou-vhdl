library verilog;
use verilog.vl_types.all;
entity bcd_counter_100_to_499_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end bcd_counter_100_to_499_vlg_sample_tst;
