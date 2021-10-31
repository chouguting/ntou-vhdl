library verilog;
use verilog.vl_types.all;
entity adder_subtractor_arithmetic is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        A_S             : in     vl_logic;
        Sum             : out    vl_logic_vector(3 downto 0);
        C_out           : out    vl_logic;
        overflow        : out    vl_logic
    );
end adder_subtractor_arithmetic;
