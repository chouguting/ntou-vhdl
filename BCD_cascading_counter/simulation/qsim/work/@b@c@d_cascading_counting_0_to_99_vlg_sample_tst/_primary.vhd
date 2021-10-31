library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counting_0_to_99_vlg_sample_tst is
    port(
        cascade_in      : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BCD_cascading_counting_0_to_99_vlg_sample_tst;
