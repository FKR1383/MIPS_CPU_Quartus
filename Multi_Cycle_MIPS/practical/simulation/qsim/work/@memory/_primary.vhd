library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        ReadData        : out    vl_logic_vector(15 downto 0);
        CLOCK           : in     vl_logic;
        MemWrite        : in     vl_logic;
        MemRead         : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0);
        WriteData       : in     vl_logic_vector(15 downto 0)
    );
end Memory;
