library verilog;
use verilog.vl_types.all;
entity adder_14bits_vlg_check_tst is
    port(
        Co              : in     vl_logic;
        S               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder_14bits_vlg_check_tst;
