library verilog;
use verilog.vl_types.all;
entity LD is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic
    );
end LD;
