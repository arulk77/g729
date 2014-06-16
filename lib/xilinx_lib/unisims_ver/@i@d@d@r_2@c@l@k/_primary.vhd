library verilog;
use verilog.vl_types.all;
entity IDDR_2CLK is
    generic(
        DDR_CLK_EDGE    : string  := "OPPOSITE_EDGE";
        INIT_Q1         : integer := 0;
        INIT_Q2         : integer := 0;
        SRTYPE          : string  := "SYNC"
    );
    port(
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        C               : in     vl_logic;
        CB              : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end IDDR_2CLK;
