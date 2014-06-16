library verilog;
use verilog.vl_types.all;
entity ASYNC_FIFO_V5_1 is
    generic(
        C_DATA_WIDTH    : integer := 8;
        C_ENABLE_RLOCS  : integer := 0;
        C_FIFO_DEPTH    : integer := 511;
        C_HAS_ALMOST_EMPTY: integer := 1;
        C_HAS_ALMOST_FULL: integer := 1;
        C_HAS_RD_ACK    : integer := 1;
        C_HAS_RD_COUNT  : integer := 1;
        C_HAS_RD_ERR    : integer := 1;
        C_HAS_WR_ACK    : integer := 1;
        C_HAS_WR_COUNT  : integer := 1;
        C_HAS_WR_ERR    : integer := 1;
        C_RD_ACK_LOW    : integer := 0;
        C_RD_COUNT_WIDTH: integer := 2;
        C_RD_ERR_LOW    : integer := 0;
        C_USE_BLOCKMEM  : integer := 1;
        C_WR_ACK_LOW    : integer := 0;
        C_WR_COUNT_WIDTH: integer := 2;
        C_WR_ERR_LOW    : integer := 0
    );
    port(
        DIN             : in     vl_logic_vector;
        WR_EN           : in     vl_logic;
        WR_CLK          : in     vl_logic;
        RD_EN           : in     vl_logic;
        RD_CLK          : in     vl_logic;
        AINIT           : in     vl_logic;
        DOUT            : out    vl_logic_vector;
        FULL            : out    vl_logic;
        EMPTY           : out    vl_logic;
        ALMOST_FULL     : out    vl_logic;
        ALMOST_EMPTY    : out    vl_logic;
        WR_COUNT        : out    vl_logic_vector;
        RD_COUNT        : out    vl_logic_vector;
        RD_ACK          : out    vl_logic;
        RD_ERR          : out    vl_logic;
        WR_ACK          : out    vl_logic;
        WR_ERR          : out    vl_logic
    );
end ASYNC_FIFO_V5_1;
