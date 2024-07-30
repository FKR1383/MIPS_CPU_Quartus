library verilog;
use verilog.vl_types.all;
entity FLUSH_UNIT is
    port(
        FLUSH           : out    vl_logic;
        Branch          : in     vl_logic;
        JAL             : in     vl_logic;
        Jump            : in     vl_logic;
        CLOCK           : in     vl_logic;
        FLUSH_JUMP      : out    vl_logic
    );
end FLUSH_UNIT;
