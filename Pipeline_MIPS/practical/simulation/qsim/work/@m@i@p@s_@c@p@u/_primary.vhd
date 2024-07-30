library verilog;
use verilog.vl_types.all;
entity MIPS_CPU is
    port(
        ALU_result      : out    vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        ALU_ENABLE      : in     vl_logic;
        Reg1            : out    vl_logic_vector(7 downto 0);
        Instruction     : out    vl_logic_vector(15 downto 0);
        PC_OUT          : out    vl_logic_vector(7 downto 0);
        Write_Data      : out    vl_logic_vector(7 downto 0);
        Read_Data       : out    vl_logic_vector(15 downto 0);
        Reg2            : out    vl_logic_vector(7 downto 0);
        Operand2        : out    vl_logic_vector(7 downto 0);
        Operand1        : out    vl_logic_vector(7 downto 0);
        Write_Register  : out    vl_logic_vector(2 downto 0)
    );
end MIPS_CPU;
