library verilog;
use verilog.vl_types.all;
entity generic_multiplier_8bit_vlg_sample_tst is
    port(
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end generic_multiplier_8bit_vlg_sample_tst;
