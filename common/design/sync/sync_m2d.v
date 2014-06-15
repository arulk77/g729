//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module sync_m2d 
# (
 parameter RESET_VAL                      = 'h0         , // The default value to be used for the flops
 parameter SYNC_STAGE                     = 2         , // Number of synchronizer flop to be used
 parameter EDGE_DET                       = 0           // 0 - No edge, 1 - pos edge, 2 - neg edge, 3 - any edge
)
(
  // CGKS:PORTS
  // Port Name
  // Sync to clka signals
  input    wire                                d                             , // D input to the flop, synchronous to the clka 
  // Sync to clk2
  input    wire                                clkb                          , // Clock b, to which the input should be synchronized
  input    wire                                clkb_rst_n                    , // Reset synchronous (deassert) to clkb
  output   wire                                s_out                           // Synchronized output
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
// Declaration 
reg [SYNC_STAGE-1:0] sync_flop;
integer i;

// Flop to synchronize the signal
always @(posedge clkb or negedge clkb_rst_n) begin
   if(clkb_rst_n == 1'b0) begin
      for(i=0;i<SYNC_STAGE;i=i+1) begin
	 sync_flop[i] <= RESET_VAL;
      end
   end else begin
      sync_flop <= {sync_flop[SYNC_STAGE-2:0],d};
   end
end

assign stable_out = sync_flop[SYNC_STAGE-1];

// Flop an additional stage to detect any edge if needed
reg d_stable_out;
always @(posedge clkb or negedge clkb_rst_n) begin
   if(clkb_rst_n == 1'b0) begin
     d_stable_out <= RESET_VAL;
   end else begin
     d_stable_out <= stable_out; 
   end
end

assign s_out =  EDGE_DET == 3 ? d_stable_out ^ stable_out :  // any edge
                EDGE_DET == 2 ? d_stable_out & ~stable_out : // neg edge
                EDGE_DET == 1 ? ~d_stable_out & stable_out : // pos edge  
                stable_out;
   
//CGKE:HAND_GENERATED
endmodule
