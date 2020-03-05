library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab6_2 is
port (
SW : in std_logic_vector(9 downto 0) ;
LEDR: out std_logic_vector(9 downto 0)
);
end entity Lab6_2;
ARCHITECTURE MAIN OF Lab6_2 IS
begin
process(SW)
begin
LEDR(0)<=(SW(0) and SW(1)) or (SW(2) and SW(3)); -- 1;
LEDR(1)<=(SW(4) xor SW(5)) or SW(6); -- 2;
LEDR(2)<=(SW(7) xor SW(8)) xor SW(9); -- 3;
end process;
end MAIN;
 