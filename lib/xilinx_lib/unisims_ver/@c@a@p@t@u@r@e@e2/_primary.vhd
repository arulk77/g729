library verilog;
use verilog.vl_types.all;
entity CAPTUREE2 is
    generic(
        ONESHOT         : string  := "TRUE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
end CAPTUREE2;
