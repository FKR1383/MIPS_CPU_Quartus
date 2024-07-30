library verilog;
use verilog.vl_types.all;
entity MIPS_CPU is
    port(
        Branch          : out    vl_logic;
        CLOCK           : in     vl_logic;
        ZERO            : out    vl_logic;
        ALU_ENABLE      : in     vl_logic;
        JAL             : out    vl_logic;
        WriteData       : out    vl_logic_vector(15 downto 0);
        Jump            : out    vl_logic;
        Address         : out    vl_logic_vector(7 downto 0);
        ALU_result_OUT  : out    vl_logic_vector(7 downto 0);
        Instruction_OUT : out    vl_logic_vector(15 downto 0);
        Operand2_OUT    : out    vl_logic_vector(7 downto 0);
        PC_OUT          : out    vl_logic_vector(7 downto 0);
        Read_Data_OUT   : out    vl_logic_vector(15 downto 0);
        Reg1_OUT        : out    vl_logic_vector(7 downto 0);
        Reg2_OUT        : out    vl_logic_vector(7 downto 0);
        Write_Data_OUT  : out    vl_logic_vector(7 downto 0);
        Write_Register_OUT: out    vl_logic_vector(2 downto 0)
    );
end MIPS_CPU;
