library verilog;
use verilog.vl_types.all;
entity generic_shift_register_8bit_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end generic_shift_register_8bit_vlg_check_tst;
