library verilog;
use verilog.vl_types.all;
entity LUT5_L is
    generic(
        INIT            : integer := 0
    );
    port(
        LO              : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic
    );
end LUT5_L;
