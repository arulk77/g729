library verilog;
use verilog.vl_types.all;
entity C_COMPARE_V4_0 is
    generic(
        C_AINIT_VAL     : string  := "";
        C_B_CONSTANT    : integer := 0;
        C_B_VALUE       : string  := "";
        C_DATA_TYPE     : integer := 1;
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_A_EQ_B    : integer := 1;
        C_HAS_A_GE_B    : integer := 0;
        C_HAS_A_GT_B    : integer := 0;
        C_HAS_A_LE_B    : integer := 0;
        C_HAS_A_LT_B    : integer := 0;
        C_HAS_A_NE_B    : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_QA_EQ_B   : integer := 0;
        C_HAS_QA_GE_B   : integer := 0;
        C_HAS_QA_GT_B   : integer := 0;
        C_HAS_QA_LE_B   : integer := 0;
        C_HAS_QA_LT_B   : integer := 0;
        C_HAS_QA_NE_B   : integer := 0;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_PIPE_STAGES   : integer := 1;
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1;
        C_WIDTH         : integer := 16
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        A_EQ_B          : out    vl_logic;
        A_NE_B          : out    vl_logic;
        A_LT_B          : out    vl_logic;
        A_GT_B          : out    vl_logic;
        A_LE_B          : out    vl_logic;
        A_GE_B          : out    vl_logic;
        QA_EQ_B         : out    vl_logic;
        QA_NE_B         : out    vl_logic;
        QA_LT_B         : out    vl_logic;
        QA_GT_B         : out    vl_logic;
        QA_LE_B         : out    vl_logic;
        QA_GE_B         : out    vl_logic
    );
end C_COMPARE_V4_0;
