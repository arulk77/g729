library verilog;
use verilog.vl_types.all;
entity IDDR2 is
    generic(
        DDR_ALIGNMENT   : string  := "NONE";
        INIT_Q0         : integer := 0;
        INIT_Q1         : integer := 0;
        SRTYPE          : string  := "SYNC"
    );
    port(
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end IDDR2;
