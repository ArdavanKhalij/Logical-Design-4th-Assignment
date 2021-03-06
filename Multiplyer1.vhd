library ieee;
use ieee.std_logic_1164.all;
entity mul_str1 is port ( A : in  std_logic_vector(3 downto 0); B:in std_logic_vector(3 downto 0); p: out std_logic_vector(7 downto 0)); end mul_str1;
architecture mul_str1_behav of mul_str1 is
signal t: std_logic_vector (6 downto 0);
begin
process (A , B)
begin
and0: entity work.And2 port map (A(0) , B(0) , p(0));
and1: entity work.And2 port map (a(0) , b(1) , t(0));
and2: entity work.And2 port map (a(1) , b(0) , t(1));
FA0: entity work.Full_Adder port map (t(0) , t(1) , '0' , p(1) , t(2));
and3: entity work.And2 port map (a(1),b(1), t(0));
and4:entity work.And2 port map (a(2),b(0),t(1));
FA1: entity work.Full_Adder port map (t(0), t(1), t(2) , t(3),t(2));
and5: entity work.And2 port map (a(0) , b(2),t(0));
FA2: entity work.Full_Adder port map (t(3),t(0),'0',p(2),t(4));
and6: entity work.And2 port map (a(2) , b(1) , t(0));
and7: entity work.And2 port map (a(3) , b(0) , t(1));
FA3: entity work.Full_Adder port map (t(0) , t(1) , t(2) , t(3) , t(2));
and8: entity work.And2 port map (a(1) , b(2) , t(0));
FA4: entity work.Full_Adder port map (t(0) , t(3) , t(4) , t(5), t(4));
and9: entity work.And2 port map (a(0) , b(3) , t(1));
FA5: entity work.Full_Adder port map (t(1),t(5) , '0', p(3) , t(6));
and10: entity work.And2 port map (a(3) , b(1) , t(0));
FA6: entity work.Full_Adder port map (t(0) , '0' , t(2) , t(3),t(2));
and11: entity work.And2 port map (a(2),b(2),t(1));
FA7: entity work.Full_Adder port map (t(3) , t(1) , t(4) , t(5) , t(4));
and12: entity work.And2 port map (a(1) , b(3) , t(0));
FA8: entity work.Full_Adder port map (t(0) , t(5) , t(6) , p(4),t(6));
and13: entity work.And2 port map (a(3) , b(2), t(0));
FA9: entity work.Full_Adder port map (t(0) , t(2) , t(4) , t(5) , t(4));
and14: entity work.And2 port map (a(2),b(3),t(1));
FA10: entity work.Full_Adder port map (t(5) , t(1) , t(6), p(5) , t(6);
and16: entity work.And2 port map (a(3),b(3),t(0));
FA11: entity work.Full_Adder port map (t(4) , t(0) , t(6) , p(6),t(6));
end process;
p(7) <= t(6);
end mul_str1_behav; 