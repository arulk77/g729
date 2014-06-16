library verilog;
use verilog.vl_types.all;
entity LUT6_2 is
    generic(
        INIT            : integer := 0
    );
    port(
        O5              : out    vl_logic;
        O6              : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic
    );
end LUT6_2;
