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
module high_pass_filter(
    input clk,
    input ce,
    input rst_n,
    input [15:0] audio_in,
    output reg [15:0] pre_proc_audio
    );

  // Declaration of locally used signals
  reg [31:0] 	      y0;
  reg [31:0] 	      y1;
  reg [31:0] 	      y2;

  reg [15:0] 	      x1;
  reg [15:0] 	      x2;
     
  reg [15:0] 	      a [2:0];
  reg [15:0] 	      b [2:0];

`include "fixed_point_arith.v"

  // Initialize the coefficents for the high pass filter 
  initial 
    begin
     a[0] = -16'd3733;
     a[1] = +16'd7807;
     a[2] = +16'd4096;

     b[0] = +16'd1899;
     b[1] = -16'd3798;
     b[2] = +16'd1899;

    end // initial begin

  wire [15:0] x0,y1_hi,y1_lo,y2_hi,y2_lo;

  // The x0 is the incoming sample stream
  assign x0 = audio_in;
  assign y1_hi = y1[31:16];
  assign y1_lo = y1[15:0];
  assign y2_hi = y2[31:16];
  assign y2_lo = y2[15:0];
  

  // Process to genreate the current y(0) from the incoming signals
  always @(*) begin
     y0 = Mpy_32_16(y1_hi,y1_lo,a[1]);
     y0 = L_add(y0,Mpy_32_16(y2_hi,y2_lo,a[2]));
     y0 = L_mac(y0,x0,b[0]);
     y0 = L_mac(y0,x1,b[1]);
     y0 = L_mac(y0,x2,b[2]);
     y0 = y0 << 3;
     pre_proc_audio = y0>>15;
  end


   // Flip flops to store the existing filter values	 
   always @(negedge rst_n or posedge clk) begin
   if (!rst_n) begin
     y0 = 0;
     y1 = 0;
     y2 = 0;
     x1 = 0;
     x2 = 0;
   end else if(ce) begin
	 y1 = y0;
	 y2 = y1;
	 x1 = x0;
	 x2 = x1;
   end
   end 		


endmodule
