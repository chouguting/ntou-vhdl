library verilog;
use verilog.vl_types.all;
entity breathing_light_5sec_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end breathing_light_5sec_vlg_sample_tst;
