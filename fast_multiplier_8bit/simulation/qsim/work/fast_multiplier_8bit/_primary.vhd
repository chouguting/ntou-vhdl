library verilog;
use verilog.vl_types.all;
entity fast_multiplier_8bit is
    port(
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        mult_out        : out    vl_logic_vector(15 downto 0)
    );
end fast_multiplier_8bit;
