library verilog;
use verilog.vl_types.all;
entity fifo_generator_v8_1_bhv_ver_as is
    generic(
        C_DATA_COUNT_WIDTH: integer := 2;
        C_DIN_WIDTH     : integer := 8;
        C_DOUT_RST_VAL  : string  := "";
        C_DOUT_WIDTH    : integer := 8;
        C_FULL_FLAGS_RST_VAL: integer := 1;
        C_HAS_ALMOST_EMPTY: integer := 0;
        C_HAS_ALMOST_FULL: integer := 0;
        C_HAS_DATA_COUNT: integer := 0;
        C_HAS_OVERFLOW  : integer := 0;
        C_HAS_RD_DATA_COUNT: integer := 0;
        C_HAS_RST       : integer := 0;
        C_HAS_UNDERFLOW : integer := 0;
        C_HAS_VALID     : integer := 0;
        C_HAS_WR_ACK    : integer := 0;
        C_HAS_WR_DATA_COUNT: integer := 0;
        C_IMPLEMENTATION_TYPE: integer := 0;
        C_MEMORY_TYPE   : integer := 1;
        C_OVERFLOW_LOW  : integer := 0;
        C_PRELOAD_LATENCY: integer := 1;
        C_PRELOAD_REGS  : integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_EMPTY_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_EMPTY_TYPE: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_FULL_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_FULL_TYPE: integer := 0;
        C_RD_DATA_COUNT_WIDTH: integer := 2;
        C_RD_DEPTH      : integer := 256;
        C_RD_PNTR_WIDTH : integer := 8;
        C_UNDERFLOW_LOW : integer := 0;
        C_USE_DOUT_RST  : integer := 0;
        C_USE_EMBEDDED_REG: integer := 0;
        C_USE_FWFT_DATA_COUNT: integer := 0;
        C_VALID_LOW     : integer := 0;
        C_WR_ACK_LOW    : integer := 0;
        C_WR_DATA_COUNT_WIDTH: integer := 2;
        C_WR_DEPTH      : integer := 256;
        C_WR_PNTR_WIDTH : integer := 8;
        C_USE_ECC       : integer := 0;
        C_ENABLE_RST_SYNC: integer := 1;
        C_ERROR_INJECTION_TYPE: integer := 0
    );
    port(
        DIN             : in     vl_logic_vector;
        PROG_EMPTY_THRESH: in     vl_logic_vector;
        PROG_EMPTY_THRESH_ASSERT: in     vl_logic_vector;
        PROG_EMPTY_THRESH_NEGATE: in     vl_logic_vector;
        PROG_FULL_THRESH: in     vl_logic_vector;
        PROG_FULL_THRESH_ASSERT: in     vl_logic_vector;
        PROG_FULL_THRESH_NEGATE: in     vl_logic_vector;
        RD_CLK          : in     vl_logic;
        RD_EN           : in     vl_logic;
        RD_EN_USER      : in     vl_logic;
        RST             : in     vl_logic;
        RST_FULL_GEN    : in     vl_logic;
        RST_FULL_FF     : in     vl_logic;
        WR_RST          : in     vl_logic;
        RD_RST          : in     vl_logic;
        WR_CLK          : in     vl_logic;
        WR_EN           : in     vl_logic;
        INJECTDBITERR   : in     vl_logic;
        INJECTSBITERR   : in     vl_logic;
        USER_EMPTY_FB   : in     vl_logic;
        ALMOST_EMPTY    : out    vl_logic;
        ALMOST_FULL     : out    vl_logic;
        DOUT            : out    vl_logic_vector;
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        OVERFLOW        : out    vl_logic;
        PROG_EMPTY      : out    vl_logic;
        PROG_FULL       : out    vl_logic;
        VALID           : out    vl_logic;
        RD_DATA_COUNT   : out    vl_logic_vector;
        UNDERFLOW       : out    vl_logic;
        WR_ACK          : out    vl_logic;
        WR_DATA_COUNT   : out    vl_logic_vector;
        SBITERR         : out    vl_logic;
        DBITERR         : out    vl_logic
    );
end fifo_generator_v8_1_bhv_ver_as;
