library verilog;
use verilog.vl_types.all;
entity mux8_1_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux8_1_vlg_sample_tst;
