library verilog;
use verilog.vl_types.all;
entity CLKDLLE is
    generic(
        CLKDV_DIVIDE    : real    := 2.000000;
        DUTY_CYCLE_CORRECTION: string  := "TRUE";
        FACTORY_JF      : integer := 49280;
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
        LOCKED          : out    vl_logic;
        CLKFB           : in     vl_logic;
        CLKIN           : in     vl_logic;
        RST             : in     vl_logic
    );
end CLKDLLE;
