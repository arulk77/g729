library verilog;
use verilog.vl_types.all;
entity IODRP2_MCB is
    generic(
        DATA_RATE       : string  := "SDR";
        IDELAY_VALUE    : integer := 0;
        MCB_ADDRESS     : integer := 0;
        ODELAY_VALUE    : integer := 0;
        SERDES_MODE     : string  := "NONE";
        SIM_TAPDELAY_VALUE: integer := 75
    );
    port(
        AUXSDO          : out    vl_logic;
        DATAOUT         : out    vl_logic;
        DATAOUT2        : out    vl_logic;
        DOUT            : out    vl_logic;
        DQSOUTN         : out    vl_logic;
        DQSOUTP         : out    vl_logic;
        SDO             : out    vl_logic;
        TOUT            : out    vl_logic;
        ADD             : in     vl_logic;
        AUXADDR         : in     vl_logic_vector(4 downto 0);
        AUXSDOIN        : in     vl_logic;
        BKST            : in     vl_logic;
        CLK             : in     vl_logic;
        CS              : in     vl_logic;
        IDATAIN         : in     vl_logic;
        IOCLK0          : in     vl_logic;
        IOCLK1          : in     vl_logic;
        MEMUPDATE       : in     vl_logic;
        ODATAIN         : in     vl_logic;
        SDI             : in     vl_logic;
        T               : in     vl_logic
    );
end IODRP2_MCB;
