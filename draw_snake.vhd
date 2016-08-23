library ieee ;
use ieee.std_logic_1164.all ;

entity draw_snake is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			j1_x			: in std_logic_vector(7 downto 0) ;
			j1_y			: in std_logic_vector(7 downto 0) ;
			j2_x			: in std_logic_vector(7 downto 0) ;
			j2_y			: in std_logic_vector(7 downto 0) ;
			snake_x			: out std_logic_vector(7 downto 0) ;
			snake_y			: out std_logic_vector(7 downto 0) ;
			finish			: out std_logic ) ;
end draw_snake ;