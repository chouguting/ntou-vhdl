library verilog;
use verilog.vl_types.all;
entity adder_1bit_vlg_check_tst is
    port(
        c_out           : in     vl_logic;
        S               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end adder_1bit_vlg_check_tst;
