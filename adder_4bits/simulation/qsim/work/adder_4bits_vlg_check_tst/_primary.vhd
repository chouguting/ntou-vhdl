library verilog;
use verilog.vl_types.all;
entity adder_4bits_vlg_check_tst is
    port(
        C               : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder_4bits_vlg_check_tst;
