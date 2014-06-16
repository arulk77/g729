library verilog;
use verilog.vl_types.all;
entity BUFGMUX_1 is
    generic(
        CLK_SEL_TYPE    : string  := "SYNC"
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic
    );
end BUFGMUX_1;
