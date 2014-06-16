library verilog;
use verilog.vl_types.all;
entity BUFIO2FB is
    generic(
        DIVIDE_BYPASS   : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end BUFIO2FB;
