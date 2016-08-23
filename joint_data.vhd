library ieee ;
use ieee.std_logic_1164.all ;

entity joint_data is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
            finish     		: in  std_logic ;
			head_x			: in std_logic_vector(7 downto 0);
			head_y			: in std_logic_vector(7 downto 0);
			tail_x			: in std_logic_vector(7 downto 0);
			tail_y			: in std_logic_vector(7 downto 0);
            tail_up     	: out  std_logic ;
			tail_up_x		: out std_logic_vector(7 downto 0);
			tail_up_y		: out std_logic_vector(7 downto 0);
			j1_x			: out std_logic_vector(7 downto 0);
			j1_y			: out std_logic_vector(7 downto 0);
			j2_x			: out std_logic_vector(7 downto 0);
			j2_y			: out std_logic_vector(7 downto 0)) ;
end joint_data ;