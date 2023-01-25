#set_property PACKAGE_PIN W5 [get_ports CCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports CCLK]

##using the LEDs to get the output stored in X.
##from LSB(X[0]) to MSB(X[5]) using LEDs 0-5.
set_property PACKAGE_PIN U16 [get_ports {X[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {X[0]}]

set_property PACKAGE_PIN E19 [get_ports {X[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {X[1]}]

set_property PACKAGE_PIN U19 [get_ports {X[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {X[2]}]

set_property PACKAGE_PIN V19 [get_ports {X[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {X[3]}]

set_property PACKAGE_PIN W18 [get_ports {X[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {X[4]}]

set_property PACKAGE_PIN U15 [get_ports X[5]]
set_property IOSTANDARD LVCMOS33 [get_ports X[5]]



##for inputs using the switches
##SWITCHES FOR:
##A[0] = R2 
##A[1] = T1
##A[2] = U1
##A[3] = W2
##A[4] = R3
##A[5] = T2

set_property PACKAGE_PIN R2 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property PACKAGE_PIN T1 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property PACKAGE_PIN U1 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property PACKAGE_PIN W2 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

set_property PACKAGE_PIN R3 [get_ports {A[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[4]}]

set_property PACKAGE_PIN T2 [get_ports {A[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[5]}]

##SWITCHES FOR:
##B[0] = V15
##B[1] = W15
##B[2] = W17
##B[3] = W16
##B[4] = V16
##B[5] = V17

set_property PACKAGE_PIN V15 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

set_property PACKAGE_PIN W15 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

set_property PACKAGE_PIN W17 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

set_property PACKAGE_PIN W16 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

set_property PACKAGE_PIN V16 [get_ports {B[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[4]}]

set_property PACKAGE_PIN V17 [get_ports {B[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[5]}]

##FOR fxn using buttons
## BTNL for fxn[0] (pin â€“ T17)
## BTNC for fxn[1] (pin â€“ V18)
## BTNR for fxn[2] (pin â€“ W19)


set_property PACKAGE_PIN T17 [get_ports fxn[0]]
set_property IOSTANDARD LVCMOS33 [get_ports fxn[0]]


set_property PACKAGE_PIN V18 [get_ports fxn[1]]
set_property IOSTANDARD LVCMOS33 [get_ports fxn[1]]

set_property PACKAGE_PIN W19 [get_ports fxn[2]]
set_property IOSTANDARD LVCMOS33 [get_ports fxn[2]]

