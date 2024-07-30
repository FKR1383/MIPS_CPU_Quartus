library verilog;
use verilog.vl_types.all;
entity DataMemory is
    port(
        ReadData        : out    vl_logic_vector(15 downto 0);
        MemRead         : in     vl_logic;
        CLOCK           : in     vl_logic;
        WriteData       : inout  vl_logic_vector(15 downto 0);
        MemWrite        : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0)
    );
end DataMemory;
