library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity four_bit_add is
	port ( E0,E1,E2,E3,F0,F1,F2,F3: IN STD_LOGIC;
			G0,G1,G2,G3,G4 : OUT STD_LOGIC);
end entity four_bit_add;

architecture behaviour of four_bit_add is
	signal C1,C2,C3,C4,a1,b1 : STD_LOGIC;
	component full_add is
port(A, B, Cin: in std_logic; S, Cout: out std_logic);
end component  full_add;
begin
	FULL_ADD1: full_add port map( A => E0 , B => F0 , Cin => '0', S => G0 , Cout => C1);
	FULL_ADD2: full_add port map( A => E1 , B => F1 , Cin => C1 , S => G1 , Cout => C2);
	FULL_ADD3: full_add port map( A => E2 , B => F2 , Cin => C2 , S => G2 , Cout => C3);
	FULL_ADD4: full_add port map( A => E3 , B => F3 , Cin => C3 , S => G3 , Cout => G4);
end behaviour;