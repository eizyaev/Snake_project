library ieee ;
use ieee.std_logic_1164.all ;
-- Random x-y point generator

entity random_point is
   port (   resetN     : in  std_logic ;
            clk        : in  std_logic ;
            enable     : in  std_logic ;
			dout_new   : out std_logic ;
			x		   : out std_logic_vector(7 downto 0) ;
            y          : out std_logic_vector(7 downto 0) ) ;
end random_point ;