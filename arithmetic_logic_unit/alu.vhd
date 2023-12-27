library ieee;
use ieee.std_logic_1164.all;
entity alu_beh is
port (
A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
op: out std_logic_vector(5 downto 0)
) ;
end alu_beh;
architecture a1 of alu_beh is
signal sel: std_logic_vector(1 downto 0);

begin
 sel <= B(3)&A(3);
 
 alu : process( A, B, sel )
  variable x: std_logic_vector(3 downto 0);
  variable y: std_logic_vector(3 downto 0);

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
	
	--not operation
	when "10" => 
y := not(A);
	op <= "00" & y;
	
	--equivalent function
	when others => 
    if(A=B)
     then op <= "00" & A;	
	 else
	  op <= "000000";
	 end if;
	 
	 end case;



-- complete VHDL code for various outputs of ALU based on select lines
-- Hint: use if/else statement
--------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------


-- sub function usage :
-- signal_name <= sub(A,B)
-- variable_name := sub(A,B)
--
-- concatenate operator usage:
-- "0000" & A
end process ; --alu
end a1 ; -- a1