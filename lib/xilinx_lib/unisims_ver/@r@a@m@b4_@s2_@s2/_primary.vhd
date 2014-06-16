library verilog;
use verilog.vl_types.all;
entity RAMB4_S2_S2 is
    generic(
        SIM_COLLISION_CHECK: string  := "ALL";
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
        DOA             : out    vl_logic_vector(1 downto 0);
        DOB             : out    vl_logic_vector(1 downto 0);
        ADDRA           : in     vl_logic_vector(10 downto 0);
        ADDRB           : in     vl_logic_vector(10 downto 0);
        CLKA            : in     vl_logic;
        CLKB            : in     vl_logic;
        DIA             : in     vl_logic_vector(1 downto 0);
        DIB             : in     vl_logic_vector(1 downto 0);
        ENA             : in     vl_logic;
        ENB             : in     vl_logic;
        RSTA            : in     vl_logic;
        RSTB            : in     vl_logic;
        WEA             : in     vl_logic;
        WEB             : in     vl_logic
    );
end RAMB4_S2_S2;
