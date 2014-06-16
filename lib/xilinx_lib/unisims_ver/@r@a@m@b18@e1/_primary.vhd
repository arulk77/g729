library verilog;
use verilog.vl_types.all;
entity RAMB18E1 is
    generic(
        DOA_REG         : integer := 0;
        DOB_REG         : integer := 0;
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
        INIT_FILE       : string  := "NONE";
        RAM_MODE        : string  := "TDP";
        RDADDR_COLLISION_HWCONFIG: string  := "DELAYED_WRITE";
        READ_WIDTH_A    : integer := 0;
        READ_WIDTH_B    : integer := 0;
        RSTREG_PRIORITY_A: string  := "RSTREG";
        RSTREG_PRIORITY_B: string  := "RSTREG";
        SIM_COLLISION_CHECK: string  := "ALL";
        SIM_DEVICE      : string  := "VIRTEX6";
        SRVAL_A         : integer := 0;
        SRVAL_B         : integer := 0;
        WRITE_MODE_A    : string  := "WRITE_FIRST";
        WRITE_MODE_B    : string  := "WRITE_FIRST";
        WRITE_WIDTH_A   : integer := 0;
        WRITE_WIDTH_B   : integer := 0
    );
    port(
        DOADO           : out    vl_logic_vector(15 downto 0);
        DOBDO           : out    vl_logic_vector(15 downto 0);
        DOPADOP         : out    vl_logic_vector(1 downto 0);
        DOPBDOP         : out    vl_logic_vector(1 downto 0);
        ADDRARDADDR     : in     vl_logic_vector(13 downto 0);
        ADDRBWRADDR     : in     vl_logic_vector(13 downto 0);
        CLKARDCLK       : in     vl_logic;
        CLKBWRCLK       : in     vl_logic;
        DIADI           : in     vl_logic_vector(15 downto 0);
        DIBDI           : in     vl_logic_vector(15 downto 0);
        DIPADIP         : in     vl_logic_vector(1 downto 0);
        DIPBDIP         : in     vl_logic_vector(1 downto 0);
        ENARDEN         : in     vl_logic;
        ENBWREN         : in     vl_logic;
        REGCEAREGCE     : in     vl_logic;
        REGCEB          : in     vl_logic;
        RSTRAMARSTRAM   : in     vl_logic;
        RSTRAMB         : in     vl_logic;
        RSTREGARSTREG   : in     vl_logic;
        RSTREGB         : in     vl_logic;
        WEA             : in     vl_logic_vector(1 downto 0);
        WEBWE           : in     vl_logic_vector(3 downto 0)
    );
end RAMB18E1;
