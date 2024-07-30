library verilog;
use verilog.vl_types.all;
entity PIPE1_Negedge is
    port(
        \OUT\           : out    vl_logic;
        CLOCK           : in     vl_logic;
        \IN\            : in     vl_logic
    );
end PIPE1_Negedge;
