library verilog;
use verilog.vl_types.all;
entity Control_Multi_Cycle is
    port(
        PCWrite         : out    vl_logic;
        CLOCK           : in     vl_logic;
        FUNCT           : in     vl_logic_vector(2 downto 0);
        OPCODE          : in     vl_logic_vector(3 downto 0);
        STATE           : in     vl_logic_vector(3 downto 0);
        PCWriteCond     : out    vl_logic;
        IorD            : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        IRWrite         : out    vl_logic;
        MemtoReg        : out    vl_logic;
        ALUSrcA         : out    vl_logic;
        RegWrite        : out    vl_logic;
        ZERO_EXTEND     : out    vl_logic;
        ALUOp           : out    vl_logic_vector(3 downto 0);
        ALUSrcB         : out    vl_logic_vector(1 downto 0);
        NewState        : out    vl_logic_vector(3 downto 0);
        PCSource        : out    vl_logic_vector(1 downto 0);
        RegDst          : out    vl_logic_vector(1 downto 0)
    );
end Control_Multi_Cycle;
