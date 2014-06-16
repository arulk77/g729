library verilog;
use verilog.vl_types.all;
entity BLK_MEM_GEN_V5_2_mem_module is
    generic(
        C_CORENAME      : string  := "blk_mem_gen_v5_2";
        C_FAMILY        : string  := "virtex6";
        C_XDEVICEFAMILY : string  := "virtex6";
        C_MEM_TYPE      : integer := 2;
        C_BYTE_SIZE     : integer := 9;
        C_ALGORITHM     : integer := 1;
        C_PRIM_TYPE     : integer := 3;
        C_LOAD_INIT_FILE: integer := 0;
        C_INIT_FILE_NAME: string  := "";
        C_USE_DEFAULT_DATA: integer := 0;
        C_DEFAULT_DATA  : string  := "0";
        C_RST_TYPE      : string  := "SYNC";
        C_HAS_RSTA      : integer := 0;
        C_RST_PRIORITY_A: string  := "CE";
        C_RSTRAM_A      : integer := 0;
        C_INITA_VAL     : string  := "0";
        C_HAS_ENA       : integer := 1;
        C_HAS_REGCEA    : integer := 0;
        C_USE_BYTE_WEA  : integer := 0;
        C_WEA_WIDTH     : integer := 1;
        C_WRITE_MODE_A  : string  := "WRITE_FIRST";
        C_WRITE_WIDTH_A : integer := 32;
        C_READ_WIDTH_A  : integer := 32;
        C_WRITE_DEPTH_A : integer := 64;
        C_READ_DEPTH_A  : integer := 64;
        C_ADDRA_WIDTH   : integer := 5;
        C_HAS_RSTB      : integer := 0;
        C_RST_PRIORITY_B: string  := "CE";
        C_RSTRAM_B      : integer := 0;
        C_INITB_VAL     : string  := "0";
        C_HAS_ENB       : integer := 1;
        C_HAS_REGCEB    : integer := 0;
        C_USE_BYTE_WEB  : integer := 0;
        C_WEB_WIDTH     : integer := 1;
        C_WRITE_MODE_B  : string  := "WRITE_FIRST";
        C_WRITE_WIDTH_B : integer := 32;
        C_READ_WIDTH_B  : integer := 32;
        C_WRITE_DEPTH_B : integer := 64;
        C_READ_DEPTH_B  : integer := 64;
        C_ADDRB_WIDTH   : integer := 5;
        C_HAS_MEM_OUTPUT_REGS_A: integer := 0;
        C_HAS_MEM_OUTPUT_REGS_B: integer := 0;
        C_HAS_MUX_OUTPUT_REGS_A: integer := 0;
        C_HAS_MUX_OUTPUT_REGS_B: integer := 0;
        C_HAS_SOFTECC_INPUT_REGS_A: integer := 0;
        C_HAS_SOFTECC_OUTPUT_REGS_B: integer := 0;
        C_MUX_PIPELINE_STAGES: integer := 0;
        C_USE_SOFTECC   : integer := 0;
        C_USE_ECC       : integer := 0;
        C_HAS_INJECTERR : integer := 0;
        C_SIM_COLLISION_CHECK: string  := "NONE";
        C_COMMON_CLK    : integer := 1;
        FLOP_DELAY      : integer := 100;
        C_DISABLE_WARN_BHV_COLL: integer := 0;
        C_DISABLE_WARN_BHV_RANGE: integer := 0
    );
    port(
        CLKA            : in     vl_logic;
        RSTA            : in     vl_logic;
        ENA             : in     vl_logic;
        REGCEA          : in     vl_logic;
        WEA             : in     vl_logic_vector;
        ADDRA           : in     vl_logic_vector;
        DINA            : in     vl_logic_vector;
        DOUTA           : out    vl_logic_vector;
        CLKB            : in     vl_logic;
        RSTB            : in     vl_logic;
        ENB             : in     vl_logic;
        REGCEB          : in     vl_logic;
        WEB             : in     vl_logic_vector;
        ADDRB           : in     vl_logic_vector;
        DINB            : in     vl_logic_vector;
        DOUTB           : out    vl_logic_vector;
        INJECTSBITERR   : in     vl_logic;
        INJECTDBITERR   : in     vl_logic;
        SBITERR         : out    vl_logic;
        DBITERR         : out    vl_logic;
        RDADDRECC       : out    vl_logic_vector
    );
end BLK_MEM_GEN_V5_2_mem_module;
