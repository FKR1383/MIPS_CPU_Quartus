library verilog;
use verilog.vl_types.all;
entity FLUSH_UNIT_vlg_sample_tst is
    port(
        Branch          : in     vl_logic;
        CLOCK           : in     vl_logic;
        JAL             : in     vl_logic;
        Jump            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FLUSH_UNIT_vlg_sample_tst;
