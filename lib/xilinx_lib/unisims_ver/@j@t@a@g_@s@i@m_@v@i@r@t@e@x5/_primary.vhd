library verilog;
use verilog.vl_types.all;
entity JTAG_SIM_VIRTEX5 is
    generic(
        PART_NAME       : string  := "LX30"
    );
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic
    );
end JTAG_SIM_VIRTEX5;