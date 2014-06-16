library verilog;
use verilog.vl_types.all;
entity ROM16X1 is
    generic(
        INIT            : integer := 0
    );
    port(
        O               : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic
    );
end ROM16X1;
