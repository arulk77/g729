   vlib ./xilinx_lib/unisims_ver && vlog -work ./xilinx_lib/unisims_ver /home/aruls/tools/Xilinx/14.7/ISE_DS/ISE/verilog/src/unisims/*.v && vlib ./xilinx_lib/xilinxcorelib_ver && vlog -work ./xilinx_lib/xilinxcorelib_ver /home/aruls/tools/Xilinx/14.7/ISE_DS/ISE/verilog/src/XilinxCoreLib/*.v
   vlib ./xilinx_lib/unisim && vcom -work ./xilinx_lib/unisim /home/aruls/tools/Xilinx/14.7/ISE_DS/ISE/vhdl/src/unisims/*.vhd && vlib ./xilinx/xilinxcorelib && vcom -work ./xilinx_lib/xilinxcorelib /home/aruls/tools/Xilinx/14.7/ISE_DS/ISE/vhdl/src/XilinxCoreLib/*.vhd
