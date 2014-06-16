library verilog;
use verilog.vl_types.all;
entity MEM_BLK_V5_0 is
    generic(
        addr_value      : integer := 4;
        data_width      : integer := 16;
        mem_depth       : integer := 16
    );
    port(
        clk             : in     vl_logic;
        write_en        : in     vl_logic;
        read_en         : in     vl_logic;
        wr_addr         : in     vl_logic_vector;
        rd_addr         : in     vl_logic_vector;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector;
        rst             : in     vl_logic
    );
end MEM_BLK_V5_0;
