@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim peripheral_test_ver_time_synth -key {Post-Synthesis:sim_1:Timing:peripheral_test_ver} -tclbatch peripheral_test_ver.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
