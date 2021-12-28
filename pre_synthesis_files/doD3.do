

vsim -gui work.design3
# vsim -gui work.design3
# Start time: 15:24:19 on Dec 26,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.design3(arch_automation_sys_design3)
add wave -position insertpoint  \
sim:/design3/SFD \
sim:/design3/SRD \
sim:/design3/SW \
sim:/design3/SFA \
sim:/design3/ST \
sim:/design3/clk \
sim:/design3/rst \
sim:/design3/fdoor \
sim:/design3/rdoor \
sim:/design3/winbuzz \
sim:/design3/alarambuzz \
sim:/design3/heater \
sim:/design3/cooler \
sim:/design3/my_curr_state \

force -freeze sim:/design3/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/design3/rst 1 0
force -freeze sim:/design3/SFD 0 0
force -freeze sim:/design3/SRD 0 0
force -freeze sim:/design3/SW 0 0
force -freeze sim:/design3/SFA 0 0
force -freeze sim:/design3/ST 00 0
run
run
force -freeze sim:/design3/rst 0 0
run
run
force -freeze sim:/design3/SW 1 0
run

run
run
run
run
force -freeze sim:/design3/SRD 1 0
force -freeze sim:/design3/SFA 1 0
force -freeze sim:/design3/ST 01 0
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/design3/ST 11 0
run
run
run
force -freeze sim:/design3/SFD 0 0
run
run
run
run
run
force -freeze sim:/design3/SFD 0 0
force -freeze sim:/design3/SRD 0 0
force -freeze sim:/design3/SW 0 0
force -freeze sim:/design3/SFA 0 0
force -freeze sim:/design3/ST 00 0
run
run