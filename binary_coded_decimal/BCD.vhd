library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD is
	port ( A0,A1,A2,A3,B0,B1,B2,B3: IN STD_LOGIC;
			Y0,Y1,Y2,Y3,Y4 : OUT STD_LOGIC);
end entity BCD;

architecture behaviour of BCD is
	signal S1,S2,S3,O1,AN1,I,S0,C1,C2,C3,C4,Cout1,Cout2,Cout3,Cout4: STD_LOGIC;
	component full_add is
port(A, B, Cin: in std_logic; S, Cout: out std_logic);
end component  full_add;
begin
	FULL_ADDER1:full_add port map(A=>A0,B=>B0,Cin=>'0',S=>S0,Cout=>Cout1);
FULL_ADDER2:full_add port map(A=>A1,B=>B1,Cin=>Cout1,S=>S1,Cout=>Cout2);
FULL_ADDER3:full_add port map(A=>A2,B=>B2,Cin=>Cout2,S=>S2,Cout=>Cout3);
FULL_ADDER4:full_add port map(A=>A3,B=>B3,Cin=>Cout3,S=>S3,Cout=>Cout4);
OR1:OR_2 port map(A=>S1,B=>S2,Y=>O1);
AND1:AND_2 port map(A=>S3,B=>O1,Y=>AN1);
OR2:OR_2 port map(A=>Cout4,B=>AN1,Y=>I);
OR3:OR_2 port map(A=>I,B=>'0',Y=>Y4);
FULL_ADDER5:full_add port map(A=>S0,B=>'0',Cin=>'0',S=>Y0,Cout=>C1);
FULL_ADDER6:full_add port map(A=>S1,B=>I,Cin=>C1,S=>Y1,Cout=>C2);
FULL_ADDER7:full_add port map(A=>S2,B=>I,Cin=>C2,S=>Y2,Cout=>C3);
FULL_ADDER8:full_add port map(A=>S3,B=>'0',Cin=>C3,S=>Y3,Cout=>C4);
end behaviour;