-- Hannah Soria
-- Fall 2022
-- CS 232 Project 1
-- Test file for Prime file project 1

library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture one of testbench is

  signal a, b, c, d, f: std_logic;

  component prime
  port( 
    A :  IN  STD_LOGIC;
    B :  IN  STD_LOGIC;
    C :  IN  STD_LOGIC;
    D :  IN  STD_LOGIC;
    F :  OUT  STD_LOGIC
    );
  end component;

begin

A <= '0', '1' after 200 ns;
B <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;
C <= '0', '1' after 50 ns, '0' after 100 ns, '1' after 150 ns, '0' after 200 ns, '1' after 250 ns, '0' after 300 ns, '1' after 350 ns;
D <= '0', '1' after 25 ns, '0' after 50 ns, '1' after 75 ns, '0' after 100 ns, '1' after 125 ns, '0' after 150 ns, '1' after 175 ns, '0' after 200 ns, '1' after 225 ns, '0' after 250 ns, '1' after 275 ns, '0' after 300 ns, '1' after 325 ns, '0' after 350 ns, '1' after 375 ns;

T0: Prime port map(A, B, C, D, F);

end one;


