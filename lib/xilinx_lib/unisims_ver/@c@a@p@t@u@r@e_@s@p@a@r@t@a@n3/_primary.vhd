library verilog;
use verilog.vl_types.all;
entity CAPTURE_SPARTAN3 is
    generic(
        ONESHOT         : string  := "FALSE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
end CAPTURE_SPARTAN3;
