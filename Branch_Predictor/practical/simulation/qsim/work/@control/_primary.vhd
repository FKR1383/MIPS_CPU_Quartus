library verilog;
use verilog.vl_types.all;
entity Control is
    port(
        Jump            : out    vl_logic;
        ENABLE          : in     vl_logic;
        OP_CODE         : in     vl_logic_vector(3 downto 0);
        Funct           : in     vl_logic_vector(2 downto 0);
        RegDst          : out    vl_logic;
        Branch          : out    vl_logic;
        MemRead         : out    vl_logic;
        MemtoReg        : out    vl_logic;
        MemWrite        : out    vl_logic;
        RegWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        ZERO_EXTEND     : out    vl_logic;
        JAL             : out    vl_logic;
        ALUOp           : out    vl_logic_vector(3 downto 0)
    );
end Control;
