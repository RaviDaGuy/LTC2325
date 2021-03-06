set_property PACKAGE_PIN K17 [get_ports data]
set_property IOSTANDARD LVCMOS18 [get_ports adcclk]
set_property IOSTANDARD LVCMOS18 [get_ports clkout]
set_property DRIVE 16 [get_ports clkout]
set_property SLEW FAST [get_ports clkout]
set_property SLEW FAST [get_ports cnvO]
set_property DRIVE 16 [get_ports cnvO]
set_property IOSTANDARD LVCMOS18 [get_ports cnvO]
set_property IOSTANDARD LVCMOS18 [get_ports data]
set_property PACKAGE_PIN L1 [get_ports {led[15]}]
set_property PACKAGE_PIN P1 [get_ports {led[14]}]
set_property PACKAGE_PIN N3 [get_ports {led[13]}]
set_property PACKAGE_PIN P3 [get_ports {led[12]}]
set_property PACKAGE_PIN U3 [get_ports {led[11]}]
set_property PACKAGE_PIN W3 [get_ports {led[10]}]
set_property PACKAGE_PIN V3 [get_ports {led[9]}]
set_property PACKAGE_PIN V13 [get_ports {led[8]}]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property PACKAGE_PIN U16 [get_ports {led[0]}]

set_property PACKAGE_PIN R18 [get_ports cnvO]
set_property PACKAGE_PIN L3 [get_ports clkout]

set_property IOSTANDARD LVCMOS18 [get_ports sysclk]
set_property IOSTANDARD LVCMOS18 [get_ports {led[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]

set_property PACKAGE_PIN R2 [get_ports switch]
set_property IOSTANDARD LVCMOS18 [get_ports switch]

set_property PACKAGE_PIN N2 [get_ports read]
set_property IOSTANDARD LVCMOS18 [get_ports read]

set_property PACKAGE_PIN M2 [get_ports dataRead]
set_property IOSTANDARD LVCMOS18 [get_ports dataRead]

set_property SLEW FAST [get_ports dataRead]
set_property DRIVE 24 [get_ports dataRead]


set_property PACKAGE_PIN N1 [get_ports reg1]
set_property IOSTANDARD LVCMOS18 [get_ports reg1]

set_property LOC M18 [get_cells adcclk_IBUF_inst]

