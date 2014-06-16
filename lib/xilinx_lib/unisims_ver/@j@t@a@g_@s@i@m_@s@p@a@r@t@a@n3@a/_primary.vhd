library verilog;
use verilog.vl_types.all;
entity JTAG_SIM_SPARTAN3A is
    generic(
        PART_NAME       : string  := "3S200A"
    );
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic
    );
end JTAG_SIM_SPARTAN3A;
