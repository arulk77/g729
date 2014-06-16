library verilog;
use verilog.vl_types.all;
entity C_DA_FIR_V7_0 is
    generic(
        C_BAAT          : integer := 16;
        C_CHANNELS      : integer := 1;
        C_COEFF_TYPE    : integer := 0;
        C_COEFF_WIDTH   : integer := 16;
        C_DATA_TYPE     : integer := 0;
        C_DATA_WIDTH    : integer := 16;
        C_ENABLE_RLOCS  : integer := 0;
        C_FILTER_TYPE   : integer := 0;
        C_HAS_RESET     : integer := 0;
        C_HAS_SEL_I     : integer := 0;
        C_HAS_SEL_O     : integer := 0;
        C_HAS_SIN_F     : integer := 0;
        C_HAS_SIN_R     : integer := 0;
        C_HAS_SOUT_F    : integer := 0;
        C_HAS_SOUT_R    : integer := 0;
        C_LATENCY       : integer := 9;
        C_MEM_INIT_FILE : string  := "std_12_coef.mif";
        C_OPTIMIZE      : integer := 0;
        C_POLYPHASE_FACTOR: integer := 1;
        C_REG_OUTPUT    : integer := 1;
        C_RELOAD        : integer := 0;
        C_RELOAD_DELAY  : integer := 0;
        C_RELOAD_MEM_TYPE: integer := 0;
        C_RESPONSE      : integer := 1;
        C_RESULT_WIDTH  : integer := 36;
        C_SATURATE      : integer := 0;
        C_SHAPE         : integer := 0;
        C_TAPS          : integer := 12;
        C_USE_MODEL_FUNC: integer := 0;
        C_ZPF           : integer := 1
    );
    port(
        DIN             : in     vl_logic_vector;
        ND              : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        COEF_LD         : in     vl_logic;
        LD_DIN          : in     vl_logic_vector;
        LD_WE           : in     vl_logic;
        DOUT            : out    vl_logic_vector;
        DOUT_I          : out    vl_logic_vector;
        DOUT_Q          : out    vl_logic_vector;
        RDY             : out    vl_logic;
        RFD             : out    vl_logic;
        SEL_I           : out    vl_logic_vector;
        SEL_O           : out    vl_logic_vector;
        CAS_F_IN        : in     vl_logic_vector;
        CAS_R_IN        : in     vl_logic_vector;
        CAS_F_OUT       : out    vl_logic_vector;
        CAS_R_OUT       : out    vl_logic_vector
    );
end C_DA_FIR_V7_0;
