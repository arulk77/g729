library verilog;
use verilog.vl_types.all;
entity DSP48 is
    generic(
        AREG            : integer := 1;
        BREG            : integer := 1;
        B_INPUT         : string  := "DIRECT";
        CARRYINREG      : integer := 1;
        CARRYINSELREG   : integer := 1;
        CREG            : integer := 1;
        LEGACY_MODE     : string  := "MULT18X18S";
        MREG            : integer := 1;
        OPMODEREG       : integer := 1;
        PREG            : integer := 1;
        SUBTRACTREG     : integer := 1
    );
    port(
        BCOUT           : out    vl_logic_vector(17 downto 0);
        P               : out    vl_logic_vector(47 downto 0);
        PCOUT           : out    vl_logic_vector(47 downto 0);
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0);
        BCIN            : in     vl_logic_vector(17 downto 0);
        C               : in     vl_logic_vector(47 downto 0);
        CARRYIN         : in     vl_logic;
        CARRYINSEL      : in     vl_logic_vector(1 downto 0);
        CEA             : in     vl_logic;
        CEB             : in     vl_logic;
        CEC             : in     vl_logic;
        CECARRYIN       : in     vl_logic;
        CECINSUB        : in     vl_logic;
        CECTRL          : in     vl_logic;
        CEM             : in     vl_logic;
        CEP             : in     vl_logic;
        CLK             : in     vl_logic;
        OPMODE          : in     vl_logic_vector(6 downto 0);
        PCIN            : in     vl_logic_vector(47 downto 0);
        RSTA            : in     vl_logic;
        RSTB            : in     vl_logic;
        RSTC            : in     vl_logic;
        RSTCARRYIN      : in     vl_logic;
        RSTCTRL         : in     vl_logic;
        RSTM            : in     vl_logic;
        RSTP            : in     vl_logic;
        SUBTRACT        : in     vl_logic
    );
end DSP48;
