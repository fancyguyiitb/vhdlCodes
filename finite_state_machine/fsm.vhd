library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is

 port( inp:in std_logic_vector(4 downto 0);
       reset,clock:in std_logic;
       outp: out std_logic);
 
end fsm;

architecture behav of fsm is

 type state1 is (rst1, s11, s12);
 type state2 is (rst2, s21, s22);
 type state3 is (rst3, s31, s32, s33, s34);
 
 signal y1, y2, y3: std_logic;
 
 signal ps1, ns1 : state1 := rst1;
 signal ps2, ns2 : state2 := rst2;
 signal ps3, ns3 : state3 := rst3;
 
begin

 clock_process: process(reset, clock)
 begin
  if(clock = '1' and clock'event) then
    if(reset = '1') then
	   ps1 <= rst1;
		ps2 <= rst2;
		ps3 <= rst3;
	 else
	   ps1 <= ns1;
		ps2 <= ns2;
		ps3 <= ns3;
	 end if;
  end if;
 end process;
 
 --for cry
 transition_process1: process(ps1, inp)
 begin
  case ps1 is 
   when rst1 =>
	 if(unsigned(inp) = 3) then
	  ns1 <= s11;
	 else
	  ns1 <= rst1;
	 end if;
	
   when s11 =>
	 if(unsigned(inp) = 18) then
	  ns1 <= s12;
	 else
	  ns1 <= s11;
	 end if;	
	 
	when s12 =>
	 if(unsigned(inp) = 25) then
	  ns1 <= rst1;
	 else
	  ns1 <= s12;
	 end if;	
	 
  end case;
 end process;
 
 output_process1: process(ps1, inp)
 begin
  if(unsigned(inp) = 25 and ps1 = s12) then
    y1 <= '1';
  else
    y1 <= '0';
  end if;
 end process;

 --for run
 transition_process2: process(ps2, inp)
 begin
  case ps2 is 
   when rst2 =>
	 if(unsigned(inp) = 18) then
	  ns2 <= s21;
	 else
	  ns2 <= rst2;
	 end if;
	
   when s21 =>
	 if(unsigned(inp) = 21) then
	  ns2 <= s22;
	 else
	  ns2 <= s21;
	 end if;	
	 
	when s22 =>
	 if(unsigned(inp) = 14) then
	  ns2 <= rst2;
	 else
	  ns2 <= s22;
	 end if;	
	
  end case;
 end process;
 
 output_process2: process(ps2, inp)
 begin
  if(unsigned(inp) = 14 and ps2 = s22) then
    y2 <= '1';
  else
    y2 <= '0';
  end if;
 end process;
 
 --for broom
 transition_process3: process(ps3, inp)
 begin
  case ps3 is 
   when rst3 =>
	 if(unsigned(inp) = 2) then
	  ns3 <= s31;
	 else
	  ns3 <= rst3;
	 end if;
	
   when s31 =>
	 if(unsigned(inp) = 18) then
	  ns3 <= s32;
	 else
	  ns3 <= s31;
	 end if;	
	 
	when s32 =>
	 if(unsigned(inp) = 15) then
	  ns3 <= s33;
	 else
	  ns3 <= s32;
	 end if;	
	 
	when s33 =>
	 if(unsigned(inp) = 15) then
	  ns3 <= s34;
	 else
	  ns3 <= s33;
	 end if;	

	when s34 =>
	 if(unsigned(inp) = 13) then
	  ns3 <= rst3;
	 else
	  ns3 <= s34;
	 end if;		
	

  end case;
 end process; 
 
 output_process3: process(ps3, inp)
 begin
  if(unsigned(inp) = 13 and ps3 = s34) then
    y3 <= '1';
  else
    y3 <= '0';
  end if;
 end process;
 
 outp <= y1 or y2 or y3;
 
end architecture behav;