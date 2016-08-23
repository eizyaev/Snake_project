library ieee ;
use ieee.std_logic_1164.all ;
-- drawing pixel to a beautiful mouse

entity draw_point is
   port (   resetN     : in  std_logic ;
            clk        : in  std_logic ;
			x_in       : in std_logic_vector(7 downto 0) ;
			y_in	   : in std_logic_vector(7 downto 0) ;
			x_out	   : out std_logic_vector(7 downto 0) ;
            y_out      : out std_logic_vector(7 downto 0) ) ;
end draw_point ;