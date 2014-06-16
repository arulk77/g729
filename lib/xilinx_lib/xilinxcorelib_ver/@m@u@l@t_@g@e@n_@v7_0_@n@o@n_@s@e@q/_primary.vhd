library verilog;
use verilog.vl_types.all;
entity MULT_GEN_V7_0_NON_SEQ is
    generic(
        BRAM_ADDR_WIDTH : integer := 8;
        C_A_TYPE        : integer := 0;
        C_A_WIDTH       : integer := 16;
        C_BAAT          : integer := 2;
        C_B_CONSTANT    : integer := 0;
        C_B_TYPE        : integer := 0;
        C_B_VALUE       : string  := "0000000000000001";
        C_B_WIDTH       : integer := 16;
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_A_SIGNED  : integer := 0;
        C_HAS_B         : integer := 1;
        C_HAS_CE        : integer := 0;
        C_HAS_LOADB     : integer := 0;
        C_HAS_LOAD_DONE : integer := 0;
        C_HAS_ND        : integer := 0;
        C_HAS_O         : integer := 0;
        C_HAS_Q         : integer := 1;
        C_HAS_RDY       : integer := 0;
        C_HAS_RFD       : integer := 0;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SWAPB     : integer := 0;
        C_MEM_INIT_PREFIX: string  := "mem";
        C_MEM_TYPE      : integer := 0;
        C_MULT_TYPE     : integer := 0;
        C_OUTPUT_HOLD   : integer := 0;
        C_OUT_WIDTH     : integer := 16;
        C_PIPELINE      : integer := 0;
        C_PRE_DELAY     : integer := 0;
        C_REG_A_B_INPUTS: integer := 1;
        C_SQM_TYPE      : integer := 0;
        C_STACK_ADDERS  : integer := 0;
        C_STANDALONE    : integer := 0;
        C_SYNC_ENABLE   : integer := 0;
        C_USE_LUTS      : integer := 1;
        rfd_stages      : integer := 1
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        CLK             : in     vl_logic;
        A_SIGNED        : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        SCLR            : in     vl_logic;
        LOADB           : in     vl_logic;
        LOAD_DONE       : out    vl_logic;
        SWAPB           : in     vl_logic;
        RFD             : out    vl_logic;
        ND              : in     vl_logic;
        RDY             : out    vl_logic;
        O               : out    vl_logic_vector;
        Q               : out    vl_logic_vector
    );
end MULT_GEN_V7_0_NON_SEQ;
