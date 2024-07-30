library verilog;
use verilog.vl_types.all;
entity InstructionMemory is
    port(
        ReadData        : out    vl_logic_vector(15 downto 0);
        CLOCK           : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0)
    );
end InstructionMemory;
