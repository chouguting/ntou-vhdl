library verilog;
use verilog.vl_types.all;
entity step_wave is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        F_out           : out    vl_logic_vector(7 downto 0)
    );
end step_wave;
