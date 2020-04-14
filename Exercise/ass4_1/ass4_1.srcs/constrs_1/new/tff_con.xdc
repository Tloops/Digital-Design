set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports q]
set_property IOSTANDARD LVCMOS33 [get_ports qn]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports T]
set_property PACKAGE_PIN AA8 [get_ports clk]
set_property PACKAGE_PIN V8 [get_ports reset]
set_property PACKAGE_PIN V9 [get_ports T]
set_property PACKAGE_PIN K17 [get_ports q]
set_property PACKAGE_PIN L13 [get_ports qn]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -of_objects [get_cells q_OBUF_inst_i_2]]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -of_objects [get_cells q_OBUF_inst_i_3]]
set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning}  [get_drc_checks NSTD-1]