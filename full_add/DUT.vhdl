-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	component add_sub is
	port ( A0,A1,A2,A3,B0,B1,B2,B3,M: in STD_LOGIC;
			S0,S1,S2,S3, Cout1 : out STD_LOGIC);
end component add_sub;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: add_sub port map (A0 => input_vector(8), A1 => input_vector(7), A2 => input_vector(6), A3 => input_vector(5), B0 => input_vector(4), B1 => input_vector(3), B2 => input_vector(2), B3 => input_vector(1), M => input_vector(0),
											S0 => output_vector(4), S1 => output_vector(3), S2 => output_vector(2), S3 => output_vector(1), Cout1 => output_vector(0));

end DutWrap;

