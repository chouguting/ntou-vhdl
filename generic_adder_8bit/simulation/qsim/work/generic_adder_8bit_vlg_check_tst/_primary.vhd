library verilog;
use verilog.vl_types.all;
entity generic_adder_8bit_vlg_check_tst is
    port(
        c_out           : in     vl_logic;
        sum             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end generic_adder_8bit_vlg_check_tst;
