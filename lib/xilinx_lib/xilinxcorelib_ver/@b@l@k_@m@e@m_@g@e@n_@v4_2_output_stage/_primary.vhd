library verilog;
use verilog.vl_types.all;
entity BLK_MEM_GEN_V4_2_output_stage is
    generic(
        C_FAMILY        : string  := "virtex5";
        C_XDEVICEFAMILY : string  := "virtex5";
        C_RST_TYPE      : string  := "SYNC";
        C_HAS_RST       : integer := 0;
        C_RSTRAM        : integer := 0;
        C_RST_PRIORITY  : string  := "CE";
        C_INIT_VAL      : string  := "0";
        C_HAS_EN        : integer := 0;
        C_HAS_REGCE     : integer := 0;
        C_DATA_WIDTH    : integer := 32;
        C_ADDRB_WIDTH   : integer := 10;
        C_HAS_MEM_OUTPUT_REGS: integer := 0;
        C_USE_SOFTECC   : integer := 0;
        C_USE_ECC       : integer := 0;
        NUM_STAGES      : integer := 1;
        FLOP_DELAY      : integer := 100
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        REGCE           : in     vl_logic;
        DIN             : in     vl_logic_vector;
        DOUT            : out    vl_logic_vector;
        SBITERR_IN      : in     vl_logic;
        DBITERR_IN      : in     vl_logic;
        SBITERR         : out    vl_logic;
        DBITERR         : out    vl_logic;
        RDADDRECC_IN    : in     vl_logic_vector;
        RDADDRECC       : out    vl_logic_vector
    );
end BLK_MEM_GEN_V4_2_output_stage;
