-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	COMPONENT bcd_to_xcode is
	port ( A0,A1,A2,A3: IN STD_LOGIC;
			Y0,Y1,Y2,Y3,Y4 : OUT STD_LOGIC);
end COMPONENT bcd_to_xcode;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: bcd_to_xcode port map (A3 => input_vector(3), A2 => input_vector(2), 
	A1 => input_vector(1), 
	A0 => input_vector(0),
	Y3 => output_vector(3),
	Y2 => output_vector(2),
	Y1 => output_vector(1),
	Y0 => output_vector(0));

end DutWrap;

