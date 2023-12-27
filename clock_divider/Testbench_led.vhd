library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench is
end Testbench;

architecture bhv of Testbench is

component led is
	port( clock:in std_logic;
			sw:in std_logic;
			reset:in std_logic;
			led:out std_logic_vector(7 downto 0));
end component;

signal inp,clk,rst:std_logic;
signal outp:std_logic_vector(7 downto 0);

begin
	clock_proc:process
	begin
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		--assert(NOW < 900 ns)
			--report "Simulation done"
			--severity ERROR;
	end process;
	
	input:process
	begin
		inp<='0';
		wait for 15000 ms;
		inp<='1';
		wait for 15000 ms;
		--assert(NOW < 900 ns)
			--report "Simulation done"
			--severity ERROR;
	end process;
	
	reset_proc:process
	begin
		rst<='0';
		wait for 10000 ns;
		rst<='1';
		wait for 20 ns;
		rst<='0';
		wait for 10000 ns;
		--assert(NOW < 900 ns)
			--report "Simulation done"
			--severity ERROR;
	end process;
	
	Sys: led port map(clock=>clk, sw=>inp, reset=>rst, led=>outp);
	
	
end bhv;