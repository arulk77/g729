library verilog;
use verilog.vl_types.all;
entity LDE_1 is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic;
        GE              : in     vl_logic
    );
end LDE_1;
