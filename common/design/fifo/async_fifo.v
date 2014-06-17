//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module async_fifo 
# (
 parameter RAM_ADDR_WIDTH                 = 12        , // The address bus width for the Tx and Rx RAM used
 parameter RAM_DATA_WIDTH                 = 32          // The RAM data width is fixed to be 32 bit wide
)
(
  // CGKS:PORTS
  // Port Name
  // CLK A interface signals (write clock)
  input    wire                                porta_clk                     , // PortA clock interface
  input    wire                                porta_rst_n                   , // Reset to the porta module
  input    wire                                porta_srst_n                  , // Reset to the porta module (Synchronous)
  input    wire                                porta_wr_en                   , // Write enable for the asynchronous fifo
  input    wire [RAM_DATA_WIDTH-1:0]           porta_wr_data                 , // Data to be written to the FIFO
  output   wire                                porta_fifo_full               , // fifo full condition synchronous to the porta clk
  output   wire                                porta_fifo_empty              , // fifo empty conditio synchronous to the porta clk
  output   wire [RAM_ADDR_WIDTH-1:0]           porta_fifo_count              , // Fifo count synchronous to the porta clock
  // CLK B interface signals (read clock)
  input    wire                                portb_clk                     , // Portb clock interface
  input    wire                                portb_rst_n                   , // Reset to the portb module
  input    wire                                portb_srst_n                  , // Reset to the portb module (Synchronous)
  input    wire                                portb_rd_en                   , // Write enable for the asynchronous fifo
  output   wire [RAM_DATA_WIDTH-1:0]           portb_rd_data                 , // Data to be written to the FIFO
  output   wire                                portb_fifo_full               , // fifo full condition synchronous to the portb clk
  output   wire                                portb_fifo_empty              , // fifo empty conditio synchronous to the portb clk
  output   wire [RAM_ADDR_WIDTH-1:0]           portb_fifo_count              , // Fifo count synchronous to the portb clock
  // RAM Interface
  output   wire [RAM_ADDR_WIDTH-1:0]           ram_wr_addr                   , // Write address to the RAM
  output   wire [RAM_DATA_WIDTH-1:0]           ram_wr_data                   , // Write data to the RAM
  output   wire                                ram_wr_en                     , // Write data en
  output   wire [RAM_ADDR_WIDTH-1:0]           ram_rd_addr                   , // Read address to the RAM
  input    wire [RAM_DATA_WIDTH-1:0]           ram_rd_data                   , // Read data from the RAM
  output   wire                                ram_rd_en                       // Read enable to the RAM
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED

// ---------------------------------------------------------------------
// Function to return a binary value for a gray coded value
// ---------------------------------------------------------------------
parameter GW = RAM_ADDR_WIDTH;
function [GW-1:0] gray2bin;
input 	[GW-1:0]  gray;
integer i;
reg 	[GW-1:0] shifted_gray;
begin
   for (i=0;i<GW;i=i+1) begin
      shifted_gray = gray >> i;
      gray2bin[i] = ^shifted_gray; // XOR reduce operator
   end
end
endfunction // gray2bin function 
   
// Reassign the clock and reset name, so it could match the appropriate 
// clock domains. 
assign clk_wr    = porta_clk;
assign rst_wr_n  = porta_rst_n;
assign srst_wr_n = porta_srst_n;
   
assign clk_rd    = portb_clk;
assign rst_rd_n  = portb_rst_n;
assign srst_rd_n = portb_srst_n;

// ---------------------------------------------------------------------
// Logic in the port a clock domain 
// ---------------------------------------------------------------------
// Declaration part of the net 
reg [RAM_ADDR_WIDTH : 0] wr_ptr_bin;
reg [RAM_ADDR_WIDTH : 0] wr_ptr_gray;
reg [RAM_ADDR_WIDTH : 0] rd_ptr_bin;
reg [RAM_ADDR_WIDTH : 0] rd_ptr_gray; 
reg [RAM_ADDR_WIDTH : 0] m_wr_ptr_gray_rd_dm;
reg [RAM_ADDR_WIDTH : 0] s_wr_ptr_gray_rd_dm;
reg [RAM_ADDR_WIDTH : 0] m_rd_ptr_gray_wr_dm;
reg [RAM_ADDR_WIDTH : 0] s_rd_ptr_gray_wr_dm;

wire [RAM_ADDR_WIDTH : 0] nxt_wr_ptr_bin;
wire [RAM_ADDR_WIDTH : 0] nxt_wr_ptr_bin_shift;
wire [RAM_ADDR_WIDTH : 0] nxt_rd_ptr_bin;
wire [RAM_ADDR_WIDTH : 0] nxt_rd_ptr_bin_shift;
wire [RAM_ADDR_WIDTH : 0] nxt_wr_ptr_gray;
wire [RAM_ADDR_WIDTH : 0] nxt_rd_ptr_gray;

//-----------------> Write pointer clock doamin <-----------------------
always @(posedge clk_wr or negedge rst_wr_n) begin
  if(rst_wr_n == 1'b0) begin
    wr_ptr_bin <= {RAM_ADDR_WIDTH{1'b0}};
  end else if(srst_wr_n == 1'b0) begin
    wr_ptr_bin <= {RAM_ADDR_WIDTH{1'b0}};
  end else begin
    wr_ptr_bin <= nxt_wr_ptr_bin; 
  end
end

//--------------------------------------------------------------
// Increment write pointer only during wr_en.
// Fifo write during full is prohibited
//--------------------------------------------------------------
assign nxt_wr_ptr_bin = (porta_wr_en & ~porta_fifo_full)? (wr_ptr_bin + 1) : wr_ptr_bin; 

//--------------------------------------------------------------
// Gray counter value for the next binary ptr
//--------------------------------------------------------------
assign nxt_wr_ptr_bin_shift = nxt_wr_ptr_bin >> 1;
assign nxt_wr_ptr_gray = nxt_wr_ptr_bin_shift ^ nxt_wr_ptr_bin;

//--------------------------------------------------------------
// Create a gray counter, which will be used for
// empty and full condition
//--------------------------------------------------------------
always @(posedge clk_wr or negedge rst_wr_n) begin
  if(rst_wr_n == 1'b0) begin
    wr_ptr_gray <= {RAM_ADDR_WIDTH{1'b0}}; 
  end else if(srst_wr_n == 1'b0) begin
    wr_ptr_gray <= {RAM_ADDR_WIDTH{1'b0}}; 
  end else begin
    wr_ptr_gray <= nxt_wr_ptr_gray; 
  end
end

//--------------------------------------------------------------
// Synchronized rd_ptr_gray in write clock domain
//--------------------------------------------------------------
always @(posedge clk_wr or negedge rst_wr_n) begin
  if(rst_wr_n == 1'b0) begin
    m_rd_ptr_gray_wr_dm <= {RAM_ADDR_WIDTH{1'b0}};
    s_rd_ptr_gray_wr_dm <= {RAM_ADDR_WIDTH{1'b0}};
  end else if(srst_wr_n == 1'b0) begin
    m_rd_ptr_gray_wr_dm <= {RAM_ADDR_WIDTH{1'b0}};
    s_rd_ptr_gray_wr_dm <= {RAM_ADDR_WIDTH{1'b0}};
  end else begin
    m_rd_ptr_gray_wr_dm <= rd_ptr_gray; 
    s_rd_ptr_gray_wr_dm <= m_rd_ptr_gray_wr_dm; 
  end
end

assign porta_fifo_full = (s_rd_ptr_gray_wr_dm[RAM_ADDR_WIDTH]     != wr_ptr_gray[RAM_ADDR_WIDTH]) && 
                         (s_rd_ptr_gray_wr_dm[RAM_ADDR_WIDTH-1]   != wr_ptr_gray[RAM_ADDR_WIDTH-1]) && 
                         (s_rd_ptr_gray_wr_dm[RAM_ADDR_WIDTH-2:0] == wr_ptr_gray[RAM_ADDR_WIDTH-2:0]) ? 1'b1 : 1'b0; 

assign porta_fifo_empty = (s_rd_ptr_gray_wr_dm == wr_ptr_gray) ? 1'b1 : 1'b0;

assign porta_fifo_count = porta_fifo_empty ? {RAM_ADDR_WIDTH-1{1'b0}} : 
			  porta_fifo_full  ? {RAM_ADDR_WIDTH-1{1'b1}} :
			  wr_ptr_bin - gray2bin(s_rd_ptr_gray_wr_dm[RAM_ADDR_WIDTH-1:0]);
   
//-----------------> Write pointer clock doamin <-----------------------

//-----------------> Read pointer clock doamin <-----------------------

// Binary read pointer
always @(posedge clk_rd or negedge rst_rd_n) begin
  if(rst_rd_n == 1'b0) begin
    rd_ptr_bin <= {RAM_ADDR_WIDTH{1'b0}};
  end else if(srst_rd_n == 1'b0) begin
    rd_ptr_bin <= {RAM_ADDR_WIDTH{1'b0}};
  end else begin
    rd_ptr_bin <= nxt_rd_ptr_bin; 
  end 
end 

// Read address for the RAM
assign rd_addr = rd_ptr_bin[RAM_ADDR_WIDTH-1:0];

//--------------------------------------------------------------
// Binary next read pointer logic
//--------------------------------------------------------------
assign nxt_rd_ptr_bin = portb_rd_en & (~portb_fifo_empty) ? (rd_ptr_bin + 1) : rd_ptr_bin; 

//--------------------------------------------------------------
// Gray counter value for the next binary ptr
//--------------------------------------------------------------
assign nxt_rd_ptr_bin_shift = nxt_rd_ptr_bin >> 1;
assign nxt_rd_ptr_gray = nxt_rd_ptr_bin_shift ^ nxt_rd_ptr_bin;

//--------------------------------------------------------------
// Create a gray counter, which will be used for
// empty and full condition
//--------------------------------------------------------------
always @(posedge clk_rd or negedge rst_rd_n) begin
  if(rst_rd_n == 1'b0) begin
    rd_ptr_gray <= {RAM_ADDR_WIDTH{1'b0}};
  end else if(srst_rd_n == 1'b0) begin
    rd_ptr_gray <= {RAM_ADDR_WIDTH{1'b0}};
  end else begin
    rd_ptr_gray <= nxt_rd_ptr_gray; 
  end 
end 
//--------------------------------------------------------------
// Synchronized wr_ptr_gray in read clock domain
//--------------------------------------------------------------
always @(posedge clk_rd or negedge rst_rd_n) begin
  if(rst_rd_n == 1'b0) begin
    m_wr_ptr_gray_rd_dm <= {RAM_ADDR_WIDTH{1'b0}};
    s_wr_ptr_gray_rd_dm <= {RAM_ADDR_WIDTH{1'b0}};
  end else if(srst_rd_n == 1'b0) begin
    m_wr_ptr_gray_rd_dm <= {RAM_ADDR_WIDTH{1'b0}};
    s_wr_ptr_gray_rd_dm <= {RAM_ADDR_WIDTH{1'b0}};
  end else begin
    m_wr_ptr_gray_rd_dm <= wr_ptr_gray; 
    s_wr_ptr_gray_rd_dm <= m_wr_ptr_gray_rd_dm; 
  end
end

// FIFO empty conditio in read domain
assign empty_rd_dm      = (s_wr_ptr_gray_rd_dm [RAM_ADDR_WIDTH:0] == rd_ptr_gray[RAM_ADDR_WIDTH:0]) ? 1'b1 : 1'b0; 

assign portb_fifo_empty = empty_rd_dm; 
assign portb_fifo_full  = (s_wr_ptr_gray_rd_dm[RAM_ADDR_WIDTH] != rd_ptr_gray[RAM_ADDR_WIDTH]) &&
                          (s_wr_ptr_gray_rd_dm[RAM_ADDR_WIDTH-1] != rd_ptr_gray[RAM_ADDR_WIDTH-1]) &&
                          (s_wr_ptr_gray_rd_dm[RAM_ADDR_WIDTH-2:0] == rd_ptr_gray[RAM_ADDR_WIDTH-2:0]) ? 1'b1 : 1'b0; 

assign portb_fifo_count = portb_fifo_empty ? {RAM_ADDR_WIDTH-1{1'b0}} : 
			  portb_fifo_full  ? {RAM_ADDR_WIDTH-1{1'b1}} :
			  gray2bin(s_wr_ptr_gray_rd_dm[RAM_ADDR_WIDTH-1:0]) - rd_ptr_bin[RAM_ADDR_WIDTH-1:0];
   
//-----------------> Read pointer clock doamin <-----------------------

// Asynchronous RAM interface
assign ram_wr_addr    = wr_ptr_bin[RAM_ADDR_WIDTH-1:0]; 
assign ram_wr_data    = porta_wr_data;
assign ram_wr_en      = porta_wr_en;
assign ram_rd_en      = 1'b1; // Always the ram read enable is set to high

assign ram_rd_addr    = rd_ptr_bin[RAM_ADDR_WIDTH-1:0];
assign portb_rd_data  = ram_rd_data;

//CGKE:HAND_GENERATED
endmodule
