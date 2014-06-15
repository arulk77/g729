library verilog;
use verilog.vl_types.all;
entity hp_filt is
    port(
        clk             : in     vl_logic;
        ce              : in     vl_logic;
        data            : in     vl_logic_vector(63 downto 0);
        data_out        : out    vl_logic_vector(63 downto 0);
        oe              : out    vl_logic
    );
end hp_filt;
