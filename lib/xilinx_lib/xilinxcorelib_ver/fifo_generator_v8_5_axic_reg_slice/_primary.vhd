library verilog;
use verilog.vl_types.all;
entity fifo_generator_v8_5_axic_reg_slice is
    generic(
        C_FAMILY        : string  := "virtex6";
        C_DATA_WIDTH    : integer := 32;
        C_REG_CONFIG    : integer := 0
    );
    port(
        ACLK            : in     vl_logic;
        ARESET          : in     vl_logic;
        S_PAYLOAD_DATA  : in     vl_logic_vector;
        S_VALID         : in     vl_logic;
        S_READY         : out    vl_logic;
        M_PAYLOAD_DATA  : out    vl_logic_vector;
        M_VALID         : out    vl_logic;
        M_READY         : in     vl_logic
    );
end fifo_generator_v8_5_axic_reg_slice;
