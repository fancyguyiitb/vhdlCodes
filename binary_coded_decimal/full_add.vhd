library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity full_add is
port(A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity  full_add;

         
architecture struct of full_add is
signal x1, x2, x3, x4, x5,x6,x7: std_logic;
begin
--NOR1 : NOR_2 port map(A => A, B => B, Y => x1);
--NOR2 : NOR_2 port map(A => x1, B => A, Y => x2);
--NOR3 : NOR_2 port map(A => x1, B => B, Y => x3);
--NOR4 : NOR_2 port map(A => x2, B => x3, Y => x4);
--NOR5 : NOR_2 port map(A => x4, B => Cin, Y => x5);
--NOR6 : NOR_2 port map(A => x4, B => x5, Y => x6);
--NOR8 : NOR_2 port map(A => x1, B => x5, Y => S);
--NOR7 : NOR_2 port map(A => x5, B => Cin, Y => x7);
--NOR9 : NOR_2 port map(A => x6, B => x7, Y => Cout);
XOR_1: 
end architecture struct;