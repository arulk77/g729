library verilog;
use verilog.vl_types.all;
entity BUFIO2 is
    generic(
        DIVIDE_BYPASS   : string  := "TRUE";
        DIVIDE          : integer := 1;
        I_INVERT        : string  := "FALSE";
        USE_DOUBLER     : string  := "FALSE"
    );
    port(
        DIVCLK          : out    vl_logic;
        IOCLK           : out    vl_logic;
        SERDESSTROBE    : out    vl_logic;
        I               : in     vl_logic
    );
end BUFIO2;
