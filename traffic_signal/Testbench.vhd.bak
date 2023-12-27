library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBench is 
end; 
architecture TB_BEHAVIOR of TestBench is 
component sig is
port( on_switch,reset,clock: in std_logic;
N,E,S,W: out std_logic_vector(1 downto 0));
end component sig;
signal inclock_test,reset_test:std_logic :='1' ;
signal onswitch_test:std_logic :='0'; 
signal N_test,E_test,S_test,W_test:std_logic_vector(1 downto 0);

begin 
inclock_test <= not inclock_test after 10 ns;
reset_test <= '1','0' after 550 ns;
onswitch_test <= not onswitch_test after 1000000000 ns;

 
dut_instance:sig port map (onswitch_test,reset_test,inclock_test,N_test,E_test,S_test,W_test);

end TB_BEHAVIOR;