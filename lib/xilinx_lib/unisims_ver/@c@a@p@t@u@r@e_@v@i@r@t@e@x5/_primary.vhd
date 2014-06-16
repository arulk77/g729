library verilog;
use verilog.vl_types.all;
entity CAPTURE_VIRTEX5 is
    generic(
        ONESHOT         : string  := "TRUE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
end CAPTURE_VIRTEX5;
