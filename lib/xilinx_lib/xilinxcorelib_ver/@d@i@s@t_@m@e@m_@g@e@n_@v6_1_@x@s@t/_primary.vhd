library verilog;
use verilog.vl_types.all;
entity DIST_MEM_GEN_V6_1_XST is
    generic(
        C_FAMILY        : string  := "virtex5";
        C_ADDR_WIDTH    : integer := 6;
        C_DEFAULT_DATA  : string  := "0";
        C_DEPTH         : integer := 64;
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
        C_HAS_SPO       : integer := 1;
        C_HAS_SPRA      : integer := 0;
        C_HAS_WE        : integer := 1;
        C_MEM_INIT_FILE : string  := "null.mif";
        C_ELABORATION_DIR: string  := "./";
        C_MEM_TYPE      : integer := 1;
        C_PIPELINE_STAGES: integer := 0;
        C_QCE_JOINED    : integer := 0;
        C_QUALIFY_WE    : integer := 0;
        C_READ_MIF      : integer := 0;
        C_REG_A_D_INPUTS: integer := 0;
        C_REG_DPRA_INPUT: integer := 0;
        C_SYNC_ENABLE   : integer := 0;
        C_WIDTH         : integer := 16;
        C_PARSER_TYPE   : integer := 1
    );
    port(
        A               : in     vl_logic_vector;
        D               : in     vl_logic_vector;
        DPRA            : in     vl_logic_vector;
        SPRA            : in     vl_logic_vector;
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        I_CE            : in     vl_logic;
        QSPO_CE         : in     vl_logic;
        QDPO_CE         : in     vl_logic;
        QDPO_CLK        : in     vl_logic;
        QSPO_RST        : in     vl_logic;
        QDPO_RST        : in     vl_logic;
        QSPO_SRST       : in     vl_logic;
        QDPO_SRST       : in     vl_logic;
        SPO             : out    vl_logic_vector;
        QSPO            : out    vl_logic_vector;
        DPO             : out    vl_logic_vector;
        QDPO            : out    vl_logic_vector
    );
end DIST_MEM_GEN_V6_1_XST;
