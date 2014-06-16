library verilog;
use verilog.vl_types.all;
entity BUFGDLL is
    generic(
        DUTY_CYCLE_CORRECTION: string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end BUFGDLL;
