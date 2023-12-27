library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux4x1 is
port(I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);
end entity  mux4x1;

         
architecture struct of mux4x1 is
signal x1, x2: std_logic;
begin
MUX2x1_1 : mux2x1 port map(I0 => I3, I1 => I4, S => S1, Y => x1);
MUX2x1_2 : mux2x1 port map(I0 => I1, I1 => I2, S => S1, Y => x2);
MUX2x1_3 : mux2x1 port map(I0 => x2, I1 => x1, S => S2, Y => Y);
end architecture struct;