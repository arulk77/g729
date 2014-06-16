library verilog;
use verilog.vl_types.all;
entity CAPTURE_FPGACORE is
    generic(
        ONESHOT         : string  := "FALSE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
end CAPTURE_FPGACORE;
