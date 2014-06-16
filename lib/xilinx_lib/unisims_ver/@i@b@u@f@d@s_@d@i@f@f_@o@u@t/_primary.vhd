library verilog;
use verilog.vl_types.all;
entity IBUFDS_DIFF_OUT is
    generic(
        DIFF_TERM       : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_DIFF_OUT;
