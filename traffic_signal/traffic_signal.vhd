library IEEE;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity traffic_signal is
 port(clk: in std_logic;
		 res: in std_logic;
		 red1: out std_logic;
		 yellow1: out std_logic;
		 green1: out std_logic;
		 red2: out std_logic;
		 yellow2: out std_logic;
		 green2: out std_logic;
		 red3: out std_logic;
		 yellow3: out std_logic;
		 green3: out std_logic;
		 red4: out std_logic;
		 yellow4: out std_logic;
		 green4: out std_logic);
end entity traffic_signal;

architecture trafficA of traffic_signal is
type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);
signal state : state_type:= s0;
signal count : integer := 0;
    
	 signal lights: std_logic_vector(11 downto 0);
	 
begin
    STATEpro: process(state)
	    begin 
		    case state is
			   when s0 => lights <="100100100001";
				when s1 => lights <="100100010010";
				when s2 => lights <="100100001100";
				when s3 => lights <="100010010100";
				when s4 => lights <="100001100100";
				when s5 => lights <="010010100100";
				when s6 => lights <="001100100100";
				when s7 => lights <="010100100010";
				when others => lights <= lights;
			end case;
	end process;
	
	LT: process(clk)
       begin 
		    case count is
			   when 0 => state <= s0; count <= count + 1;
				when 5 => state <= s1; count <= count + 1; --1st green ends
				when 6 => state <= s2; count <= count + 1; --1st yellow ends
				when 11 => state <= s3; count <= count + 1; --2nd green ends
				when 12 => state <= s4; count <= count + 1; --2nd yellow ends
				when 15 => state <= s5; count <= count + 1; --3rd green ends
				when 16 => state <= s6; count <= count + 1; --3rd yellow ends
				when 22 => state <= s7; count <= count + 1; --4th green ends
				when 23 => count <= 0; --4th yellow ends
				when others => count <= count + 1;
			end case;
			
		green4 <= lights(0);
		yellow4 <= lights(1);
		red4 <= lights(2);
		green3 <= lights(3);
		yellow3 <= lights(4);
		red3 <= lights(5);
		green2 <= lights(6);
		yellow2 <= lights(7);
		red2 <= lights(8);
		green1 <= lights(9);
		yellow1 <= lights(10);
		red1 <= lights(11);
		
  end process;
 end architecture trafficA;
		
				

