library verilog;
use verilog.vl_types.all;
entity adder_subtractor_10bit_vlg_check_tst is
    port(
        C_out           : in     vl_logic;
        S               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder_subtractor_10bit_vlg_check_tst;
