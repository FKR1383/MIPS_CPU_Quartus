library verilog;
use verilog.vl_types.all;
entity MIPS_CPU_MULTI_CYCLE is
    port(
        ALUSrcA         : out    vl_logic;
        CLOCK           : in     vl_logic;
        Instruction     : out    vl_logic_vector(15 downto 0);
        IRWrite         : out    vl_logic;
        Mem             : out    vl_logic_vector(15 downto 0);
        MemWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        IorD            : out    vl_logic;
        PC              : out    vl_logic_vector(7 downto 0);
        ZERO            : out    vl_logic;
        Reg1            : out    vl_logic_vector(7 downto 0);
        RegWrite        : out    vl_logic;
        MemtoReg        : out    vl_logic;
        ALU_OUT         : out    vl_logic_vector(7 downto 0);
        RegDst          : out    vl_logic_vector(1 downto 0);
        WriteData       : out    vl_logic_vector(7 downto 0);
        ALUSrcB         : out    vl_logic_vector(1 downto 0);
        ALUOp           : out    vl_logic_vector(3 downto 0);
        PCWrite         : out    vl_logic;
        PCSource        : out    vl_logic_vector(1 downto 0);
        A               : out    vl_logic_vector(7 downto 0);
        B               : out    vl_logic_vector(7 downto 0);
        Reg2            : out    vl_logic_vector(7 downto 0)
    );
end MIPS_CPU_MULTI_CYCLE;
