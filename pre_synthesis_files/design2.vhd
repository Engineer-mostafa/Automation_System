
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Starvation when any signal still 1
entity design2 is
	port( SFD , SRD , SW , SFA : IN std_logic;      -- inputs
		ST : IN std_logic_vector(1 downto 0);   -- 00 normal
						   	-- 01 heater temp < 50
						   	-- 11 cooler temp < 70
		clk , rst : IN std_logic;
		fdoor , rdoor , winbuzz , alarambuzz , heater , cooler : out std_logic 			-- outputs
);
end design2;


-----------------------------------------------------------

Architecture arch_automation_sys_design2 of design2 is 

	-- Enumerated type of states declaration
	type system_states is ( start, front , rear , fire , window, heater_state, cooler_state);
		
	-- state signal decleration
	signal my_curr_state: system_states;
	begin


		

-------------------------------------------------------------------------------------------------------------
		SYNC_PROCCESS : process(clk) is 
				begin
					if rising_edge(clk) then 
						if (rst = '1') then                	--reset outputs
							my_curr_state   <= start;
							fdoor 		<= '0';
							rdoor		<= '0';
							winbuzz		<= '0';
							alarambuzz	<= '0';
							heater		<= '0';
							cooler		<= '0';
						else
						case (my_curr_state) is 
							-- we return here after reach cooler so we should handle this case return after cooler or after rst
							when start =>
								if  SFD = '1' then 			  
									my_curr_state   <= front;
									fdoor 		<= '1';
								ELSIF SRD = '1' then
									my_curr_state   <= rear;
									rdoor		<= '1';
								ELSIF SW = '1' then
									my_curr_state   <= window;
									winbuzz		<= '1';
								ELSIF SFA = '1' then
									my_curr_state   <= fire;
									alarambuzz	<= '1';
								ELSIF ST = "01" then
									my_curr_state   <= heater_state;
									heater		<= '1';
								ELSIF ST = "11" then
									my_curr_state   <= cooler_state;
									cooler		<= '1';
								else 
									my_curr_state   <= start;
								end if;
						--------------------------------------------------------
							when front =>			  		-- propagate to the next stage
								fdoor <= '0';
								my_curr_state   <= start;
						--------------------------------------------------------
							when rear => 			  		-- propagate to the next stage	
								rdoor <= '0';
								my_curr_state   <= start;	
						--------------------------------------------------------
							when window => 			  		-- propagate to the next stage
								winbuzz <= '0';
								my_curr_state   <= start;
						--------------------------------------------------------
							when fire => 			  		-- propagate to the next stage				
								alarambuzz <= '0';	
								my_curr_state   <= start;						
						--------------------------------------------------------
							when heater_state => 			  	-- propagate to the next stage
								heater <= '0';
								my_curr_state   <= start;
						--------------------------------------------------------
							when cooler_state => 			  	-- propagate to the start stage return to start is more efficient than return to front
								cooler <= '0';	
								my_curr_state   <= start;
								

						END CASE;
						
						END IF;
					END IF;
				
				END PROCESS; 	
	


end arch_automation_sys_design2;