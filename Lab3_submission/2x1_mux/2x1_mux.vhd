library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux2x1 is
port(I0, I1, S: in std_logic; Y: out std_logic);
end entity  mux2x1;

         
architecture struct of mux2x1 is
signal x1, x2, x3: std_logic;
begin
NOT1 : NOT_2 port map(A => S, Y => x1);
AND1 : AND_2 port map(A => I0, B => x1, Y => x2);
AND2 : AND_2 port map(A => S, B => I1, Y => x3);
OR1 : OR_2 port map(A => x2, B => x3, Y => Y);
end architecture struct;