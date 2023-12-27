-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	component fourbit_mux4x1 is
port(a,b,c,d: std_logic_vector(3 downto 0);
     s: in std_logic_vector(1 downto 0);
	  Y: out std_logic_vector(3 downto 0));
end component  fourbit_mux4x1;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fourbit_mux4x1 port map (S =>input_vector(1 downto 0), a => input_vector(5 downto 2), b => input_vector(9 downto 6), c => input_vector(13 downto 10), d => input_vector(17 downto 14), Y => output_vector(3 downto 0));

end DutWrap;

