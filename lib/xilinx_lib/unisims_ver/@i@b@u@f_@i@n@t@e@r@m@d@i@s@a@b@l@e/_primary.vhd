library verilog;
use verilog.vl_types.all;
entity IBUF_INTERMDISABLE is
    generic(
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        INTERMDISABLE   : in     vl_logic
    );
end IBUF_INTERMDISABLE;
