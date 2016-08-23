library ieee ;
use ieee.std_logic_1164.all ;

entity snake_logic is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			enable   		: in  std_logic ;
			new_tail   		: in  std_logic ;
			grow			: in std_logic ;
			start   		: in  std_logic ;
			direction		: in std_logic_vector(1 downto 0);
			new_tail_x		: in std_logic_vector(7 downto 0);
			new_tail_y		: in std_logic_vector(7 downto 0);
			head_x			: out std_logic_vector(7 downto 0);
			head_y			: out std_logic_vector(7 downto 0);
			tail_x			: out std_logic_vector(7 downto 0);
			tail_y			: out std_logic_vector(7 downto 0)) ;
end snake_logic ;

architecture snk of snake_logic is

end snk;