library verilog;
use verilog.vl_types.all;
entity adder_1bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        S               : out    vl_logic;
        c_out           : out    vl_logic
    );
end adder_1bit;
