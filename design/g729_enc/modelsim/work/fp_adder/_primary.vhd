library verilog;
use verilog.vl_types.all;
entity fp_adder is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(63 downto 0);
        b               : in     vl_logic_vector(63 downto 0);
        result          : out    vl_logic_vector(63 downto 0)
    );
end fp_adder;
