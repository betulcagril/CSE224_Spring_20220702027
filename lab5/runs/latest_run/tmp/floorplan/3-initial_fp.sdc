###############################################################################
# Created by write_sdc
# Sun Jun  8 22:18:52 2025
###############################################################################
current_design semi_cpu
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {control}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {an[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[16]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[17]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[18]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[19]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[20]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[21]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[22]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[23]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[24]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[25]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[26]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[27]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[28]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[29]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[30]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[31]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {seg[6]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {an[7]}]
set_load -pin_load 0.0334 [get_ports {an[6]}]
set_load -pin_load 0.0334 [get_ports {an[5]}]
set_load -pin_load 0.0334 [get_ports {an[4]}]
set_load -pin_load 0.0334 [get_ports {an[3]}]
set_load -pin_load 0.0334 [get_ports {an[2]}]
set_load -pin_load 0.0334 [get_ports {an[1]}]
set_load -pin_load 0.0334 [get_ports {an[0]}]
set_load -pin_load 0.0334 [get_ports {result[31]}]
set_load -pin_load 0.0334 [get_ports {result[30]}]
set_load -pin_load 0.0334 [get_ports {result[29]}]
set_load -pin_load 0.0334 [get_ports {result[28]}]
set_load -pin_load 0.0334 [get_ports {result[27]}]
set_load -pin_load 0.0334 [get_ports {result[26]}]
set_load -pin_load 0.0334 [get_ports {result[25]}]
set_load -pin_load 0.0334 [get_ports {result[24]}]
set_load -pin_load 0.0334 [get_ports {result[23]}]
set_load -pin_load 0.0334 [get_ports {result[22]}]
set_load -pin_load 0.0334 [get_ports {result[21]}]
set_load -pin_load 0.0334 [get_ports {result[20]}]
set_load -pin_load 0.0334 [get_ports {result[19]}]
set_load -pin_load 0.0334 [get_ports {result[18]}]
set_load -pin_load 0.0334 [get_ports {result[17]}]
set_load -pin_load 0.0334 [get_ports {result[16]}]
set_load -pin_load 0.0334 [get_ports {result[15]}]
set_load -pin_load 0.0334 [get_ports {result[14]}]
set_load -pin_load 0.0334 [get_ports {result[13]}]
set_load -pin_load 0.0334 [get_ports {result[12]}]
set_load -pin_load 0.0334 [get_ports {result[11]}]
set_load -pin_load 0.0334 [get_ports {result[10]}]
set_load -pin_load 0.0334 [get_ports {result[9]}]
set_load -pin_load 0.0334 [get_ports {result[8]}]
set_load -pin_load 0.0334 [get_ports {result[7]}]
set_load -pin_load 0.0334 [get_ports {result[6]}]
set_load -pin_load 0.0334 [get_ports {result[5]}]
set_load -pin_load 0.0334 [get_ports {result[4]}]
set_load -pin_load 0.0334 [get_ports {result[3]}]
set_load -pin_load 0.0334 [get_ports {result[2]}]
set_load -pin_load 0.0334 [get_ports {result[1]}]
set_load -pin_load 0.0334 [get_ports {result[0]}]
set_load -pin_load 0.0334 [get_ports {seg[6]}]
set_load -pin_load 0.0334 [get_ports {seg[5]}]
set_load -pin_load 0.0334 [get_ports {seg[4]}]
set_load -pin_load 0.0334 [get_ports {seg[3]}]
set_load -pin_load 0.0334 [get_ports {seg[2]}]
set_load -pin_load 0.0334 [get_ports {seg[1]}]
set_load -pin_load 0.0334 [get_ports {seg[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {control}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
