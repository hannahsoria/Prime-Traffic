-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 12.1 Build 177 11/07/2012 SJ Full Version"
-- CREATED		"Mon Sep 26 21:00:00 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY traffic IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		enable :  IN  STD_LOGIC;
		NS_R :  OUT  STD_LOGIC;
		NS_G :  OUT  STD_LOGIC;
		NS_Y :  OUT  STD_LOGIC;
		EW_R :  OUT  STD_LOGIC;
		EW_G :  OUT  STD_LOGIC;
		EW_Y :  OUT  STD_LOGIC
	);
END traffic;

ARCHITECTURE bdf_type OF traffic IS 

COMPONENT counter
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ANOT :  STD_LOGIC;
SIGNAL	BNOT :  STD_LOGIC;
SIGNAL	CNOT :  STD_LOGIC;
SIGNAL	DNOT :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 



b2v_inst : counter
PORT MAP(clk => clk,
		 reset => reset,
		 enable => enable,
		 q => q);


NS_G <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= CNOT AND ANOT AND q(2);


SYNTHESIZED_WIRE_0 <= ANOT AND CNOT AND q(0);


SYNTHESIZED_WIRE_1 <= q(1) AND ANOT AND BNOT;


EW_Y <= q(3) AND q(2) AND q(1);


NS_Y <= q(1) AND ANOT AND q(2);


SYNTHESIZED_WIRE_4 <= BNOT AND CNOT AND DNOT;


SYNTHESIZED_WIRE_3 <= q(1) AND ANOT;


SYNTHESIZED_WIRE_5 <= CNOT AND ANOT;


EW_R <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


BNOT <= NOT(q(2));



SYNTHESIZED_WIRE_8 <= CNOT AND q(3) AND q(2);


SYNTHESIZED_WIRE_6 <= CNOT AND q(0) AND q(3);


SYNTHESIZED_WIRE_7 <= q(1) AND q(3) AND BNOT;


EW_G <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


CNOT <= NOT(q(1));



DNOT <= NOT(q(0));



ANOT <= NOT(q(3));



SYNTHESIZED_WIRE_9 <= q(1) AND q(3);


SYNTHESIZED_WIRE_11 <= CNOT AND q(3);


SYNTHESIZED_WIRE_10 <= CNOT AND DNOT AND BNOT;


NS_R <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11;


END bdf_type;