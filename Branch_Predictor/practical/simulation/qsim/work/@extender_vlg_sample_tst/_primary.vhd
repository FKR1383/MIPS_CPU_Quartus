library verilog;
use verilog.vl_types.all;
entity Extender_vlg_sample_tst is
    port(
        IMM             : in     vl_logic_vector(5 downto 0);
        ZERO_EXTEND     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Extender_vlg_sample_tst;
