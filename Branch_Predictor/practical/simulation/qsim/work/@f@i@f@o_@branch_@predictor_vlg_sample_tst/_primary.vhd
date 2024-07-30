library verilog;
use verilog.vl_types.all;
entity FIFO_Branch_Predictor_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        ISBRANCH        : in     vl_logic;
        Predict         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FIFO_Branch_Predictor_vlg_sample_tst;
