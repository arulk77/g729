library verilog;
use verilog.vl_types.all;
entity BUFHCE is
    generic(
        CE_TYPE         : string  := "SYNC";
        INIT_OUT        : integer := 0
    );
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        I               : in     vl_logic
    );
end BUFHCE;
