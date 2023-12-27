library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sig is
port( on_switch,reset,clock: in std_logic;
N,E,S,W: out std_logic_vector(1 downto 0));
end sig;

architecture light of sig is
component hz_clock is
port( inclock,reset: in std_logic;
outclock: out std_logic);
end component hz_clock;
signal hz:std_logic;

begin
clock_1: hz_clock port map(clock,reset,hz);

light_proc:process(hz,on_switch)
variable count: INTEGER := 0;
begin
if(hz = '1' and hz'event) then
if(reset = '1') then
	N<="01";
	E<="11";
	S<="11";
	W<="11";
else
	count := count + 1;
end if;

if(count = 5) then
	N<="10";
	E<="10";
elsif(count = 6) then
	N<="11";
	E<="01";
elsif(count = 11) then
	E<="10";
	S<="10";
elsif(count = 12) then
	E<="11";
	S<="01";
elsif(count = 17) then
	S<="10";
	W<="10";
elsif(count = 18) then
	S<="11";
	W<="01";
elsif(count = 23) then
	W<="10";
	N<="10";
elsif(count = 24) then
	W<="11";
	N<="01";
	count := 0;
end if;
end if;
	

end process;


end light;