library verilog;
use verilog.vl_types.all;
entity FDRE is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic
    );
end FDRE;
