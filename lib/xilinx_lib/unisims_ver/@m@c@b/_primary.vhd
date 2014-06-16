library verilog;
use verilog.vl_types.all;
entity MCB is
    generic(
        ARB_NUM_TIME_SLOTS: integer := 12;
        ARB_TIME_SLOT_0 : integer := 262143;
        ARB_TIME_SLOT_1 : integer := 262143;
        ARB_TIME_SLOT_10: integer := 262143;
        ARB_TIME_SLOT_11: integer := 262143;
        ARB_TIME_SLOT_2 : integer := 262143;
        ARB_TIME_SLOT_3 : integer := 262143;
        ARB_TIME_SLOT_4 : integer := 262143;
        ARB_TIME_SLOT_5 : integer := 262143;
        ARB_TIME_SLOT_6 : integer := 262143;
        ARB_TIME_SLOT_7 : integer := 262143;
        ARB_TIME_SLOT_8 : integer := 262143;
        ARB_TIME_SLOT_9 : integer := 262143;
        CAL_BA          : integer := 0;
        CAL_BYPASS      : string  := "YES";
        CAL_CA          : integer := 0;
        CAL_CALIBRATION_MODE: string  := "NOCALIBRATION";
        CAL_CLK_DIV     : integer := 1;
        CAL_DELAY       : string  := "QUARTER";
        CAL_RA          : integer := 0;
        MEM_ADDR_ORDER  : string  := "BANK_ROW_COLUMN";
        MEM_BA_SIZE     : integer := 3;
        MEM_BURST_LEN   : integer := 8;
        MEM_CAS_LATENCY : integer := 4;
        MEM_CA_SIZE     : integer := 11;
        MEM_DDR1_2_ODS  : string  := "FULL";
        MEM_DDR2_3_HIGH_TEMP_SR: string  := "NORMAL";
        MEM_DDR2_3_PA_SR: string  := "FULL";
        MEM_DDR2_ADD_LATENCY: integer := 0;
        MEM_DDR2_DIFF_DQS_EN: string  := "YES";
        MEM_DDR2_RTT    : string  := "50OHMS";
        MEM_DDR2_WRT_RECOVERY: integer := 4;
        MEM_DDR3_ADD_LATENCY: string  := "OFF";
        MEM_DDR3_AUTO_SR: string  := "ENABLED";
        MEM_DDR3_CAS_LATENCY: integer := 7;
        MEM_DDR3_CAS_WR_LATENCY: integer := 5;
        MEM_DDR3_DYN_WRT_ODT: string  := "OFF";
        MEM_DDR3_ODS    : string  := "DIV7";
        MEM_DDR3_RTT    : string  := "DIV2";
        MEM_DDR3_WRT_RECOVERY: integer := 7;
        MEM_MDDR_ODS    : string  := "FULL";
        MEM_MOBILE_PA_SR: string  := "FULL";
        MEM_MOBILE_TC_SR: integer := 0;
        MEM_RAS_VAL     : integer := 0;
        MEM_RA_SIZE     : integer := 13;
        MEM_RCD_VAL     : integer := 1;
        MEM_REFI_VAL    : integer := 0;
        MEM_RFC_VAL     : integer := 0;
        MEM_RP_VAL      : integer := 0;
        MEM_RTP_VAL     : integer := 0;
        MEM_TYPE        : string  := "DDR3";
        MEM_WIDTH       : integer := 4;
        MEM_WR_VAL      : integer := 0;
        MEM_WTR_VAL     : integer := 3;
        PORT_CONFIG     : string  := "B32_B32_B32_B32"
    );
    port(
        ADDR            : out    vl_logic_vector(14 downto 0);
        BA              : out    vl_logic_vector(2 downto 0);
        CAS             : out    vl_logic;
        CKE             : out    vl_logic;
        DQIOWEN0        : out    vl_logic;
        DQON            : out    vl_logic_vector(15 downto 0);
        DQOP            : out    vl_logic_vector(15 downto 0);
        DQSIOWEN90N     : out    vl_logic;
        DQSIOWEN90P     : out    vl_logic;
        IOIDRPADD       : out    vl_logic;
        IOIDRPADDR      : out    vl_logic_vector(4 downto 0);
        IOIDRPBROADCAST : out    vl_logic;
        IOIDRPCLK       : out    vl_logic;
        IOIDRPCS        : out    vl_logic;
        IOIDRPSDO       : out    vl_logic;
        IOIDRPTRAIN     : out    vl_logic;
        IOIDRPUPDATE    : out    vl_logic;
        LDMN            : out    vl_logic;
        LDMP            : out    vl_logic;
        ODT             : out    vl_logic;
        P0CMDEMPTY      : out    vl_logic;
        P0CMDFULL       : out    vl_logic;
        P0RDCOUNT       : out    vl_logic_vector(6 downto 0);
        P0RDDATA        : out    vl_logic_vector(31 downto 0);
        P0RDEMPTY       : out    vl_logic;
        P0RDERROR       : out    vl_logic;
        P0RDFULL        : out    vl_logic;
        P0RDOVERFLOW    : out    vl_logic;
        P0WRCOUNT       : out    vl_logic_vector(6 downto 0);
        P0WREMPTY       : out    vl_logic;
        P0WRERROR       : out    vl_logic;
        P0WRFULL        : out    vl_logic;
        P0WRUNDERRUN    : out    vl_logic;
        P1CMDEMPTY      : out    vl_logic;
        P1CMDFULL       : out    vl_logic;
        P1RDCOUNT       : out    vl_logic_vector(6 downto 0);
        P1RDDATA        : out    vl_logic_vector(31 downto 0);
        P1RDEMPTY       : out    vl_logic;
        P1RDERROR       : out    vl_logic;
        P1RDFULL        : out    vl_logic;
        P1RDOVERFLOW    : out    vl_logic;
        P1WRCOUNT       : out    vl_logic_vector(6 downto 0);
        P1WREMPTY       : out    vl_logic;
        P1WRERROR       : out    vl_logic;
        P1WRFULL        : out    vl_logic;
        P1WRUNDERRUN    : out    vl_logic;
        P2CMDEMPTY      : out    vl_logic;
        P2CMDFULL       : out    vl_logic;
        P2COUNT         : out    vl_logic_vector(6 downto 0);
        P2EMPTY         : out    vl_logic;
        P2ERROR         : out    vl_logic;
        P2FULL          : out    vl_logic;
        P2RDDATA        : out    vl_logic_vector(31 downto 0);
        P2RDOVERFLOW    : out    vl_logic;
        P2WRUNDERRUN    : out    vl_logic;
        P3CMDEMPTY      : out    vl_logic;
        P3CMDFULL       : out    vl_logic;
        P3COUNT         : out    vl_logic_vector(6 downto 0);
        P3EMPTY         : out    vl_logic;
        P3ERROR         : out    vl_logic;
        P3FULL          : out    vl_logic;
        P3RDDATA        : out    vl_logic_vector(31 downto 0);
        P3RDOVERFLOW    : out    vl_logic;
        P3WRUNDERRUN    : out    vl_logic;
        P4CMDEMPTY      : out    vl_logic;
        P4CMDFULL       : out    vl_logic;
        P4COUNT         : out    vl_logic_vector(6 downto 0);
        P4EMPTY         : out    vl_logic;
        P4ERROR         : out    vl_logic;
        P4FULL          : out    vl_logic;
        P4RDDATA        : out    vl_logic_vector(31 downto 0);
        P4RDOVERFLOW    : out    vl_logic;
        P4WRUNDERRUN    : out    vl_logic;
        P5CMDEMPTY      : out    vl_logic;
        P5CMDFULL       : out    vl_logic;
        P5COUNT         : out    vl_logic_vector(6 downto 0);
        P5EMPTY         : out    vl_logic;
        P5ERROR         : out    vl_logic;
        P5FULL          : out    vl_logic;
        P5RDDATA        : out    vl_logic_vector(31 downto 0);
        P5RDOVERFLOW    : out    vl_logic;
        P5WRUNDERRUN    : out    vl_logic;
        RAS             : out    vl_logic;
        RST             : out    vl_logic;
        SELFREFRESHMODE : out    vl_logic;
        STATUS          : out    vl_logic_vector(31 downto 0);
        UDMN            : out    vl_logic;
        UDMP            : out    vl_logic;
        UOCALSTART      : out    vl_logic;
        UOCMDREADYIN    : out    vl_logic;
        UODATA          : out    vl_logic_vector(7 downto 0);
        UODATAVALID     : out    vl_logic;
        UODONECAL       : out    vl_logic;
        UOREFRSHFLAG    : out    vl_logic;
        UOSDO           : out    vl_logic;
        WE              : out    vl_logic;
        DQI             : in     vl_logic_vector(15 downto 0);
        DQSIOIN         : in     vl_logic;
        DQSIOIP         : in     vl_logic;
        IOIDRPSDI       : in     vl_logic;
        P0ARBEN         : in     vl_logic;
        P0CMDBA         : in     vl_logic_vector(2 downto 0);
        P0CMDBL         : in     vl_logic_vector(5 downto 0);
        P0CMDCA         : in     vl_logic_vector(11 downto 0);
        P0CMDCLK        : in     vl_logic;
        P0CMDEN         : in     vl_logic;
        P0CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P0CMDRA         : in     vl_logic_vector(14 downto 0);
        P0RDCLK         : in     vl_logic;
        P0RDEN          : in     vl_logic;
        P0RWRMASK       : in     vl_logic_vector(3 downto 0);
        P0WRCLK         : in     vl_logic;
        P0WRDATA        : in     vl_logic_vector(31 downto 0);
        P0WREN          : in     vl_logic;
        P1ARBEN         : in     vl_logic;
        P1CMDBA         : in     vl_logic_vector(2 downto 0);
        P1CMDBL         : in     vl_logic_vector(5 downto 0);
        P1CMDCA         : in     vl_logic_vector(11 downto 0);
        P1CMDCLK        : in     vl_logic;
        P1CMDEN         : in     vl_logic;
        P1CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P1CMDRA         : in     vl_logic_vector(14 downto 0);
        P1RDCLK         : in     vl_logic;
        P1RDEN          : in     vl_logic;
        P1RWRMASK       : in     vl_logic_vector(3 downto 0);
        P1WRCLK         : in     vl_logic;
        P1WRDATA        : in     vl_logic_vector(31 downto 0);
        P1WREN          : in     vl_logic;
        P2ARBEN         : in     vl_logic;
        P2CLK           : in     vl_logic;
        P2CMDBA         : in     vl_logic_vector(2 downto 0);
        P2CMDBL         : in     vl_logic_vector(5 downto 0);
        P2CMDCA         : in     vl_logic_vector(11 downto 0);
        P2CMDCLK        : in     vl_logic;
        P2CMDEN         : in     vl_logic;
        P2CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P2CMDRA         : in     vl_logic_vector(14 downto 0);
        P2EN            : in     vl_logic;
        P2WRDATA        : in     vl_logic_vector(31 downto 0);
        P2WRMASK        : in     vl_logic_vector(3 downto 0);
        P3ARBEN         : in     vl_logic;
        P3CLK           : in     vl_logic;
        P3CMDBA         : in     vl_logic_vector(2 downto 0);
        P3CMDBL         : in     vl_logic_vector(5 downto 0);
        P3CMDCA         : in     vl_logic_vector(11 downto 0);
        P3CMDCLK        : in     vl_logic;
        P3CMDEN         : in     vl_logic;
        P3CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P3CMDRA         : in     vl_logic_vector(14 downto 0);
        P3EN            : in     vl_logic;
        P3WRDATA        : in     vl_logic_vector(31 downto 0);
        P3WRMASK        : in     vl_logic_vector(3 downto 0);
        P4ARBEN         : in     vl_logic;
        P4CLK           : in     vl_logic;
        P4CMDBA         : in     vl_logic_vector(2 downto 0);
        P4CMDBL         : in     vl_logic_vector(5 downto 0);
        P4CMDCA         : in     vl_logic_vector(11 downto 0);
        P4CMDCLK        : in     vl_logic;
        P4CMDEN         : in     vl_logic;
        P4CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P4CMDRA         : in     vl_logic_vector(14 downto 0);
        P4EN            : in     vl_logic;
        P4WRDATA        : in     vl_logic_vector(31 downto 0);
        P4WRMASK        : in     vl_logic_vector(3 downto 0);
        P5ARBEN         : in     vl_logic;
        P5CLK           : in     vl_logic;
        P5CMDBA         : in     vl_logic_vector(2 downto 0);
        P5CMDBL         : in     vl_logic_vector(5 downto 0);
        P5CMDCA         : in     vl_logic_vector(11 downto 0);
        P5CMDCLK        : in     vl_logic;
        P5CMDEN         : in     vl_logic;
        P5CMDINSTR      : in     vl_logic_vector(2 downto 0);
        P5CMDRA         : in     vl_logic_vector(14 downto 0);
        P5EN            : in     vl_logic;
        P5WRDATA        : in     vl_logic_vector(31 downto 0);
        P5WRMASK        : in     vl_logic_vector(3 downto 0);
        PLLCE           : in     vl_logic_vector(1 downto 0);
        PLLCLK          : in     vl_logic_vector(1 downto 0);
        PLLLOCK         : in     vl_logic;
        RECAL           : in     vl_logic;
        SELFREFRESHENTER: in     vl_logic;
        SYSRST          : in     vl_logic;
        UDQSIOIN        : in     vl_logic;
        UDQSIOIP        : in     vl_logic;
        UIADD           : in     vl_logic;
        UIADDR          : in     vl_logic_vector(4 downto 0);
        UIBROADCAST     : in     vl_logic;
        UICLK           : in     vl_logic;
        UICMD           : in     vl_logic;
        UICMDEN         : in     vl_logic;
        UICMDIN         : in     vl_logic;
        UICS            : in     vl_logic;
        UIDONECAL       : in     vl_logic;
        UIDQCOUNT       : in     vl_logic_vector(3 downto 0);
        UIDQLOWERDEC    : in     vl_logic;
        UIDQLOWERINC    : in     vl_logic;
        UIDQUPPERDEC    : in     vl_logic;
        UIDQUPPERINC    : in     vl_logic;
        UIDRPUPDATE     : in     vl_logic;
        UILDQSDEC       : in     vl_logic;
        UILDQSINC       : in     vl_logic;
        UIREAD          : in     vl_logic;
        UISDI           : in     vl_logic;
        UIUDQSDEC       : in     vl_logic;
        UIUDQSINC       : in     vl_logic
    );
end MCB;
