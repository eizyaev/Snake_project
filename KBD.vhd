library ieee ;
use ieee.std_logic_1164.all ;

entity KBD is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			KBD_clk   		: in  std_logic ; 
			KBD_data   		: in  std_logic ;
			start   		: out  std_logic ;
			direction		: out std_logic_vector(1 downto 0) ) ; -- 11:up, 10:left, 01:right, 00:down
end KBD ;