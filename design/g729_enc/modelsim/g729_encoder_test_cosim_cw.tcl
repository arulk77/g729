proc openClient {} {
  set find_spare 0
  set port 1301
  set cid [socket localhost $port]
  echo Connected to Xilinx System Generator Block {ModelSim}
  fileevent $cid readable "event_handler $cid"
  fconfigure $cid -buffering line
  return $cid
}

proc openWave {} {
  global vsim_version
  destroy .wave
  onerror {resume}
  quietly WaveActivateNextPane {} 0
  add wave -noupdate -height 30 -divider {  Block : "High Pass Filter (verilog)"  }
  add wave -label "  audio_in" sim:/g729_encoder_test_cosim_cw/high_pass_filter_verilog_audio_in
  add wave -label "  rst_n" sim:/g729_encoder_test_cosim_cw/high_pass_filter_verilog_rst_n
  add wave -noupdate -height 11 -divider { }
  add wave -label "  pre_proc_audio" sim:/g729_encoder_test_cosim_cw/high_pass_filter_verilog_pre_proc_audio
  add wave -noupdate -height 50 -divider {Clock Signals}
  add wave -label "  ce_20" sim:/g729_encoder_test_cosim_cw/hdlcosim_clk_driver/ce_20
  add wave -label "  clk" sim:/g729_encoder_test_cosim_cw/hdlcosim_clk_driver/clk
  TreeUpdate [SetDefaultTree]
  WaveRestoreCursors {3.000000000000 sec}
  WaveRestoreZoom {0 sec} {10.000000000000 sec}
  configure wave -justifyvalue right
  if [expr $vsim_version>2002.11] then {view wave -title {System Generator Co-Simulation   (from block "ModelSim")} -x {128} -width {2304}} else {view wave -x {128} -width {2304}}
}

proc event_handler {cid} {
  set request ""
  if {[eof $cid]} {
      # If the socket is closed for any reason, the
      # handler will get called with eof.
    echo System Generator has closed its connection.
    close $cid
  } else {
    gets $cid message
    scan $message "%s" request
    switch -- $request {
      f {
        scan $message "%s %s %s" request high_pass_filter_verilog_audio_in high_pass_filter_verilog_rst_n 
        onerror { puts $cid 9 ; flush $cid}
        force high_pass_filter_verilog_audio_in $high_pass_filter_verilog_audio_in
        force high_pass_filter_verilog_rst_n $high_pass_filter_verilog_rst_n
        if [llength [find signal high_pass_filter_verilog_audio_in]] {puts $cid 2} else {puts $cid 9}
        flush $cid
      }
      r {
        scan $message "%s %s" request delta_t
        onerror { puts $cid 9 ; flush $cid }
        run $delta_t sec
        if [llength [find signal high_pass_filter_verilog_audio_in]] {puts $cid 3} else {puts $cid 9}
        flush $cid
      }
      e {
        set valMsg [examine high_pass_filter_verilog_pre_proc_audio]
        puts $cid $valMsg
        flush $cid
      }
      quit {
        quit -sim
        echo simstats:
        simstats
      }
      die {
        close $cid
        quit -f
      }
      detach {
        echo simstats:
        simstats
        close $cid
      }
      offerExit {
        _add_menu main controls right SystemMenu SystemWindowFrame {Exit this Sysgen Co-Simulation Engine} {quit -force}
      }
    }
  }
}

set cid [openClient]

global xlcosim_stat
global xlcosim_is_mxe
global vsim_version
set xlcosim_stat 0
set xlcosim_is_mxe 0

if ([info exists vsim_version]==0) {
  set xlcosim_is_mxe 1
  set vsim_version 2003.3
}
puts $cid $xlcosim_is_mxe
flush $cid
set UserTimeUnit sec
.main clear

onerror { global xlcosim_stat ; set xlcosim_stat 9 ; resume }
vlib work
if {$xlcosim_stat==0} { 
  onerror { global xlcosim_stat ; set xlcosim_stat 9; resume }
  vlog +define+HDL_COSIM=1 high_pass_filter.v
  update
  puts $cid 3
  flush $cid
}

if {$xlcosim_stat==0} { 
  onerror { global xlcosim_stat ; set xlcosim_stat 9; resume }
  vcom -93 g729_encoder_test_cosim.vhd
  update
  puts $cid 3
  flush $cid
}

if {$xlcosim_stat==0} { 
  onerror { global xlcosim_stat ; set xlcosim_stat 9;  resume }
  if {$xlcosim_is_mxe==1} { 
    vcom -93 g729_encoder_test_cosim_cw.vhd
  } else {
    vcom -93 g729_encoder_test_cosim_cwf.vhd
  }
}
if {$xlcosim_stat==0} {
  onerror { global xlcosim_stat ; set xlcosim_stat 9; resume }
  onElabError { global xlcosim_stat ; set xlcosim_stat 9; resume }
  vsim -t ps work.g729_encoder_test_cosim_cw -title {System Generator Co-Simulation   (from block "ModelSim")}
  update
  if {$xlcosim_stat==0} {
    onerror { global xlcosim_stat ; set xlcosim_stat 9; resume }
    if [llength [find signal high_pass_filter_verilog_audio_in]] {} else {global xlcosim_stat ; set xlcosim_stat 9  }
}
  if {$xlcosim_stat==0} {
    openWave
  }
  if {$xlcosim_stat==0} {
    do {/home/aruls/projects/phd/g729/design/g729_enc/after_vsim.do}
  }
}

puts $cid $xlcosim_stat
flush $cid
if {$xlcosim_stat!=0} {
  close $cid
}

if {($xlcosim_stat==0)&&($xlcosim_is_mxe==0)} {
  run -all
}