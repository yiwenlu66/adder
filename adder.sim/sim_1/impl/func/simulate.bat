@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim peripheral_test_tb_func_impl -key {Post-Implementation:sim_1:Functional:peripheral_test_tb} -tclbatch peripheral_test_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
