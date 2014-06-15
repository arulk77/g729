module hp_filt(clk,ce,data,data_out,oe);
input clk,ce;
input  [63:0] data;
output [63:0] data_out;
output oe;
   
      
reg oe;
   reg [63:0] double_data;
      real reg_data;
   
   
always @(posedge clk) begin
   oe <= ce;
end

   always @(*) begin
//      reg_data = $bitstoreal(data);
//      reg_data = reg_data * 2.0;
//      double_data <= $realtobits(reg_data);
      double_data = reg_data * 2.0;
      
   end

   

   fp_adder inst_fp_adder (clk,data,double_data,data_out);
   
//   assign data_out = reg_data;
   
   

endmodule
