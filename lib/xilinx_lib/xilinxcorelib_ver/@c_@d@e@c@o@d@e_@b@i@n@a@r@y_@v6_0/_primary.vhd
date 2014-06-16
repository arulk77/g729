library verilog;
use verilog.vl_types.all;
entity C_DECODE_BINARY_V6_0 is
    generic(
        C_AINIT_VAL     : string  := "";
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_EN        : integer := 0;
        C_HAS_O         : integer := 0;
        C_HAS_Q         : integer := 1;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_HEIGHT        : integer := 0;
        C_OUT_HIGH      : integer := 1;
        C_OUT_WIDTH     : integer := 8;
        C_PIPE_STAGES   : integer := 1;
        C_SEL_WIDTH     : integer := 3;
        C_SINIT_VAL     : string  := "";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1
    );
    port(
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        CE              : in     vl_logic;
        S               : in     vl_logic_vector;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        O               : out    vl_logic_vector;
        Q               : out    vl_logic_vector
    );
end C_DECODE_BINARY_V6_0;
