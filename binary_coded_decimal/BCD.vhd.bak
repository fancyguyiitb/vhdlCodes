library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity add_sub is
	port ( A0,A1,A2,A3,B0,B1,B2,B3,M: IN STD_LOGIC;
			S0,S1,S2,S3,Cout1 : OUT STD_LOGIC);
end entity add_sub;

architecture behaviour of add_sub is
	signal BM : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal C1 , C2, C3 : STD_LOGIC;
begin
	XOR1: XOR_2	port map( A => B0 , B => M , Y => BM(0) );
	XOR2: XOR_2	port map( A => B1 , B => M , Y => BM(1) );
	XOR3: XOR_2	port map( A => B2 , B => M , Y => BM(2) );
	XOR4: XOR_2	port map( A => B3 , B => M , Y => BM(3) );
	FULL_ADD1: full_add port map( A => A0 , B => BM(0) , Cin => M, S => S0 , Cout => C1);
	FULL_ADD2: full_add port map( A => A1 , B => BM(1) , Cin => C1 , S => S1 , Cout => C2);
	FULL_ADD3: full_add port map( A => A2 , B => BM(2) , Cin => C2 , S => S2 , Cout => C3);
	FULL_ADD4: full_add port map( A => A3 , B => BM(3) , Cin => C3 , S => S3 , Cout => Cout1);
end behaviour;