
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity automation_sys is
	port( SFD , SRD , SW , SFA : IN std_logic;      -- inputs
		ST : IN std_logic_vector(1 downto 0);   -- 00 normal
						   	-- 01 heater temp < 50
						   	-- 11 cooler temp < 70
		clk , rst : IN std_logic;
		fdoor , rdoor , winbuzz , alarambuzz , heater , cooler : out std_logic 			-- outputs
);
end automation_sys;


-----------------------------------------------------------

Architecture arch_automation_sys of automation_sys is 

	-- Enumerated type of states declaration
	type system_states is ( start, front , rear , fire , window, heater_state, cooler_state);
		
	-- state signal decleration
	signal my_curr_state , next_state : system_states;
	begin


		

-------------------------------------------------------------------------------------------------------------
		SYNC_PROCCESS : process(clk) is 
				begin
					if rising_edge(clk) then 
						if rst = '1' then                	--reset outputs
							my_curr_state   <= start;
							fdoor 		<= '0';
							rdoor		<= '0';
							winbuzz		<= '0';
							alarambuzz	<= '0';
							heater		<= '0';
							cooler		<= '0';
						else					-- update current state
							my_curr_state <= next_state;
						END IF;
					END IF;
				
				END PROCESS; 
	
--------------------------------------------------------------------------------------------------------------

		OUTPUT_DECODE : process(my_curr_state , SFD , SRD , SW , SFA , ST) is
				begin
					case (my_curr_state) is -- we close the signal after next stage 
						when start =>
							-- we return here after reach cooler so we should handle this case return after cooler or after rst
							if(rst = '0') then	
								if  ST = "11" then 		  
									cooler <= '1';
								else 
									cooler <= '0';
								end if;
							end if;	
					--------------------------------------------------------
						when front =>			  
							if  SFD = '1' then 			  
								fdoor <= '1';
							else 
								fdoor <= '0';
							end if;
					--------------------------------------------------------
						when rear => 			  
							if  SFD = '1' then 			  
								fdoor <= '1';
							else 
								fdoor <= '0';
							end if;
							if  SRD = '1' then 			  
								rdoor <= '1';
							else 
								rdoor <= '0';
							end if;			
					--------------------------------------------------------
						when window => 			  
							if  SRD = '1' then 			  
								rdoor <= '1';
							else 
								rdoor <= '0';
							end if;	
							if  SW = '1' then 			  
								winbuzz <= '1';
							else 
								winbuzz <= '0';
							end if;	
					--------------------------------------------------------
						when fire => 			  
							if  SW = '1' then 			  
								winbuzz <= '1';
							else 
								winbuzz <= '0';
							end if;	
							if  SFA = '1' then 			  
								alarambuzz <= '1';
							else 
								alarambuzz <= '0';
							end if;	
					--------------------------------------------------------
						when heater_state => 			  
							if  SFA = '1' then 			  
								alarambuzz <= '1';
							else 
								alarambuzz <= '0';
							end if;	
							if  ST = "01" then 			  
								heater <= '1';
							else 
								heater <= '0';
							end if;	
					--------------------------------------------------------
						when cooler_state => 			  
							if  ST = "01" then 			  
								heater <= '1'; 
							else 
								heater <= '0';
							end if;
							if  ST = "11" then 		  
								cooler <= '1';
							else 
								cooler <= '0';
							end if;
					END CASE;
				
				END PROCESS;

--------------------------------------------------------------------------------------------------------------

		NEXT_STAGE_DECODE : process(my_curr_state , SFD , SRD , SW , SFA , ST) is 
				    begin
					next_state <= start;
						-- we also jump from state to another one 0 --> 1 --> 2 ------ and handle the output in its state after cooler_state we return to start to jump to first one 
						case (my_curr_state) is 
							when start =>
								if  SFD = '1' then 			  
									next_state   <= front;
								ELSIF SRD = '1' then
									next_state   <= rear;
								ELSIF SW = '1' then
									next_state   <= window;
								ELSIF SFA = '1' then
									next_state   <= fire;
								ELSIF ST = "01" then
									next_state   <= heater_state;
								ELSIF ST = "11" then
									next_state   <= cooler_state;
								end if;
						--------------------------------------------------------
							when front =>			  		-- propagate to the next stage
								next_state   <= rear;
						--------------------------------------------------------
							when rear => 			  		-- propagate to the next stage
								next_state   <= window;				
						--------------------------------------------------------
							when window => 			  		-- propagate to the next stage
								next_state   <= fire;
						--------------------------------------------------------
							when fire => 			  		-- propagate to the next stage
								next_state   <= heater_state;
						--------------------------------------------------------
							when heater_state => 			  	-- propagate to the next stage
								next_state   <= cooler_state;
						--------------------------------------------------------
							when cooler_state => 			  	-- propagate to the start stage return to start is more efficient than return to front
								next_state   <= start;

						END CASE;
				END PROCESS; 

end arch_automation_sys;