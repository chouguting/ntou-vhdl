library verilog;
use verilog.vl_types.all;
entity adder_subtractor_10bit_vlg_sample_tst is
    port(
        C_in            : in     vl_logic;
        Mode            : in     vl_logic;
        X               : in     vl_logic_vector(9 downto 0);
        Y               : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end adder_subtractor_10bit_vlg_sample_tst;
