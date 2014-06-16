library verilog;
use verilog.vl_types.all;
entity ODDR is
    generic(
        DDR_CLK_EDGE    : string  := "OPPOSITE_EDGE";
        INIT            : integer := 0;
        SRTYPE          : string  := "SYNC"
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end ODDR;
