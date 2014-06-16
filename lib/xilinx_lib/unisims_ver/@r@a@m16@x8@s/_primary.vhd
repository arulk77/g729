library verilog;
use verilog.vl_types.all;
entity RAM16X8S is
    generic(
        INIT_00         : integer := 0;
        INIT_01         : integer := 0;
        INIT_02         : integer := 0;
        INIT_03         : integer := 0;
        INIT_04         : integer := 0;
        INIT_05         : integer := 0;
        INIT_06         : integer := 0;
        INIT_07         : integer := 0
    );
    port(
        O               : out    vl_logic_vector(7 downto 0);
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM16X8S;
