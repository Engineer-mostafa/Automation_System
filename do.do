vsim -gui work.automation_sys
# vsim -gui work.automation_sys 
# Start time: 15:24:19 on Dec 26,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.automation_sys(arch_automation_sys)
add wave -position insertpoint  \
sim:/automation_sys/SFD \
sim:/automation_sys/SRD \
sim:/automation_sys/SW \
sim:/automation_sys/SFA \
sim:/automation_sys/ST \
sim:/automation_sys/clk \
sim:/automation_sys/rst \
sim:/automation_sys/fdoor \
sim:/automation_sys/rdoor \
sim:/automation_sys/winbuzz \
sim:/automation_sys/alarambuzz \
sim:/automation_sys/heater \
sim:/automation_sys/cooler \
sim:/automation_sys/my_curr_state \
sim:/automation_sys/next_state \
sim:/automation_sys/fs_door
force -freeze sim:/automation_sys/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/automation_sys/rst 1 0
force -freeze sim:/automation_sys/SFD 0 0
force -freeze sim:/automation_sys/SRD 0 0
force -freeze sim:/automation_sys/SW 0 0
force -freeze sim:/automation_sys/SFA 0 0
force -freeze sim:/automation_sys/ST 00 0
run
run
force -freeze sim:/automation_sys/rst 0 0
run
run
force -freeze sim:/automation_sys/SW 1 0
run