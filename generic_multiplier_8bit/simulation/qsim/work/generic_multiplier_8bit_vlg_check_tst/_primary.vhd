library verilog;
use verilog.vl_types.all;
entity generic_multiplier_8bit_vlg_check_tst is
    port(
        mult_out        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end generic_multiplier_8bit_vlg_check_tst;
