library verilog;
use verilog.vl_types.all;
entity RAMB16BWE_S36_S18 is
    generic(
        INITP_00        : integer := 0;
        INITP_01        : integer := 0;
        INITP_02        : integer := 0;
        INITP_03        : integer := 0;
        INITP_04        : integer := 0;
        INITP_05        : integer := 0;
        INITP_06        : integer := 0;
        INITP_07        : integer := 0;
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
        INIT_0F         : integer := 0;
        INIT_10         : integer := 0;
        INIT_11         : integer := 0;
        INIT_12         : integer := 0;
        INIT_13         : integer := 0;
        INIT_14         : integer := 0;
        INIT_15         : integer := 0;
        INIT_16         : integer := 0;
        INIT_17         : integer := 0;
        INIT_18         : integer := 0;
        INIT_19         : integer := 0;
        INIT_1A         : integer := 0;
        INIT_1B         : integer := 0;
        INIT_1C         : integer := 0;
        INIT_1D         : integer := 0;
        INIT_1E         : integer := 0;
        INIT_1F         : integer := 0;
        INIT_20         : integer := 0;
        INIT_21         : integer := 0;
        INIT_22         : integer := 0;
        INIT_23         : integer := 0;
        INIT_24         : integer := 0;
        INIT_25         : integer := 0;
        INIT_26         : integer := 0;
        INIT_27         : integer := 0;
        INIT_28         : integer := 0;
        INIT_29         : integer := 0;
        INIT_2A         : integer := 0;
        INIT_2B         : integer := 0;
        INIT_2C         : integer := 0;
        INIT_2D         : integer := 0;
        INIT_2E         : integer := 0;
        INIT_2F         : integer := 0;
        INIT_30         : integer := 0;
        INIT_31         : integer := 0;
        INIT_32         : integer := 0;
        INIT_33         : integer := 0;
        INIT_34         : integer := 0;
        INIT_35         : integer := 0;
        INIT_36         : integer := 0;
        INIT_37         : integer := 0;
        INIT_38         : integer := 0;
        INIT_39         : integer := 0;
        INIT_3A         : integer := 0;
        INIT_3B         : integer := 0;
        INIT_3C         : integer := 0;
        INIT_3D         : integer := 0;
        INIT_3E         : integer := 0;
        INIT_3F         : integer := 0;
        INIT_A          : integer := 0;
        INIT_B          : integer := 0;
        SIM_COLLISION_CHECK: string  := "ALL";
        SRVAL_A         : integer := 0;
        SRVAL_B         : integer := 0;
        WRITE_MODE_A    : string  := "WRITE_FIRST";
        WRITE_MODE_B    : string  := "WRITE_FIRST"
    );
    port(
        DOA             : out    vl_logic_vector(31 downto 0);
        DOB             : out    vl_logic_vector(15 downto 0);
        DOPA            : out    vl_logic_vector(3 downto 0);
        DOPB            : out    vl_logic_vector(1 downto 0);
        ADDRA           : in     vl_logic_vector(8 downto 0);
        ADDRB           : in     vl_logic_vector(9 downto 0);
        CLKA            : in     vl_logic;
        CLKB            : in     vl_logic;
        DIA             : in     vl_logic_vector(31 downto 0);
        DIB             : in     vl_logic_vector(15 downto 0);
        DIPA            : in     vl_logic_vector(3 downto 0);
        DIPB            : in     vl_logic_vector(1 downto 0);
        ENA             : in     vl_logic;
        ENB             : in     vl_logic;
        SSRA            : in     vl_logic;
        SSRB            : in     vl_logic;
        WEA             : in     vl_logic_vector(3 downto 0);
        WEB             : in     vl_logic_vector(1 downto 0)
    );
end RAMB16BWE_S36_S18;
