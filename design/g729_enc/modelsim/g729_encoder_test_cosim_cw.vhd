
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity g729_encoder_test_cosim_clk_drvr is
  port (
    ce_20: out std_logic := '0'; 
    clk: out std_logic := '0'
  );
end g729_encoder_test_cosim_clk_drvr;

architecture behavioral of g729_encoder_test_cosim_clk_drvr is

  constant half_sys_period : time := 500 ms;

  signal proto_clk : std_logic := '1';
  signal proto_ce_20 : std_logic := '1';

begin

    process_clk : process (proto_clk)
    begin
      if (proto_clk = '0') then
        proto_clk <= '1' after (half_sys_period);
      else
        proto_clk <= '0' after (half_sys_period);
      end if;
    end process process_clk;

    process_proto_ce_20 : process (proto_ce_20)
    begin
      if (proto_ce_20 ='0') then
        proto_ce_20 <= '1' after (38 * half_sys_period);
             else
        proto_ce_20 <= '0' after (2 * half_sys_period);
      end if;
    end process process_proto_ce_20;

    clk <= transport proto_clk after (1.99 * half_sys_period);
    ce_20 <= transport proto_ce_20 after (38 * half_sys_period);

end architecture behavioral;library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity g729_encoder_test_cosim_cw is
  port (
    high_pass_filter_verilog_audio_in: in std_logic_vector(15 downto 0); 
    high_pass_filter_verilog_rst_n: in std_logic; 
    high_pass_filter_verilog_pre_proc_audio: out std_logic_vector(15 downto 0)
  );
end g729_encoder_test_cosim_cw;

architecture structural of g729_encoder_test_cosim_cw is
  signal ce_20_sg_x0: std_logic;
  signal clk_20_sg_x0: std_logic;
  signal clk_net: std_logic;
  signal high_pass_filter_verilog_audio_in_net: std_logic_vector(15 downto 0);
  signal high_pass_filter_verilog_pre_proc_audio_net: std_logic_vector(15 downto 0);
  signal high_pass_filter_verilog_rst_n_net: std_logic;

begin
  high_pass_filter_verilog_audio_in_net <= high_pass_filter_verilog_audio_in;
  high_pass_filter_verilog_rst_n_net <= high_pass_filter_verilog_rst_n;
  high_pass_filter_verilog_pre_proc_audio <= high_pass_filter_verilog_pre_proc_audio_net;

  g729_encoder_test: entity work.g729_encoder_test_cosim
    port map (
      ce_20 => ce_20_sg_x0,
      clk_20 => clk_net,
      high_pass_filter_verilog_audio_in => high_pass_filter_verilog_audio_in_net,
      high_pass_filter_verilog_rst_n => high_pass_filter_verilog_rst_n_net,
      high_pass_filter_verilog_pre_proc_audio => high_pass_filter_verilog_pre_proc_audio_net
    );

  hdlcosim_clk_driver: entity work.g729_encoder_test_cosim_clk_drvr
    port map (
      ce_20 => ce_20_sg_x0,
      clk => clk_net
    );

end structural;
