--importing libraries
library ieee;
use ieee.std_logic_1164.all;

entity alu is
port (
A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
output: out std_logic_vector(5 downto 0);
);
end entity alu;

architecture beh of alu is
--declaring the signals
signal sel: std_logic_vector(1 downto 0);

begin
sel <= B(3)&A(3); --& is concatenate operator; MSBs are select lines

alu_process: process(A,B,sel)
 variable x: std_logic_vector(3 downto 0);
 variable  y: std_logic_vector(3 downto 0);
 
 begin
 
  case sel is
  --max function
  when "00" =>
  if(A>B)
  then op <= "00" & A;
  elsif(A<B)
  then op <= "00" & B;
  else
  op <= "000000";
  end if;
  
  --and function
  when "01" =>
  x := A and B;
  op <= "00" & x;
  
  --NOT function
  when "10" =>
  y := not(A);
  op <= "00" & y;
  
  --for any other combination
  when others =>
  if(A=B)
  then op <= "00" & A;
  else
  op <= "000000";
  end if;
  
  end case;
  end process;
  
 


end architecture beh;