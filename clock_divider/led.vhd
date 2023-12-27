library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led is
	port( clock, sw, reset:in std_logic;
			led:out std_logic_vector(7 downto 0));
end led;

architecture bhv of led is

signal count:integer:=1;
signal beg:integer:=1;
signal parity:integer:=1;
signal led_parity:integer:=0;
signal n_counter:integer:=0;
signal new_clock: std_logic;

begin
	clk_process:process(clock,reset)
	begin
	if(clock='1' and clock' event) then
		if(beg = 1) then
			new_clock<='1';
			parity<=1;
			beg<=2;
		end if;
		
		if(reset = '1') then
			new_clock<='0';
			parity<=0;
		end if;
		
		if(count <= 1250000) then
			count<=count+1;
		else
			count<=1;
			if(parity = 1) then
				new_clock<='0';
				parity<=0;
			else
				new_clock<='1';
				parity<=1;
			end if;
		end if;
	end if;
	end process;
	
	sw_process:process(sw, new_clock)
	begin
	if(new_clock='1' and new_clock' event) then
		if(sw='0') then
			n_counter<=1;
			if(led_parity=0) then
				led_parity<=1;
				led(0)<='1';
				led(1)<='1';
				led(2)<='0';
				led(3)<='0';
				led(4)<='0';
				led(5)<='0';
				led(6)<='0';
				led(7)<='0';
			elsif (led_parity=1) then 
			led_parity<=2;
				led(0)<='0';
				led(1)<='0';
				led(2)<='1';
				led(3)<='1';
				led(4)<='0';
				led(5)<='0';
				led(6)<='0';
				led(7)<='0';
				elsif (led_parity=2) then 
			led_parity<=3;
				led(0)<='0';
				led(1)<='0';
				led(2)<='0';
				led(3)<='0';
				led(4)<='1';
				led(5)<='1';
				led(6)<='0';
				led(7)<='0';
				else
				led(0)<='0';
				led(1)<='0';
				led(2)<='0';
				led(3)<='0';
				led(4)<='0';
				led(5)<='0';
				led(6)<='1';
				led(7)<='1';
			end if;
		end if;
		if(sw='1') then
			if(n_counter>127 or n_counter<64) then
				n_counter<=127;
			end if;
			led<=std_logic_vector(to_unsigned(n_counter,8));
			if(n_counter<=127 and n_counter>=64) then
				n_counter<=n_counter-1;
			end if;
		end if;
	end if;
	end process;
end bhv;