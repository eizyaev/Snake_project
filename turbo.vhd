library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity turbo is
    port ( RESETN : in std_logic;
           CLK : in std_logic;
		   Turbo : in std_logic;
           outd : out std_logic
        );
	end entity turbo;

architecture Counter_arch of turbo is
signal one_sec_flag : std_logic ; 
begin
    process(CLK,RESETN)
        variable one_sec: integer ;
       constant sec: integer := 50000000 ; -- for Real operation 
--        constant sec: integer := 20 ; -- for simulation 
        begin
            if RESETN = '0' then
                one_sec := 0 ;
                one_sec_flag <= '0' ;
            elsif rising_edge(CLK) then
				if Turbo = '1' then
					one_sec := one_sec + 10 ;
				else
					one_sec := one_sec + 1 ;
				end if;
                if (one_sec > sec) then
                    one_sec_flag <= '1' ;
                    one_sec :=0;
                else
                    one_sec_flag <= '0';
                end if;
            end if;
    outd<= one_sec_flag;
    end process;
end Counter_arch;
