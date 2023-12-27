library ieee;
use ieee.std_logic_1164.all;
library work;

entity Testbench is 
end entity Testbench ;

architecture bhv of Testbench is 

component D_FF is 
	port(D,En,reset,pre,clk : in std_logic;
			Q,Qbar : buffer std_logic);
end component D_FF ;


signal D : std_logic := '1' ;
signal En : std_logic:= '0' ;
signal clk : std_logic:= '0' ;
signal pre,reset : std_logic;

signal Q: std_logic;
signal Qbar : std_logic;

begin 

DFF1 : D_FF port map(D=>D,En=>En,reset=>reset,pre=>pre,clk=>clk,Q=>Q,Qbar=>Qbar);

D<= NOT(D) after 20ns;
En <= NOT(En) after 400ns ;
clk <= NOT(clk) after 5ns;

preset_proc:process
	begin
		pre<='0';
		wait for 200 ns;
		pre<='1';
		wait for 50 ns;
		--assert(NOW < 900 ns)
			--report "Simulation done"
			--severity ERROR;
	end process;

reset_proc:process
	begin
		reset<='0';
		wait for 400 ns;
		reset<='1';
		wait for 50 ns;
		--assert(NOW < 900 ns)
			--report "Simulation done"
			--severity ERROR;
	end process;



end architecture bhv;
