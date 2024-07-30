library verilog;
use verilog.vl_types.all;
entity PIPE is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0)
    );
end PIPE;
