library verilog;
use verilog.vl_types.all;
entity C_SHIFT_FD_V5_0 is
    generic(
        C_AINIT_VAL     : string  := "";
        C_ENABLE_RLOCS  : integer := 1;
        C_FILL_DATA     : integer := 5;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_D         : integer := 0;
        C_HAS_LSB_2_MSB : integer := 0;
        C_HAS_Q         : integer := 1;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SDIN      : integer := 1;
        C_HAS_SDOUT     : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_SHIFT_TYPE    : integer := 0;
        C_SINIT_VAL     : string  := "";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1;
        C_WIDTH         : integer := 16
    );
    port(
        LSB_2_MSB       : in     vl_logic;
        SDIN            : in     vl_logic;
        D               : in     vl_logic_vector;
        P_LOAD          : in     vl_logic;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        SDOUT           : out    vl_logic;
        Q               : out    vl_logic_vector
    );
end C_SHIFT_FD_V5_0;
