library ieee;
use ieee.std_logic_1164.all;
entity mul_str2 is port (a: in std_logic_vector (3 downto 0);  b:in std_logic_vector(3 downto 0);  p: out std_logic_vector(7 downto 0) );  end mul_str2;
architecture mul_str2_behav of mul_str2 is
signal t1 , t2 ,t3 , c1 , c2,c3 : std_logic;
begin 
job:For i in 0 to 7 generate 
  if(i=0) then 
       p(i)<= a(0) and b(0);
  elsif (i=1) then
      t1<= a(1) and b(0);
      t2<= a(0) and b(1);
      FA1: entity work.Full_Adder port map (t1,t2,'0',p(i),c1);
  elsif(i=2) then
       t1<=a(1) and b(1);
	t2<= a(2) and b(0);
	FA2:entity work.Full_Adder port map (t1,t2,c1,t1,c1);
	t3<= a(0) and b(2);
 	Faa2: entity work.Full_Adder port map (t3,t1,'0',p(i),c2);
  elsif(i=3) then
	t1<= a(2) and b(1);
	t2<= a(3) and b(0);
	FA3:entity work.Full_Adder port map (t1,t2,c1,t1,c1);
	t3<=a(1) and b(2);
	Faa3:entity work.Full_Adder port map (t1,t3,c2,t2,c2);
	t3<= a(0) and b(3);
	Faaa3:entity work.Full_Adder port map (t2,t3,'0',p(i),c3);
  elsif(i=4) then
	t1<=a(3) and b(1);
	FA4:entity work.Full_Adder port map (t1,'0',c1,t2,c1);
	t3<= a(2) and b(2);
	Faa4:entity work.Full_Adder port map (t2,t3,c2,t1,c2);
	t3<= a(1) and b(3);
	FAaa4:entity work.Full_Adder port map (t1,t3,c3,p(i),c3);
  elsif (i=5) then
	t1<= a(3) and b(2);
	FA5:entity work.Full_Adder port map (t1,c1,c2,t2,c2);
	t3<=a(2) and b(3);
	Faa5:entity work.Full_Adder port map (t2,t3,c3,p(i),c3);
  elsif(i=6) then 
	t1<= a(3) and b(3);
	FA6:entity work.Full_Adder port map(t1,c2,c3,p(i),c3);
  else 
	p(i)<= c3;
end if;
end generate;
end mul_str2_behav;

