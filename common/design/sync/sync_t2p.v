//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module sync_t2p 
# (
 parameter RESET_VAL                      = 'h0         , // The default value to be used for the flops
 parameter SYNC_STAGE                     = 2           // Number of synchronizer flop to be used
)
(
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  input    wire                                clka                          , // Clock a, to which the first input should be synchronized
  input    wire                                clka_rst_n                    , // Reset synchronous (deassert) to clka
  input    wire                                t                             , // T input for the toggle flop
  // Sync to clk2
  input    wire                                clkb                          , // Clock b, to which the input should be synchronized
  input    wire                                clkb_rst_n                    , // Reset synchronous (deassert) to clkb
  output   wire                                p_out                           // Synchronized pulse output
  // CGKE:PORTS
);
sync_m2d  #( 
  .RESET_VAL                (RESET_VAL           ),// The default value to be used for the flops
  .SYNC_STAGE               (SYNC_STAGE          ),// Number of synchronizer flop to be used
  .EDGE_DET                 (3                   ) // 0 - No edge, 1 - pos edge, 2 - neg edge, 3 - any edge
)
INST_sync_m2d (
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  .d                              ( toggle_in                                                   ), // D input to the flop, synchronous to the clka 
  // Sync to clk2
  .clkb                           ( clkb                                                        ), // Clock b, to which the input should be synchronized
  .clkb_rst_n                     ( clkb_rst_n                                                  ), // Reset synchronous (deassert) to clkb
  .s_out                          ( p_out                                                       )  // Synchronized output
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
   reg 					       t_flop;
   

// Toggle flop for the input
always @(posedge clka or negedge clka_rst_n) begin
   if(clka_rst_n == 1'b0) begin
      t_flop <= RESET_VAL;
   end else if(t) begin
      t_flop <= ~t_flop;
   end
end

assign toggle_in = t_flop;

//CGKE:HAND_GENERATED
endmodule
