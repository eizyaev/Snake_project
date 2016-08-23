library ieee ;
use ieee.std_logic_1164.all ;

entity snake_logic is
   port (   resetN     		: in  std_logic ;
            clk        		: in  std_logic ;
			enable   		: in  std_logic ;
			new_tail   		: in  std_logic ;
			grow			: in std_logic ;
			start   		: in  std_logic ;
			direction		: in integer range 0 to 3;
			new_tail_x		: in integer range 0 to 255;
			new_tail_y		: in integer range 0 to 255;
			head_x			: out integer range 0 to 255;
			head_y			: out integer range 0 to 255;
			tail_x			: out integer range 0 to 255;
			tail_y			: out integer range 0 to 255 );
end snake_logic ;

architecture snk of snake_logic is
	type direc is (strt, rt, lt, up, down);
	signal state : direc;
	signal x: integer range 0 to 255;
	signal y: integer range 0 to 255;

	begin

	head_x <= x;
	tail_x <= x;
	head_y <= y;
	tail_y <= y;
	process(clk, start)
	begin
	if resetN = '0' then
		state <= strt;
	elsif rising_edge(clk) then
		if enable = '1' then
			case state is
				when strt=>
					if start = '1' then
						x<= 127;
						y<= 127;
						state <= rt;
					end if;
				when rt =>
					if x = 255 then
						x <= 0;
					else
						x<= x+1;
					end if;
				when lt =>
					if x = 0 then
						x <= 255;
					else
						x<= x-1;
					end if;
				when up =>
					if y = 255 then
						y <= 0;
					else
						y<= y+1;
					end if;
				when down =>
					if y = 0 then
						y <= 255;
					else
						y<= y-1;
					end if;
			end case;
		end if;
		if direction = 0 then
				state <= rt;
		elsif direction = 1 then
			state <= lt;
		elsif direction = 2 then
			state <= up;
		else
			state <=down;
		end if;
	end if;
	end process;

end snk;