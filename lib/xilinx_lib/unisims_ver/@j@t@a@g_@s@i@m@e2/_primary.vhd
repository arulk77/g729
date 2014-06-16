library verilog;
use verilog.vl_types.all;
entity JTAG_SIME2 is
    generic(
        PART_NAME       : string  := "7A8"
    );
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic
    );
end JTAG_SIME2;
