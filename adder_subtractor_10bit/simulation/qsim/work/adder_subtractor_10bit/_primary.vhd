library verilog;
use verilog.vl_types.all;
entity adder_subtractor_10bit is
    port(
        X               : in     vl_logic_vector(9 downto 0);
        Y               : in     vl_logic_vector(9 downto 0);
        C_in            : in     vl_logic;
        Mode            : in     vl_logic;
        S               : out    vl_logic_vector(9 downto 0);
        C_out           : out    vl_logic
    );
end adder_subtractor_10bit;
