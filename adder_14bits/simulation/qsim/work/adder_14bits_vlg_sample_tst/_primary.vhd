library verilog;
use verilog.vl_types.all;
entity adder_14bits_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        X               : in     vl_logic_vector(13 downto 0);
        Y               : in     vl_logic_vector(13 downto 0);
        sampler_tx      : out    vl_logic
    );
end adder_14bits_vlg_sample_tst;
