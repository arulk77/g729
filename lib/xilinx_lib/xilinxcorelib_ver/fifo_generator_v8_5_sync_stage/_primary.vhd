library verilog;
use verilog.vl_types.all;
entity fifo_generator_v8_5_sync_stage is
    generic(
        C_WIDTH         : integer := 10
    );
    port(
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        DIN             : in     vl_logic_vector;
        DOUT            : out    vl_logic_vector
    );
end fifo_generator_v8_5_sync_stage;
