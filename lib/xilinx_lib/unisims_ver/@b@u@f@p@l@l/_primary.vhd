library verilog;
use verilog.vl_types.all;
entity BUFPLL is
    generic(
        DIVIDE          : integer := 1;
        ENABLE_SYNC     : string  := "TRUE"
    );
    port(
        IOCLK           : out    vl_logic;
        LOCK            : out    vl_logic;
        SERDESSTROBE    : out    vl_logic;
        GCLK            : in     vl_logic;
        LOCKED          : in     vl_logic;
        PLLIN           : in     vl_logic
    );
end BUFPLL;
