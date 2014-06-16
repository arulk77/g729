library verilog;
use verilog.vl_types.all;
entity dcm_adv_maximum_period_check is
    generic(
        clock_name      : string  := "";
        maximum_period  : integer := 0
    );
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic
    );
end dcm_adv_maximum_period_check;
