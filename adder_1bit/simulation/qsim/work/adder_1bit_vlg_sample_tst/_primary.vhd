library verilog;
use verilog.vl_types.all;
entity adder_1bit_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end adder_1bit_vlg_sample_tst;
