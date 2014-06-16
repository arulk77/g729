library verilog;
use verilog.vl_types.all;
entity IBUF_DLY_ADJ is
    generic(
        DELAY_OFFSET    : string  := "OFF";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0)
    );
end IBUF_DLY_ADJ;
