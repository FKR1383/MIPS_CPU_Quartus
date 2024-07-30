library verilog;
use verilog.vl_types.all;
entity Practical3 is
    port(
        READY           : out    vl_logic;
        CLOCK           : in     vl_logic;
        ENABLE          : in     vl_logic;
        OPCODE          : in     vl_logic_vector(3 downto 0);
        ZERO            : out    vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        DECODE          : out    vl_logic_vector(15 downto 0);
        \OUT\           : out    vl_logic_vector(7 downto 0)
    );
end Practical3;
