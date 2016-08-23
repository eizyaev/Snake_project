library ieee ;
use ieee.std_logic_1164.all ;

entity points_counter is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			snake_x			: in std_logic_vector(7 downto 0) ;
			snake_y			: in std_logic_vector(7 downto 0) ;
			mouse_x			: in std_logic_vector(7 downto 0) ;
			mouse_y			: in std_logic_vector(7 downto 0) ;
			num1			: out integer range 0 to 9;
			num2 			: out integer range 0 to 9;
			grow			: out std_logic ) ;
end points_counter ;