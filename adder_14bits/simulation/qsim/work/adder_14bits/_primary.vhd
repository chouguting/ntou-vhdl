library verilog;
use verilog.vl_types.all;
entity adder_14bits is
    port(
        X               : in     vl_logic_vector(13 downto 0);
        Y               : in     vl_logic_vector(13 downto 0);
        C               : in     vl_logic;
        S               : out    vl_logic_vector(13 downto 0);
        Co              : out    vl_logic
    );
end adder_14bits;
