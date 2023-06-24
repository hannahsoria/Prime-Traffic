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
-- CREATED		"Mon Sep 26 20:30:25 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Prime_5bit IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END Prime_5bit;

ARCHITECTURE bdf_type OF Prime_5bit IS 

SIGNAL	ANOT :  STD_LOGIC;
SIGNAL	BNOT :  STD_LOGIC;
SIGNAL	CNOT :  STD_LOGIC;
SIGNAL	DNOT :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



F <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_0 <= A AND BNOT AND CNOT AND E;


SYNTHESIZED_WIRE_2 <= ANOT AND CNOT AND D AND E;


ANOT <= NOT(A);



DNOT <= NOT(D);



SYNTHESIZED_WIRE_1 <= ANOT AND BNOT AND CNOT AND D;


SYNTHESIZED_WIRE_3 <= ANOT AND C AND DNOT AND E;


SYNTHESIZED_WIRE_4 <= A AND B AND C AND E;


SYNTHESIZED_WIRE_5 <= BNOT AND C AND D AND E;


BNOT <= NOT(B);



CNOT <= NOT(C);



END bdf_type;