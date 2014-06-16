library verilog;
use verilog.vl_types.all;
entity BSCAN_VIRTEX6 is
    generic(
        DISABLE_JTAG    : string  := "FALSE";
        JTAG_CHAIN      : integer := 1
    );
    port(
        CAPTURE         : out    vl_logic;
        DRCK            : out    vl_logic;
        RESET           : out    vl_logic;
        RUNTEST         : out    vl_logic;
        SEL             : out    vl_logic;
        SHIFT           : out    vl_logic;
        TCK             : out    vl_logic;
        TDI             : out    vl_logic;
        TMS             : out    vl_logic;
        UPDATE          : out    vl_logic;
        TDO             : in     vl_logic
    );
end BSCAN_VIRTEX6;
