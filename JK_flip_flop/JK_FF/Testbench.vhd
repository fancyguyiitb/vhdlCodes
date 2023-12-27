library ieee;
use ieee.std_logic_1164.all;
library work;

entity Testbench is 
end entity Testbench ;

architecture bhv of Testbench is 

component JK_FF is 
	port(J,K : in std_logic;
			Q,Qbar : buffer std_logic;
			clk,En,reset,pre : in std_logic);
end component JK_FF;

signal J,K : std_logic := '1' ;
signal En : std_logic:= '0' ;
signal clk : std_logic:= '0' ;
signal pre,reset : std_logic;

signal Q: std_logic;
signal Qbar : std_logic;



begin 

latch1 : JK_FF port map(J=>J,K=>K,Q=>Q,Qbar=>Qbar,clk=>clk,En=>En,reset=>reset,pre=>pre);

J<= NOT(J) after 20ns;
K<= NOT(K) after 14ns;
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
