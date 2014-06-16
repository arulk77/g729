library verilog;
use verilog.vl_types.all;
entity RAMB4_S8 is
    generic(
        INIT_00         : integer := 0;
        INIT_01         : integer := 0;
        INIT_02         : integer := 0;
        INIT_03         : integer := 0;
        INIT_04         : integer := 0;
        INIT_05         : integer := 0;
        INIT_06         : integer := 0;
        INIT_07         : integer := 0;
        INIT_08         : integer := 0;
        INIT_09         : integer := 0;
        INIT_0A         : integer := 0;
        INIT_0B         : integer := 0;
        INIT_0C         : integer := 0;
        INIT_0D         : integer := 0;
        INIT_0E         : integer := 0;
        INIT_0F         : integer := 0
    );
    port(
        DO              : out    vl_logic_vector(7 downto 0);
        ADDR            : in     vl_logic_vector(8 downto 0);
        CLK             : in     vl_logic;
        DI              : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic;
        RST             : in     vl_logic;
        WE              : in     vl_logic
    );
end RAMB4_S8;
