/* This module is to define the basic arithmetic function used for 
   fixed point arithmetic of the G729 encoder*/

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  Basic Operations sections
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  This function multiplies two 16 bit variables and returns a value
  that is 32 bit of length 
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
function [31:0] L_mult;
  input [15:0] var1,var2;
  begin
     L_mult = var1 * var2;
  end
endfunction // L_mult

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  This function multiplies two 16 bit variables and returns a value
  that is 16 bit of length
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
function [15:0] mult;
  input [15:0] var1,var2;
  reg [31:0] l_mult;
  begin
     l_mult = L_mult(var1,var2);
     mult = l_mult >> 15;
  end
endfunction // mult

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                    32 bit operation section
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

// Fuction to add two 32 bit variables
function [31:0] L_add;
   input [31:0] var1,var2;
  begin
     L_add = var1 + var2;
  end
endfunction // L_add

// Multiply var1 and var2 and then add with var3
function [31:0] L_mac;
   input [31:0] var3;
   input [15:0] var1,var2;
   reg [31:0] 	l_mult;
   begin
      l_mult = L_mult(var1,var2);
      L_mac = L_add(l_mult,var3);
   end
endfunction // L_mac


// Multiply a 32 bit variable by 16 bit varaiable
function [31:0] Mpy_32_16;
  input [15:0] hi,lo,n;
   begin
      Mpy_32_16 = L_mult(hi,n);
      Mpy_32_16 = L_mac(Mpy_32_16,mult(lo,n),1);
   end
endfunction // Mpy_32_16

