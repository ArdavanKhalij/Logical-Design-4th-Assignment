library ieee;
use ieee.std_logic_1164.all;
entity Full_Adder is port (A , B , Cin : in std_logic; Sum , Cout: out std_logic); end Full_Adder;
architecture Full_Adder_behav of Full_Adder is
begin
Sum <= (A xor B) xor Cin;
Cout<= (A and B) or (Cin and (A xor B));
end Full_Adder_behav;
