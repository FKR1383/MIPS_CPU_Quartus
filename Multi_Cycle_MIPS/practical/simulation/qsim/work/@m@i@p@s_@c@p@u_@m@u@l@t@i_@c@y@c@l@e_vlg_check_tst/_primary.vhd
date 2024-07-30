library verilog;
use verilog.vl_types.all;
entity MIPS_CPU_MULTI_CYCLE_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        ALU_OUT         : in     vl_logic_vector(7 downto 0);
        ALUOp           : in     vl_logic_vector(3 downto 0);
        ALUSrcA         : in     vl_logic;
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Instruction     : in     vl_logic_vector(15 downto 0);
        IorD            : in     vl_logic;
        IRWrite         : in     vl_logic;
        Mem             : in     vl_logic_vector(15 downto 0);
        MemRead         : in     vl_logic;
        MemtoReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        PC              : in     vl_logic_vector(7 downto 0);
        PCSource        : in     vl_logic_vector(1 downto 0);
        PCWrite         : in     vl_logic;
        Reg1            : in     vl_logic_vector(7 downto 0);
        Reg2            : in     vl_logic_vector(7 downto 0);
        RegDst          : in     vl_logic_vector(1 downto 0);
        RegWrite        : in     vl_logic;
        WriteData       : in     vl_logic_vector(7 downto 0);
        ZERO            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MIPS_CPU_MULTI_CYCLE_vlg_check_tst;
