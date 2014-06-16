library verilog;
use verilog.vl_types.all;
entity IOBUFDS_DIFF_OUT_DCIEN is
    generic(
        DIFF_TERM       : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        IO              : inout  vl_logic;
        IOB             : inout  vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        TM              : in     vl_logic;
        TS              : in     vl_logic
    );
end IOBUFDS_DIFF_OUT_DCIEN;
