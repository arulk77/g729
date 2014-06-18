//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module hpf_filter 
# (
 parameter Latency                        = 1           // Latency for the sample output
)
(
  // CGKS:PORTS
  // Clock and Reset
  input    wire                                sys_clk                       , // System clock for the IP from the AHB bus interface
  input    wire                                sys_rst_n                     , // Asynchronous reset from the system clock
  input    wire                                sys_ce                        , // Clock enable for this module (not used)
  // Validating the sample after proper normalization
  input    wire [32-1:0]                       sys_audio_sample              , // Audio sample fed to this module
  input    wire                                sys_valid                     , // Valid signal for the input samples
  output   reg  [32-1:0]                       hpf_audio_sample              , // Audio sample after the high pass filter
  output   reg                                 hpf_smp_valid                   // Valid signal, which is used as a qualifier after the high pass filter
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
   reg [31:0] 				       x1,x2;
   reg [31:0] 				       y1,y2;
   wire [31:0] 				       x0,y0;
   
   // Delay element for various comparision points
   always @(posedge sys_clk or negedge sys_rst_n) begin
      if(~sys_rst_n) begin
	 x1 <= 'd0;
	 x2 <= 'd0;
	 y1 <= 'd0;
	 y2 <= 'd0;
      end else if(sys_valid) begin
	 x1 <= x0;
	 x2 <= x1;
	 y1 <= y0;
	 y2 <= y1;
      end
   end // always @ (posedge sys_clk or negedge sys_rst_n)

   assign x0 = sys_audio_sample;
	      
   // Constants for the filter
   wire[31:0] b0 = 32'h3eed61da;
   wire[31:0] b1 = 32'hbf6d6010;
   wire[31:0] b2 = b0;
   wire[31:0] a0 = 32'h1;
   wire[31:0] a1 = 32'h3ff3f60e;
   wire[31:0] a2 = 32'hbf6951ab;

   wire [31:0] x0_m_b0;
   wire [31:0] x1_m_b1;
   wire [31:0] x2_m_b2;
   wire [31:0] x0b0_p_x1b1;
   wire [31:0] x0b0_p_x1b1_p_x2b2;
   wire [31:0] y1_m_a1;
   wire [31:0] y2_m_a2;
   wire [31:0] y1a1_p_y2a2;
   
   
   fp_mult   inst_x0mb0 (.a(x0),.b(b0),.result(x0_m_b0));
   fp_mult   inst_x1mb1 (.a(x1),.b(b1),.result(x1_m_b1));
   fp_mult   inst_x2mb2 (.a(x2),.b(b2),.result(x2_m_b2));
   fp_adder  inst_x0b0_p_x1b1 (.a(x0_m_b0),.b(x1_m_b1),.result(x0b0_p_x1b1));
   fp_adder  inst_x0b0_p_x1b1_p_x2b2 (.a(x0b0_p_x1b1),.b(x2_m_b2),.result(x0b0_p_x1b1_p_x2b2));

   fp_mult   inst_y1ma1 (.a(y1),.b(a1),.result(y1_m_a1));
   fp_mult   inst_y2ma2 (.a(y2),.b(a2),.result(y2_m_a2));
   fp_adder  inst_y1a1_p_y2a2 (.a(y1_m_a1),.b(y2_m_a2),.result(y1a1_p_y2a2));
   fp_adder  inst_y0 (.a(y1a1_p_y2a2),.b(x0b0_p_x1b1_p_x2b2),.result(y0));


   always @(posedge sys_clk or negedge sys_rst_n) begin
      if(~sys_rst_n) begin
	 hpf_audio_sample <= 'd0;
	 hpf_smp_valid    <= 1'b0;
      end else begin
	 hpf_audio_sample <= y0;
	 hpf_smp_valid    <= sys_valid;
      end
   end   
   
//CGKE:HAND_GENERATED
endmodule
