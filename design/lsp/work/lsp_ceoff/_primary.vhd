library verilog;
use verilog.vl_types.all;
entity lsp_ceoff is
    generic(
        RAM_ADDR_WIDTH  : integer := 10;
        RAM_DATA_WIDTH  : integer := 32
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sys_ce          : in     vl_logic;
        aff_data_count  : in     vl_logic_vector;
        aff_data_full   : in     vl_logic;
        aff_data_empty  : in     vl_logic;
        aff_read_data   : in     vl_logic_vector;
        lsp_read_en     : out    vl_logic;
        lsp_audio_sample: out    vl_logic_vector
    );
end lsp_ceoff;
