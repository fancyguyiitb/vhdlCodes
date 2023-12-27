library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fourbit_mux4x1 is
port(a,b,c,d: std_logic_vector(3 downto 0);
     s: in std_logic_vector(1 downto 0);
	  Y: out std_logic_vector(3 downto 0));
end entity  fourbit_mux4x1;

         
architecture struct of fourbit_mux4x1 is


begin
MUX1 : mux4x1 port map(I1 => a(0), I2 => b(0), I3 => c(0), I4 => d(0), S1 => s(0), s2 => S(1), Y => y(0));
MUX2 : mux4x1 port map(I1 => a(1), I2 => b(1), I3 => c(1), I4 => d(1), S1 => s(0), s2 => S(1), Y => y(1));
MUX3 : mux4x1 port map(I1 => a(2), I2 => b(2), I3 => c(2), I4 => d(2), S1 => s(0), s2 => S(1), Y => y(2));
MUX4 : mux4x1 port map(I1 => a(3), I2 => b(3), I3 => c(3), I4 => d(3), S1 => s(0), s2 => S(1), Y => y(3));
end architecture struct;