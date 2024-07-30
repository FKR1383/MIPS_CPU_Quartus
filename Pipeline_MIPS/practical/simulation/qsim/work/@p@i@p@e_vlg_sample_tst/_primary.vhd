library verilog;
use verilog.vl_types.all;
entity PIPE_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end PIPE_vlg_sample_tst;
