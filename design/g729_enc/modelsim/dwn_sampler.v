//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module dwn_sampler 
# (
 parameter SAMPLE_RATE                    = 10          // UTMI Data width 
)
(
  // CGKS:PORTS
  // Clock and Reset
  input    wire                                sys_clk                       , // System clock for the IP from the AHB bus interface
  input    wire                                sys_rst_n                     , // Asynchronous reset from the system clock
  input    wire                                sys_ce                        , // chip enable from the interface
  // Validating the sample after proper normalization
  output   wire                                sys_async_rst_n               , // Synchronrized reset to the system clk domain
  input    wire [32-1:0]                       sys_audio_sample              , // Audio sample fed to this module
  output   reg  [32-1:0]                       dwn_smp_audio_sample          , // Audio sample to the subsequent module
  output   wire                                dwn_smp_smp_vld                 // Valid signal, which is used as a qualifier
  // CGKE:PORTS
);
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
   reg 					       m_rst_n,d_rst_n;
   /* Asynchronous reset synchronized to the sys_clk domain */
   always @(posedge sys_clk or negedge sys_rst_n) begin
      if(~sys_rst_n) begin
	 m_rst_n <= 1'b0;
	 d_rst_n <= 1'b0;
      end else begin
	 m_rst_n <= 1'b1;
	 d_rst_n <= m_rst_n;
      end
   end

   assign sys_async_rst_n = d_rst_n;

   /* Flop the incoming system audio sample and provide as an output */
   always @(posedge sys_clk or negedge sys_async_rst_n) begin
      if(~sys_async_rst_n) begin
	 dwn_smp_audio_sample <= 'b0;
      end else begin
	 dwn_smp_audio_sample <= sys_audio_sample;
      end
   end

   integer sample_count;
   /* Logic to create the valid signal to other modules */
   always @(posedge sys_clk or negedge sys_async_rst_n) begin
      if(~sys_async_rst_n) begin
	 sample_count <= 'd0;
      end else if (sys_ce) begin
	if(SAMPLE_RATE == 0) begin
	   sample_count <= 'd0;
	end else if(sample_count == SAMPLE_RATE-1) begin
	   sample_count <= 'd0;
	end else begin
	   sample_count <= sample_count + 'd1;
	end
      end
   end

   assign dwn_smp_smp_vld = sample_count == SAMPLE_RATE-1 ? 1'b1 : 1'b0;
   
//CGKE:HAND_GENERATED
endmodule
