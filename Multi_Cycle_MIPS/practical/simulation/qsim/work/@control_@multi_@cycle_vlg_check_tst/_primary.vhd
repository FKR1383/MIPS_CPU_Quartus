library verilog;
use verilog.vl_types.all;
entity Control_Multi_Cycle_vlg_check_tst is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        ALUSrcA         : in     vl_logic;
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        IorD            : in     vl_logic;
        IRWrite         : in     vl_logic;
        MemRead         : in     vl_logic;
        MemtoReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        NewState        : in     vl_logic_vector(3 downto 0);
        PCSource        : in     vl_logic_vector(1 downto 0);
        PCWrite         : in     vl_logic;
        PCWriteCond     : in     vl_logic;
        RegDst          : in     vl_logic_vector(1 downto 0);
        RegWrite        : in     vl_logic;
        ZERO_EXTEND     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Control_Multi_Cycle_vlg_check_tst;
