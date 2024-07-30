library verilog;
use verilog.vl_types.all;
entity FIFO_Branch_Predictor is
    port(
        HIT             : out    vl_logic;
        Block_one       : out    vl_logic_vector(15 downto 0);
        CLOCK           : in     vl_logic;
        ISBRANCH        : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0);
        Predict         : in     vl_logic;
        Block_three     : out    vl_logic_vector(15 downto 0);
        Block_two       : out    vl_logic_vector(15 downto 0);
        Block_four      : out    vl_logic_vector(15 downto 0);
        TAKEN           : out    vl_logic
    );
end FIFO_Branch_Predictor;
