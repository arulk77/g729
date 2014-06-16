library verilog;
use verilog.vl_types.all;
entity FDC is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        CLR             : in     vl_logic;
        D               : in     vl_logic
    );
end FDC;
