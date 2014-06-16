library verilog;
use verilog.vl_types.all;
entity BLKMEMDP_V6_3 is
    generic(
        c_addra_width   : integer := 11;
        c_addrb_width   : integer := 9;
        c_default_data  : string  := "0";
        c_depth_a       : integer := 2048;
        c_depth_b       : integer := 512;
        c_enable_rlocs  : integer := 0;
        c_has_default_data: integer := 1;
        c_has_dina      : integer := 1;
        c_has_dinb      : integer := 1;
        c_has_douta     : integer := 1;
        c_has_doutb     : integer := 1;
        c_has_ena       : integer := 1;
        c_has_enb       : integer := 1;
        c_has_limit_data_pitch: integer := 1;
        c_has_nda       : integer := 0;
        c_has_ndb       : integer := 0;
        c_has_rdya      : integer := 0;
        c_has_rdyb      : integer := 0;
        c_has_rfda      : integer := 0;
        c_has_rfdb      : integer := 0;
        c_has_sinita    : integer := 1;
        c_has_sinitb    : integer := 1;
        c_has_wea       : integer := 1;
        c_has_web       : integer := 1;
        c_limit_data_pitch: integer := 16;
        c_mem_init_file : string  := "null.mif";
        c_pipe_stages_a : integer := 0;
        c_pipe_stages_b : integer := 0;
        c_reg_inputsa   : integer := 0;
        c_reg_inputsb   : integer := 0;
        c_sim_collision_check: string  := "NONE";
        c_sinita_value  : string  := "0000";
        c_sinitb_value  : string  := "0000";
        c_width_a       : integer := 8;
        c_width_b       : integer := 32;
        c_write_modea   : integer := 2;
        c_write_modeb   : integer := 2;
        c_ybottom_addr  : string  := "1024";
        c_yclka_is_rising: integer := 1;
        c_yclkb_is_rising: integer := 1;
        c_yena_is_high  : integer := 1;
        c_yenb_is_high  : integer := 1;
        c_yhierarchy    : string  := "hierarchy1";
        c_ymake_bmm     : integer := 0;
        c_yprimitive_type: string  := "4kx4";
        c_ysinita_is_high: integer := 1;
        c_ysinitb_is_high: integer := 1;
        c_ytop_addr     : string  := "0";
        c_yuse_single_primitive: integer := 0;
        c_ywea_is_high  : integer := 1;
        c_yweb_is_high  : integer := 1;
        c_yydisable_warnings: integer := 1
    );
    port(
        DOUTA           : out    vl_logic_vector;
        DOUTB           : out    vl_logic_vector;
        ADDRA           : in     vl_logic_vector;
        CLKA            : in     vl_logic;
        DINA            : in     vl_logic_vector;
        ENA             : in     vl_logic;
        SINITA          : in     vl_logic;
        WEA             : in     vl_logic;
        NDA             : in     vl_logic;
        RFDA            : out    vl_logic;
        RDYA            : out    vl_logic;
        ADDRB           : in     vl_logic_vector;
        CLKB            : in     vl_logic;
        DINB            : in     vl_logic_vector;
        ENB             : in     vl_logic;
        SINITB          : in     vl_logic;
        WEB             : in     vl_logic;
        NDB             : in     vl_logic;
        RFDB            : out    vl_logic;
        RDYB            : out    vl_logic
    );
end BLKMEMDP_V6_3;