-- Hannah Soria
-- Fall 2022
-- CS 232 Project 1
-- Test file for Prime_5bit file project 1 extension

library ieee;
use ieee.std_logic_1164.all;

entity prime5bench is
end prime5bench;

architecture one of prime5bench is

  signal a, b, c, d, e, f: std_logic;

  component prime_5bit
  port( 
    A :  IN  STD_LOGIC;
    B :  IN  STD_LOGIC;
    C :  IN  STD_LOGIC;
    D :  IN  STD_LOGIC;
    E :  IN  STD_LOGIC;
    F :  OUT  STD_LOGIC
    );
  end component;

begin

A <= '0', '1' after 400 ns;
B <= '0', '1' after 200 ns, '0' after 400 ns, '1' after 600 ns;
C <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, '0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns;
D <= '0', '1' after 50 ns, '0' after 100 ns, '1' after 150 ns, '0' after 200 ns, '1' after 250 ns, '0' after 300 ns, '1' after 350 ns, '0' after 400 ns, '1' after 450 ns, '0' after 500 ns, '1' after 550 ns, '0' after 600 ns, '1' after 650 ns, '0' after 700 ns, '1' after 750 ns;
E <= '0', '1' after 25 ns, '0' after 50 ns, '1' after 75 ns, '0' after 100 ns, '1' after 125 ns, '0' after 150 ns, '1' after 175 ns, '0' after 200 ns, '1' after 225 ns, '0' after 250 ns, '1' after 275 ns, '0' after 300 ns, '1' after 325 ns, '0' after 350 ns, '1' after 375 ns, '0' after 400 ns, '1' after 425 ns, '0' after 450 ns, '1' after 475 ns, '0' after 500 ns, '1' after 525 ns, '0' after 550 ns, '1' after 575 ns, '0' after 600 ns, '1' after 625 ns, '0' after 650 ns, '1' after 675 ns, '0' after 700 ns, '1' after 725 ns, '0' after 750 ns, '1' after 775 ns;
T0: Prime_5bit port map(A, B, C, D, E, F);

end one;
