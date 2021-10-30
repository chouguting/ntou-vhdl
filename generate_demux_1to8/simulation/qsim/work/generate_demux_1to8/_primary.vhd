library verilog;
use verilog.vl_types.all;
entity generate_demux_1to8 is
    port(
        D_in            : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(7 downto 0)
    );
end generate_demux_1to8;
