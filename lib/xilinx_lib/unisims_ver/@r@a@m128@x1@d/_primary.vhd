library verilog;
use verilog.vl_types.all;
entity RAM128X1D is
    generic(
        INIT            : integer := 0
    );
    port(
        DPO             : out    vl_logic;
        SPO             : out    vl_logic;
        A               : in     vl_logic_vector(6 downto 0);
        D               : in     vl_logic;
        DPRA            : in     vl_logic_vector(6 downto 0);
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM128X1D;
