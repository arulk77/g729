library verilog;
use verilog.vl_types.all;
entity RAM64X1S is
    generic(
        INIT            : integer := 0
    );
    port(
        O               : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        A5              : in     vl_logic;
        D               : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM64X1S;
