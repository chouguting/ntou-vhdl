library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counter_12bit_vlg_sample_tst is
    port(
        casin           : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BCD_cascading_counter_12bit_vlg_sample_tst;
