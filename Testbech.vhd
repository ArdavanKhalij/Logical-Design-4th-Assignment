library ieee;
use ieee.std_Logic_1164.all;
entity mul_Behave_test is end entity;
architecture timing of mul_Behave_test is 
signal a: std_logic_vector(3 downto 0) := "0000";
signal b: std_logic_vector(3 downto 0) := "0000";
signal p: std_logic_vector (7 downto 0);
begin
test: entity work.mul_Behave port map (a,b,p);
a <= a+1 after 20 us when NOW<= 500 else "0000";
b <= b+1 after 50 us when NOW <= 500 else "0000";
end timing;
