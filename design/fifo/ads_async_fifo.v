//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module ads_async_fifo 
# (
 parameter RAM_ADDR_WIDTH                 = 12        , // Address width for the RAM
 parameter RAM_DATA_WIDTH                 = 32          // Data width for the samples
)
(
  // CGKS:PORTS
  // Clock and Reset
  input    wire                                sys_clk                       , // System clock for the IP from the AHB bus interface
  input    wire                                sys_rst_n                     , // Asynchronous reset from the system clock
  input    wire                                sys_ce                        , // Clock enable for this module (not used)
  // Validating the sample after proper normalization
  input    wire [32-1:0]                       hpf_audio_sample              , // Audio sample from the high pass filter
  input    wire                                hpf_smp_valid                 , // Valid signal for the input samples
  output   wire [RAM_ADDR_WIDTH-1:0]           aff_data_count                , // Received data count in the FIFO
  output   wire                                aff_data_full                 , // Data full signal
  output   wire                                aff_data_empty                , // empty flag from the fifo
  output   wire [RAM_DATA_WIDTH-1:0]           aff_read_data                 , // Data width for the data to be read
  input    wire                                ldb_read_en                     // Read signal from the levinson durby module
  // CGKE:PORTS
);
wire           [RAM_DATA_WIDTH-1:0] porta_wr_data                 ;
wire           [RAM_ADDR_WIDTH-1:0] porta_fifo_count              ;
wire           [RAM_DATA_WIDTH-1:0] portb_rd_data                 ;
wire           [RAM_ADDR_WIDTH-1:0] portb_fifo_count              ;
wire           [RAM_ADDR_WIDTH-1:0] ram_wr_addr                   ;
wire           [RAM_DATA_WIDTH-1:0] ram_wr_data                   ;
wire           [RAM_ADDR_WIDTH-1:0] ram_rd_addr                   ;
wire           [RAM_ADDR_WIDTH-1:0] ram_rd_data                   ;
async_fifo  #( 
  .RAM_ADDR_WIDTH           (RAM_ADDR_WIDTH      ),// The address bus width for the Tx and Rx RAM used
  .RAM_DATA_WIDTH           (RAM_DATA_WIDTH      ) // The RAM data width is fixed to be 32 bit wide
)
INST_async_fifo (
  // CGKS:PORTS
  // Port Name
  // CLK A interface signals (write clock)
  .porta_clk                      ( sys_clk                                                     ), // PortA clock interface
  .porta_rst_n                    ( sys_rst_n                                                   ), // Reset to the porta module
  .porta_srst_n                   ( porta_srst_n                                                ), // Reset to the porta module (Synchronous)
  .porta_wr_en                    ( hpf_smp_valid                                               ), // Write enable for the asynchronous fifo
  .porta_wr_data                  ( hpf_audio_sample              [RAM_DATA_WIDTH-1:0]          ), // Data to be written to the FIFO
  .porta_fifo_full                ( porta_fifo_full                                             ), // fifo full condition synchronous to the porta clk
  .porta_fifo_empty               ( porta_fifo_empty                                            ), // fifo empty conditio synchronous to the porta clk
  .porta_fifo_count               ( porta_fifo_count              [RAM_ADDR_WIDTH-1:0]          ), // Fifo count synchronous to the porta clock
  // CLK B interface signals (read clock)
  .portb_clk                      ( sys_clk                                                     ), // Portb clock interface
  .portb_rst_n                    ( sys_rst_n                                                   ), // Reset to the portb module
  .portb_srst_n                   ( portb_srst_n                                                ), // Reset to the portb module (Synchronous)
  .portb_rd_en                    ( ldb_read_en                                                 ), // Write enable for the asynchronous fifo
  .portb_rd_data                  ( aff_read_data                 [RAM_DATA_WIDTH-1:0]          ), // Data to be written to the FIFO
  .portb_fifo_full                ( portb_fifo_full                                             ), // fifo full condition synchronous to the portb clk
  .portb_fifo_empty               ( portb_fifo_empty                                            ), // fifo empty conditio synchronous to the portb clk
  .portb_fifo_count               ( portb_fifo_count              [RAM_ADDR_WIDTH-1:0]          ), // Fifo count synchronous to the portb clock
  // RAM Interface
  .ram_wr_addr                    ( ram_wr_addr                   [RAM_ADDR_WIDTH-1:0]          ), // Write address to the RAM
  .ram_wr_data                    ( ram_wr_data                   [RAM_DATA_WIDTH-1:0]          ), // Write data to the RAM
  .ram_wr_en                      ( ram_wr_en                                                   ), // Write data en
  .ram_rd_addr                    ( ram_rd_addr                   [RAM_ADDR_WIDTH-1:0]          ), // Read address to the RAM
  .ram_rd_data                    ( ram_rd_data                   [RAM_ADDR_WIDTH-1:0]          ), // Read data from the RAM
  .ram_rd_en                      ( ram_rd_en                                                   )  // Read enable to the RAM
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
   reg [RAM_DATA_WIDTH-1:0] 	    ram [(2**RAM_ADDR_WIDTH)-1:0];

   /* Logic to represent the RAM instantiation of the module */
   always @(posedge sys_clk) begin
      if(ram_wr_en) begin
	 ram[ram_wr_addr] <= ram_wr_data;
      end
   end

   assign ram_rd_data = portb_fifo_empty ? 'd0 : ram[ram_rd_addr];

   assign aff_data_full = portb_fifo_full;
   assign aff_data_empty = portb_fifo_empty;
   assign aff_data_count = portb_fifo_count;
      
//CGKE:HAND_GENERATED
endmodule
