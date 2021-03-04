SetActiveLib -work
comp -include "$dsn\src\simplecpu.vhd" 
comp -include "$dsn\src\TestBench\simplecpu_TB.vhd" 
asim +access +r TESTBENCH_FOR_simplecpu 
wave 
wave -noreg reset
wave -noreg clk
wave -noreg output
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\simplecpu_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_simplecpu 
