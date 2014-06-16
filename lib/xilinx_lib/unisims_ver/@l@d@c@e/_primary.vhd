library verilog;
use verilog.vl_types.all;
entity LDCE is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        CLR             : in     vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic;
        GE              : in     vl_logic
    );
end LDCE;
