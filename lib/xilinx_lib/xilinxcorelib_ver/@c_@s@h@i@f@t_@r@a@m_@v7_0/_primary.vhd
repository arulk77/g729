library verilog;
use verilog.vl_types.all;
entity C_SHIFT_RAM_V7_0 is
    generic(
        C_ADDR_WIDTH    : integer := 4;
        C_AINIT_VAL     : string  := "";
        C_DEFAULT_DATA  : string  := "0";
        C_DEFAULT_DATA_RADIX: integer := 1;
        C_DEPTH         : integer := 16;
        C_ENABLE_RLOCS  : integer := 1;
        C_GENERATE_MIF  : integer := 0;
        C_HAS_A         : integer := 0;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_MEM_INIT_FILE : string  := "null.mif";
        C_MEM_INIT_RADIX: integer := 1;
        C_READ_MIF      : integer := 0;
        C_REG_LAST_BIT  : integer := 0;
        C_SHIFT_TYPE    : integer := 0;
        C_SINIT_VAL     : string  := "";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1;
        C_WIDTH         : integer := 16
    );
    port(
        A               : in     vl_logic_vector;
        D               : in     vl_logic_vector;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        Q               : out    vl_logic_vector
    );
end C_SHIFT_RAM_V7_0;
