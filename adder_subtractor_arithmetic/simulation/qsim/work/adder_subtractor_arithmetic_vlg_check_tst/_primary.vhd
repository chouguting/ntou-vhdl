library verilog;
use verilog.vl_types.all;
entity adder_subtractor_arithmetic_vlg_check_tst is
    port(
        C_out           : in     vl_logic;
        overflow        : in     vl_logic;
        Sum             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder_subtractor_arithmetic_vlg_check_tst;
