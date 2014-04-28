`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:48 04/22/2014 
// Design Name: 
// Module Name:    pre_proc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pre_proc(
    input clk,
    input ce,
    input [15:0] audio_in,
    output reg [15:0] pre_proc_audio
    );
	 
parameter mult_f = 16'd26000;

wire [15:0] const_coeff = mult_f;

initial begin
  pre_proc_audio = 16'hffff;
end
	 
always @(posedge clk) begin
  pre_proc_audio = const_coeff + audio_in;
  //pre_proc_audio = audio_in; 
end 		


endmodule
