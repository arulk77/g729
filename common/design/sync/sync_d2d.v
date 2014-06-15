//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module sync_d2d 
# (
 parameter RESET_VAL                      = 'h0         , // The default value to be used for the flops
 parameter SYNC_STAGE                     = 2         , // Number of synchronizer flop to be used
 parameter EDGE_DET                       = 0           // 0 - No edge, 1 - pos edge, 2 - neg edge, 3 - any edge
)
(
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  input    wire                                clka                          , // Clock a, to which the first input should be synchronized
  input    wire                                clka_rst_n                    , // Reset synchronous (deassert) to clka
  input    wire                                d                             , // D input to the flop
  // Sync to clk2
  input    wire                                clkb                          , // Clock b, to which the input should be synchronized
  input    wire                                clkb_rst_n                    , // Reset synchronous (deassert) to clkb
  output   wire                                s_out                           // Synchronized output
  // CGKE:PORTS
);
sync_m2d  #( 
  .RESET_VAL                (RESET_VAL           ),// The default value to be used for the flops
  .SYNC_STAGE               (SYNC_STAGE          ),// Number of synchronizer flop to be used
  .EDGE_DET                 (EDGE_DET            ) // 0 - No edge, 1 - pos edge, 2 - neg edge, 3 - any edge
)
INST_sync_m2d (
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  .d                              ( sync_d                                                      ), // D input to the flop, synchronous to the clka 
  // Sync to clk2
  .clkb                           ( clkb                                                        ), // Clock b, to which the input should be synchronized
  .clkb_rst_n                     ( clkb_rst_n                                                  ), // Reset synchronous (deassert) to clkb
  .s_out                          ( s_out                                                       )  // Synchronized output
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
// Declaration 
reg s_d;

// Flop the incoming signal to the clka domain 
always @(posedge clka or negedge clka_rst_n) begin
   if(clka_rst_n == 1'b0) begin
      s_d <= RESET_VAL;
   end else begin
      s_d <= d;
   end
end

assign sync_d = s_d;
   
  
   
//CGKE:HAND_GENERATED
endmodule
