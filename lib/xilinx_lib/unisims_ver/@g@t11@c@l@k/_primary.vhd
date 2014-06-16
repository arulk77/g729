library verilog;
use verilog.vl_types.all;
entity GT11CLK is
    generic(
        REFCLKSEL       : string  := "MGTCLK";
        SYNCLK1OUTEN    : string  := "ENABLE";
        SYNCLK2OUTEN    : string  := "DISABLE"
    );
    port(
        SYNCLK1OUT      : out    vl_logic;
        SYNCLK2OUT      : out    vl_logic;
        MGTCLKN         : in     vl_logic;
        MGTCLKP         : in     vl_logic;
        REFCLK          : in     vl_logic;
        RXBCLK          : in     vl_logic;
        SYNCLK1IN       : in     vl_logic;
        SYNCLK2IN       : in     vl_logic
    );
end GT11CLK;
