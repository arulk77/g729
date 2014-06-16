library verilog;
use verilog.vl_types.all;
entity C_MUX_BIT_V6_0 is
    generic(
        C_AINIT_VAL     : string  := "";
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_O         : integer := 0;
        C_HAS_Q         : integer := 1;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_HEIGHT        : integer := 0;
        C_INPUTS        : integer := 2;
        C_LATENCY       : integer := 0;
        C_PIPE_STAGES   : integer := 0;
        C_SEL_WIDTH     : integer := 1;
        C_SINIT_VAL     : string  := "";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1
    );
    port(
        M               : in     vl_logic_vector;
        S               : in     vl_logic_vector;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        O               : out    vl_logic;
        Q               : out    vl_logic
    );
end C_MUX_BIT_V6_0;
