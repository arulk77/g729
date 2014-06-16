library verilog;
use verilog.vl_types.all;
entity BUFIODQS is
    generic(
        DQSMASK_ENABLE  : string  := "FALSE"
    );
    port(
        O               : out    vl_logic;
        DQSMASK         : in     vl_logic;
        I               : in     vl_logic
    );
end BUFIODQS;
