library verilog;
use verilog.vl_types.all;
entity ROM256X1 is
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
        A6              : in     vl_logic;
        A7              : in     vl_logic
    );
end ROM256X1;
