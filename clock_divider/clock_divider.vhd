library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
 port(inclock, reset : in std_logic;
      outclock : out std_logic);
end entity clock_divider;

architecture behav of clock_divider is
 signal count: INTEGER := 1;
 signal sign: std_logic := '1';
 
 begin 
 clock_proc:process(inclock, count, reset)
 begin
 if (reset='0') then
 if (inclock='1' and inclock' event and count<100001) then
 count <= count+1;
 elsif (inclock ='1' and inclock' event and count>100000) then
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
  
  
  
	
   