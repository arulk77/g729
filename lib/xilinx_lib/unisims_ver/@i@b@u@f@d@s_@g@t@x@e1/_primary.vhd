library verilog;
use verilog.vl_types.all;
entity IBUFDS_GTXE1 is
    generic(
        CLKCM_CFG       : string  := "TRUE";
        CLKRCV_TRST     : string  := "TRUE";
        REFCLKOUT_DLY   : integer := 0
    );
    port(
        O               : out    vl_logic;
        ODIV2           : out    vl_logic;
        CEB             : in     vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_GTXE1;
