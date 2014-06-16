library verilog;
use verilog.vl_types.all;
entity SYSMON is
    generic(
        INIT_40         : integer := 0;
        INIT_41         : integer := 0;
        INIT_42         : integer := 2048;
        INIT_43         : integer := 0;
        INIT_44         : integer := 0;
        INIT_45         : integer := 0;
        INIT_46         : integer := 0;
        INIT_47         : integer := 0;
        INIT_48         : integer := 0;
        INIT_49         : integer := 0;
        INIT_4A         : integer := 0;
        INIT_4B         : integer := 0;
        INIT_4C         : integer := 0;
        INIT_4D         : integer := 0;
        INIT_4E         : integer := 0;
        INIT_4F         : integer := 0;
        INIT_50         : integer := 0;
        INIT_51         : integer := 0;
        INIT_52         : integer := 0;
        INIT_53         : integer := 0;
        INIT_54         : integer := 0;
        INIT_55         : integer := 0;
        INIT_56         : integer := 0;
        INIT_57         : integer := 0;
        SIM_DEVICE      : string  := "VIRTEX5";
        SIM_MONITOR_FILE: string  := "design.txt"
    );
    port(
        ALM             : out    vl_logic_vector(2 downto 0);
        BUSY            : out    vl_logic;
        CHANNEL         : out    vl_logic_vector(4 downto 0);
        DO              : out    vl_logic_vector(15 downto 0);
        DRDY            : out    vl_logic;
        EOC             : out    vl_logic;
        EOS             : out    vl_logic;
        JTAGBUSY        : out    vl_logic;
        JTAGLOCKED      : out    vl_logic;
        JTAGMODIFIED    : out    vl_logic;
        OT              : out    vl_logic;
        CONVST          : in     vl_logic;
        CONVSTCLK       : in     vl_logic;
        DADDR           : in     vl_logic_vector(6 downto 0);
        DCLK            : in     vl_logic;
        DEN             : in     vl_logic;
        DI              : in     vl_logic_vector(15 downto 0);
        DWE             : in     vl_logic;
        RESET           : in     vl_logic;
        VAUXN           : in     vl_logic_vector(15 downto 0);
        VAUXP           : in     vl_logic_vector(15 downto 0);
        VN              : in     vl_logic;
        VP              : in     vl_logic
    );
end SYSMON;
