//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// (c)2012 Arasan Chip Systems
//----------------------------------------------------------------
// Project  : acom 
// email    : support@arasan.com
// Desc     : This project is intended to create files that could
//            be used across multiple projects. This project includes
//            basic synchronizers, fifos, and portable ram modules
module single_port_ram 
# (
 parameter RAM_ADDR_WIDTH                 = 8         , // The address bus width for the Tx and Rx RAM used
 parameter RAM_DATA_WIDTH                 = 8           // The RAM data width is fixed to be 32 bit wide
)
(
  // CGKS:PORTS
  // Port Name
  // RAM write port interface
  input    wire [RAM_ADDR_WIDTH-1:0]           ram_wr_addr                   , // Address for the asynchronous RAM used in the design
  input    wire                                ram_wr_en                     , // Write enable for the write port
  input    wire                                wclk                          , // write clock for RAM
  input    wire [RAM_DATA_WIDTH-1:0]           ram_wr_data                   , // Write data for the RAM
  // RAM read port interface
  input    wire [RAM_ADDR_WIDTH-1:0]           ram_rd_addr                   , // Read address for the RAM module
  input    wire                                ram_rd_en                     , // Read enable for the RAM
  output   wire [RAM_DATA_WIDTH-1:0]           ram_rd_data                     // Read data from the RAM (addressed by ram_rd_addr)
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
reg [RAM_DATA_WIDTH-1:0] async_ram [2**RAM_ADDR_WIDTH-1:0];

always @(posedge wclk) begin
  if(ram_wr_en) begin
    async_ram[ram_wr_addr] <= ram_wr_data;
  end
end


assign ram_rd_data = ram_rd_en ? async_ram[ram_rd_addr] : 'b0;

//CGKE:HAND_GENERATED
endmodule
