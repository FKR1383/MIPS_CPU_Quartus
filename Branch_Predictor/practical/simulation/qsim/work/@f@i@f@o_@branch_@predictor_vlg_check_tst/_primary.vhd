library verilog;
use verilog.vl_types.all;
entity FIFO_Branch_Predictor_vlg_check_tst is
    port(
        Block_four      : in     vl_logic_vector(15 downto 0);
        Block_one       : in     vl_logic_vector(15 downto 0);
        Block_three     : in     vl_logic_vector(15 downto 0);
        Block_two       : in     vl_logic_vector(15 downto 0);
        HIT             : in     vl_logic;
        TAKEN           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FIFO_Branch_Predictor_vlg_check_tst;
