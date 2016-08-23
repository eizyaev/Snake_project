library ieee ;
use ieee.std_logic_1164.all ;

entity draw_snake is
   port (   --resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			j1_x			: in integer range 0 to 255 ;
			j1_y			: in integer range 0 to 255 ;
			j2_x			: in integer range 0 to 255 ;
			j2_y			: in integer range 0 to 255 ;
			snake_x			: out integer range 0 to 255 ;
			snake_y			: out integer range 0 to 255 );
--			fin				: out std_logic ) ;
end draw_snake ;

architecture ds of draw_snake is
	begin
	process(clk)
		begin
		identifier : for i in 0 to 10 loop
			identifier : for j in 0 to 10 loop
							if rising_edge(clk) then
								if j1_x > j2_x then
									snake_x <= j1_x + i mod 256;
								else
									snake_x <= j2_x + i mod 256 ;
								end if ;
								if j1_y > j2_y then
									snake_y <= j1_y + j mod 256;
								else
									snake_y <= j2_y + j mod 256 ;
								end if ;
							end if;
			end loop ; -- identifier
		end loop ; -- identifier
	end process;
end ds;