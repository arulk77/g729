library verilog;
use verilog.vl_types.all;
entity DCM_PS is
    generic(
        CLKDV_DIVIDE    : real    := 2.000000;
        CLKFX_DIVIDE    : integer := 1;
        CLKFX_MULTIPLY  : integer := 4;
        CLKIN_DIVIDE_BY_2: string  := "FALSE";
        CLKIN_PERIOD    : real    := 10.000000;
        CLKOUT_PHASE_SHIFT: string  := "NONE";
        CLK_FEEDBACK    : string  := "1X";
        DCM_AUTOCALIBRATION: string  := "TRUE";
        DCM_PERFORMANCE_MODE: string  := "MAX_SPEED";
        DESKEW_ADJUST   : string  := "SYSTEM_SYNCHRONOUS";
        DFS_FREQUENCY_MODE: string  := "LOW";
        DLL_FREQUENCY_MODE: string  := "LOW";
        DUTY_CYCLE_CORRECTION: string  := "TRUE";
        FACTORY_JF      : integer := 61680;
        PHASE_SHIFT     : integer := 0;
        STARTUP_WAIT    : string  := "FALSE"
    );
    port(
        CLK0            : out    vl_logic;
        CLK180          : out    vl_logic;
        CLK270          : out    vl_logic;
        CLK2X           : out    vl_logic;
        CLK2X180        : out    vl_logic;
        CLK90           : out    vl_logic;
        CLKDV           : out    vl_logic;
        CLKFX           : out    vl_logic;
        CLKFX180        : out    vl_logic;
        DO              : out    vl_logic_vector(15 downto 0);
        LOCKED          : out    vl_logic;
        PSDONE          : out    vl_logic;
        CLKFB           : in     vl_logic;
        CLKIN           : in     vl_logic;
        PSCLK           : in     vl_logic;
        PSEN            : in     vl_logic;
        PSINCDEC        : in     vl_logic;
        RST             : in     vl_logic
    );
end DCM_PS;
