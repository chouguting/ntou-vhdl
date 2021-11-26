library verilog;
use verilog.vl_types.all;
entity clk_with_number is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        onesec_out      : out    vl_logic_vector(9 downto 0);
        decoded_out     : out    vl_logic_vector(7 downto 0);
        temp            : out    vl_logic
    );
end clk_with_number;
