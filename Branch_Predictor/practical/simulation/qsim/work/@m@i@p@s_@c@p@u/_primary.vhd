library verilog;
use verilog.vl_types.all;
entity MIPS_CPU is
    port(
        FLUSH           : out    vl_logic;
        CLOCK           : in     vl_logic;
        PC_OUT          : out    vl_logic_vector(7 downto 0);
        TAKEN           : out    vl_logic;
        Branch_Select   : out    vl_logic;
        FLUSH_JUMP      : out    vl_logic;
        ALU_ENABLE      : in     vl_logic;
        Reg1            : out    vl_logic_vector(7 downto 0);
        Write_Data      : out    vl_logic_vector(7 downto 0);
        ALU_result      : out    vl_logic_vector(7 downto 0);
        Read_Data       : out    vl_logic_vector(15 downto 0);
        Reg2            : out    vl_logic_vector(7 downto 0);
        Operand2        : out    vl_logic_vector(7 downto 0);
        BACK            : out    vl_logic;
        JRAL            : out    vl_logic;
        HIT             : out    vl_logic;
        Block_four      : out    vl_logic_vector(15 downto 0);
        Block_one       : out    vl_logic_vector(15 downto 0);
        Block_three     : out    vl_logic_vector(15 downto 0);
        Block_two       : out    vl_logic_vector(15 downto 0);
        Operand1        : out    vl_logic_vector(7 downto 0);
        Write_Register  : out    vl_logic_vector(2 downto 0)
    );
end MIPS_CPU;
