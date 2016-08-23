library ieee ;
use ieee.std_logic_1164.all ;

entity DA_mux is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			mouse_x_in      : in std_logic_vector(7 downto 0) ;
			mouse_y_in	    : in std_logic_vector(7 downto 0) ;
			snake_x_in      : in std_logic_vector(7 downto 0) ;
			snake_y_in	    : in std_logic_vector(7 downto 0) ;
			x_out	   		: out std_logic_vector(7 downto 0) ;
            y_out     	    : out std_logic_vector(7 downto 0) ) ;
end DA_mux ;