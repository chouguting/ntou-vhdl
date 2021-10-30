library verilog;
use verilog.vl_types.all;
entity generate_demux_1to8_vlg_sample_tst is
    port(
        D_in            : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end generate_demux_1to8_vlg_sample_tst;
