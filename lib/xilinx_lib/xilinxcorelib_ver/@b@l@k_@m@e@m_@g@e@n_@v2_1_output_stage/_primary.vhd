library verilog;
use verilog.vl_types.all;
entity BLK_MEM_GEN_V2_1_output_stage is
    generic(
        C_DATA_WIDTH    : integer := 32;
        C_HAS_SSR       : integer := 1;
        C_SINIT_VAL     : string  := "0";
        C_HAS_REGCE     : integer := 1;
        C_HAS_EN        : integer := 1;
        C_FAMILY        : string  := "virtex5";
        num_stages      : integer := 1;
        flop_delay      : integer := 100
    );
    port(
        CLK             : in     vl_logic;
        SSR             : in     vl_logic;
        REGCE           : in     vl_logic;
        EN              : in     vl_logic;
        DIN             : in     vl_logic_vector;
        DOUT            : out    vl_logic_vector
    );
end BLK_MEM_GEN_V2_1_output_stage;
