library verilog;
use verilog.vl_types.all;
entity FIFO_GENERATOR_V8_2_CONV_VER is
    generic(
        C_COMMON_CLOCK  : integer := 0;
        C_COUNT_TYPE    : integer := 0;
        C_DATA_COUNT_WIDTH: integer := 2;
        C_DEFAULT_VALUE : string  := "";
        C_DIN_WIDTH     : integer := 8;
        C_DOUT_RST_VAL  : string  := "";
        C_DOUT_WIDTH    : integer := 8;
        C_ENABLE_RLOCS  : integer := 0;
        C_FAMILY        : string  := "virtex6";
        C_FULL_FLAGS_RST_VAL: integer := 1;
        C_HAS_ALMOST_EMPTY: integer := 0;
        C_HAS_ALMOST_FULL: integer := 0;
        C_HAS_BACKUP    : integer := 0;
        C_HAS_DATA_COUNT: integer := 0;
        C_HAS_INT_CLK   : integer := 0;
        C_HAS_MEMINIT_FILE: integer := 0;
        C_HAS_OVERFLOW  : integer := 0;
        C_HAS_RD_DATA_COUNT: integer := 0;
        C_HAS_RD_RST    : integer := 0;
        C_HAS_RST       : integer := 0;
        C_HAS_SRST      : integer := 0;
        C_HAS_UNDERFLOW : integer := 0;
        C_HAS_VALID     : integer := 0;
        C_HAS_WR_ACK    : integer := 0;
        C_HAS_WR_DATA_COUNT: integer := 0;
        C_HAS_WR_RST    : integer := 0;
        C_IMPLEMENTATION_TYPE: integer := 0;
        C_INIT_WR_PNTR_VAL: integer := 0;
        C_MEMORY_TYPE   : integer := 1;
        C_MIF_FILE_NAME : string  := "";
        C_OPTIMIZATION_MODE: integer := 0;
        C_OVERFLOW_LOW  : integer := 0;
        C_PRELOAD_LATENCY: integer := 1;
        C_PRELOAD_REGS  : integer := 0;
        C_PRIM_FIFO_TYPE: string  := "";
        C_PROG_EMPTY_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_EMPTY_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_EMPTY_TYPE: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_FULL_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_FULL_TYPE: integer := 0;
        C_RD_DATA_COUNT_WIDTH: integer := 2;
        C_RD_DEPTH      : integer := 256;
        C_RD_FREQ       : integer := 1;
        C_RD_PNTR_WIDTH : integer := 8;
        C_UNDERFLOW_LOW : integer := 0;
        C_USE_DOUT_RST  : integer := 0;
        C_USE_ECC       : integer := 0;
        C_USE_EMBEDDED_REG: integer := 0;
        C_USE_FIFO16_FLAGS: integer := 0;
        C_USE_FWFT_DATA_COUNT: integer := 0;
        C_VALID_LOW     : integer := 0;
        C_WR_ACK_LOW    : integer := 0;
        C_WR_DATA_COUNT_WIDTH: integer := 2;
        C_WR_DEPTH      : integer := 256;
        C_WR_FREQ       : integer := 1;
        C_WR_PNTR_WIDTH : integer := 8;
        C_WR_RESPONSE_LATENCY: integer := 1;
        C_MSGON_VAL     : integer := 1;
        C_ENABLE_RST_SYNC: integer := 1;
        C_ERROR_INJECTION_TYPE: integer := 0;
        C_FIFO_TYPE     : integer := 0
    );
    port(
        BACKUP          : in     vl_logic;
        BACKUP_MARKER   : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SRST            : in     vl_logic;
        WR_CLK          : in     vl_logic;
        WR_RST          : in     vl_logic;
        RD_CLK          : in     vl_logic;
        RD_RST          : in     vl_logic;
        DIN             : in     vl_logic_vector;
        WR_EN           : in     vl_logic;
        RD_EN           : in     vl_logic;
        PROG_EMPTY_THRESH: in     vl_logic_vector;
        PROG_EMPTY_THRESH_ASSERT: in     vl_logic_vector;
        PROG_EMPTY_THRESH_NEGATE: in     vl_logic_vector;
        PROG_FULL_THRESH: in     vl_logic_vector;
        PROG_FULL_THRESH_ASSERT: in     vl_logic_vector;
        PROG_FULL_THRESH_NEGATE: in     vl_logic_vector;
        INT_CLK         : in     vl_logic;
        INJECTDBITERR   : in     vl_logic;
        INJECTSBITERR   : in     vl_logic;
        DOUT            : out    vl_logic_vector;
        FULL            : out    vl_logic;
        ALMOST_FULL     : out    vl_logic;
        WR_ACK          : out    vl_logic;
        OVERFLOW        : out    vl_logic;
        EMPTY           : out    vl_logic;
        ALMOST_EMPTY    : out    vl_logic;
        VALID           : out    vl_logic;
        UNDERFLOW       : out    vl_logic;
        DATA_COUNT      : out    vl_logic_vector;
        RD_DATA_COUNT   : out    vl_logic_vector;
        WR_DATA_COUNT   : out    vl_logic_vector;
        PROG_FULL       : out    vl_logic;
        PROG_EMPTY      : out    vl_logic;
        SBITERR         : out    vl_logic;
        DBITERR         : out    vl_logic
    );
end FIFO_GENERATOR_V8_2_CONV_VER;
