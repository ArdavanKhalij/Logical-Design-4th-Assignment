library ieee;
use ieee.std_logic_1164.all;
entity mul_Behave is port (a,b:in std_logic_vector(3 downto 0);  p:out std_logic_vector(7 downto 0));   end mul_Behave;
architecture behav of mul_Behave is 
begin 
p<= a * b;
end behav;

