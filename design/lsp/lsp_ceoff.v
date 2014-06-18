//CGK:AUTO_GENERATED
//----------------------------------------------------------------
// Santa Clara University  
//----------------------------------------------------------------
// Project  : G729 encoder  
// email    : aruls.dsp@gmail.com 
module lsp_ceoff 
# (
 parameter RAM_ADDR_WIDTH                 = 10        , // Address width for the RAM
 parameter RAM_DATA_WIDTH                 = 32          // Data width for the samples
)
(
  // CGKS:PORTS
  // Clock and Reset
  input    wire                                sys_clk                       , // System clock for the IP from the AHB bus interface
  input    wire                                sys_rst_n                     , // Asynchronous reset from the system clock
  input    wire                                sys_ce                        , // Clock enable for this module (not used)
  // Validating the sample after proper normalization
  input    wire [RAM_ADDR_WIDTH-1:0]           aff_data_count                , // Received data count in the FIFO
  input    wire                                aff_data_full                 , // Data full signal
  input    wire                                aff_data_empty                , // empty flag from the fifo
  input    wire [RAM_DATA_WIDTH-1:0]           aff_read_data                 , // Data width for the data to be read
  output   reg                                 lsp_read_en                   , // Read signal from the levinson durby module
  output   wire [RAM_DATA_WIDTH-1:0]           lsp_audio_sample                // Audio sample from the LSP coefficient module
  // CGKE:PORTS
);
reg [3-1 : 0] prs_lsp_msm                  ; // Present state for lsp_msm
reg [3-1 : 0] nxt_lsp_msm                  ; // Next state for lsp_msm
// Declaration of the state parameters
parameter lsp_msm_idle                    = 3'b001;
parameter lsp_msm_read_from_fifo          = 3'b010;
parameter lsp_msm_calc_lsp_coeff          = 3'b100;
// Nets to represent the individual states
assign prs_lsp_msm_idle                         = prs_lsp_msm[0];
assign nxt_lsp_msm_idle                         = nxt_lsp_msm[0];
assign prs_lsp_msm_read_from_fifo               = prs_lsp_msm[1];
assign nxt_lsp_msm_read_from_fifo               = nxt_lsp_msm[1];
assign prs_lsp_msm_calc_lsp_coeff               = prs_lsp_msm[2];
assign nxt_lsp_msm_calc_lsp_coeff               = nxt_lsp_msm[2];
//CGKE:AUTO_GENERATED
//CGKS:HAND_GENERATED
   
   // Verilog code before the combinatorial state machine 
   reg 	      read_from_fifo;
   reg 	      enable_levinson_durby;
   // Combinatorial logic for the state machine "lsp_msm" 
   always @(*) begin
      enable_levinson_durby = 1'b0;
      read_from_fifo = 1'b0;
      
      case (prs_lsp_msm)
	
	// Next state logic for lsp_msm_idle
	// If the data_count has reached the 240 sample window then read from the FIFO
	lsp_msm_idle : begin
	   if(aff_data_count > 32'd240) begin
	      nxt_lsp_msm = lsp_msm_read_from_fifo;
	   end else begin
              nxt_lsp_msm = lsp_msm_idle;
	   end
	end
	
	// Next state logic for lsp_msm_read_from_fifo 
	lsp_msm_read_from_fifo : begin
	   read_from_fifo = 1'b1;
	   if(aff_data_empty) begin
	      nxt_lsp_msm = lsp_msm_calc_lsp_coeff;
	   end else begin
              nxt_lsp_msm = lsp_msm_read_from_fifo;
	   end
	end
	
	// Next state logic for lsp_msm_calc_lsp_coeff 
	lsp_msm_calc_lsp_coeff : begin
	   enable_levinson_durby = 1'b1;
	   if(1'b1) begin
	      nxt_lsp_msm = lsp_msm_idle;
	   end else begin
              nxt_lsp_msm = lsp_msm_calc_lsp_coeff;
	   end
	end
	// Default state logic for lsp_msm
	default : begin
	   nxt_lsp_msm <= lsp_msm_idle;
	end
      endcase
   end // always @ (*)
   
   // Flop to represent the present state of the lsp_msm 
   always @(negedge sys_rst_n or posedge sys_clk) begin
      if (sys_rst_n == 1'b0) begin
	 prs_lsp_msm <= lsp_msm_idle;
      end else begin
	 prs_lsp_msm <= nxt_lsp_msm;
      end
   end

   // Flop the read enable signal for the
   always @(negedge sys_rst_n or posedge sys_clk) begin
      if (sys_rst_n == 1'b0) begin
	 lsp_read_en <= 1'b0;
      end else begin
	 lsp_read_en <= read_from_fifo;
      end
   end
   

   assign lsp_audio_sample = lsp_read_en ? aff_read_data : 'd0;
   
   
//CGKE:HAND_GENERATED
endmodule
