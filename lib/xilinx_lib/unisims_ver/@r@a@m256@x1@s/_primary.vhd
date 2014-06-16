library verilog;
use verilog.vl_types.all;
entity RAM256X1S is
    generic(
        INIT            : integer := 0
    );
    port(
        O               : out    vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        D               : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM256X1S;
