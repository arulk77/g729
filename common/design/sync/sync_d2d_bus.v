//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module sync_d2d_bus 
# (
 parameter RESET_VAL                      = 'h0         , // The default value to be used for the flops
 parameter SYNC_STAGE                     = 2         , // Number of synchronizer flop to be used
 parameter BUS_WIDTH                      = 8           // Data bus width
)
(
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  input    wire                                clka                          , // Clock a, to which the first input should be synchronized
  input    wire                                clka_rst_n                    , // Reset synchronous (deassert) to clka
  input    wire [BUS_WIDTH-1:0]                d                             , // D input to the flop
  input    wire                                en                            , // Pulse like signal that qualifies the data 
  // Sync to clk2
  input    wire                                clkb                          , // Clock b, to which the input should be synchronized
  input    wire                                clkb_rst_n                    , // Reset synchronous (deassert) to clkb
  output   reg  [BUS_WIDTH-1:0]                s_out                           // Synchronized output
  // CGKE:PORTS
);
sync_t2p  #( 
  .RESET_VAL                (RESET_VAL           ),// The default value to be used for the flops
  .SYNC_STAGE               (SYNC_STAGE          ) // Number of synchronizer flop to be used
)
INST_sync_t2p (
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  .clka                           ( clka                                                        ), // Clock a, to which the first input should be synchronized
  .clka_rst_n                     ( clka_rst_n                                                  ), // Reset synchronous (deassert) to clka
  .t                              ( en                                                          ), // T input for the toggle flop
  // Sync to clk2
  .clkb                           ( clkb                                                        ), // Clock b, to which the input should be synchronized
  .clkb_rst_n                     ( clkb_rst_n                                                  ), // Reset synchronous (deassert) to clkb
  .p_out                          ( p_out                                                       )  // Synchronized pulse output
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED

// The data bus is latched only when there is synchronized pulse for the enable signal
integer i;
always @(posedge clkb or negedge clkb_rst_n) begin
   if (clkb_rst_n == 1'b0) begin
      for (i=0;i<BUS_WIDTH;i=i+1) begin
	 s_out[i] <= RESET_VAL;
      end
   end else begin
      s_out <= p_out ? d : s_out;
   end
end 
//CGKE:HAND_GENERATED
endmodule
