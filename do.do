vsim -gui work.automation_system
# vsim -gui work.automation_system 
# Start time: 23:24:16 on Dec 16,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.automation_system(arch_automation_system)
add wave -position insertpoint sim:/automation_system/*
force -freeze sim:/automation_system/SFD 1 0
force -freeze sim:/automation_system/SRD 1 0
force -freeze sim:/automation_system/SW 1 0
force -freeze sim:/automation_system/SFA 1 0
force -freeze sim:/automation_system/ST 11 0
force -freeze sim:/automation_system/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/automation_system/rst 0 0
run
noforce sim:/automation_system/SFD
run
noforce sim:/automation_system/SRD
run
noforce sim:/automation_system/SW
run
noforce sim:/automation_system/SFA
run
force -freeze sim:/automation_system/ST 01 0
run
noforce sim:/automation_system/ST
run
force -freeze sim:/automation_system/SFD 1 0
run
force -freeze sim:/automation_system/rst 1 0

run
run