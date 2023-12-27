library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;
  
  component full_add is
   port(A, B, Cin: in std_logic; S, Cout: out std_logic);
  end component full_add;
  
  component NOT_2 is
   port (A: in std_logic; Y: out std_logic);
  end component NOT_2;
  
  component mux2x1 is
port(I0, I1, S: in std_logic; Y: out std_logic);
end component  mux2x1;

component mux4x1 is
port(I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);
end component mux4x1;

end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity full_add is
   port(A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity full_add;

architecture Equations of full_add is
begin
   S <= A xor B xor Cin ;
 Cout <= (A and B) or (Cin and A) or (Cin and B) ;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity NOT_2 is
   port(A: in std_logic; Y: out std_logic);
end entity NOT_2;

architecture Equations of NOT_2 is
begin
   Y <= not(A);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity mux2x1 is
port(I0, I1, S: in std_logic; Y: out std_logic);
end entity  mux2x1;

architecture Equations of mux2x1 is
begin
   Y <= (I0 and (not(S))) or (I1 and S);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity mux4x1 is
port(I1, I2, I3, I4, S1, S2: in std_logic; Y: out std_logic);
end entity  mux4x1;

architecture Equations of mux4x1 is
begin
   Y <= (((I3 AND (NOT(S1))) OR (I4 AND (S1))) AND (NOT(S2))) OR (((I1 AND (NOT(S1))) OR (I2 AND (S1))) AND (S2));
end Equations;
  
