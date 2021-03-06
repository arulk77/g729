library verilog;
use verilog.vl_types.all;
entity C_DIST_MEM_V7_1 is
    generic(
        C_ADDR_WIDTH    : integer := 6;
        C_DEFAULT_DATA  : string  := "0";
        C_DEFAULT_DATA_RADIX: integer := 1;
        C_DEPTH         : integer := 64;
        C_ENABLE_RLOCS  : integer := 1;
        C_GENERATE_MIF  : integer := 0;
        C_HAS_CLK       : integer := 1;
        C_HAS_D         : integer := 1;
        C_HAS_DPO       : integer := 0;
        C_HAS_DPRA      : integer := 0;
        C_HAS_I_CE      : integer := 0;
        C_HAS_QDPO      : integer := 0;
        C_HAS_QDPO_CE   : integer := 0;
        C_HAS_QDPO_CLK  : integer := 0;
        C_HAS_QDPO_RST  : integer := 0;
        C_HAS_QDPO_SRST : integer := 0;
        C_HAS_QSPO      : integer := 0;
        C_HAS_QSPO_CE   : integer := 0;
        C_HAS_QSPO_RST  : integer := 0;
        C_HAS_QSPO_SRST : integer := 0;
        C_HAS_RD_EN     : integer := 0;
        C_HAS_SPO       : integer := 1;
        C_HAS_SPRA      : integer := 0;
        C_HAS_WE        : integer := 1;
        C_LATENCY       : integer := 0;
        C_MEM_INIT_FILE : string  := "null.mif";
        C_MEM_TYPE      : integer := 1;
        C_MUX_TYPE      : integer := 0;
        C_QCE_JOINED    : integer := 0;
        C_QUALIFY_WE    : integer := 0;
        C_READ_MIF      : integer := 0;
        C_REG_A_D_INPUTS: integer := 0;
        C_REG_DPRA_INPUT: integer := 0;
        C_SYNC_ENABLE   : integer := 0;
        C_WIDTH         : integer := 16;
        C_RAM32_FIX     : integer := 0
    );
    port(
        A               : in     vl_logic_vector;
        D               : in     vl_logic_vector;
        DPRA            : in     vl_logic_vector;
        SPRA            : in     vl_logic_vector;
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        I_CE            : in     vl_logic;
        RD_EN           : in     vl_logic;
        QSPO_CE         : in     vl_logic;
        QDPO_CE         : in     vl_logic;
        QDPO_CLK        : in     vl_logic;
        QSPO_RST        : in     vl_logic;
        QDPO_RST        : in     vl_logic;
        QSPO_SRST       : in     vl_logic;
        QDPO_SRST       : in     vl_logic;
        SPO             : out    vl_logic_vector;
        DPO             : out    vl_logic_vector;
        QSPO            : out    vl_logic_vector;
        QDPO            : out    vl_logic_vector
    );
end C_DIST_MEM_V7_1;
