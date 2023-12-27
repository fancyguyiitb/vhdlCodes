library ieee;
use ieee.std_logic_1164.all;
entity delay_one_clock is
 port(inclock, reset : in std_logic;
      outclock : out std_logic);
end entity delay_one_clock;

architecture behav of delay_one_clock is
 signal count: INTEGER := 1;
 signal sign: std_logic := '1';
 
 begin 
 clock_proc:process(inclock, count, reset)
 begin
 if (reset='0') then
 if (inclock='1' and inclock' event and count<25000001) then
 count <= count+1;
 elsif (inclock ='1' and inclock' event and count>25000000) then
 count<=1;
 sign <= not(sign);
 end if;
 else
 count<=1;
 sign<='1';
 end if;
 end process;
 outclock <= sign;
end architecture behav;
  
  
  
	
   