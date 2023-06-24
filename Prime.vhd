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
-- CREATED		"Sun Sep 25 20:03:30 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Prime IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END Prime;

ARCHITECTURE bdf_type OF Prime IS 

SIGNAL	ANOT :  STD_LOGIC;
SIGNAL	BNOT :  STD_LOGIC;
SIGNAL	CNOT :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



F <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_0 <= ANOT AND BNOT AND C;


SYNTHESIZED_WIRE_3 <= ANOT AND B AND D;


SYNTHESIZED_WIRE_1 <= B AND CNOT AND D;


SYNTHESIZED_WIRE_2 <= BNOT AND C AND D;


ANOT <= NOT(A);



BNOT <= NOT(B);



CNOT <= NOT(C);



END bdf_type;