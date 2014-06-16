library verilog;
use verilog.vl_types.all;
entity C_COUNTER_BINARY_V7_0 is
    generic(
        C_AINIT_VAL     : string  := "0";
        C_COUNT_BY      : string  := "";
        C_COUNT_MODE    : integer := 0;
        C_COUNT_TO      : string  := "1111111111111111";
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_IV        : integer := 0;
        C_HAS_L         : integer := 0;
        C_HAS_LOAD      : integer := 0;
        C_HAS_Q_THRESH0 : integer := 0;
        C_HAS_Q_THRESH1 : integer := 0;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_HAS_THRESH0   : integer := 0;
        C_HAS_THRESH1   : integer := 0;
        C_HAS_UP        : integer := 0;
        C_LOAD_ENABLE   : integer := 1;
        C_LOAD_LOW      : integer := 0;
        C_PIPE_STAGES   : integer := 0;
        C_RESTRICT_COUNT: integer := 0;
        C_SINIT_VAL     : string  := "0";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1;
        C_THRESH0_VALUE : string  := "1111111111111111";
        C_THRESH1_VALUE : string  := "1111111111111111";
        C_THRESH_EARLY  : integer := 1;
        C_WIDTH         : integer := 16;
        C_OUT_TYPE      : integer := 0
    );
    port(
        CLK             : in     vl_logic;
        UP              : in     vl_logic;
        CE              : in     vl_logic;
        LOAD            : in     vl_logic;
        L               : in     vl_logic_vector;
        IV              : in     vl_logic_vector;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        THRESH0         : out    vl_logic;
        Q_THRESH0       : out    vl_logic;
        THRESH1         : out    vl_logic;
        Q_THRESH1       : out    vl_logic;
        Q               : out    vl_logic_vector
    );
end C_COUNTER_BINARY_V7_0;
