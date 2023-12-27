library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_hz_clock is
port( inclock,reset: in std_logic;
outclock: out std_logic);
end one_hz_clock;
architecture bhv of one_hz_clock is

signal sign: std_logic:='1';

begin 
clock_proc:process(inclock,reset)
variable count: INTEGER := 1;
begin
if(inclock'event and inclock='1' ) then
		count := count+1;
		if (count=25000000) then
			count := 1;
			sign <= not sign;
		end if;
end if;
end process;
outclock <= sign;
end architecture bhv;
