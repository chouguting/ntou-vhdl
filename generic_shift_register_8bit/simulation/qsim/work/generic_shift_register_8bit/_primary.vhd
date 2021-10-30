library verilog;
use verilog.vl_types.all;
entity generic_shift_register_8bit is
    port(
        D_in            : in     vl_logic;
        L_R             : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end generic_shift_register_8bit;
