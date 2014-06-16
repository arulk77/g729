library verilog;
use verilog.vl_types.all;
entity CAPTURE_SPARTAN3A is
    generic(
        ONESHOT         : string  := "TRUE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
end CAPTURE_SPARTAN3A;
