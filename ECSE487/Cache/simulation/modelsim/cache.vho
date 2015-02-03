-- Copyright (C) 1991-2013 Altera Corporation
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "01/26/2015 12:56:37"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	cache IS
    PORT (
	clock : IN std_logic;
	s_writedata : IN std_logic_vector(31 DOWNTO 0);
	s_adr : IN std_logic_vector(31 DOWNTO 0);
	s_write : IN std_logic;
	s_read : IN std_logic;
	s_readdata : OUT std_logic_vector(31 DOWNTO 0);
	s_waitrequest : OUT std_logic;
	m_adr : OUT STD.STANDARD.integer range 0 TO 24575;
	m_read : OUT std_logic;
	m_readdata : IN std_logic_vector(31 DOWNTO 0);
	m_write : OUT std_logic;
	m_writedata : OUT std_logic_vector(31 DOWNTO 0);
	m_waitrequest : IN std_logic
	);
END cache;

-- Design Ports Information
-- s_readdata[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[10]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[11]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[13]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_adr[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_read	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_write	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[31]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_write	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_read	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[4]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[8]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[11]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[12]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[13]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[14]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[17]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[18]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[21]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[22]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[24]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[27]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[26]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[29]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[28]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_adr[30]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cache IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_s_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_adr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_write : std_logic;
SIGNAL ww_s_read : std_logic;
SIGNAL ww_s_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_waitrequest : std_logic;
SIGNAL ww_m_adr : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_m_read : std_logic;
SIGNAL ww_m_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_write : std_logic;
SIGNAL ww_m_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_waitrequest : std_logic;
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector130~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector132~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector131~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector133~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \write_adr_reg[14]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.read_cache_161112~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector151~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector151~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.read_mem_161141~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector159~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux181~0_combout\ : std_logic;
SIGNAL \words[2][9]~q\ : std_logic;
SIGNAL \Mux173~0_combout\ : std_logic;
SIGNAL \Mux167~0_combout\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \m_writedata[15]~45_combout\ : std_logic;
SIGNAL \m_writedata[15]~46_combout\ : std_logic;
SIGNAL \m_writedata[27]~81_combout\ : std_logic;
SIGNAL \m_writedata[27]~82_combout\ : std_logic;
SIGNAL \Selector158~0_combout\ : std_logic;
SIGNAL \cache_hit~q\ : std_logic;
SIGNAL \Selector162~0_combout\ : std_logic;
SIGNAL \Selector164~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector95~2_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector127~2_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \cache_hit~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Selector123~1_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~2_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Selector120~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~2_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~2_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Selector108~1_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~2_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \state.miss_161199~combout\ : std_logic;
SIGNAL \s_writedata[8]~input_o\ : std_logic;
SIGNAL \s_writedata[12]~input_o\ : std_logic;
SIGNAL \s_writedata[21]~input_o\ : std_logic;
SIGNAL \s_adr[25]~input_o\ : std_logic;
SIGNAL \s_adr[24]~input_o\ : std_logic;
SIGNAL \s_adr[27]~input_o\ : std_logic;
SIGNAL \s_adr[26]~input_o\ : std_logic;
SIGNAL \s_adr[29]~input_o\ : std_logic;
SIGNAL \s_adr[28]~input_o\ : std_logic;
SIGNAL \s_adr[30]~input_o\ : std_logic;
SIGNAL \m_readdata[4]~input_o\ : std_logic;
SIGNAL \m_readdata[9]~input_o\ : std_logic;
SIGNAL \m_readdata[10]~input_o\ : std_logic;
SIGNAL \m_readdata[12]~input_o\ : std_logic;
SIGNAL \m_readdata[14]~input_o\ : std_logic;
SIGNAL \m_readdata[17]~input_o\ : std_logic;
SIGNAL \m_readdata[18]~input_o\ : std_logic;
SIGNAL \m_readdata[21]~input_o\ : std_logic;
SIGNAL \m_readdata[24]~input_o\ : std_logic;
SIGNAL \line_tag[9]~feeder_combout\ : std_logic;
SIGNAL \line_tag[11]~feeder_combout\ : std_logic;
SIGNAL \line_tag[15]~feeder_combout\ : std_logic;
SIGNAL \line_tag[17]~feeder_combout\ : std_logic;
SIGNAL \line_tag[19]~feeder_combout\ : std_logic;
SIGNAL \s_readdata[0]~output_o\ : std_logic;
SIGNAL \s_readdata[1]~output_o\ : std_logic;
SIGNAL \s_readdata[2]~output_o\ : std_logic;
SIGNAL \s_readdata[3]~output_o\ : std_logic;
SIGNAL \s_readdata[4]~output_o\ : std_logic;
SIGNAL \s_readdata[5]~output_o\ : std_logic;
SIGNAL \s_readdata[6]~output_o\ : std_logic;
SIGNAL \s_readdata[7]~output_o\ : std_logic;
SIGNAL \s_readdata[8]~output_o\ : std_logic;
SIGNAL \s_readdata[9]~output_o\ : std_logic;
SIGNAL \s_readdata[10]~output_o\ : std_logic;
SIGNAL \s_readdata[11]~output_o\ : std_logic;
SIGNAL \s_readdata[12]~output_o\ : std_logic;
SIGNAL \s_readdata[13]~output_o\ : std_logic;
SIGNAL \s_readdata[14]~output_o\ : std_logic;
SIGNAL \s_readdata[15]~output_o\ : std_logic;
SIGNAL \s_readdata[16]~output_o\ : std_logic;
SIGNAL \s_readdata[17]~output_o\ : std_logic;
SIGNAL \s_readdata[18]~output_o\ : std_logic;
SIGNAL \s_readdata[19]~output_o\ : std_logic;
SIGNAL \s_readdata[20]~output_o\ : std_logic;
SIGNAL \s_readdata[21]~output_o\ : std_logic;
SIGNAL \s_readdata[22]~output_o\ : std_logic;
SIGNAL \s_readdata[23]~output_o\ : std_logic;
SIGNAL \s_readdata[24]~output_o\ : std_logic;
SIGNAL \s_readdata[25]~output_o\ : std_logic;
SIGNAL \s_readdata[26]~output_o\ : std_logic;
SIGNAL \s_readdata[27]~output_o\ : std_logic;
SIGNAL \s_readdata[28]~output_o\ : std_logic;
SIGNAL \s_readdata[29]~output_o\ : std_logic;
SIGNAL \s_readdata[30]~output_o\ : std_logic;
SIGNAL \s_readdata[31]~output_o\ : std_logic;
SIGNAL \s_waitrequest~output_o\ : std_logic;
SIGNAL \m_adr[0]~output_o\ : std_logic;
SIGNAL \m_adr[1]~output_o\ : std_logic;
SIGNAL \m_adr[2]~output_o\ : std_logic;
SIGNAL \m_adr[3]~output_o\ : std_logic;
SIGNAL \m_adr[4]~output_o\ : std_logic;
SIGNAL \m_adr[5]~output_o\ : std_logic;
SIGNAL \m_adr[6]~output_o\ : std_logic;
SIGNAL \m_adr[7]~output_o\ : std_logic;
SIGNAL \m_adr[8]~output_o\ : std_logic;
SIGNAL \m_adr[9]~output_o\ : std_logic;
SIGNAL \m_adr[10]~output_o\ : std_logic;
SIGNAL \m_adr[11]~output_o\ : std_logic;
SIGNAL \m_adr[12]~output_o\ : std_logic;
SIGNAL \m_adr[13]~output_o\ : std_logic;
SIGNAL \m_adr[14]~output_o\ : std_logic;
SIGNAL \m_read~output_o\ : std_logic;
SIGNAL \m_write~output_o\ : std_logic;
SIGNAL \m_writedata[0]~output_o\ : std_logic;
SIGNAL \m_writedata[1]~output_o\ : std_logic;
SIGNAL \m_writedata[2]~output_o\ : std_logic;
SIGNAL \m_writedata[3]~output_o\ : std_logic;
SIGNAL \m_writedata[4]~output_o\ : std_logic;
SIGNAL \m_writedata[5]~output_o\ : std_logic;
SIGNAL \m_writedata[6]~output_o\ : std_logic;
SIGNAL \m_writedata[7]~output_o\ : std_logic;
SIGNAL \m_writedata[8]~output_o\ : std_logic;
SIGNAL \m_writedata[9]~output_o\ : std_logic;
SIGNAL \m_writedata[10]~output_o\ : std_logic;
SIGNAL \m_writedata[11]~output_o\ : std_logic;
SIGNAL \m_writedata[12]~output_o\ : std_logic;
SIGNAL \m_writedata[13]~output_o\ : std_logic;
SIGNAL \m_writedata[14]~output_o\ : std_logic;
SIGNAL \m_writedata[15]~output_o\ : std_logic;
SIGNAL \m_writedata[16]~output_o\ : std_logic;
SIGNAL \m_writedata[17]~output_o\ : std_logic;
SIGNAL \m_writedata[18]~output_o\ : std_logic;
SIGNAL \m_writedata[19]~output_o\ : std_logic;
SIGNAL \m_writedata[20]~output_o\ : std_logic;
SIGNAL \m_writedata[21]~output_o\ : std_logic;
SIGNAL \m_writedata[22]~output_o\ : std_logic;
SIGNAL \m_writedata[23]~output_o\ : std_logic;
SIGNAL \m_writedata[24]~output_o\ : std_logic;
SIGNAL \m_writedata[25]~output_o\ : std_logic;
SIGNAL \m_writedata[26]~output_o\ : std_logic;
SIGNAL \m_writedata[27]~output_o\ : std_logic;
SIGNAL \m_writedata[28]~output_o\ : std_logic;
SIGNAL \m_writedata[29]~output_o\ : std_logic;
SIGNAL \m_writedata[30]~output_o\ : std_logic;
SIGNAL \m_writedata[31]~output_o\ : std_logic;
SIGNAL \state.hit_161170~combout\ : std_logic;
SIGNAL \s_read~input_o\ : std_logic;
SIGNAL \s_adr[31]~input_o\ : std_logic;
SIGNAL \m_waitrequest~input_o\ : std_logic;
SIGNAL \s_write~input_o\ : std_logic;
SIGNAL \Selector154~1_combout\ : std_logic;
SIGNAL \word_counter|pre_count[0]~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \m_write~1_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \counter_reset~combout\ : std_logic;
SIGNAL \word_counter|pre_count[1]~0_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector154~2_combout\ : std_logic;
SIGNAL \state.write_cache_161054~combout\ : std_logic;
SIGNAL \write_done~q\ : std_logic;
SIGNAL \Selector165~0_combout\ : std_logic;
SIGNAL \Selector165~1_combout\ : std_logic;
SIGNAL \state.idle_161228~combout\ : std_logic;
SIGNAL \Selector156~3_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector160~2_combout\ : std_logic;
SIGNAL \Selector160~0_combout\ : std_logic;
SIGNAL \Selector160~1_combout\ : std_logic;
SIGNAL \Selector160~3_combout\ : std_logic;
SIGNAL \state.read_mem_161141~combout\ : std_logic;
SIGNAL \Selector154~0_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \dirty_bit_reg~combout\ : std_logic;
SIGNAL \s_adr[2]~input_o\ : std_logic;
SIGNAL \s_adr[3]~input_o\ : std_logic;
SIGNAL \s_adr[4]~input_o\ : std_logic;
SIGNAL \s_adr[5]~input_o\ : std_logic;
SIGNAL \s_adr[6]~input_o\ : std_logic;
SIGNAL \s_adr[7]~input_o\ : std_logic;
SIGNAL \s_adr[8]~input_o\ : std_logic;
SIGNAL \s_adr[9]~input_o\ : std_logic;
SIGNAL \s_adr[23]~input_o\ : std_logic;
SIGNAL \s_adr[22]~input_o\ : std_logic;
SIGNAL \s_adr[21]~input_o\ : std_logic;
SIGNAL \s_adr[20]~input_o\ : std_logic;
SIGNAL \s_adr[19]~input_o\ : std_logic;
SIGNAL \s_adr[18]~input_o\ : std_logic;
SIGNAL \s_adr[17]~input_o\ : std_logic;
SIGNAL \s_adr[16]~input_o\ : std_logic;
SIGNAL \s_adr[15]~input_o\ : std_logic;
SIGNAL \s_adr[14]~input_o\ : std_logic;
SIGNAL \s_adr[13]~input_o\ : std_logic;
SIGNAL \s_adr[12]~input_o\ : std_logic;
SIGNAL \s_adr[11]~input_o\ : std_logic;
SIGNAL \s_adr[10]~input_o\ : std_logic;
SIGNAL \s_writedata[31]~input_o\ : std_logic;
SIGNAL \s_adr[1]~input_o\ : std_logic;
SIGNAL \s_adr[0]~input_o\ : std_logic;
SIGNAL \Selector127~1_combout\ : std_logic;
SIGNAL \m_readdata[31]~input_o\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \Selector133~1_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Selector130~0clkctrl_outclk\ : std_logic;
SIGNAL \words_reg[0][31]~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \words[3][31]~feeder_combout\ : std_logic;
SIGNAL \words[3][31]~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector133~2_combout\ : std_logic;
SIGNAL \Selector133~2clkctrl_outclk\ : std_logic;
SIGNAL \words_reg[3][31]~combout\ : std_logic;
SIGNAL \valid_bit~0_combout\ : std_logic;
SIGNAL \valid_bit~q\ : std_logic;
SIGNAL \dirty_bit~q\ : std_logic;
SIGNAL \Selector156~1_combout\ : std_logic;
SIGNAL \Selector156~2_combout\ : std_logic;
SIGNAL \Selector156~4_combout\ : std_logic;
SIGNAL \state.write_mem_161083~combout\ : std_logic;
SIGNAL \Selector156~0_combout\ : std_logic;
SIGNAL \Selector159~0_combout\ : std_logic;
SIGNAL \Selector159~0clkctrl_outclk\ : std_logic;
SIGNAL \state.read_cache_161112~combout\ : std_logic;
SIGNAL \state.read_cache_161112~clkctrl_outclk\ : std_logic;
SIGNAL \s_writedata[3]~input_o\ : std_logic;
SIGNAL \s_writedata[2]~input_o\ : std_logic;
SIGNAL \m_readdata[2]~input_o\ : std_logic;
SIGNAL \Selector61~1_combout\ : std_logic;
SIGNAL \Selector125~1_combout\ : std_logic;
SIGNAL \words_reg[0][2]~combout\ : std_logic;
SIGNAL \s_writedata[1]~input_o\ : std_logic;
SIGNAL \words_reg[0][0]~combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector131~0clkctrl_outclk\ : std_logic;
SIGNAL \words_reg[1][4]~combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \words_reg[1][2]~combout\ : std_logic;
SIGNAL \m_readdata[1]~input_o\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \words_reg[1][1]~combout\ : std_logic;
SIGNAL \words_reg[1][0]~combout\ : std_logic;
SIGNAL \Selector63~2_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \words_reg[2][1]~combout\ : std_logic;
SIGNAL \m_readdata[3]~input_o\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \words_reg[3][2]~combout\ : std_logic;
SIGNAL \words_reg[3][1]~combout\ : std_logic;
SIGNAL \words_reg[3][0]~combout\ : std_logic;
SIGNAL \words[3][3]~feeder_combout\ : std_logic;
SIGNAL \words[3][3]~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \words_reg[3][3]~combout\ : std_logic;
SIGNAL \words[2][0]~feeder_combout\ : std_logic;
SIGNAL \words[2][0]~q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \m_readdata[0]~input_o\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \Selector63~3_combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \Selector132~0clkctrl_outclk\ : std_logic;
SIGNAL \words_reg[2][0]~combout\ : std_logic;
SIGNAL \words[2][2]~q\ : std_logic;
SIGNAL \Selector61~2_combout\ : std_logic;
SIGNAL \words_reg[2][2]~combout\ : std_logic;
SIGNAL \words[2][3]~q\ : std_logic;
SIGNAL \Selector60~1_combout\ : std_logic;
SIGNAL \words_reg[2][3]~combout\ : std_logic;
SIGNAL \words[2][4]~q\ : std_logic;
SIGNAL \Selector59~2_combout\ : std_logic;
SIGNAL \words_reg[2][4]~combout\ : std_logic;
SIGNAL \words[1][3]~q\ : std_logic;
SIGNAL \Selector92~2_combout\ : std_logic;
SIGNAL \words_reg[1][3]~combout\ : std_logic;
SIGNAL \words[0][1]~q\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \words_reg[0][1]~combout\ : std_logic;
SIGNAL \words[0][3]~q\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Selector124~1_combout\ : std_logic;
SIGNAL \words_reg[0][3]~combout\ : std_logic;
SIGNAL \words[3][0]~q\ : std_logic;
SIGNAL \words[0][0]~q\ : std_logic;
SIGNAL \words[1][0]~feeder_combout\ : std_logic;
SIGNAL \words[1][0]~q\ : std_logic;
SIGNAL \Mux182~0_combout\ : std_logic;
SIGNAL \Mux182~1_combout\ : std_logic;
SIGNAL \words[3][1]~q\ : std_logic;
SIGNAL \words[1][1]~feeder_combout\ : std_logic;
SIGNAL \words[1][1]~q\ : std_logic;
SIGNAL \Mux181~1_combout\ : std_logic;
SIGNAL \words[3][2]~feeder_combout\ : std_logic;
SIGNAL \words[3][2]~q\ : std_logic;
SIGNAL \words[0][2]~q\ : std_logic;
SIGNAL \words[1][2]~feeder_combout\ : std_logic;
SIGNAL \words[1][2]~q\ : std_logic;
SIGNAL \Mux180~0_combout\ : std_logic;
SIGNAL \Mux180~1_combout\ : std_logic;
SIGNAL \Mux179~0_combout\ : std_logic;
SIGNAL \Mux179~1_combout\ : std_logic;
SIGNAL \words_reg[0][7]~combout\ : std_logic;
SIGNAL \s_writedata[6]~input_o\ : std_logic;
SIGNAL \s_writedata[5]~input_o\ : std_logic;
SIGNAL \m_readdata[5]~input_o\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Selector122~1_combout\ : std_logic;
SIGNAL \words_reg[0][5]~combout\ : std_logic;
SIGNAL \words_reg[0][4]~combout\ : std_logic;
SIGNAL \s_writedata[7]~input_o\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \words_reg[1][5]~combout\ : std_logic;
SIGNAL \words_reg[2][8]~combout\ : std_logic;
SIGNAL \words_reg[2][7]~combout\ : std_logic;
SIGNAL \m_readdata[6]~input_o\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector57~2_combout\ : std_logic;
SIGNAL \words_reg[2][6]~combout\ : std_logic;
SIGNAL \words_reg[2][5]~combout\ : std_logic;
SIGNAL \m_readdata[8]~input_o\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \m_readdata[7]~input_o\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \words_reg[3][4]~combout\ : std_logic;
SIGNAL \words[3][5]~q\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \words_reg[3][5]~combout\ : std_logic;
SIGNAL \words[3][6]~q\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \words_reg[3][6]~combout\ : std_logic;
SIGNAL \words[3][7]~feeder_combout\ : std_logic;
SIGNAL \words[3][7]~q\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \words_reg[3][7]~combout\ : std_logic;
SIGNAL \words[3][8]~feeder_combout\ : std_logic;
SIGNAL \words[3][8]~q\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \words_reg[3][8]~combout\ : std_logic;
SIGNAL \words[1][6]~q\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \words_reg[1][6]~combout\ : std_logic;
SIGNAL \words[1][7]~q\ : std_logic;
SIGNAL \Selector88~2_combout\ : std_logic;
SIGNAL \words_reg[1][7]~combout\ : std_logic;
SIGNAL \words[1][8]~q\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \words_reg[1][8]~combout\ : std_logic;
SIGNAL \words[0][6]~q\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector121~1_combout\ : std_logic;
SIGNAL \words_reg[0][6]~combout\ : std_logic;
SIGNAL \words[0][8]~q\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Selector119~1_combout\ : std_logic;
SIGNAL \words_reg[0][8]~combout\ : std_logic;
SIGNAL \words[3][4]~feeder_combout\ : std_logic;
SIGNAL \words[3][4]~q\ : std_logic;
SIGNAL \words[1][4]~feeder_combout\ : std_logic;
SIGNAL \words[1][4]~q\ : std_logic;
SIGNAL \Mux178~0_combout\ : std_logic;
SIGNAL \Mux178~1_combout\ : std_logic;
SIGNAL \words[0][5]~feeder_combout\ : std_logic;
SIGNAL \words[0][5]~q\ : std_logic;
SIGNAL \words[2][5]~q\ : std_logic;
SIGNAL \Mux177~0_combout\ : std_logic;
SIGNAL \words[1][5]~q\ : std_logic;
SIGNAL \Mux177~1_combout\ : std_logic;
SIGNAL \Mux176~0_combout\ : std_logic;
SIGNAL \words[2][6]~q\ : std_logic;
SIGNAL \Mux176~1_combout\ : std_logic;
SIGNAL \words[0][7]~q\ : std_logic;
SIGNAL \words[2][7]~q\ : std_logic;
SIGNAL \Mux175~0_combout\ : std_logic;
SIGNAL \Mux175~1_combout\ : std_logic;
SIGNAL \Mux174~0_combout\ : std_logic;
SIGNAL \words[2][8]~q\ : std_logic;
SIGNAL \Mux174~1_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \m_readdata[11]~input_o\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \s_writedata[11]~input_o\ : std_logic;
SIGNAL \s_writedata[10]~input_o\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \s_writedata[9]~input_o\ : std_logic;
SIGNAL \words_reg[1][11]~combout\ : std_logic;
SIGNAL \words_reg[1][10]~combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \words_reg[1][9]~combout\ : std_logic;
SIGNAL \m_readdata[13]~input_o\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \words_reg[2][11]~combout\ : std_logic;
SIGNAL \words_reg[2][10]~combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \words_reg[2][9]~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \words_reg[3][11]~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \words[3][9]~feeder_combout\ : std_logic;
SIGNAL \words[3][9]~q\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \words_reg[3][9]~combout\ : std_logic;
SIGNAL \words[3][10]~feeder_combout\ : std_logic;
SIGNAL \words[3][10]~q\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \words_reg[3][10]~combout\ : std_logic;
SIGNAL \words[3][12]~feeder_combout\ : std_logic;
SIGNAL \words[3][12]~q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \words_reg[3][12]~combout\ : std_logic;
SIGNAL \words[2][12]~feeder_combout\ : std_logic;
SIGNAL \words[2][12]~q\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \words_reg[2][12]~combout\ : std_logic;
SIGNAL \words[2][13]~q\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \words_reg[2][13]~combout\ : std_logic;
SIGNAL \words[1][12]~feeder_combout\ : std_logic;
SIGNAL \words[1][12]~q\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \words_reg[1][12]~combout\ : std_logic;
SIGNAL \words[1][13]~q\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector82~2_combout\ : std_logic;
SIGNAL \words_reg[1][13]~combout\ : std_logic;
SIGNAL \words[0][9]~feeder_combout\ : std_logic;
SIGNAL \words[0][9]~q\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Selector118~1_combout\ : std_logic;
SIGNAL \words_reg[0][9]~combout\ : std_logic;
SIGNAL \words[0][10]~q\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Selector117~1_combout\ : std_logic;
SIGNAL \words_reg[0][10]~combout\ : std_logic;
SIGNAL \words[0][11]~q\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Selector116~1_combout\ : std_logic;
SIGNAL \words_reg[0][11]~combout\ : std_logic;
SIGNAL \words[0][12]~feeder_combout\ : std_logic;
SIGNAL \words[0][12]~q\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Selector115~1_combout\ : std_logic;
SIGNAL \words_reg[0][12]~combout\ : std_logic;
SIGNAL \words[1][9]~q\ : std_logic;
SIGNAL \Mux173~1_combout\ : std_logic;
SIGNAL \Mux172~0_combout\ : std_logic;
SIGNAL \Mux172~1_combout\ : std_logic;
SIGNAL \words[1][11]~feeder_combout\ : std_logic;
SIGNAL \words[1][11]~q\ : std_logic;
SIGNAL \words[3][11]~feeder_combout\ : std_logic;
SIGNAL \words[3][11]~q\ : std_logic;
SIGNAL \words[2][11]~feeder_combout\ : std_logic;
SIGNAL \words[2][11]~q\ : std_logic;
SIGNAL \Mux171~0_combout\ : std_logic;
SIGNAL \Mux171~1_combout\ : std_logic;
SIGNAL \Mux170~0_combout\ : std_logic;
SIGNAL \Mux170~1_combout\ : std_logic;
SIGNAL \s_writedata[17]~input_o\ : std_logic;
SIGNAL \s_writedata[16]~input_o\ : std_logic;
SIGNAL \s_writedata[15]~input_o\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \s_writedata[14]~input_o\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \words_reg[2][14]~combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \words_reg[3][15]~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \s_writedata[13]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \words_reg[3][13]~combout\ : std_logic;
SIGNAL \words[3][14]~q\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \words_reg[3][14]~combout\ : std_logic;
SIGNAL \words[3][16]~q\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \words_reg[3][16]~combout\ : std_logic;
SIGNAL \words[3][17]~feeder_combout\ : std_logic;
SIGNAL \words[3][17]~q\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \words_reg[3][17]~combout\ : std_logic;
SIGNAL \words[2][15]~q\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \words_reg[2][15]~combout\ : std_logic;
SIGNAL \words[2][16]~q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \m_readdata[16]~input_o\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \words_reg[2][16]~combout\ : std_logic;
SIGNAL \words[2][17]~q\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \words_reg[2][17]~combout\ : std_logic;
SIGNAL \words[1][14]~feeder_combout\ : std_logic;
SIGNAL \words[1][14]~q\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \words_reg[1][14]~combout\ : std_logic;
SIGNAL \words[1][15]~q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \m_readdata[15]~input_o\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \words_reg[1][15]~combout\ : std_logic;
SIGNAL \words[1][16]~q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \words_reg[1][16]~combout\ : std_logic;
SIGNAL \words[1][17]~feeder_combout\ : std_logic;
SIGNAL \words[1][17]~q\ : std_logic;
SIGNAL \Selector78~2_combout\ : std_logic;
SIGNAL \words_reg[1][17]~combout\ : std_logic;
SIGNAL \words[0][13]~feeder_combout\ : std_logic;
SIGNAL \words[0][13]~q\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Selector114~1_combout\ : std_logic;
SIGNAL \words_reg[0][13]~combout\ : std_logic;
SIGNAL \words[0][14]~q\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Selector113~1_combout\ : std_logic;
SIGNAL \words_reg[0][14]~combout\ : std_logic;
SIGNAL \words[0][15]~q\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Selector112~1_combout\ : std_logic;
SIGNAL \words_reg[0][15]~combout\ : std_logic;
SIGNAL \words[0][16]~q\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Selector111~1_combout\ : std_logic;
SIGNAL \words_reg[0][16]~combout\ : std_logic;
SIGNAL \words[0][17]~q\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector110~1_combout\ : std_logic;
SIGNAL \words_reg[0][17]~combout\ : std_logic;
SIGNAL \words[3][13]~q\ : std_logic;
SIGNAL \Mux169~0_combout\ : std_logic;
SIGNAL \Mux169~1_combout\ : std_logic;
SIGNAL \Mux168~0_combout\ : std_logic;
SIGNAL \Mux168~1_combout\ : std_logic;
SIGNAL \words[3][15]~q\ : std_logic;
SIGNAL \Mux167~1_combout\ : std_logic;
SIGNAL \Mux166~0_combout\ : std_logic;
SIGNAL \Mux166~1_combout\ : std_logic;
SIGNAL \Mux165~0_combout\ : std_logic;
SIGNAL \Mux165~1_combout\ : std_logic;
SIGNAL \words_reg[0][19]~combout\ : std_logic;
SIGNAL \m_readdata[22]~input_o\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \words_reg[1][21]~combout\ : std_logic;
SIGNAL \s_writedata[20]~input_o\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \m_readdata[20]~input_o\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \words_reg[1][20]~combout\ : std_logic;
SIGNAL \m_readdata[19]~input_o\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \s_writedata[19]~input_o\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \s_writedata[18]~input_o\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \words_reg[1][18]~combout\ : std_logic;
SIGNAL \s_writedata[22]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \words_reg[2][22]~combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \words_reg[2][18]~combout\ : std_logic;
SIGNAL \words_reg[3][21]~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \words_reg[3][18]~combout\ : std_logic;
SIGNAL \words[3][19]~q\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \words_reg[3][19]~combout\ : std_logic;
SIGNAL \words[3][20]~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \words_reg[3][20]~combout\ : std_logic;
SIGNAL \words[2][19]~q\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \words_reg[2][19]~combout\ : std_logic;
SIGNAL \words[2][20]~feeder_combout\ : std_logic;
SIGNAL \words[2][20]~q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \words_reg[2][20]~combout\ : std_logic;
SIGNAL \words[2][21]~q\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \words_reg[2][21]~combout\ : std_logic;
SIGNAL \words[1][19]~q\ : std_logic;
SIGNAL \Selector76~2_combout\ : std_logic;
SIGNAL \words_reg[1][19]~combout\ : std_logic;
SIGNAL \words[1][22]~q\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \words_reg[1][22]~combout\ : std_logic;
SIGNAL \words[0][18]~feeder_combout\ : std_logic;
SIGNAL \words[0][18]~q\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Selector109~1_combout\ : std_logic;
SIGNAL \words_reg[0][18]~combout\ : std_logic;
SIGNAL \words[0][20]~q\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Selector107~1_combout\ : std_logic;
SIGNAL \words_reg[0][20]~combout\ : std_logic;
SIGNAL \words[0][21]~q\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \Selector106~1_combout\ : std_logic;
SIGNAL \words_reg[0][21]~combout\ : std_logic;
SIGNAL \words[3][18]~feeder_combout\ : std_logic;
SIGNAL \words[3][18]~q\ : std_logic;
SIGNAL \words[2][18]~q\ : std_logic;
SIGNAL \words[1][18]~feeder_combout\ : std_logic;
SIGNAL \words[1][18]~q\ : std_logic;
SIGNAL \Mux164~0_combout\ : std_logic;
SIGNAL \Mux164~1_combout\ : std_logic;
SIGNAL \words[0][19]~q\ : std_logic;
SIGNAL \Mux163~0_combout\ : std_logic;
SIGNAL \Mux163~1_combout\ : std_logic;
SIGNAL \words[1][20]~q\ : std_logic;
SIGNAL \Mux162~0_combout\ : std_logic;
SIGNAL \Mux162~1_combout\ : std_logic;
SIGNAL \words[1][21]~q\ : std_logic;
SIGNAL \words[3][21]~q\ : std_logic;
SIGNAL \Mux161~0_combout\ : std_logic;
SIGNAL \Mux161~1_combout\ : std_logic;
SIGNAL \words[2][22]~q\ : std_logic;
SIGNAL \m_readdata[26]~input_o\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \s_writedata[25]~input_o\ : std_logic;
SIGNAL \s_writedata[24]~input_o\ : std_logic;
SIGNAL \m_readdata[23]~input_o\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \m_readdata[25]~input_o\ : std_logic;
SIGNAL \Selector70~1_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \s_writedata[26]~input_o\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \words_reg[2][26]~combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \words_reg[3][26]~combout\ : std_logic;
SIGNAL \words_reg[3][24]~combout\ : std_logic;
SIGNAL \words_reg[3][22]~combout\ : std_logic;
SIGNAL \words[3][23]~feeder_combout\ : std_logic;
SIGNAL \words[3][23]~q\ : std_logic;
SIGNAL \s_writedata[23]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \words_reg[3][23]~combout\ : std_logic;
SIGNAL \words[3][25]~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \words_reg[3][25]~combout\ : std_logic;
SIGNAL \words[2][23]~feeder_combout\ : std_logic;
SIGNAL \words[2][23]~q\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \words_reg[2][23]~combout\ : std_logic;
SIGNAL \words[2][24]~q\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \words_reg[2][24]~combout\ : std_logic;
SIGNAL \words[2][25]~q\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \words_reg[2][25]~combout\ : std_logic;
SIGNAL \words[1][23]~feeder_combout\ : std_logic;
SIGNAL \words[1][23]~q\ : std_logic;
SIGNAL \Selector72~2_combout\ : std_logic;
SIGNAL \words_reg[1][23]~combout\ : std_logic;
SIGNAL \words[1][24]~q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \words_reg[1][24]~combout\ : std_logic;
SIGNAL \words[1][25]~feeder_combout\ : std_logic;
SIGNAL \words[1][25]~q\ : std_logic;
SIGNAL \Selector70~2_combout\ : std_logic;
SIGNAL \words_reg[1][25]~combout\ : std_logic;
SIGNAL \words[1][26]~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \words_reg[1][26]~combout\ : std_logic;
SIGNAL \words[0][22]~q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Selector105~1_combout\ : std_logic;
SIGNAL \words_reg[0][22]~combout\ : std_logic;
SIGNAL \words[0][23]~q\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector104~1_combout\ : std_logic;
SIGNAL \words_reg[0][23]~combout\ : std_logic;
SIGNAL \words[0][24]~q\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Selector103~1_combout\ : std_logic;
SIGNAL \words_reg[0][24]~combout\ : std_logic;
SIGNAL \words[0][25]~feeder_combout\ : std_logic;
SIGNAL \words[0][25]~q\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Selector102~1_combout\ : std_logic;
SIGNAL \words_reg[0][25]~combout\ : std_logic;
SIGNAL \words[0][26]~feeder_combout\ : std_logic;
SIGNAL \words[0][26]~q\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector101~1_combout\ : std_logic;
SIGNAL \words_reg[0][26]~combout\ : std_logic;
SIGNAL \words[3][22]~q\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \Mux160~1_combout\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \Mux159~1_combout\ : std_logic;
SIGNAL \words[3][24]~q\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Mux158~1_combout\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Mux157~1_combout\ : std_logic;
SIGNAL \words[2][26]~q\ : std_logic;
SIGNAL \words[3][26]~feeder_combout\ : std_logic;
SIGNAL \words[3][26]~q\ : std_logic;
SIGNAL \Mux156~1_combout\ : std_logic;
SIGNAL \m_readdata[30]~input_o\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \m_readdata[29]~input_o\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \m_readdata[28]~input_o\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \s_writedata[27]~input_o\ : std_logic;
SIGNAL \words_reg[1][31]~combout\ : std_logic;
SIGNAL \s_writedata[30]~input_o\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \words_reg[1][30]~combout\ : std_logic;
SIGNAL \words_reg[1][28]~combout\ : std_logic;
SIGNAL \m_readdata[27]~input_o\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \words_reg[2][31]~combout\ : std_logic;
SIGNAL \words_reg[2][30]~combout\ : std_logic;
SIGNAL \words_reg[2][29]~combout\ : std_logic;
SIGNAL \words_reg[2][28]~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \words_reg[3][27]~combout\ : std_logic;
SIGNAL \words[3][28]~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \words_reg[3][28]~combout\ : std_logic;
SIGNAL \words[3][29]~q\ : std_logic;
SIGNAL \s_writedata[29]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \words_reg[3][29]~combout\ : std_logic;
SIGNAL \words[3][30]~feeder_combout\ : std_logic;
SIGNAL \words[3][30]~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \words_reg[3][30]~combout\ : std_logic;
SIGNAL \words[2][27]~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \words_reg[2][27]~combout\ : std_logic;
SIGNAL \words[1][27]~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \words_reg[1][27]~combout\ : std_logic;
SIGNAL \words[1][29]~q\ : std_logic;
SIGNAL \Selector66~2_combout\ : std_logic;
SIGNAL \words_reg[1][29]~combout\ : std_logic;
SIGNAL \words[0][27]~q\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \words_reg[0][27]~combout\ : std_logic;
SIGNAL \words[0][28]~q\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \s_writedata[28]~input_o\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \words_reg[0][28]~combout\ : std_logic;
SIGNAL \words[0][29]~feeder_combout\ : std_logic;
SIGNAL \words[0][29]~q\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector98~1_combout\ : std_logic;
SIGNAL \words_reg[0][29]~combout\ : std_logic;
SIGNAL \words[0][30]~q\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \words_reg[0][30]~combout\ : std_logic;
SIGNAL \words[3][27]~feeder_combout\ : std_logic;
SIGNAL \words[3][27]~q\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Mux155~1_combout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \words[2][28]~q\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \words[2][29]~q\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \words[2][30]~q\ : std_logic;
SIGNAL \words[1][30]~q\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Mux152~1_combout\ : std_logic;
SIGNAL \words[1][31]~q\ : std_logic;
SIGNAL \words[0][31]~q\ : std_logic;
SIGNAL \words[2][31]~q\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Mux151~1_combout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Selector151~1_combout\ : std_logic;
SIGNAL \Selector151~1clkctrl_outclk\ : std_logic;
SIGNAL \state.read_mem_161141~clkctrl_outclk\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \write_adr_reg[14]~0_combout\ : std_logic;
SIGNAL \write_adr_reg[14]~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \m_adr[0]$latch~combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \m_adr[1]$latch~combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Selector138~1_combout\ : std_logic;
SIGNAL \m_adr[2]$latch~combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Selector139~1_combout\ : std_logic;
SIGNAL \m_adr[3]$latch~combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \m_adr[4]$latch~combout\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \m_adr[5]$latch~combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \m_adr[6]$latch~combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \m_adr[7]$latch~combout\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \Selector144~1_combout\ : std_logic;
SIGNAL \m_adr[8]$latch~combout\ : std_logic;
SIGNAL \Selector145~0_combout\ : std_logic;
SIGNAL \Selector145~1_combout\ : std_logic;
SIGNAL \m_adr[9]$latch~combout\ : std_logic;
SIGNAL \Selector146~0_combout\ : std_logic;
SIGNAL \Selector146~1_combout\ : std_logic;
SIGNAL \m_adr[10]$latch~combout\ : std_logic;
SIGNAL \Selector147~0_combout\ : std_logic;
SIGNAL \Selector147~1_combout\ : std_logic;
SIGNAL \m_adr[11]$latch~combout\ : std_logic;
SIGNAL \Selector148~0_combout\ : std_logic;
SIGNAL \line_tag[2]~feeder_combout\ : std_logic;
SIGNAL \Selector148~1_combout\ : std_logic;
SIGNAL \m_adr[12]$latch~combout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \Selector149~1_combout\ : std_logic;
SIGNAL \m_adr[13]$latch~combout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \line_tag[4]~feeder_combout\ : std_logic;
SIGNAL \Selector150~1_combout\ : std_logic;
SIGNAL \m_adr[14]$latch~combout\ : std_logic;
SIGNAL \m_read~0_combout\ : std_logic;
SIGNAL \m_read$latch~combout\ : std_logic;
SIGNAL \m_write~0_combout\ : std_logic;
SIGNAL \m_write$latch~combout\ : std_logic;
SIGNAL \Selector151~0clkctrl_outclk\ : std_logic;
SIGNAL \s_writedata[0]~input_o\ : std_logic;
SIGNAL \m_writedata[0]~0_combout\ : std_logic;
SIGNAL \m_writedata[0]~1_combout\ : std_logic;
SIGNAL \m_writedata[0]~2_combout\ : std_logic;
SIGNAL \m_writedata[0]$latch~combout\ : std_logic;
SIGNAL \words[2][1]~feeder_combout\ : std_logic;
SIGNAL \words[2][1]~q\ : std_logic;
SIGNAL \m_writedata[1]~3_combout\ : std_logic;
SIGNAL \m_writedata[1]~4_combout\ : std_logic;
SIGNAL \m_writedata[1]~5_combout\ : std_logic;
SIGNAL \m_writedata[1]$latch~combout\ : std_logic;
SIGNAL \m_writedata[2]~6_combout\ : std_logic;
SIGNAL \m_writedata[2]~7_combout\ : std_logic;
SIGNAL \m_writedata[2]~8_combout\ : std_logic;
SIGNAL \m_writedata[2]$latch~combout\ : std_logic;
SIGNAL \m_writedata[3]~9_combout\ : std_logic;
SIGNAL \m_writedata[3]~10_combout\ : std_logic;
SIGNAL \m_writedata[3]~11_combout\ : std_logic;
SIGNAL \m_writedata[3]$latch~combout\ : std_logic;
SIGNAL \s_writedata[4]~input_o\ : std_logic;
SIGNAL \words[0][4]~feeder_combout\ : std_logic;
SIGNAL \words[0][4]~q\ : std_logic;
SIGNAL \m_writedata[4]~12_combout\ : std_logic;
SIGNAL \m_writedata[4]~13_combout\ : std_logic;
SIGNAL \m_writedata[4]~14_combout\ : std_logic;
SIGNAL \m_writedata[4]$latch~combout\ : std_logic;
SIGNAL \m_writedata[5]~15_combout\ : std_logic;
SIGNAL \m_writedata[5]~16_combout\ : std_logic;
SIGNAL \m_writedata[5]~17_combout\ : std_logic;
SIGNAL \m_writedata[5]$latch~combout\ : std_logic;
SIGNAL \m_writedata[6]~18_combout\ : std_logic;
SIGNAL \m_writedata[6]~19_combout\ : std_logic;
SIGNAL \m_writedata[6]~20_combout\ : std_logic;
SIGNAL \m_writedata[6]$latch~combout\ : std_logic;
SIGNAL \m_writedata[7]~21_combout\ : std_logic;
SIGNAL \m_writedata[7]~22_combout\ : std_logic;
SIGNAL \m_writedata[7]~23_combout\ : std_logic;
SIGNAL \m_writedata[7]$latch~combout\ : std_logic;
SIGNAL \m_writedata[8]~24_combout\ : std_logic;
SIGNAL \m_writedata[8]~25_combout\ : std_logic;
SIGNAL \m_writedata[8]~26_combout\ : std_logic;
SIGNAL \m_writedata[8]$latch~combout\ : std_logic;
SIGNAL \m_writedata[9]~27_combout\ : std_logic;
SIGNAL \m_writedata[9]~28_combout\ : std_logic;
SIGNAL \m_writedata[9]~29_combout\ : std_logic;
SIGNAL \m_writedata[9]$latch~combout\ : std_logic;
SIGNAL \words[2][10]~q\ : std_logic;
SIGNAL \m_writedata[10]~30_combout\ : std_logic;
SIGNAL \words[1][10]~q\ : std_logic;
SIGNAL \m_writedata[10]~31_combout\ : std_logic;
SIGNAL \m_writedata[10]~32_combout\ : std_logic;
SIGNAL \m_writedata[10]$latch~combout\ : std_logic;
SIGNAL \m_writedata[11]~33_combout\ : std_logic;
SIGNAL \m_writedata[11]~34_combout\ : std_logic;
SIGNAL \m_writedata[11]~35_combout\ : std_logic;
SIGNAL \m_writedata[11]$latch~combout\ : std_logic;
SIGNAL \m_writedata[12]~36_combout\ : std_logic;
SIGNAL \m_writedata[12]~37_combout\ : std_logic;
SIGNAL \m_writedata[12]~38_combout\ : std_logic;
SIGNAL \m_writedata[12]$latch~combout\ : std_logic;
SIGNAL \m_writedata[13]~39_combout\ : std_logic;
SIGNAL \m_writedata[13]~40_combout\ : std_logic;
SIGNAL \m_writedata[13]~41_combout\ : std_logic;
SIGNAL \m_writedata[13]$latch~combout\ : std_logic;
SIGNAL \words[2][14]~feeder_combout\ : std_logic;
SIGNAL \words[2][14]~q\ : std_logic;
SIGNAL \m_writedata[14]~42_combout\ : std_logic;
SIGNAL \m_writedata[14]~43_combout\ : std_logic;
SIGNAL \m_writedata[14]~44_combout\ : std_logic;
SIGNAL \m_writedata[14]$latch~combout\ : std_logic;
SIGNAL \m_writedata[15]~47_combout\ : std_logic;
SIGNAL \m_writedata[15]$latch~combout\ : std_logic;
SIGNAL \m_writedata[16]~48_combout\ : std_logic;
SIGNAL \m_writedata[16]~49_combout\ : std_logic;
SIGNAL \m_writedata[16]~50_combout\ : std_logic;
SIGNAL \m_writedata[16]$latch~combout\ : std_logic;
SIGNAL \m_writedata[17]~51_combout\ : std_logic;
SIGNAL \m_writedata[17]~52_combout\ : std_logic;
SIGNAL \m_writedata[17]~53_combout\ : std_logic;
SIGNAL \m_writedata[17]$latch~combout\ : std_logic;
SIGNAL \m_writedata[18]~54_combout\ : std_logic;
SIGNAL \m_writedata[18]~55_combout\ : std_logic;
SIGNAL \m_writedata[18]~56_combout\ : std_logic;
SIGNAL \m_writedata[18]$latch~combout\ : std_logic;
SIGNAL \m_writedata[19]~57_combout\ : std_logic;
SIGNAL \m_writedata[19]~58_combout\ : std_logic;
SIGNAL \m_writedata[19]~59_combout\ : std_logic;
SIGNAL \m_writedata[19]$latch~combout\ : std_logic;
SIGNAL \m_writedata[20]~60_combout\ : std_logic;
SIGNAL \m_writedata[20]~61_combout\ : std_logic;
SIGNAL \m_writedata[20]~62_combout\ : std_logic;
SIGNAL \m_writedata[20]$latch~combout\ : std_logic;
SIGNAL \m_writedata[21]~63_combout\ : std_logic;
SIGNAL \m_writedata[21]~64_combout\ : std_logic;
SIGNAL \m_writedata[21]~65_combout\ : std_logic;
SIGNAL \m_writedata[21]$latch~combout\ : std_logic;
SIGNAL \m_writedata[22]~66_combout\ : std_logic;
SIGNAL \m_writedata[22]~67_combout\ : std_logic;
SIGNAL \m_writedata[22]~68_combout\ : std_logic;
SIGNAL \m_writedata[22]$latch~combout\ : std_logic;
SIGNAL \m_writedata[23]~69_combout\ : std_logic;
SIGNAL \m_writedata[23]~70_combout\ : std_logic;
SIGNAL \m_writedata[23]~71_combout\ : std_logic;
SIGNAL \m_writedata[23]$latch~combout\ : std_logic;
SIGNAL \m_writedata[24]~72_combout\ : std_logic;
SIGNAL \m_writedata[24]~73_combout\ : std_logic;
SIGNAL \m_writedata[24]~74_combout\ : std_logic;
SIGNAL \m_writedata[24]$latch~combout\ : std_logic;
SIGNAL \m_writedata[25]~75_combout\ : std_logic;
SIGNAL \m_writedata[25]~76_combout\ : std_logic;
SIGNAL \m_writedata[25]~77_combout\ : std_logic;
SIGNAL \m_writedata[25]$latch~combout\ : std_logic;
SIGNAL \m_writedata[26]~78_combout\ : std_logic;
SIGNAL \m_writedata[26]~79_combout\ : std_logic;
SIGNAL \m_writedata[26]~80_combout\ : std_logic;
SIGNAL \m_writedata[26]$latch~combout\ : std_logic;
SIGNAL \m_writedata[27]~83_combout\ : std_logic;
SIGNAL \m_writedata[27]$latch~combout\ : std_logic;
SIGNAL \m_writedata[28]~84_combout\ : std_logic;
SIGNAL \words[1][28]~q\ : std_logic;
SIGNAL \m_writedata[28]~85_combout\ : std_logic;
SIGNAL \m_writedata[28]~86_combout\ : std_logic;
SIGNAL \m_writedata[28]$latch~combout\ : std_logic;
SIGNAL \m_writedata[29]~87_combout\ : std_logic;
SIGNAL \m_writedata[29]~88_combout\ : std_logic;
SIGNAL \m_writedata[29]~89_combout\ : std_logic;
SIGNAL \m_writedata[29]$latch~combout\ : std_logic;
SIGNAL \m_writedata[30]~90_combout\ : std_logic;
SIGNAL \m_writedata[30]~91_combout\ : std_logic;
SIGNAL \m_writedata[30]~92_combout\ : std_logic;
SIGNAL \m_writedata[30]$latch~combout\ : std_logic;
SIGNAL \m_writedata[31]~93_combout\ : std_logic;
SIGNAL \m_writedata[31]~94_combout\ : std_logic;
SIGNAL \m_writedata[31]~95_combout\ : std_logic;
SIGNAL \m_writedata[31]$latch~combout\ : std_logic;
SIGNAL write_adr_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL readdata_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL read_adr_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL line_tag : std_logic_vector(20 DOWNTO 0);
SIGNAL \word_counter|pre_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ram_block[0][150]__1|auto_generated|q_a\ : std_logic_vector(150 DOWNTO 0);
SIGNAL \ALT_INV_m_waitrequest~input_o\ : std_logic;
SIGNAL \ALT_INV_counter_reset~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_s_writedata <= s_writedata;
ww_s_adr <= s_adr;
ww_s_write <= s_write;
ww_s_read <= s_read;
s_readdata <= ww_s_readdata;
s_waitrequest <= ww_s_waitrequest;
m_adr <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_m_adr));
m_read <= ww_m_read;
ww_m_readdata <= m_readdata;
m_write <= ww_m_write;
m_writedata <= ww_m_writedata;
ww_m_waitrequest <= m_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAIN_bus\ <= (\words_reg[3][0]~combout\ & \words_reg[3][1]~combout\ & \words_reg[3][2]~combout\ & \words_reg[3][3]~combout\ & \words_reg[2][0]~combout\ & \words_reg[2][1]~combout\ & 
\words_reg[2][2]~combout\ & \words_reg[2][3]~combout\ & \words_reg[2][4]~combout\ & \words_reg[1][0]~combout\ & \words_reg[1][1]~combout\ & \words_reg[1][2]~combout\ & \words_reg[1][3]~combout\ & \words_reg[1][4]~combout\ & \words_reg[0][0]~combout\ & 
\words_reg[0][1]~combout\ & \words_reg[0][2]~combout\ & \words_reg[0][3]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(51) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(52) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(53) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(54) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(82) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(83) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(84) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(85) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(86) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(114) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(115) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(116) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(117) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(118) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(147) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(148) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(149) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(150) <= \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAIN_bus\ <= (\words_reg[3][4]~combout\ & \words_reg[3][5]~combout\ & \words_reg[3][6]~combout\ & \words_reg[3][7]~combout\ & \words_reg[3][8]~combout\ & \words_reg[2][5]~combout\ & 
\words_reg[2][6]~combout\ & \words_reg[2][7]~combout\ & \words_reg[2][8]~combout\ & \words_reg[1][5]~combout\ & \words_reg[1][6]~combout\ & \words_reg[1][7]~combout\ & \words_reg[1][8]~combout\ & \words_reg[0][4]~combout\ & \words_reg[0][5]~combout\ & 
\words_reg[0][6]~combout\ & \words_reg[0][7]~combout\ & \words_reg[0][8]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(46) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(47) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(48) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(49) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(50) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(78) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(79) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(80) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(81) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(110) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(111) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(112) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(113) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(142) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(143) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(144) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(145) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(146) <= \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAIN_bus\ <= (\words_reg[3][9]~combout\ & \words_reg[3][10]~combout\ & \words_reg[3][11]~combout\ & \words_reg[3][12]~combout\ & \words_reg[2][9]~combout\ & \words_reg[2][10]~combout\ & 
\words_reg[2][11]~combout\ & \words_reg[2][12]~combout\ & \words_reg[2][13]~combout\ & \words_reg[1][9]~combout\ & \words_reg[1][10]~combout\ & \words_reg[1][11]~combout\ & \words_reg[1][12]~combout\ & \words_reg[1][13]~combout\ & 
\words_reg[0][9]~combout\ & \words_reg[0][10]~combout\ & \words_reg[0][11]~combout\ & \words_reg[0][12]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(42) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(43) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(44) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(45) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(73) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(74) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(75) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(76) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(77) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(105) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(106) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(107) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(108) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(109) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(138) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(139) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(140) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(141) <= \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAIN_bus\ <= (\words_reg[3][13]~combout\ & \words_reg[3][14]~combout\ & \words_reg[3][15]~combout\ & \words_reg[3][16]~combout\ & \words_reg[3][17]~combout\ & \words_reg[2][14]~combout\ & 
\words_reg[2][15]~combout\ & \words_reg[2][16]~combout\ & \words_reg[2][17]~combout\ & \words_reg[1][14]~combout\ & \words_reg[1][15]~combout\ & \words_reg[1][16]~combout\ & \words_reg[1][17]~combout\ & \words_reg[0][13]~combout\ & 
\words_reg[0][14]~combout\ & \words_reg[0][15]~combout\ & \words_reg[0][16]~combout\ & \words_reg[0][17]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(37) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(38) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(39) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(40) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(41) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(69) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(70) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(71) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(72) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(101) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(102) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(103) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(104) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(133) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(134) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(135) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(136) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(137) <= \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAIN_bus\ <= (\words_reg[3][18]~combout\ & \words_reg[3][19]~combout\ & \words_reg[3][20]~combout\ & \words_reg[3][21]~combout\ & \words_reg[2][18]~combout\ & \words_reg[2][19]~combout\ & 
\words_reg[2][20]~combout\ & \words_reg[2][21]~combout\ & \words_reg[2][22]~combout\ & \words_reg[1][18]~combout\ & \words_reg[1][19]~combout\ & \words_reg[1][20]~combout\ & \words_reg[1][21]~combout\ & \words_reg[1][22]~combout\ & 
\words_reg[0][18]~combout\ & \words_reg[0][19]~combout\ & \words_reg[0][20]~combout\ & \words_reg[0][21]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(33) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(34) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(35) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(36) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(64) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(65) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(66) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(67) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(68) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(96) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(97) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(98) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(99) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(100) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(129) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(130) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(131) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(132) <= \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAIN_bus\ <= (\words_reg[3][22]~combout\ & \words_reg[3][23]~combout\ & \words_reg[3][24]~combout\ & \words_reg[3][25]~combout\ & \words_reg[3][26]~combout\ & \words_reg[2][23]~combout\ & 
\words_reg[2][24]~combout\ & \words_reg[2][25]~combout\ & \words_reg[2][26]~combout\ & \words_reg[1][23]~combout\ & \words_reg[1][24]~combout\ & \words_reg[1][25]~combout\ & \words_reg[1][26]~combout\ & \words_reg[0][22]~combout\ & 
\words_reg[0][23]~combout\ & \words_reg[0][24]~combout\ & \words_reg[0][25]~combout\ & \words_reg[0][26]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(28) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(29) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(30) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(31) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(32) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(60) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(61) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(62) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(63) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(92) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(93) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(94) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(95) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(124) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(125) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(126) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(127) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(128) <= \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAIN_bus\ <= (\words_reg[3][27]~combout\ & \words_reg[3][28]~combout\ & \words_reg[3][29]~combout\ & \words_reg[3][30]~combout\ & \words_reg[2][27]~combout\ & \words_reg[2][28]~combout\ & 
\words_reg[2][29]~combout\ & \words_reg[2][30]~combout\ & \words_reg[2][31]~combout\ & \words_reg[1][27]~combout\ & \words_reg[1][28]~combout\ & \words_reg[1][29]~combout\ & \words_reg[1][30]~combout\ & \words_reg[1][31]~combout\ & 
\words_reg[0][27]~combout\ & \words_reg[0][28]~combout\ & \words_reg[0][29]~combout\ & \words_reg[0][30]~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(24) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(25) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(26) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(27) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(55) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(56) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(57) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(58) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(59) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(87) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(88) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(89) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(90) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(91) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(120) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(121) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(122) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(123) <= \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\words_reg[3][31]~combout\ & \words_reg[0][31]~combout\ & \s_adr[10]~input_o\ & \s_adr[11]~input_o\ & \s_adr[12]~input_o\ & \s_adr[13]~input_o\ & \s_adr[14]~input_o\ & 
\s_adr[15]~input_o\ & \s_adr[16]~input_o\ & \s_adr[17]~input_o\ & \s_adr[18]~input_o\ & \s_adr[19]~input_o\ & \s_adr[20]~input_o\ & \s_adr[21]~input_o\ & \s_adr[22]~input_o\ & \s_adr[23]~input_o\ & \valid_bit~q\ & \dirty_bit_reg~combout\);

\ram_block[0][150]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(0) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(1) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(9) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(10) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(11) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(12) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(13) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram_block[0][150]__1|auto_generated|q_a\(14) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ram_block[0][150]__1|auto_generated|q_a\(15) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ram_block[0][150]__1|auto_generated|q_a\(16) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\ram_block[0][150]__1|auto_generated|q_a\(17) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ram_block[0][150]__1|auto_generated|q_a\(18) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\ram_block[0][150]__1|auto_generated|q_a\(19) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\ram_block[0][150]__1|auto_generated|q_a\(20) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\ram_block[0][150]__1|auto_generated|q_a\(21) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\ram_block[0][150]__1|auto_generated|q_a\(22) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\ram_block[0][150]__1|auto_generated|q_a\(23) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\ram_block[0][150]__1|auto_generated|q_a\(119) <= \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \s_adr[24]~input_o\ & \s_adr[25]~input_o\ & \s_adr[26]~input_o\ & \s_adr[27]~input_o\ & \s_adr[28]~input_o\ & 
\s_adr[29]~input_o\ & \s_adr[30]~input_o\);

\ram_block[0][150]__1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\s_adr[9]~input_o\ & \s_adr[8]~input_o\ & \s_adr[7]~input_o\ & \s_adr[6]~input_o\ & \s_adr[5]~input_o\ & \s_adr[4]~input_o\ & \s_adr[3]~input_o\ & \s_adr[2]~input_o\);

\ram_block[0][150]__1|auto_generated|q_a\(2) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\ram_block[0][150]__1|auto_generated|q_a\(3) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\ram_block[0][150]__1|auto_generated|q_a\(4) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\ram_block[0][150]__1|auto_generated|q_a\(5) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\ram_block[0][150]__1|auto_generated|q_a\(6) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\ram_block[0][150]__1|auto_generated|q_a\(7) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\ram_block[0][150]__1|auto_generated|q_a\(8) <= \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\Selector130~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector130~0_combout\);

\Selector132~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector132~0_combout\);

\Selector131~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector131~0_combout\);

\Selector133~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector133~2_combout\);

\write_adr_reg[14]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \write_adr_reg[14]~0_combout\);

\state.read_cache_161112~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.read_cache_161112~combout\);

\Selector151~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector151~1_combout\);

\Selector151~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector151~0_combout\);

\state.read_mem_161141~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.read_mem_161141~combout\);

\Selector159~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector159~0_combout\);
\ALT_INV_m_waitrequest~input_o\ <= NOT \m_waitrequest~input_o\;
\ALT_INV_counter_reset~combout\ <= NOT \counter_reset~combout\;

-- Location: M9K_X13_Y14_N0
\ram_block[0][150]__1|auto_generated|ram_block1a42\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 42,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y12_N0
\ram_block[0][150]__1|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y11_N0
\ram_block[0][150]__1|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y14_N12
\Mux181~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux181~0_combout\ = (\s_adr[0]~input_o\ & (((\s_adr[1]~input_o\)))) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & ((\words[2][1]~q\))) # (!\s_adr[1]~input_o\ & (\words[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][1]~q\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \words[2][1]~q\,
	combout => \Mux181~0_combout\);

-- Location: FF_X12_Y17_N7
\words[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(109),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][9]~q\);

-- Location: LCCOMB_X12_Y17_N10
\Mux173~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux173~0_combout\ = (\s_adr[1]~input_o\ & ((\words[2][9]~q\) # ((\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & (((!\s_adr[0]~input_o\ & \words[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][9]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][9]~q\,
	combout => \Mux173~0_combout\);

-- Location: LCCOMB_X14_Y14_N10
\Mux167~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux167~0_combout\ = (\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\) # ((\words[2][15]~q\)))) # (!\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & ((\words[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[2][15]~q\,
	datad => \words[0][15]~q\,
	combout => \Mux167~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\Mux156~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][26]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][26]~q\,
	datad => \words[1][26]~q\,
	combout => \Mux156~0_combout\);

-- Location: LCCOMB_X14_Y14_N8
\m_writedata[15]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[15]~45_combout\ = (\word_counter|pre_count\(1) & (((\words[3][15]~q\) # (!\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & (\words[1][15]~q\ & (\word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[1][15]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \words[3][15]~q\,
	combout => \m_writedata[15]~45_combout\);

-- Location: LCCOMB_X14_Y14_N26
\m_writedata[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[15]~46_combout\ = (\word_counter|pre_count\(0) & (((\m_writedata[15]~45_combout\)))) # (!\word_counter|pre_count\(0) & ((\m_writedata[15]~45_combout\ & (\words[2][15]~q\)) # (!\m_writedata[15]~45_combout\ & ((\words[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][15]~q\,
	datab => \words[0][15]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \m_writedata[15]~45_combout\,
	combout => \m_writedata[15]~46_combout\);

-- Location: LCCOMB_X21_Y12_N22
\m_writedata[27]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[27]~81_combout\ = (\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & ((\words[1][27]~q\))) # (!\word_counter|pre_count\(0) & (\words[0][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[0][27]~q\,
	datac => \words[1][27]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[27]~81_combout\);

-- Location: LCCOMB_X21_Y12_N12
\m_writedata[27]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[27]~82_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[27]~81_combout\ & ((\words[3][27]~q\))) # (!\m_writedata[27]~81_combout\ & (\words[2][27]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[27]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][27]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \m_writedata[27]~81_combout\,
	datad => \words[3][27]~q\,
	combout => \m_writedata[27]~82_combout\);

-- Location: LCCOMB_X20_Y13_N8
\Selector158~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector158~0_combout\ = (\s_read~input_o\ & ((\state.hit_161170~combout\) # ((\state.write_cache_161054~combout\ & \write_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datab => \state.write_cache_161054~combout\,
	datac => \write_done~q\,
	datad => \state.hit_161170~combout\,
	combout => \Selector158~0_combout\);

-- Location: FF_X24_Y9_N25
\line_tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(0));

-- Location: FF_X20_Y13_N27
cache_hit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_hit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_hit~q\);

-- Location: LCCOMB_X20_Y13_N22
\Selector162~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector162~0_combout\ = (\state.idle_161228~combout\ & (\cache_hit~q\ & (\m_write~1_combout\ & \valid_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle_161228~combout\,
	datab => \cache_hit~q\,
	datac => \m_write~1_combout\,
	datad => \valid_bit~q\,
	combout => \Selector162~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\Selector164~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector164~0_combout\ = (\m_write~1_combout\ & (\state.idle_161228~combout\ & ((!\cache_hit~q\) # (!\valid_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid_bit~q\,
	datab => \cache_hit~q\,
	datac => \m_write~1_combout\,
	datad => \state.idle_161228~combout\,
	combout => \Selector164~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[0]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Selector95~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~2_combout\ = (\Selector95~0_combout\) # ((\Selector63~1_combout\) # ((\Selector95~1_combout\ & \words[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][0]~q\,
	datac => \Selector95~0_combout\,
	datad => \Selector63~1_combout\,
	combout => \Selector95~2_combout\);

-- Location: LCCOMB_X20_Y14_N30
\Selector127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][0]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][0]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X20_Y14_N12
\Selector127~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~2_combout\ = (\Selector127~0_combout\) # ((\Selector63~1_combout\) # ((\s_writedata[0]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~0_combout\,
	datab => \Selector63~1_combout\,
	datac => \s_writedata[0]~input_o\,
	datad => \Selector127~1_combout\,
	combout => \Selector127~2_combout\);

-- Location: LCCOMB_X20_Y14_N14
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X20_Y14_N0
\Selector31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector31~0_combout\) # ((\Selector63~1_combout\) # ((\Selector31~1_combout\ & \words[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \Selector31~1_combout\,
	datac => \words[3][0]~q\,
	datad => \Selector63~1_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X24_Y9_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\s_adr[11]~input_o\ & (line_tag(1) & (line_tag(0) $ (!\s_adr[10]~input_o\)))) # (!\s_adr[11]~input_o\ & (!line_tag(1) & (line_tag(0) $ (!\s_adr[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[11]~input_o\,
	datab => line_tag(1),
	datac => line_tag(0),
	datad => \s_adr[10]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\s_adr[12]~input_o\ & (line_tag(2) & (\s_adr[13]~input_o\ $ (!line_tag(3))))) # (!\s_adr[12]~input_o\ & (!line_tag(2) & (\s_adr[13]~input_o\ $ (!line_tag(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[12]~input_o\,
	datab => \s_adr[13]~input_o\,
	datac => line_tag(3),
	datad => line_tag(2),
	combout => \Equal0~1_combout\);

-- Location: FF_X24_Y12_N13
\line_tag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(5));

-- Location: LCCOMB_X24_Y12_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\s_adr[14]~input_o\ & (line_tag(4) & (\s_adr[15]~input_o\ $ (!line_tag(5))))) # (!\s_adr[14]~input_o\ & (!line_tag(4) & (\s_adr[15]~input_o\ $ (!line_tag(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[14]~input_o\,
	datab => \s_adr[15]~input_o\,
	datac => line_tag(5),
	datad => line_tag(4),
	combout => \Equal0~2_combout\);

-- Location: FF_X24_Y12_N23
\line_tag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(6));

-- Location: FF_X24_Y12_N11
\line_tag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(7));

-- Location: LCCOMB_X24_Y13_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (line_tag(7) & (\s_adr[17]~input_o\ & (line_tag(6) $ (!\s_adr[16]~input_o\)))) # (!line_tag(7) & (!\s_adr[17]~input_o\ & (line_tag(6) $ (!\s_adr[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line_tag(7),
	datab => line_tag(6),
	datac => \s_adr[17]~input_o\,
	datad => \s_adr[16]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X26_Y12_N17
\line_tag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(8));

-- Location: FF_X26_Y12_N3
\line_tag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(9));

-- Location: LCCOMB_X26_Y12_N16
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\s_adr[19]~input_o\ & (line_tag(9) & (line_tag(8) $ (!\s_adr[18]~input_o\)))) # (!\s_adr[19]~input_o\ & (!line_tag(9) & (line_tag(8) $ (!\s_adr[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[19]~input_o\,
	datab => line_tag(9),
	datac => line_tag(8),
	datad => \s_adr[18]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: FF_X26_Y12_N1
\line_tag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(10));

-- Location: FF_X26_Y12_N7
\line_tag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(11));

-- Location: LCCOMB_X26_Y12_N0
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (line_tag(11) & (\s_adr[21]~input_o\ & (\s_adr[20]~input_o\ $ (!line_tag(10))))) # (!line_tag(11) & (!\s_adr[21]~input_o\ & (\s_adr[20]~input_o\ $ (!line_tag(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line_tag(11),
	datab => \s_adr[20]~input_o\,
	datac => line_tag(10),
	datad => \s_adr[21]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: FF_X24_Y12_N5
\line_tag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(12));

-- Location: FF_X24_Y12_N3
\line_tag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(13));

-- Location: LCCOMB_X24_Y12_N4
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\s_adr[22]~input_o\ & (line_tag(12) & (\s_adr[23]~input_o\ $ (!line_tag(13))))) # (!\s_adr[22]~input_o\ & (!line_tag(12) & (\s_adr[23]~input_o\ $ (!line_tag(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[22]~input_o\,
	datab => \s_adr[23]~input_o\,
	datac => line_tag(12),
	datad => line_tag(13),
	combout => \Equal0~7_combout\);

-- Location: FF_X24_Y11_N13
\line_tag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(14));

-- Location: FF_X24_Y11_N31
\line_tag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(15));

-- Location: LCCOMB_X24_Y11_N12
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (line_tag(15) & (\s_adr[25]~input_o\ & (\s_adr[24]~input_o\ $ (!line_tag(14))))) # (!line_tag(15) & (!\s_adr[25]~input_o\ & (\s_adr[24]~input_o\ $ (!line_tag(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line_tag(15),
	datab => \s_adr[24]~input_o\,
	datac => line_tag(14),
	datad => \s_adr[25]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X24_Y11_N20
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: FF_X24_Y11_N23
\line_tag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(16));

-- Location: FF_X24_Y11_N17
\line_tag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(17));

-- Location: LCCOMB_X24_Y11_N22
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\s_adr[26]~input_o\ & (line_tag(16) & (line_tag(17) $ (!\s_adr[27]~input_o\)))) # (!\s_adr[26]~input_o\ & (!line_tag(16) & (line_tag(17) $ (!\s_adr[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[26]~input_o\,
	datab => line_tag(17),
	datac => line_tag(16),
	datad => \s_adr[27]~input_o\,
	combout => \Equal0~10_combout\);

-- Location: FF_X24_Y11_N11
\line_tag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(18));

-- Location: FF_X24_Y11_N25
\line_tag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(19));

-- Location: LCCOMB_X24_Y11_N10
\Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\s_adr[29]~input_o\ & (line_tag(19) & (\s_adr[28]~input_o\ $ (!line_tag(18))))) # (!\s_adr[29]~input_o\ & (!line_tag(19) & (\s_adr[28]~input_o\ $ (!line_tag(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[29]~input_o\,
	datab => \s_adr[28]~input_o\,
	datac => line_tag(18),
	datad => line_tag(19),
	combout => \Equal0~11_combout\);

-- Location: FF_X24_Y11_N27
\line_tag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(20));

-- Location: LCCOMB_X24_Y11_N26
\Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\Equal0~10_combout\ & (\Equal0~11_combout\ & (\s_adr[30]~input_o\ $ (!line_tag(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \s_adr[30]~input_o\,
	datac => line_tag(20),
	datad => \Equal0~11_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X20_Y13_N26
\cache_hit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cache_hit~0_combout\ = (\cache_hit~q\) # ((\Equal0~4_combout\ & (\Equal0~12_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~12_combout\,
	datac => \cache_hit~q\,
	datad => \Equal0~9_combout\,
	combout => \cache_hit~0_combout\);

-- Location: LCCOMB_X20_Y14_N16
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[1]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[1]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X20_Y14_N24
\Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\Selector30~0_combout\) # ((\Selector94~1_combout\) # ((\Selector31~1_combout\ & \words[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector31~1_combout\,
	datac => \words[3][1]~q\,
	datad => \Selector94~1_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X20_Y14_N22
\Selector61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (!\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[2]~input_o\,
	combout => \Selector61~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\Selector125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][2]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][2]~q\,
	combout => \Selector125~0_combout\);

-- Location: LCCOMB_X20_Y14_N28
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[2]~input_o\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X19_Y14_N20
\Selector29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\Selector29~0_combout\) # ((\Selector61~1_combout\) # ((\Selector31~1_combout\ & \words[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector31~1_combout\,
	datac => \words[3][2]~q\,
	datad => \Selector61~1_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[4]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[4]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\s_writedata[4]~input_o\ & (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[4]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Selector91~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\Selector59~1_combout\) # ((\Selector91~0_combout\) # ((\Selector95~1_combout\ & \words[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~1_combout\,
	datab => \Selector95~1_combout\,
	datac => \Selector91~0_combout\,
	datad => \words[1][4]~q\,
	combout => \Selector91~1_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Selector123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][4]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \words[0][4]~q\,
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X26_Y15_N22
\Selector123~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector123~1_combout\ = (\Selector123~0_combout\) # ((\Selector59~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \Selector123~0_combout\,
	datac => \Selector59~1_combout\,
	datad => \s_writedata[4]~input_o\,
	combout => \Selector123~1_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\s_writedata[4]~input_o\ & (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[4]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\Selector27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector59~1_combout\) # ((\Selector27~0_combout\) # ((\Selector31~1_combout\ & \words[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~1_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector31~1_combout\,
	datad => \words[3][4]~q\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X27_Y14_N20
\Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\s_writedata[5]~input_o\ & (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[5]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Selector90~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~2_combout\ = (\Selector90~0_combout\) # ((\Selector90~1_combout\) # ((\Selector95~1_combout\ & \words[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector90~0_combout\,
	datac => \words[1][5]~q\,
	datad => \Selector90~1_combout\,
	combout => \Selector90~2_combout\);

-- Location: LCCOMB_X27_Y14_N14
\Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (!\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\s_writedata[5]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[5]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X27_Y14_N12
\Selector58~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = (\Selector58~0_combout\) # ((\Selector90~1_combout\) # ((\Selector63~2_combout\ & \words[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \words[2][5]~q\,
	datad => \Selector90~1_combout\,
	combout => \Selector58~1_combout\);

-- Location: LCCOMB_X27_Y14_N26
\Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\words[0][5]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][5]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X26_Y14_N18
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\s_writedata[5]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[5]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X27_Y14_N6
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\s_writedata[6]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[6]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X17_Y14_N20
\Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\state.write_mem_161083~combout\ & (\s_writedata[7]~input_o\ & (!\s_adr[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_writedata[7]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Selector56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\Selector88~1_combout\) # ((\Selector56~0_combout\) # ((\words[2][7]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][7]~q\,
	datab => \Selector88~1_combout\,
	datac => \Selector56~0_combout\,
	datad => \Selector63~2_combout\,
	combout => \Selector56~1_combout\);

-- Location: LCCOMB_X22_Y14_N10
\Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][7]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][7]~q\,
	combout => \Selector120~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Selector120~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector120~1_combout\ = (\Selector120~0_combout\) # ((\Selector88~1_combout\) # ((\s_writedata[7]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector120~0_combout\,
	datab => \s_writedata[7]~input_o\,
	datac => \Selector127~1_combout\,
	datad => \Selector88~1_combout\,
	combout => \Selector120~1_combout\);

-- Location: LCCOMB_X17_Y14_N14
\Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\s_writedata[7]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[7]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X20_Y14_N10
\Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\s_writedata[8]~input_o\ & (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[8]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\Selector55~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\Selector55~0_combout\) # ((\Selector55~1_combout\) # ((\Selector63~2_combout\ & \words[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector55~0_combout\,
	datac => \words[2][8]~q\,
	datad => \Selector55~1_combout\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X20_Y14_N8
\Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\s_writedata[8]~input_o\ & (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[8]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\s_writedata[8]~input_o\ & (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[8]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[9]~input_o\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X14_Y16_N20
\Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (!\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[10]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[10]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X14_Y16_N2
\Selector53~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector53~2_combout\ = (\Selector53~1_combout\) # ((\Selector53~0_combout\) # ((\words[2][10]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~1_combout\,
	datab => \words[2][10]~q\,
	datac => \Selector63~2_combout\,
	datad => \Selector53~0_combout\,
	combout => \Selector53~2_combout\);

-- Location: LCCOMB_X14_Y16_N16
\Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[10]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[10]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X14_Y16_N22
\Selector85~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\Selector85~0_combout\) # ((\Selector53~1_combout\) # ((\words[1][10]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][10]~q\,
	datab => \Selector95~1_combout\,
	datac => \Selector85~0_combout\,
	datad => \Selector53~1_combout\,
	combout => \Selector85~1_combout\);

-- Location: LCCOMB_X16_Y16_N6
\Selector84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[11]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[11]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\Selector84~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector84~2_combout\ = (\Selector84~1_combout\) # ((\Selector84~0_combout\) # ((\words[1][11]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~1_combout\,
	datab => \Selector84~0_combout\,
	datac => \words[1][11]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector84~2_combout\);

-- Location: LCCOMB_X15_Y17_N14
\Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & \s_writedata[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[12]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X16_Y17_N28
\Selector83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_writedata[12]~input_o\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[12]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X16_Y17_N16
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (\s_writedata[12]~input_o\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[12]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X10_Y14_N30
\Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (!\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[13]~input_o\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\s_writedata[15]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[15]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Selector16~0_combout\) # ((\Selector80~1_combout\) # ((\words[3][15]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector80~1_combout\,
	datac => \words[3][15]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[18]~input_o\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\s_adr[1]~input_o\ & (\s_writedata[19]~input_o\ & (!\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_writedata[19]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\words[0][19]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][19]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Selector108~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector108~1_combout\ = (\Selector76~1_combout\) # ((\Selector108~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \Selector76~1_combout\,
	datac => \Selector108~0_combout\,
	datad => \s_writedata[19]~input_o\,
	combout => \Selector108~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.write_mem_161083~combout\ & (\s_writedata[21]~input_o\ & (!\s_adr[1]~input_o\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_writedata[21]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Selector74~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~2_combout\ = (\Selector74~0_combout\) # ((\Selector74~1_combout\) # ((\Selector95~1_combout\ & \words[1][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector74~0_combout\,
	datab => \Selector74~1_combout\,
	datac => \Selector95~1_combout\,
	datad => \words[1][21]~q\,
	combout => \Selector74~2_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state.write_mem_161083~combout\ & (\s_writedata[21]~input_o\ & (\s_adr[1]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_writedata[21]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_writedata[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[21]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector74~1_combout\) # ((\Selector10~0_combout\) # ((\words[3][21]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector74~1_combout\,
	datab => \Selector10~0_combout\,
	datac => \words[3][21]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X21_Y17_N0
\Selector73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\s_writedata[22]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[22]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\s_adr[1]~input_o\ & (\s_writedata[22]~input_o\ & (\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_writedata[22]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector41~1_combout\) # ((\Selector9~0_combout\) # ((\words[3][22]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][22]~q\,
	datab => \Selector41~1_combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector31~1_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X16_Y17_N8
\Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \s_writedata[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[23]~input_o\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X17_Y17_N10
\Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & (\s_writedata[23]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[23]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X27_Y17_N22
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\s_writedata[24]~input_o\ & (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[24]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector39~1_combout\) # ((\Selector7~0_combout\) # ((\Selector31~1_combout\ & \words[3][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector39~1_combout\,
	datac => \words[3][24]~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\s_writedata[26]~input_o\ & (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[26]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\Selector37~1_combout\) # ((\words[3][26]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][26]~q\,
	datab => \Selector31~1_combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector37~1_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X28_Y12_N16
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[28]~input_o\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X28_Y12_N10
\Selector35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\Selector35~1_combout\) # ((\Selector35~0_combout\) # ((\Selector63~2_combout\ & \words[2][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector35~1_combout\,
	datac => \Selector35~0_combout\,
	datad => \words[2][28]~q\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X28_Y12_N12
\Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & \s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[28]~input_o\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\Selector67~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Selector35~1_combout\) # ((\Selector67~0_combout\) # ((\Selector95~1_combout\ & \words[1][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector35~1_combout\,
	datac => \Selector67~0_combout\,
	datad => \words[1][28]~q\,
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[28]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X27_Y12_N24
\Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \s_writedata[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[29]~input_o\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[29]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[29]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\Selector34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((\Selector66~1_combout\) # ((\words[2][29]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector66~1_combout\,
	datac => \words[2][29]~q\,
	datad => \Selector63~2_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X26_Y10_N28
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[30]~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X26_Y10_N14
\Selector33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Selector33~0_combout\) # ((\Selector33~1_combout\) # ((\Selector63~2_combout\ & \words[2][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector33~1_combout\,
	datad => \words[2][30]~q\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X26_Y10_N20
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\s_adr[0]~input_o\ & (\s_writedata[30]~input_o\ & (\s_adr[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_writedata[30]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\s_adr[0]~input_o\ & (\s_writedata[31]~input_o\ & (\state.write_mem_161083~combout\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_writedata[31]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Selector64~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = (\Selector64~0_combout\) # ((\Selector64~1_combout\) # ((\words[1][31]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector64~1_combout\,
	datac => \words[1][31]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector64~2_combout\);

-- Location: LCCOMB_X26_Y12_N18
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\s_writedata[31]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector32~0_combout\) # ((\Selector64~1_combout\) # ((\Selector63~2_combout\ & \words[2][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \words[2][31]~q\,
	datad => \Selector64~1_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][31]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][31]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X19_Y13_N22
\state.miss_161199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.miss_161199~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & ((\Selector164~0_combout\))) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & (\state.miss_161199~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.miss_161199~combout\,
	datac => \Selector164~0_combout\,
	datad => \Selector159~0clkctrl_outclk\,
	combout => \state.miss_161199~combout\);

-- Location: IOIBUF_X41_Y14_N8
\s_writedata[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(8),
	o => \s_writedata[8]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\s_writedata[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(12),
	o => \s_writedata[12]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\s_writedata[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(21),
	o => \s_writedata[21]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\s_adr[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(25),
	o => \s_adr[25]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\s_adr[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(24),
	o => \s_adr[24]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\s_adr[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(27),
	o => \s_adr[27]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\s_adr[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(26),
	o => \s_adr[26]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\s_adr[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(29),
	o => \s_adr[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\s_adr[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(28),
	o => \s_adr[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\s_adr[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(30),
	o => \s_adr[30]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\m_readdata[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(4),
	o => \m_readdata[4]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\m_readdata[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(9),
	o => \m_readdata[9]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\m_readdata[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(10),
	o => \m_readdata[10]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\m_readdata[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(12),
	o => \m_readdata[12]~input_o\);

-- Location: IOIBUF_X14_Y29_N15
\m_readdata[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(14),
	o => \m_readdata[14]~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\m_readdata[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(17),
	o => \m_readdata[17]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\m_readdata[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(18),
	o => \m_readdata[18]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\m_readdata[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(21),
	o => \m_readdata[21]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\m_readdata[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(24),
	o => \m_readdata[24]~input_o\);

-- Location: LCCOMB_X26_Y12_N2
\line_tag[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[9]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(13),
	combout => \line_tag[9]~feeder_combout\);

-- Location: LCCOMB_X26_Y12_N6
\line_tag[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[11]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(11),
	combout => \line_tag[11]~feeder_combout\);

-- Location: LCCOMB_X24_Y11_N30
\line_tag[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[15]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(7),
	combout => \line_tag[15]~feeder_combout\);

-- Location: LCCOMB_X24_Y11_N16
\line_tag[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[17]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(5),
	combout => \line_tag[17]~feeder_combout\);

-- Location: LCCOMB_X24_Y11_N24
\line_tag[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[19]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(3),
	combout => \line_tag[19]~feeder_combout\);

-- Location: IOOBUF_X16_Y29_N16
\s_readdata[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(0),
	devoe => ww_devoe,
	o => \s_readdata[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\s_readdata[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(1),
	devoe => ww_devoe,
	o => \s_readdata[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\s_readdata[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(2),
	devoe => ww_devoe,
	o => \s_readdata[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\s_readdata[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(3),
	devoe => ww_devoe,
	o => \s_readdata[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\s_readdata[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(4),
	devoe => ww_devoe,
	o => \s_readdata[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\s_readdata[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(5),
	devoe => ww_devoe,
	o => \s_readdata[5]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\s_readdata[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(6),
	devoe => ww_devoe,
	o => \s_readdata[6]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\s_readdata[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(7),
	devoe => ww_devoe,
	o => \s_readdata[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\s_readdata[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(8),
	devoe => ww_devoe,
	o => \s_readdata[8]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\s_readdata[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(9),
	devoe => ww_devoe,
	o => \s_readdata[9]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\s_readdata[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(10),
	devoe => ww_devoe,
	o => \s_readdata[10]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\s_readdata[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(11),
	devoe => ww_devoe,
	o => \s_readdata[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\s_readdata[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(12),
	devoe => ww_devoe,
	o => \s_readdata[12]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\s_readdata[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(13),
	devoe => ww_devoe,
	o => \s_readdata[13]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\s_readdata[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(14),
	devoe => ww_devoe,
	o => \s_readdata[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\s_readdata[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(15),
	devoe => ww_devoe,
	o => \s_readdata[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\s_readdata[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(16),
	devoe => ww_devoe,
	o => \s_readdata[16]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\s_readdata[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(17),
	devoe => ww_devoe,
	o => \s_readdata[17]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\s_readdata[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(18),
	devoe => ww_devoe,
	o => \s_readdata[18]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\s_readdata[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(19),
	devoe => ww_devoe,
	o => \s_readdata[19]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\s_readdata[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(20),
	devoe => ww_devoe,
	o => \s_readdata[20]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\s_readdata[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(21),
	devoe => ww_devoe,
	o => \s_readdata[21]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\s_readdata[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(22),
	devoe => ww_devoe,
	o => \s_readdata[22]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\s_readdata[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(23),
	devoe => ww_devoe,
	o => \s_readdata[23]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\s_readdata[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(24),
	devoe => ww_devoe,
	o => \s_readdata[24]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\s_readdata[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(25),
	devoe => ww_devoe,
	o => \s_readdata[25]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\s_readdata[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(26),
	devoe => ww_devoe,
	o => \s_readdata[26]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\s_readdata[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(27),
	devoe => ww_devoe,
	o => \s_readdata[27]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\s_readdata[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(28),
	devoe => ww_devoe,
	o => \s_readdata[28]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\s_readdata[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(29),
	devoe => ww_devoe,
	o => \s_readdata[29]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\s_readdata[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(30),
	devoe => ww_devoe,
	o => \s_readdata[30]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\s_readdata[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => readdata_reg(31),
	devoe => ww_devoe,
	o => \s_readdata[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\s_waitrequest~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_waitrequest~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\m_adr[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[0]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\m_adr[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[1]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\m_adr[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[2]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\m_adr[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[3]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\m_adr[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[4]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\m_adr[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[5]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\m_adr[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[6]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\m_adr[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[7]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\m_adr[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[8]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[8]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\m_adr[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[9]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[9]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\m_adr[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[10]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[10]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\m_adr[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[11]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[11]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\m_adr[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[12]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[12]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\m_adr[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[13]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\m_adr[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_adr[14]$latch~combout\,
	devoe => ww_devoe,
	o => \m_adr[14]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\m_read~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_read$latch~combout\,
	devoe => ww_devoe,
	o => \m_read~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\m_write~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_write$latch~combout\,
	devoe => ww_devoe,
	o => \m_write~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\m_writedata[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[0]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\m_writedata[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[1]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\m_writedata[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[2]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\m_writedata[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[3]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\m_writedata[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[4]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[4]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\m_writedata[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[5]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[5]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\m_writedata[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[6]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\m_writedata[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[7]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\m_writedata[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[8]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\m_writedata[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[9]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\m_writedata[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[10]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\m_writedata[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[11]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\m_writedata[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[12]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[12]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\m_writedata[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[13]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[13]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\m_writedata[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[14]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\m_writedata[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[15]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[15]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\m_writedata[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[16]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[16]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\m_writedata[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[17]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[17]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\m_writedata[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[18]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[18]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\m_writedata[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[19]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[19]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\m_writedata[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[20]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[20]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\m_writedata[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[21]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[21]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\m_writedata[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[22]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[22]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\m_writedata[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[23]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[23]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\m_writedata[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[24]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[24]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\m_writedata[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[25]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[25]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\m_writedata[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[26]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[26]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\m_writedata[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[27]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[27]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\m_writedata[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[28]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[28]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\m_writedata[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[29]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[29]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\m_writedata[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[30]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[30]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\m_writedata[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[31]$latch~combout\,
	devoe => ww_devoe,
	o => \m_writedata[31]~output_o\);

-- Location: LCCOMB_X17_Y13_N22
\state.hit_161170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.hit_161170~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & (\Selector162~0_combout\)) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & ((\state.hit_161170~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector162~0_combout\,
	datac => \Selector159~0clkctrl_outclk\,
	datad => \state.hit_161170~combout\,
	combout => \state.hit_161170~combout\);

-- Location: IOIBUF_X16_Y0_N15
\s_read~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_read,
	o => \s_read~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\s_adr[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(31),
	o => \s_adr[31]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\m_waitrequest~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_waitrequest,
	o => \m_waitrequest~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\s_write~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_write,
	o => \s_write~input_o\);

-- Location: LCCOMB_X17_Y13_N26
\Selector154~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector154~1_combout\ = (\s_read~input_o\ & (\state.write_cache_161054~combout\ & ((!\write_done~q\)))) # (!\s_read~input_o\ & ((\state.hit_161170~combout\) # ((\state.write_cache_161054~combout\ & !\write_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datab => \state.write_cache_161054~combout\,
	datac => \state.hit_161170~combout\,
	datad => \write_done~q\,
	combout => \Selector154~1_combout\);

-- Location: LCCOMB_X17_Y13_N0
\word_counter|pre_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \word_counter|pre_count[0]~1_combout\ = !\word_counter|pre_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \word_counter|pre_count\(0),
	combout => \word_counter|pre_count[0]~1_combout\);

-- Location: LCCOMB_X17_Y13_N14
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\word_counter|pre_count\(0)) # (!\word_counter|pre_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\m_write~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_write~1_combout\ = (!\s_adr[31]~input_o\ & ((\s_write~input_o\) # (\s_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_write~input_o\,
	datac => \s_read~input_o\,
	datad => \s_adr[31]~input_o\,
	combout => \m_write~1_combout\);

-- Location: LCCOMB_X21_Y13_N10
\Selector135~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\state.read_mem_161141~combout\) # ((\state.write_mem_161083~combout\ & \m_write~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datac => \state.write_mem_161083~combout\,
	datad => \m_write~1_combout\,
	combout => \Selector135~0_combout\);

-- Location: LCCOMB_X17_Y13_N12
counter_reset : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_reset~combout\ = (\Selector135~0_combout\ & ((!\Equal1~0_combout\))) # (!\Selector135~0_combout\ & (\counter_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_reset~combout\,
	datac => \Equal1~0_combout\,
	datad => \Selector135~0_combout\,
	combout => \counter_reset~combout\);

-- Location: FF_X17_Y13_N1
\word_counter|pre_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_waitrequest~input_o\,
	d => \word_counter|pre_count[0]~1_combout\,
	clrn => \ALT_INV_counter_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word_counter|pre_count\(0));

-- Location: LCCOMB_X17_Y13_N20
\word_counter|pre_count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \word_counter|pre_count[1]~0_combout\ = \word_counter|pre_count\(1) $ (\word_counter|pre_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \word_counter|pre_count[1]~0_combout\);

-- Location: FF_X17_Y13_N21
\word_counter|pre_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_waitrequest~input_o\,
	d => \word_counter|pre_count[1]~0_combout\,
	clrn => \ALT_INV_counter_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word_counter|pre_count\(1));

-- Location: LCCOMB_X17_Y13_N16
\Selector133~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (!\s_adr[31]~input_o\ & (\word_counter|pre_count\(1) & (\state.write_mem_161083~combout\ & \word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \word_counter|pre_count\(1),
	datac => \state.write_mem_161083~combout\,
	datad => \word_counter|pre_count\(0),
	combout => \Selector133~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\Selector154~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector154~2_combout\ = (\Selector154~0_combout\) # ((\Selector154~1_combout\) # ((!\s_read~input_o\ & \Selector133~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector154~0_combout\,
	datab => \s_read~input_o\,
	datac => \Selector154~1_combout\,
	datad => \Selector133~0_combout\,
	combout => \Selector154~2_combout\);

-- Location: LCCOMB_X17_Y13_N10
\state.write_cache_161054\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.write_cache_161054~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & ((\Selector154~2_combout\))) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & (\state.write_cache_161054~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_cache_161054~combout\,
	datac => \Selector159~0clkctrl_outclk\,
	datad => \Selector154~2_combout\,
	combout => \state.write_cache_161054~combout\);

-- Location: FF_X17_Y13_N11
write_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.write_cache_161054~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_done~q\);

-- Location: LCCOMB_X20_Y13_N24
\Selector165~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector165~0_combout\ = (\state.idle_161228~combout\ & (((\write_done~q\ & \state.write_cache_161054~combout\)) # (!\s_write~input_o\))) # (!\state.idle_161228~combout\ & (((\write_done~q\ & \state.write_cache_161054~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle_161228~combout\,
	datab => \s_write~input_o\,
	datac => \write_done~q\,
	datad => \state.write_cache_161054~combout\,
	combout => \Selector165~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\Selector165~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector165~1_combout\ = (\state.read_cache_161112~combout\) # ((\Selector165~0_combout\ & !\s_read~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector165~0_combout\,
	datac => \state.read_cache_161112~combout\,
	datad => \s_read~input_o\,
	combout => \Selector165~1_combout\);

-- Location: LCCOMB_X19_Y13_N20
\state.idle_161228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.idle_161228~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & ((\Selector165~1_combout\))) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & (\state.idle_161228~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle_161228~combout\,
	datac => \Selector165~1_combout\,
	datad => \Selector159~0clkctrl_outclk\,
	combout => \state.idle_161228~combout\);

-- Location: LCCOMB_X19_Y13_N26
\Selector156~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector156~3_combout\ = (\s_write~input_o\ & ((\state.idle_161228~combout\) # ((\state.write_mem_161083~combout\ & \m_waitrequest~input_o\)))) # (!\s_write~input_o\ & (\state.write_mem_161083~combout\ & (\m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_write~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \m_waitrequest~input_o\,
	datad => \state.idle_161228~combout\,
	combout => \Selector156~3_combout\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y13_N4
\Selector160~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector160~2_combout\ = (\state.miss_161199~combout\ & (((\s_read~input_o\ & \Selector133~0_combout\)) # (!\Selector156~1_combout\))) # (!\state.miss_161199~combout\ & (\s_read~input_o\ & ((\Selector133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.miss_161199~combout\,
	datab => \s_read~input_o\,
	datac => \Selector156~1_combout\,
	datad => \Selector133~0_combout\,
	combout => \Selector160~2_combout\);

-- Location: LCCOMB_X20_Y13_N6
\Selector160~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector160~0_combout\ = (\s_read~input_o\ & (\state.idle_161228~combout\ & !\s_write~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datab => \state.idle_161228~combout\,
	datac => \s_write~input_o\,
	combout => \Selector160~0_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Selector160~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector160~1_combout\ = (\s_adr[31]~input_o\ & ((\Selector160~0_combout\) # ((\state.write_mem_161083~combout\ & !\m_waitrequest~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \Selector160~0_combout\,
	datac => \state.write_mem_161083~combout\,
	datad => \m_waitrequest~input_o\,
	combout => \Selector160~1_combout\);

-- Location: LCCOMB_X17_Y13_N24
\Selector160~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector160~3_combout\ = (\Selector160~2_combout\) # ((\Selector160~1_combout\) # ((\Equal1~0_combout\ & \state.read_mem_161141~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.read_mem_161141~combout\,
	datac => \Selector160~2_combout\,
	datad => \Selector160~1_combout\,
	combout => \Selector160~3_combout\);

-- Location: LCCOMB_X17_Y13_N18
\state.read_mem_161141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.read_mem_161141~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & ((\Selector160~3_combout\))) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & (\state.read_mem_161141~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datac => \Selector159~0clkctrl_outclk\,
	datad => \Selector160~3_combout\,
	combout => \state.read_mem_161141~combout\);

-- Location: LCCOMB_X17_Y13_N30
\Selector154~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector154~0_combout\ = (\word_counter|pre_count\(0) & (\word_counter|pre_count\(1) & \state.read_mem_161141~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word_counter|pre_count\(0),
	datac => \word_counter|pre_count\(1),
	datad => \state.read_mem_161141~combout\,
	combout => \Selector154~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\Selector129~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\Selector154~0_combout\) # ((\s_write~input_o\ & (!\s_read~input_o\ & \Selector133~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_write~input_o\,
	datab => \s_read~input_o\,
	datac => \Selector133~0_combout\,
	datad => \Selector154~0_combout\,
	combout => \Selector129~0_combout\);

-- Location: LCCOMB_X20_Y12_N26
dirty_bit_reg : cycloneiii_lcell_comb
-- Equation(s):
-- \dirty_bit_reg~combout\ = (\Selector129~0_combout\ & (\state.write_mem_161083~combout\)) # (!\Selector129~0_combout\ & ((\dirty_bit_reg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datac => \dirty_bit_reg~combout\,
	datad => \Selector129~0_combout\,
	combout => \dirty_bit_reg~combout\);

-- Location: IOIBUF_X9_Y0_N15
\s_adr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(2),
	o => \s_adr[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\s_adr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(3),
	o => \s_adr[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\s_adr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(4),
	o => \s_adr[4]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\s_adr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(5),
	o => \s_adr[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\s_adr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(6),
	o => \s_adr[6]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\s_adr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(7),
	o => \s_adr[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\s_adr[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(8),
	o => \s_adr[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\s_adr[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(9),
	o => \s_adr[9]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\s_adr[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(23),
	o => \s_adr[23]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\s_adr[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(22),
	o => \s_adr[22]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\s_adr[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(21),
	o => \s_adr[21]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\s_adr[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(20),
	o => \s_adr[20]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\s_adr[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(19),
	o => \s_adr[19]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\s_adr[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(18),
	o => \s_adr[18]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\s_adr[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(17),
	o => \s_adr[17]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\s_adr[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(16),
	o => \s_adr[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\s_adr[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(15),
	o => \s_adr[15]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\s_adr[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(14),
	o => \s_adr[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\s_adr[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(13),
	o => \s_adr[13]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\s_adr[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(12),
	o => \s_adr[12]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\s_adr[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(11),
	o => \s_adr[11]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\s_adr[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(10),
	o => \s_adr[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\s_writedata[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(31),
	o => \s_writedata[31]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\s_adr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(1),
	o => \s_adr[1]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\s_adr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_adr(0),
	o => \s_adr[0]~input_o\);

-- Location: LCCOMB_X19_Y13_N14
\Selector127~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~1_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & !\s_adr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector127~1_combout\);

-- Location: IOIBUF_X23_Y29_N22
\m_readdata[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(31),
	o => \m_readdata[31]~input_o\);

-- Location: LCCOMB_X24_Y12_N14
\Selector64~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \m_readdata[31]~input_o\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X24_Y11_N4
\Selector96~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = (\Selector96~0_combout\) # ((\Selector64~1_combout\) # ((\s_writedata[31]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~0_combout\,
	datab => \s_writedata[31]~input_o\,
	datac => \Selector127~1_combout\,
	datad => \Selector64~1_combout\,
	combout => \Selector96~1_combout\);

-- Location: LCCOMB_X20_Y13_N28
\Selector133~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector133~1_combout\ = (!\s_read~input_o\ & (\s_write~input_o\ & \Selector133~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datac => \s_write~input_o\,
	datad => \Selector133~0_combout\,
	combout => \Selector133~1_combout\);

-- Location: LCCOMB_X20_Y13_N30
\Selector130~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\Selector133~1_combout\) # ((\state.read_mem_161141~combout\ & (!\word_counter|pre_count\(1) & !\word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datab => \Selector133~1_combout\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \Selector130~0_combout\);

-- Location: CLKCTRL_G19
\Selector130~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector130~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector130~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y11_N14
\words_reg[0][31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][31]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector96~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][31]~combout\,
	datac => \Selector96~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][31]~combout\);

-- Location: LCCOMB_X24_Y13_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_writedata[31]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\words[3][31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][31]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(119),
	combout => \words[3][31]~feeder_combout\);

-- Location: FF_X24_Y12_N7
\words[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][31]~q\);

-- Location: LCCOMB_X24_Y12_N0
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\Selector64~1_combout\) # ((\Selector31~1_combout\ & \words[3][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \words[3][31]~q\,
	datad => \Selector64~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X20_Y13_N16
\Selector133~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector133~2_combout\ = (\Selector133~1_combout\) # ((\state.read_mem_161141~combout\ & (\word_counter|pre_count\(1) & \word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datab => \Selector133~1_combout\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \Selector133~2_combout\);

-- Location: CLKCTRL_G12
\Selector133~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector133~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector133~2clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N18
\words_reg[3][31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][31]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector0~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][31]~combout\,
	combout => \words_reg[3][31]~combout\);

-- Location: LCCOMB_X24_Y13_N18
\valid_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_bit~0_combout\ = (\ram_block[0][150]__1|auto_generated|q_a\(1)) # (\state.write_cache_161054~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(1),
	datad => \state.write_cache_161054~combout\,
	combout => \valid_bit~0_combout\);

-- Location: FF_X24_Y13_N19
valid_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \valid_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valid_bit~q\);

-- Location: FF_X17_Y13_N3
dirty_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dirty_bit~q\);

-- Location: LCCOMB_X17_Y13_N2
\Selector156~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector156~1_combout\ = (\dirty_bit~q\ & \valid_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dirty_bit~q\,
	datad => \valid_bit~q\,
	combout => \Selector156~1_combout\);

-- Location: LCCOMB_X19_Y13_N18
\Selector156~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector156~2_combout\ = (\state.miss_161199~combout\ & ((\Selector156~1_combout\) # ((\Equal1~0_combout\ & \Selector156~0_combout\)))) # (!\state.miss_161199~combout\ & (\Equal1~0_combout\ & ((\Selector156~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.miss_161199~combout\,
	datab => \Equal1~0_combout\,
	datac => \Selector156~1_combout\,
	datad => \Selector156~0_combout\,
	combout => \Selector156~2_combout\);

-- Location: LCCOMB_X19_Y13_N28
\Selector156~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector156~4_combout\ = (\Selector156~2_combout\) # ((\s_adr[31]~input_o\ & \Selector156~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datac => \Selector156~3_combout\,
	datad => \Selector156~2_combout\,
	combout => \Selector156~4_combout\);

-- Location: LCCOMB_X19_Y13_N6
\state.write_mem_161083\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.write_mem_161083~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & ((\Selector156~4_combout\))) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & (\state.write_mem_161083~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \Selector159~0clkctrl_outclk\,
	datad => \Selector156~4_combout\,
	combout => \state.write_mem_161083~combout\);

-- Location: LCCOMB_X19_Y13_N16
\Selector156~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector156~0_combout\ = (!\s_adr[31]~input_o\ & \state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_adr[31]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector156~0_combout\);

-- Location: LCCOMB_X19_Y13_N2
\Selector159~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector159~0_combout\ = (\s_write~input_o\) # ((\s_read~input_o\) # ((!\state.hit_161170~combout\ & !\Selector156~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_write~input_o\,
	datab => \state.hit_161170~combout\,
	datac => \s_read~input_o\,
	datad => \Selector156~0_combout\,
	combout => \Selector159~0_combout\);

-- Location: CLKCTRL_G14
\Selector159~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector159~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector159~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y13_N4
\state.read_cache_161112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.read_cache_161112~combout\ = (GLOBAL(\Selector159~0clkctrl_outclk\) & (\Selector158~0_combout\)) # (!GLOBAL(\Selector159~0clkctrl_outclk\) & ((\state.read_cache_161112~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector158~0_combout\,
	datac => \state.read_cache_161112~combout\,
	datad => \Selector159~0clkctrl_outclk\,
	combout => \state.read_cache_161112~combout\);

-- Location: CLKCTRL_G13
\state.read_cache_161112~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.read_cache_161112~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.read_cache_161112~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N15
\s_writedata[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(3),
	o => \s_writedata[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\s_writedata[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(2),
	o => \s_writedata[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\m_readdata[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(2),
	o => \m_readdata[2]~input_o\);

-- Location: LCCOMB_X19_Y14_N6
\Selector61~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector61~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \m_readdata[2]~input_o\,
	combout => \Selector61~1_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Selector125~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~1_combout\ = (\Selector125~0_combout\) # ((\Selector61~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector125~0_combout\,
	datab => \Selector127~1_combout\,
	datac => \s_writedata[2]~input_o\,
	datad => \Selector61~1_combout\,
	combout => \Selector125~1_combout\);

-- Location: LCCOMB_X24_Y14_N4
\words_reg[0][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][2]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & (\Selector125~1_combout\)) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & ((\words_reg[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector125~1_combout\,
	datac => \words_reg[0][2]~combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][2]~combout\);

-- Location: IOIBUF_X0_Y13_N1
\s_writedata[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(1),
	o => \s_writedata[1]~input_o\);

-- Location: LCCOMB_X20_Y14_N26
\words_reg[0][0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][0]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & (\Selector127~2_combout\)) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & ((\words_reg[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~2_combout\,
	datac => \words_reg[0][0]~combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][0]~combout\);

-- Location: LCCOMB_X20_Y13_N18
\Selector131~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\Selector133~1_combout\) # ((\state.read_mem_161141~combout\ & (!\word_counter|pre_count\(1) & \word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datab => \Selector133~1_combout\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \Selector131~0_combout\);

-- Location: CLKCTRL_G10
\Selector131~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector131~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector131~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y15_N6
\words_reg[1][4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][4]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector91~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~1_combout\,
	datac => \words_reg[1][4]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][4]~combout\);

-- Location: LCCOMB_X26_Y19_N28
\Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_writedata[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[3]~input_o\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state.write_mem_161083~combout\ & (\s_writedata[2]~input_o\ & (\s_adr[0]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_writedata[2]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X19_Y13_N0
\Selector95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[1]~input_o\) # (!\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	combout => \Selector95~1_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Selector93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\Selector61~1_combout\) # ((\Selector93~0_combout\) # ((\words[1][2]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][2]~q\,
	datab => \Selector61~1_combout\,
	datac => \Selector93~0_combout\,
	datad => \Selector95~1_combout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X21_Y14_N12
\words_reg[1][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][2]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector93~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][2]~combout\,
	datab => \Selector131~0clkctrl_outclk\,
	datad => \Selector93~1_combout\,
	combout => \words_reg[1][2]~combout\);

-- Location: IOIBUF_X0_Y22_N8
\m_readdata[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(1),
	o => \m_readdata[1]~input_o\);

-- Location: LCCOMB_X20_Y15_N12
\Selector94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \m_readdata[1]~input_o\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\s_writedata[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\Selector94~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = (\Selector94~1_combout\) # ((\Selector94~0_combout\) # ((\words[1][1]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][1]~q\,
	datab => \Selector94~1_combout\,
	datac => \Selector95~1_combout\,
	datad => \Selector94~0_combout\,
	combout => \Selector94~2_combout\);

-- Location: LCCOMB_X24_Y15_N0
\words_reg[1][1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][1]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector94~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][1]~combout\,
	datac => \Selector131~0clkctrl_outclk\,
	datad => \Selector94~2_combout\,
	combout => \words_reg[1][1]~combout\);

-- Location: LCCOMB_X26_Y16_N22
\words_reg[1][0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][0]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector95~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~2_combout\,
	datac => \Selector131~0clkctrl_outclk\,
	datad => \words_reg[1][0]~combout\,
	combout => \words_reg[1][0]~combout\);

-- Location: LCCOMB_X19_Y13_N30
\Selector63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector63~2_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (!\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector63~2_combout\);

-- Location: LCCOMB_X26_Y15_N8
\Selector59~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\m_readdata[4]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[4]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector59~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & (\s_writedata[3]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[3]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\s_writedata[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Selector62~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = (\Selector62~0_combout\) # ((\Selector94~1_combout\) # ((\words[2][1]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][1]~q\,
	datab => \Selector62~0_combout\,
	datac => \Selector63~2_combout\,
	datad => \Selector94~1_combout\,
	combout => \Selector62~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\words_reg[2][1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][1]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector62~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0clkctrl_outclk\,
	datac => \Selector62~1_combout\,
	datad => \words_reg[2][1]~combout\,
	combout => \words_reg[2][1]~combout\);

-- Location: IOIBUF_X41_Y19_N8
\m_readdata[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(3),
	o => \m_readdata[3]~input_o\);

-- Location: LCCOMB_X26_Y19_N6
\Selector92~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (\m_readdata[3]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_readdata[3]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector92~1_combout\);

-- Location: LCCOMB_X19_Y14_N10
\words_reg[3][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][2]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector29~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][2]~combout\,
	combout => \words_reg[3][2]~combout\);

-- Location: LCCOMB_X20_Y14_N6
\words_reg[3][1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][1]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector30~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][1]~combout\,
	combout => \words_reg[3][1]~combout\);

-- Location: LCCOMB_X20_Y14_N20
\words_reg[3][0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][0]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector31~2_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~2_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][0]~combout\,
	combout => \words_reg[3][0]~combout\);

-- Location: M9K_X25_Y14_N0
\ram_block[0][150]__1|auto_generated|ram_block1a51\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 51,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N18
\words[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][3]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(147)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(147),
	combout => \words[3][3]~feeder_combout\);

-- Location: FF_X24_Y18_N19
\words[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][3]~q\);

-- Location: LCCOMB_X24_Y18_N20
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[3]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[3]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Selector92~1_combout\) # ((\Selector28~0_combout\) # ((\Selector31~1_combout\ & \words[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector92~1_combout\,
	datac => \words[3][3]~q\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X24_Y18_N26
\words_reg[3][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][3]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector28~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][3]~combout\,
	datab => \Selector133~2clkctrl_outclk\,
	datac => \Selector28~1_combout\,
	combout => \words_reg[3][3]~combout\);

-- Location: LCCOMB_X24_Y13_N28
\words[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][0]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(118)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(118),
	combout => \words[2][0]~feeder_combout\);

-- Location: FF_X24_Y13_N29
\words[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][0]~q\);

-- Location: LCCOMB_X24_Y13_N8
\Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\s_writedata[0]~input_o\ & (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector63~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\m_readdata[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(0),
	o => \m_readdata[0]~input_o\);

-- Location: LCCOMB_X23_Y13_N24
\Selector63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = (\m_readdata[0]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_readdata[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector63~1_combout\);

-- Location: LCCOMB_X24_Y13_N6
\Selector63~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector63~3_combout\ = (\Selector63~0_combout\) # ((\Selector63~1_combout\) # ((\Selector63~2_combout\ & \words[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \words[2][0]~q\,
	datac => \Selector63~0_combout\,
	datad => \Selector63~1_combout\,
	combout => \Selector63~3_combout\);

-- Location: LCCOMB_X20_Y13_N0
\Selector132~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\Selector133~1_combout\) # ((\state.read_mem_161141~combout\ & (\word_counter|pre_count\(1) & !\word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_mem_161141~combout\,
	datab => \Selector133~1_combout\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \Selector132~0_combout\);

-- Location: CLKCTRL_G17
\Selector132~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector132~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector132~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y13_N22
\words_reg[2][0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][0]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector63~3_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~3_combout\,
	datac => \words_reg[2][0]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][0]~combout\);

-- Location: FF_X24_Y14_N13
\words[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(116),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][2]~q\);

-- Location: LCCOMB_X24_Y14_N12
\Selector61~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector61~2_combout\ = (\Selector61~0_combout\) # ((\Selector61~1_combout\) # ((\Selector63~2_combout\ & \words[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \words[2][2]~q\,
	datad => \Selector61~1_combout\,
	combout => \Selector61~2_combout\);

-- Location: LCCOMB_X24_Y14_N10
\words_reg[2][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][2]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector61~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector61~2_combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \words_reg[2][2]~combout\,
	combout => \words_reg[2][2]~combout\);

-- Location: FF_X24_Y18_N29
\words[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(115),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][3]~q\);

-- Location: LCCOMB_X24_Y18_N28
\Selector60~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector60~1_combout\ = (\Selector60~0_combout\) # ((\Selector92~1_combout\) # ((\Selector63~2_combout\ & \words[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector60~0_combout\,
	datac => \words[2][3]~q\,
	datad => \Selector92~1_combout\,
	combout => \Selector60~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\words_reg[2][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][3]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector60~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0clkctrl_outclk\,
	datac => \words_reg[2][3]~combout\,
	datad => \Selector60~1_combout\,
	combout => \words_reg[2][3]~combout\);

-- Location: FF_X26_Y15_N9
\words[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(114),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][4]~q\);

-- Location: LCCOMB_X24_Y14_N14
\Selector59~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector59~2_combout\ = (\Selector59~0_combout\) # ((\Selector59~1_combout\) # ((\Selector63~2_combout\ & \words[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \Selector59~1_combout\,
	datad => \words[2][4]~q\,
	combout => \Selector59~2_combout\);

-- Location: LCCOMB_X24_Y14_N2
\words_reg[2][4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][4]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector59~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0clkctrl_outclk\,
	datac => \Selector59~2_combout\,
	datad => \words_reg[2][4]~combout\,
	combout => \words_reg[2][4]~combout\);

-- Location: FF_X26_Y18_N13
\words[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(83),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][3]~q\);

-- Location: LCCOMB_X26_Y19_N24
\Selector92~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~2_combout\ = (\Selector92~1_combout\) # ((\Selector92~0_combout\) # ((\words[1][3]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector92~1_combout\,
	datab => \Selector92~0_combout\,
	datac => \words[1][3]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector92~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\words_reg[1][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][3]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector92~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][3]~combout\,
	datac => \Selector92~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][3]~combout\);

-- Location: FF_X23_Y14_N11
\words[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][1]~q\);

-- Location: LCCOMB_X22_Y14_N30
\Selector126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\words[0][1]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][1]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\Selector126~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (\Selector94~1_combout\) # ((\Selector126~0_combout\) # ((\s_writedata[1]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector94~1_combout\,
	datab => \s_writedata[1]~input_o\,
	datac => \Selector127~1_combout\,
	datad => \Selector126~0_combout\,
	combout => \Selector126~1_combout\);

-- Location: LCCOMB_X22_Y14_N20
\words_reg[0][1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][1]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector126~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector130~0clkctrl_outclk\,
	datac => \words_reg[0][1]~combout\,
	datad => \Selector126~1_combout\,
	combout => \words_reg[0][1]~combout\);

-- Location: FF_X24_Y18_N7
\words[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][3]~q\);

-- Location: LCCOMB_X24_Y18_N14
\Selector124~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][3]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][3]~q\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\Selector124~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector124~1_combout\ = (\Selector124~0_combout\) # ((\Selector92~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \s_writedata[3]~input_o\,
	datac => \Selector124~0_combout\,
	datad => \Selector92~1_combout\,
	combout => \Selector124~1_combout\);

-- Location: LCCOMB_X19_Y18_N14
\words_reg[0][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][3]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector124~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][3]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector124~1_combout\,
	combout => \words_reg[0][3]~combout\);

-- Location: FF_X20_Y14_N1
\words[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(150),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][0]~q\);

-- Location: FF_X20_Y14_N5
\words[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][0]~q\);

-- Location: LCCOMB_X26_Y16_N4
\words[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][0]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(86),
	combout => \words[1][0]~feeder_combout\);

-- Location: FF_X26_Y16_N5
\words[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][0]~q\);

-- Location: LCCOMB_X20_Y14_N18
\Mux182~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux182~0_combout\ = (\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\) # ((\words[1][0]~q\)))) # (!\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & (\words[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][0]~q\,
	datad => \words[1][0]~q\,
	combout => \Mux182~0_combout\);

-- Location: LCCOMB_X20_Y14_N2
\Mux182~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux182~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux182~0_combout\ & (\words[3][0]~q\)) # (!\Mux182~0_combout\ & ((\words[2][0]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux182~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[3][0]~q\,
	datac => \words[2][0]~q\,
	datad => \Mux182~0_combout\,
	combout => \Mux182~1_combout\);

-- Location: LCCOMB_X20_Y14_N4
\readdata_reg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(0) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux182~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(0),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux182~1_combout\,
	combout => readdata_reg(0));

-- Location: FF_X20_Y14_N25
\words[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(149),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][1]~q\);

-- Location: LCCOMB_X24_Y15_N28
\words[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][1]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(85),
	combout => \words[1][1]~feeder_combout\);

-- Location: FF_X24_Y15_N29
\words[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][1]~q\);

-- Location: LCCOMB_X23_Y14_N18
\Mux181~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux181~1_combout\ = (\Mux181~0_combout\ & (((\words[3][1]~q\)) # (!\s_adr[0]~input_o\))) # (!\Mux181~0_combout\ & (\s_adr[0]~input_o\ & ((\words[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux181~0_combout\,
	datab => \s_adr[0]~input_o\,
	datac => \words[3][1]~q\,
	datad => \words[1][1]~q\,
	combout => \Mux181~1_combout\);

-- Location: LCCOMB_X23_Y14_N6
\readdata_reg[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(1) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux181~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(1),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux181~1_combout\,
	combout => readdata_reg(1));

-- Location: LCCOMB_X19_Y14_N8
\words[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][2]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(148)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(148),
	combout => \words[3][2]~feeder_combout\);

-- Location: FF_X19_Y14_N9
\words[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][2]~q\);

-- Location: FF_X24_Y14_N31
\words[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(52),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][2]~q\);

-- Location: LCCOMB_X21_Y14_N0
\words[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][2]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(84),
	combout => \words[1][2]~feeder_combout\);

-- Location: FF_X21_Y14_N1
\words[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][2]~q\);

-- Location: LCCOMB_X24_Y14_N30
\Mux180~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux180~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][2]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][2]~q\,
	datad => \words[1][2]~q\,
	combout => \Mux180~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Mux180~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux180~1_combout\ = (\Mux180~0_combout\ & (((\words[3][2]~q\) # (!\s_adr[1]~input_o\)))) # (!\Mux180~0_combout\ & (\words[2][2]~q\ & ((\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][2]~q\,
	datab => \words[3][2]~q\,
	datac => \Mux180~0_combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Mux180~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\readdata_reg[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(2) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux180~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(2),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux180~1_combout\,
	combout => readdata_reg(2));

-- Location: LCCOMB_X24_Y18_N8
\Mux179~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux179~0_combout\ = (\s_adr[0]~input_o\ & (((\s_adr[1]~input_o\)))) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & (\words[2][3]~q\)) # (!\s_adr[1]~input_o\ & ((\words[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[2][3]~q\,
	datac => \s_adr[1]~input_o\,
	datad => \words[0][3]~q\,
	combout => \Mux179~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Mux179~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux179~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux179~0_combout\ & (\words[3][3]~q\)) # (!\Mux179~0_combout\ & ((\words[1][3]~q\))))) # (!\s_adr[0]~input_o\ & (((\Mux179~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[3][3]~q\,
	datac => \Mux179~0_combout\,
	datad => \words[1][3]~q\,
	combout => \Mux179~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\readdata_reg[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(3) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux179~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(3),
	datad => \Mux179~1_combout\,
	combout => readdata_reg(3));

-- Location: LCCOMB_X22_Y14_N2
\words_reg[0][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][7]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & (\Selector120~1_combout\)) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & ((\words_reg[0][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector120~1_combout\,
	datab => \words_reg[0][7]~combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][7]~combout\);

-- Location: IOIBUF_X41_Y14_N22
\s_writedata[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(6),
	o => \s_writedata[6]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\s_writedata[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(5),
	o => \s_writedata[5]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\m_readdata[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(5),
	o => \m_readdata[5]~input_o\);

-- Location: LCCOMB_X27_Y15_N24
\Selector90~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\m_readdata[5]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_readdata[5]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector90~1_combout\);

-- Location: LCCOMB_X27_Y14_N8
\Selector122~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~1_combout\ = (\Selector122~0_combout\) # ((\Selector90~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector122~0_combout\,
	datab => \Selector127~1_combout\,
	datac => \s_writedata[5]~input_o\,
	datad => \Selector90~1_combout\,
	combout => \Selector122~1_combout\);

-- Location: LCCOMB_X27_Y14_N16
\words_reg[0][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][5]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector122~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][5]~combout\,
	datab => \Selector122~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][5]~combout\);

-- Location: LCCOMB_X26_Y15_N30
\words_reg[0][4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][4]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & (\Selector123~1_combout\)) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & ((\words_reg[0][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector123~1_combout\,
	datac => \words_reg[0][4]~combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][4]~combout\);

-- Location: IOIBUF_X16_Y0_N29
\s_writedata[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(7),
	o => \s_writedata[7]~input_o\);

-- Location: LCCOMB_X22_Y14_N6
\Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \s_writedata[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[7]~input_o\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X27_Y14_N22
\Selector89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \s_writedata[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[6]~input_o\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\words_reg[1][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][5]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector90~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector90~2_combout\,
	datac => \words_reg[1][5]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][5]~combout\);

-- Location: LCCOMB_X19_Y14_N16
\words_reg[2][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][8]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector55~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~2_combout\,
	datab => \words_reg[2][8]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][8]~combout\);

-- Location: LCCOMB_X24_Y14_N6
\words_reg[2][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][7]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector56~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~1_combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \words_reg[2][7]~combout\,
	combout => \words_reg[2][7]~combout\);

-- Location: IOIBUF_X0_Y10_N8
\m_readdata[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(6),
	o => \m_readdata[6]~input_o\);

-- Location: LCCOMB_X27_Y14_N0
\Selector57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\m_readdata[6]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[6]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector57~1_combout\);

-- Location: LCCOMB_X26_Y14_N8
\Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & (\s_writedata[6]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[6]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X26_Y14_N10
\Selector57~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~2_combout\ = (\Selector57~1_combout\) # ((\Selector57~0_combout\) # ((\words[2][6]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][6]~q\,
	datab => \Selector57~1_combout\,
	datac => \Selector57~0_combout\,
	datad => \Selector63~2_combout\,
	combout => \Selector57~2_combout\);

-- Location: LCCOMB_X24_Y14_N8
\words_reg[2][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][6]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector57~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][6]~combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \Selector57~2_combout\,
	combout => \words_reg[2][6]~combout\);

-- Location: LCCOMB_X27_Y14_N18
\words_reg[2][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][5]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector58~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~1_combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \words_reg[2][5]~combout\,
	combout => \words_reg[2][5]~combout\);

-- Location: IOIBUF_X0_Y7_N15
\m_readdata[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(8),
	o => \m_readdata[8]~input_o\);

-- Location: LCCOMB_X19_Y14_N30
\Selector55~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.write_mem_161083~combout\,
	datad => \m_readdata[8]~input_o\,
	combout => \Selector55~1_combout\);

-- Location: IOIBUF_X19_Y0_N22
\m_readdata[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(7),
	o => \m_readdata[7]~input_o\);

-- Location: LCCOMB_X22_Y14_N24
\Selector88~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\m_readdata[7]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[7]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X22_Y13_N20
\Selector31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\state.write_mem_161083~combout\ & ((!\s_adr[1]~input_o\) # (!\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
\words_reg[3][4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][4]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector27~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datab => \words_reg[3][4]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][4]~combout\);

-- Location: M9K_X25_Y14_N0
\ram_block[0][150]__1|auto_generated|ram_block1a46\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 46,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: FF_X26_Y14_N13
\words[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(145),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][5]~q\);

-- Location: LCCOMB_X26_Y14_N12
\Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\Selector26~0_combout\) # ((\Selector90~1_combout\) # ((\Selector31~1_combout\ & \words[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \Selector31~1_combout\,
	datac => \words[3][5]~q\,
	datad => \Selector90~1_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X26_Y16_N28
\words_reg[3][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][5]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector26~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector133~2clkctrl_outclk\,
	datab => \words_reg[3][5]~combout\,
	datad => \Selector26~1_combout\,
	combout => \words_reg[3][5]~combout\);

-- Location: FF_X26_Y14_N29
\words[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(144),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][6]~q\);

-- Location: LCCOMB_X26_Y14_N22
\Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\Selector25~0_combout\) # ((\Selector57~1_combout\) # ((\words[3][6]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \words[3][6]~q\,
	datac => \Selector57~1_combout\,
	datad => \Selector31~1_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X26_Y16_N18
\words_reg[3][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][6]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector25~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][6]~combout\,
	datac => \Selector25~1_combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][6]~combout\);

-- Location: LCCOMB_X17_Y14_N4
\words[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][7]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(143)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(143),
	combout => \words[3][7]~feeder_combout\);

-- Location: FF_X17_Y14_N5
\words[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][7]~q\);

-- Location: LCCOMB_X17_Y14_N12
\Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\Selector24~0_combout\) # ((\Selector88~1_combout\) # ((\words[3][7]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector88~1_combout\,
	datac => \words[3][7]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X17_Y14_N28
\words_reg[3][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][7]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector24~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector133~2clkctrl_outclk\,
	datac => \Selector24~1_combout\,
	datad => \words_reg[3][7]~combout\,
	combout => \words_reg[3][7]~combout\);

-- Location: LCCOMB_X22_Y15_N28
\words[3][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][8]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(142)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(142),
	combout => \words[3][8]~feeder_combout\);

-- Location: FF_X22_Y15_N29
\words[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][8]~q\);

-- Location: LCCOMB_X22_Y15_N18
\Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\) # ((\Selector55~1_combout\) # ((\words[3][8]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector55~1_combout\,
	datac => \words[3][8]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X22_Y15_N24
\words_reg[3][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][8]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector23~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][8]~combout\,
	datac => \Selector23~1_combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][8]~combout\);

-- Location: FF_X26_Y14_N25
\words[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(80),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][6]~q\);

-- Location: LCCOMB_X26_Y14_N24
\Selector89~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\Selector89~0_combout\) # ((\Selector57~1_combout\) # ((\Selector95~1_combout\ & \words[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector89~0_combout\,
	datac => \words[1][6]~q\,
	datad => \Selector57~1_combout\,
	combout => \Selector89~1_combout\);

-- Location: LCCOMB_X26_Y14_N20
\words_reg[1][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][6]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector89~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector131~0clkctrl_outclk\,
	datac => \Selector89~1_combout\,
	datad => \words_reg[1][6]~combout\,
	combout => \words_reg[1][6]~combout\);

-- Location: FF_X22_Y14_N25
\words[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(79),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][7]~q\);

-- Location: LCCOMB_X22_Y14_N0
\Selector88~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~2_combout\ = (\Selector88~1_combout\) # ((\Selector88~0_combout\) # ((\words[1][7]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~1_combout\,
	datab => \Selector88~0_combout\,
	datac => \words[1][7]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector88~2_combout\);

-- Location: LCCOMB_X26_Y14_N26
\words_reg[1][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][7]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector88~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][7]~combout\,
	datac => \Selector88~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][7]~combout\);

-- Location: FF_X21_Y14_N23
\words[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(78),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][8]~q\);

-- Location: LCCOMB_X21_Y14_N24
\Selector87~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((\Selector55~1_combout\) # ((\Selector95~1_combout\ & \words[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector87~0_combout\,
	datab => \Selector95~1_combout\,
	datac => \words[1][8]~q\,
	datad => \Selector55~1_combout\,
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X21_Y14_N2
\words_reg[1][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][8]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector87~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector131~0clkctrl_outclk\,
	datac => \words_reg[1][8]~combout\,
	datad => \Selector87~1_combout\,
	combout => \words_reg[1][8]~combout\);

-- Location: FF_X26_Y14_N31
\words[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][6]~q\);

-- Location: LCCOMB_X26_Y14_N16
\Selector121~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][6]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][6]~q\,
	combout => \Selector121~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\Selector121~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector121~1_combout\ = (\Selector57~1_combout\) # ((\Selector121~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~1_combout\,
	datab => \Selector127~1_combout\,
	datac => \s_writedata[6]~input_o\,
	datad => \Selector121~0_combout\,
	combout => \Selector121~1_combout\);

-- Location: LCCOMB_X27_Y14_N10
\words_reg[0][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][6]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector121~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][6]~combout\,
	datac => \Selector121~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][6]~combout\);

-- Location: FF_X21_Y14_N9
\words[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][8]~q\);

-- Location: LCCOMB_X21_Y14_N30
\Selector119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\words[0][8]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][8]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector119~0_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Selector119~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector119~1_combout\ = (\Selector119~0_combout\) # ((\Selector55~1_combout\) # ((\s_writedata[8]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[8]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector119~0_combout\,
	datad => \Selector55~1_combout\,
	combout => \Selector119~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\words_reg[0][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][8]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector119~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][8]~combout\,
	datac => \Selector119~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][8]~combout\);

-- Location: LCCOMB_X24_Y15_N20
\words[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][4]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(146)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(146),
	combout => \words[3][4]~feeder_combout\);

-- Location: FF_X24_Y15_N21
\words[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][4]~q\);

-- Location: LCCOMB_X24_Y15_N18
\words[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][4]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(82),
	combout => \words[1][4]~feeder_combout\);

-- Location: FF_X24_Y15_N19
\words[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][4]~q\);

-- Location: LCCOMB_X26_Y15_N24
\Mux178~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux178~0_combout\ = (\s_adr[0]~input_o\ & (((\s_adr[1]~input_o\) # (\words[1][4]~q\)))) # (!\s_adr[0]~input_o\ & (\words[0][4]~q\ & (!\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][4]~q\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \words[1][4]~q\,
	combout => \Mux178~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\Mux178~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux178~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux178~0_combout\ & ((\words[3][4]~q\))) # (!\Mux178~0_combout\ & (\words[2][4]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux178~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][4]~q\,
	datac => \words[3][4]~q\,
	datad => \Mux178~0_combout\,
	combout => \Mux178~1_combout\);

-- Location: LCCOMB_X26_Y15_N16
\readdata_reg[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(4) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux178~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(4),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux178~1_combout\,
	combout => readdata_reg(4));

-- Location: LCCOMB_X27_Y14_N30
\words[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][5]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(49),
	combout => \words[0][5]~feeder_combout\);

-- Location: FF_X27_Y14_N31
\words[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][5]~q\);

-- Location: FF_X27_Y14_N1
\words[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(113),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][5]~q\);

-- Location: LCCOMB_X27_Y14_N28
\Mux177~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux177~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\)) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & ((\words[2][5]~q\))) # (!\s_adr[1]~input_o\ & (\words[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][5]~q\,
	datad => \words[2][5]~q\,
	combout => \Mux177~0_combout\);

-- Location: FF_X24_Y15_N11
\words[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(81),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][5]~q\);

-- Location: LCCOMB_X27_Y14_N2
\Mux177~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux177~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux177~0_combout\ & (\words[3][5]~q\)) # (!\Mux177~0_combout\ & ((\words[1][5]~q\))))) # (!\s_adr[0]~input_o\ & (\Mux177~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \Mux177~0_combout\,
	datac => \words[3][5]~q\,
	datad => \words[1][5]~q\,
	combout => \Mux177~1_combout\);

-- Location: LCCOMB_X27_Y14_N24
\readdata_reg[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(5) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux177~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datac => readdata_reg(5),
	datad => \Mux177~1_combout\,
	combout => readdata_reg(5));

-- Location: LCCOMB_X26_Y14_N30
\Mux176~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux176~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][6]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][6]~q\,
	datad => \words[1][6]~q\,
	combout => \Mux176~0_combout\);

-- Location: FF_X26_Y14_N7
\words[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(112),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][6]~q\);

-- Location: LCCOMB_X26_Y14_N2
\Mux176~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux176~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux176~0_combout\ & (\words[3][6]~q\)) # (!\Mux176~0_combout\ & ((\words[2][6]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux176~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[3][6]~q\,
	datac => \Mux176~0_combout\,
	datad => \words[2][6]~q\,
	combout => \Mux176~1_combout\);

-- Location: LCCOMB_X26_Y14_N6
\readdata_reg[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(6) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux176~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(6),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux176~1_combout\,
	combout => readdata_reg(6));

-- Location: FF_X22_Y14_N27
\words[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][7]~q\);

-- Location: FF_X24_Y14_N27
\words[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(111),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][7]~q\);

-- Location: LCCOMB_X22_Y14_N16
\Mux175~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux175~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\)) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & ((\words[2][7]~q\))) # (!\s_adr[1]~input_o\ & (\words[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][7]~q\,
	datad => \words[2][7]~q\,
	combout => \Mux175~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Mux175~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux175~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux175~0_combout\ & ((\words[3][7]~q\))) # (!\Mux175~0_combout\ & (\words[1][7]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux175~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[1][7]~q\,
	datac => \words[3][7]~q\,
	datad => \Mux175~0_combout\,
	combout => \Mux175~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\readdata_reg[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(7) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux175~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(7),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux175~1_combout\,
	combout => readdata_reg(7));

-- Location: LCCOMB_X21_Y14_N18
\Mux174~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux174~0_combout\ = (\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\) # ((\words[1][8]~q\)))) # (!\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & ((\words[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[1][8]~q\,
	datad => \words[0][8]~q\,
	combout => \Mux174~0_combout\);

-- Location: FF_X19_Y14_N7
\words[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(110),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][8]~q\);

-- Location: LCCOMB_X21_Y14_N20
\Mux174~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux174~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux174~0_combout\ & ((\words[3][8]~q\))) # (!\Mux174~0_combout\ & (\words[2][8]~q\)))) # (!\s_adr[1]~input_o\ & (\Mux174~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \Mux174~0_combout\,
	datac => \words[2][8]~q\,
	datad => \words[3][8]~q\,
	combout => \Mux174~1_combout\);

-- Location: LCCOMB_X21_Y14_N22
\readdata_reg[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(8) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux174~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(8),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux174~1_combout\,
	combout => readdata_reg(8));

-- Location: LCCOMB_X15_Y17_N12
\Selector51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\m_readdata[12]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[12]~input_o\,
	datab => \state.write_mem_161083~combout\,
	combout => \Selector51~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\m_readdata[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(11),
	o => \m_readdata[11]~input_o\);

-- Location: LCCOMB_X16_Y16_N22
\Selector84~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datad => \m_readdata[11]~input_o\,
	combout => \Selector84~1_combout\);

-- Location: IOIBUF_X0_Y8_N8
\s_writedata[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(11),
	o => \s_writedata[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\s_writedata[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(10),
	o => \s_writedata[10]~input_o\);

-- Location: LCCOMB_X14_Y16_N12
\Selector53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\m_readdata[10]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[10]~input_o\,
	datab => \state.write_mem_161083~combout\,
	combout => \Selector53~1_combout\);

-- Location: IOIBUF_X0_Y20_N8
\s_writedata[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(9),
	o => \s_writedata[9]~input_o\);

-- Location: LCCOMB_X16_Y16_N12
\words_reg[1][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][11]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector84~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~2_combout\,
	datac => \Selector131~0clkctrl_outclk\,
	datad => \words_reg[1][11]~combout\,
	combout => \words_reg[1][11]~combout\);

-- Location: LCCOMB_X12_Y16_N8
\words_reg[1][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][10]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector85~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~1_combout\,
	datac => \words_reg[1][10]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][10]~combout\);

-- Location: LCCOMB_X12_Y17_N24
\Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & \s_writedata[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[9]~input_o\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X12_Y17_N18
\Selector86~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (\Selector86~1_combout\) # ((\Selector86~0_combout\) # ((\Selector95~1_combout\ & \words[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~1_combout\,
	datab => \Selector95~1_combout\,
	datac => \Selector86~0_combout\,
	datad => \words[1][9]~q\,
	combout => \Selector86~2_combout\);

-- Location: LCCOMB_X12_Y17_N2
\words_reg[1][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][9]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector86~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][9]~combout\,
	datac => \Selector86~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][9]~combout\);

-- Location: IOIBUF_X41_Y10_N15
\m_readdata[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(13),
	o => \m_readdata[13]~input_o\);

-- Location: LCCOMB_X10_Y14_N18
\Selector82~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\m_readdata[13]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[13]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector82~1_combout\);

-- Location: LCCOMB_X17_Y14_N10
\Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\s_writedata[11]~input_o\ & (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[11]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X17_Y14_N24
\Selector52~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (\Selector52~0_combout\) # ((\Selector84~1_combout\) # ((\words[2][11]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][11]~q\,
	datab => \Selector52~0_combout\,
	datac => \Selector84~1_combout\,
	datad => \Selector63~2_combout\,
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X17_Y14_N6
\words_reg[2][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][11]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector52~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[2][11]~combout\,
	datab => \Selector52~1_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][11]~combout\);

-- Location: LCCOMB_X14_Y16_N14
\words_reg[2][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][10]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector53~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~2_combout\,
	datac => \words_reg[2][10]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][10]~combout\);

-- Location: LCCOMB_X12_Y17_N20
\Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & \s_writedata[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[9]~input_o\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X12_Y17_N6
\Selector86~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\m_readdata[9]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[9]~input_o\,
	datab => \state.write_mem_161083~combout\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X12_Y17_N14
\Selector54~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\Selector54~0_combout\) # ((\Selector86~1_combout\) # ((\words[2][9]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][9]~q\,
	datab => \Selector54~0_combout\,
	datac => \Selector63~2_combout\,
	datad => \Selector86~1_combout\,
	combout => \Selector54~1_combout\);

-- Location: LCCOMB_X11_Y14_N20
\words_reg[2][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][9]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector54~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][9]~combout\,
	datac => \Selector54~1_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][9]~combout\);

-- Location: LCCOMB_X16_Y16_N10
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\s_writedata[11]~input_o\ & (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[11]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X16_Y14_N28
\Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector84~1_combout\) # ((\Selector20~0_combout\) # ((\words[3][11]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][11]~q\,
	datab => \Selector84~1_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector31~1_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X16_Y14_N0
\words_reg[3][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][11]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector20~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][11]~combout\,
	combout => \words_reg[3][11]~combout\);

-- Location: LCCOMB_X14_Y17_N8
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[10]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[10]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\words[3][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][9]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(141)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(141),
	combout => \words[3][9]~feeder_combout\);

-- Location: FF_X14_Y17_N21
\words[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][9]~q\);

-- Location: LCCOMB_X14_Y17_N22
\Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\) # ((\Selector86~1_combout\) # ((\words[3][9]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \words[3][9]~q\,
	datac => \Selector86~1_combout\,
	datad => \Selector31~1_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X14_Y17_N14
\words_reg[3][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][9]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector22~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][9]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector22~1_combout\,
	combout => \words_reg[3][9]~combout\);

-- Location: LCCOMB_X14_Y17_N18
\words[3][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][10]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(140)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(140),
	combout => \words[3][10]~feeder_combout\);

-- Location: FF_X14_Y17_N19
\words[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][10]~q\);

-- Location: LCCOMB_X14_Y17_N2
\Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector53~1_combout\) # ((\Selector21~0_combout\) # ((\words[3][10]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~1_combout\,
	datab => \Selector21~0_combout\,
	datac => \words[3][10]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X14_Y17_N12
\words_reg[3][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][10]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector21~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector133~2clkctrl_outclk\,
	datac => \Selector21~1_combout\,
	datad => \words_reg[3][10]~combout\,
	combout => \words_reg[3][10]~combout\);

-- Location: LCCOMB_X16_Y17_N22
\words[3][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][12]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(138)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(138),
	combout => \words[3][12]~feeder_combout\);

-- Location: FF_X16_Y17_N23
\words[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][12]~q\);

-- Location: LCCOMB_X16_Y17_N18
\Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector19~0_combout\) # ((\Selector51~1_combout\) # ((\words[3][12]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector51~1_combout\,
	datac => \words[3][12]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X16_Y17_N30
\words_reg[3][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][12]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector19~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][12]~combout\,
	datab => \Selector133~2clkctrl_outclk\,
	datac => \Selector19~1_combout\,
	combout => \words_reg[3][12]~combout\);

-- Location: LCCOMB_X15_Y17_N20
\words[2][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][12]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(106),
	combout => \words[2][12]~feeder_combout\);

-- Location: FF_X15_Y17_N21
\words[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][12]~q\);

-- Location: LCCOMB_X15_Y17_N6
\Selector51~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (\Selector51~0_combout\) # ((\Selector51~1_combout\) # ((\Selector63~2_combout\ & \words[2][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \Selector51~1_combout\,
	datad => \words[2][12]~q\,
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X15_Y17_N16
\words_reg[2][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][12]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector51~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector51~2_combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \words_reg[2][12]~combout\,
	combout => \words_reg[2][12]~combout\);

-- Location: FF_X10_Y14_N19
\words[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(105),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][13]~q\);

-- Location: LCCOMB_X11_Y14_N12
\Selector50~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\Selector50~0_combout\) # ((\Selector82~1_combout\) # ((\Selector63~2_combout\ & \words[2][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \Selector82~1_combout\,
	datac => \Selector63~2_combout\,
	datad => \words[2][13]~q\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X11_Y14_N28
\words_reg[2][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][13]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector50~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][13]~combout\,
	datac => \Selector50~1_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][13]~combout\);

-- Location: LCCOMB_X16_Y17_N24
\words[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][12]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(74),
	combout => \words[1][12]~feeder_combout\);

-- Location: FF_X16_Y17_N25
\words[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][12]~q\);

-- Location: LCCOMB_X16_Y17_N26
\Selector83~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\Selector83~0_combout\) # ((\Selector51~1_combout\) # ((\words[1][12]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector83~0_combout\,
	datab => \Selector51~1_combout\,
	datac => \words[1][12]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector83~1_combout\);

-- Location: LCCOMB_X16_Y17_N0
\words_reg[1][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][12]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector83~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector131~0clkctrl_outclk\,
	datac => \words_reg[1][12]~combout\,
	datad => \Selector83~1_combout\,
	combout => \words_reg[1][12]~combout\);

-- Location: FF_X10_Y14_N17
\words[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(73),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][13]~q\);

-- Location: LCCOMB_X10_Y14_N22
\Selector82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\s_writedata[13]~input_o\ & (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[13]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X10_Y14_N28
\Selector82~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector82~2_combout\ = (\Selector82~1_combout\) # ((\Selector82~0_combout\) # ((\Selector95~1_combout\ & \words[1][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][13]~q\,
	datac => \Selector82~1_combout\,
	datad => \Selector82~0_combout\,
	combout => \Selector82~2_combout\);

-- Location: LCCOMB_X10_Y13_N0
\words_reg[1][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][13]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector82~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][13]~combout\,
	datac => \Selector82~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][13]~combout\);

-- Location: LCCOMB_X12_Y17_N28
\words[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][9]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(45),
	combout => \words[0][9]~feeder_combout\);

-- Location: FF_X12_Y17_N29
\words[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][9]~q\);

-- Location: LCCOMB_X12_Y17_N4
\Selector118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][9]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \words[0][9]~q\,
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\Selector118~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector118~1_combout\ = (\Selector118~0_combout\) # ((\Selector86~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \s_writedata[9]~input_o\,
	datac => \Selector118~0_combout\,
	datad => \Selector86~1_combout\,
	combout => \Selector118~1_combout\);

-- Location: LCCOMB_X11_Y14_N22
\words_reg[0][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][9]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector118~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][9]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector118~1_combout\,
	combout => \words_reg[0][9]~combout\);

-- Location: FF_X14_Y16_N5
\words[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][10]~q\);

-- Location: LCCOMB_X14_Y16_N28
\Selector117~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][10]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \words[0][10]~q\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector117~0_combout\);

-- Location: LCCOMB_X14_Y16_N18
\Selector117~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector117~1_combout\ = (\Selector53~1_combout\) # ((\Selector117~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \s_writedata[10]~input_o\,
	datac => \Selector53~1_combout\,
	datad => \Selector117~0_combout\,
	combout => \Selector117~1_combout\);

-- Location: LCCOMB_X15_Y16_N8
\words_reg[0][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][10]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector117~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][10]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector117~1_combout\,
	combout => \words_reg[0][10]~combout\);

-- Location: FF_X16_Y16_N23
\words[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][11]~q\);

-- Location: LCCOMB_X16_Y16_N26
\Selector116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][11]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][11]~q\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector116~0_combout\);

-- Location: LCCOMB_X16_Y16_N16
\Selector116~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector116~1_combout\ = (\Selector84~1_combout\) # ((\Selector116~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \Selector84~1_combout\,
	datac => \s_writedata[11]~input_o\,
	datad => \Selector116~0_combout\,
	combout => \Selector116~1_combout\);

-- Location: LCCOMB_X15_Y16_N2
\words_reg[0][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][11]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector116~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][11]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector116~1_combout\,
	combout => \words_reg[0][11]~combout\);

-- Location: LCCOMB_X15_Y17_N2
\words[0][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][12]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(42),
	combout => \words[0][12]~feeder_combout\);

-- Location: FF_X15_Y17_N3
\words[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][12]~q\);

-- Location: LCCOMB_X15_Y17_N8
\Selector115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][12]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][12]~q\,
	combout => \Selector115~0_combout\);

-- Location: LCCOMB_X15_Y17_N18
\Selector115~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector115~1_combout\ = (\Selector51~1_combout\) # ((\Selector115~0_combout\) # ((\s_writedata[12]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[12]~input_o\,
	datab => \Selector51~1_combout\,
	datac => \Selector115~0_combout\,
	datad => \Selector127~1_combout\,
	combout => \Selector115~1_combout\);

-- Location: LCCOMB_X11_Y17_N28
\words_reg[0][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][12]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector115~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][12]~combout\,
	datac => \Selector115~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][12]~combout\);

-- Location: FF_X12_Y17_N17
\words[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(77),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][9]~q\);

-- Location: LCCOMB_X12_Y17_N12
\Mux173~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux173~1_combout\ = (\Mux173~0_combout\ & (((\words[3][9]~q\) # (!\s_adr[0]~input_o\)))) # (!\Mux173~0_combout\ & (\words[1][9]~q\ & (\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux173~0_combout\,
	datab => \words[1][9]~q\,
	datac => \s_adr[0]~input_o\,
	datad => \words[3][9]~q\,
	combout => \Mux173~1_combout\);

-- Location: LCCOMB_X12_Y17_N0
\readdata_reg[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(9) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux173~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(9),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux173~1_combout\,
	combout => readdata_reg(9));

-- Location: LCCOMB_X14_Y16_N6
\Mux172~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux172~0_combout\ = (\s_adr[0]~input_o\ & ((\words[1][10]~q\) # ((\s_adr[1]~input_o\)))) # (!\s_adr[0]~input_o\ & (((\words[0][10]~q\ & !\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][10]~q\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][10]~q\,
	datad => \s_adr[1]~input_o\,
	combout => \Mux172~0_combout\);

-- Location: LCCOMB_X14_Y16_N24
\Mux172~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux172~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux172~0_combout\ & ((\words[3][10]~q\))) # (!\Mux172~0_combout\ & (\words[2][10]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux172~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][10]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \words[3][10]~q\,
	datad => \Mux172~0_combout\,
	combout => \Mux172~1_combout\);

-- Location: LCCOMB_X14_Y16_N30
\readdata_reg[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(10) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux172~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(10),
	datad => \Mux172~1_combout\,
	combout => readdata_reg(10));

-- Location: LCCOMB_X16_Y16_N8
\words[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][11]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(75),
	combout => \words[1][11]~feeder_combout\);

-- Location: FF_X16_Y16_N9
\words[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][11]~q\);

-- Location: LCCOMB_X16_Y14_N20
\words[3][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][11]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(139)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(139),
	combout => \words[3][11]~feeder_combout\);

-- Location: FF_X16_Y14_N21
\words[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][11]~q\);

-- Location: LCCOMB_X17_Y14_N26
\words[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][11]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(107)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(107),
	combout => \words[2][11]~feeder_combout\);

-- Location: FF_X17_Y14_N27
\words[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][11]~q\);

-- Location: LCCOMB_X16_Y16_N20
\Mux171~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux171~0_combout\ = (\s_adr[1]~input_o\ & (((\s_adr[0]~input_o\) # (\words[2][11]~q\)))) # (!\s_adr[1]~input_o\ & (\words[0][11]~q\ & (!\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][11]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \words[2][11]~q\,
	combout => \Mux171~0_combout\);

-- Location: LCCOMB_X16_Y16_N18
\Mux171~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux171~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux171~0_combout\ & ((\words[3][11]~q\))) # (!\Mux171~0_combout\ & (\words[1][11]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux171~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[1][11]~q\,
	datac => \words[3][11]~q\,
	datad => \Mux171~0_combout\,
	combout => \Mux171~1_combout\);

-- Location: LCCOMB_X16_Y16_N4
\readdata_reg[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(11) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux171~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(11),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux171~1_combout\,
	combout => readdata_reg(11));

-- Location: LCCOMB_X15_Y17_N0
\Mux170~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux170~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][12]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][12]~q\,
	datad => \words[1][12]~q\,
	combout => \Mux170~0_combout\);

-- Location: LCCOMB_X15_Y17_N10
\Mux170~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux170~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux170~0_combout\ & ((\words[3][12]~q\))) # (!\Mux170~0_combout\ & (\words[2][12]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux170~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][12]~q\,
	datac => \words[3][12]~q\,
	datad => \Mux170~0_combout\,
	combout => \Mux170~1_combout\);

-- Location: LCCOMB_X15_Y17_N24
\readdata_reg[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(12) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux170~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(12),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux170~1_combout\,
	combout => readdata_reg(12));

-- Location: IOIBUF_X0_Y10_N22
\s_writedata[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(17),
	o => \s_writedata[17]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\s_writedata[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(16),
	o => \s_writedata[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\s_writedata[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(15),
	o => \s_writedata[15]~input_o\);

-- Location: LCCOMB_X15_Y14_N12
\Selector78~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (\m_readdata[17]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[17]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector78~1_combout\);

-- Location: LCCOMB_X15_Y14_N16
\Selector78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[17]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[17]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector78~0_combout\);

-- Location: IOIBUF_X14_Y29_N8
\s_writedata[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(14),
	o => \s_writedata[14]~input_o\);

-- Location: LCCOMB_X15_Y18_N18
\Selector81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[14]~input_o\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X15_Y14_N28
\Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & (\s_writedata[17]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[17]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X14_Y16_N0
\Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\s_writedata[15]~input_o\ & (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[15]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X14_Y18_N14
\Selector49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\m_readdata[14]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[14]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & \s_writedata[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[14]~input_o\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X14_Y18_N18
\Selector49~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\Selector49~1_combout\) # ((\Selector49~0_combout\) # ((\words[2][14]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][14]~q\,
	datab => \Selector49~1_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector63~2_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X14_Y14_N30
\words_reg[2][14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][14]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector49~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[2][14]~combout\,
	datac => \Selector49~2_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][14]~combout\);

-- Location: LCCOMB_X17_Y14_N18
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_writedata[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[17]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X15_Y13_N4
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & (\s_writedata[16]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[16]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X12_Y14_N0
\words_reg[3][15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][15]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector16~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~1_combout\,
	datab => \words_reg[3][15]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][15]~combout\);

-- Location: LCCOMB_X14_Y18_N16
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[14]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: IOIBUF_X9_Y29_N29
\s_writedata[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(13),
	o => \s_writedata[13]~input_o\);

-- Location: LCCOMB_X10_Y14_N2
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_writedata[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_writedata[13]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X10_Y14_N20
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector82~1_combout\) # ((\Selector18~0_combout\) # ((\Selector31~1_combout\ & \words[3][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector82~1_combout\,
	datac => \words[3][13]~q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X10_Y14_N14
\words_reg[3][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][13]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector18~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~1_combout\,
	datac => \words_reg[3][13]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][13]~combout\);

-- Location: M9K_X13_Y14_N0
\ram_block[0][150]__1|auto_generated|ram_block1a37\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 37,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: FF_X14_Y18_N15
\words[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(136),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][14]~q\);

-- Location: LCCOMB_X14_Y18_N22
\Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector49~1_combout\) # ((\Selector17~0_combout\) # ((\Selector31~1_combout\ & \words[3][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~1_combout\,
	datab => \Selector31~1_combout\,
	datac => \Selector17~0_combout\,
	datad => \words[3][14]~q\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X14_Y18_N10
\words_reg[3][14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][14]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector17~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][14]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector17~1_combout\,
	combout => \words_reg[3][14]~combout\);

-- Location: FF_X12_Y14_N19
\words[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(134),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][16]~q\);

-- Location: LCCOMB_X12_Y14_N18
\Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector47~1_combout\) # ((\Selector15~0_combout\) # ((\words[3][16]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~1_combout\,
	datab => \Selector15~0_combout\,
	datac => \words[3][16]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X12_Y14_N14
\words_reg[3][16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][16]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector15~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][16]~combout\,
	datac => \Selector15~1_combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][16]~combout\);

-- Location: LCCOMB_X16_Y14_N10
\words[3][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][17]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(133)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(133),
	combout => \words[3][17]~feeder_combout\);

-- Location: FF_X16_Y14_N11
\words[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][17]~q\);

-- Location: LCCOMB_X16_Y14_N6
\Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector78~1_combout\) # ((\Selector14~0_combout\) # ((\words[3][17]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~1_combout\,
	datab => \Selector14~0_combout\,
	datac => \words[3][17]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X16_Y14_N16
\words_reg[3][17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][17]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector14~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][17]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector14~1_combout\,
	combout => \words_reg[3][17]~combout\);

-- Location: FF_X14_Y14_N23
\words[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(103),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][15]~q\);

-- Location: LCCOMB_X14_Y14_N22
\Selector48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\Selector80~1_combout\) # ((\Selector48~0_combout\) # ((\words[2][15]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~1_combout\,
	datab => \Selector48~0_combout\,
	datac => \words[2][15]~q\,
	datad => \Selector63~2_combout\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X14_Y14_N24
\words_reg[2][15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][15]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector48~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0clkctrl_outclk\,
	datab => \words_reg[2][15]~combout\,
	datad => \Selector48~1_combout\,
	combout => \words_reg[2][15]~combout\);

-- Location: FF_X12_Y14_N5
\words[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(102),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][16]~q\);

-- Location: LCCOMB_X12_Y14_N24
\Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & \s_writedata[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[16]~input_o\,
	combout => \Selector47~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
\m_readdata[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(16),
	o => \m_readdata[16]~input_o\);

-- Location: LCCOMB_X11_Y14_N6
\Selector47~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\m_readdata[16]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[16]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X12_Y14_N6
\Selector47~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\Selector47~0_combout\) # ((\Selector47~1_combout\) # ((\Selector63~2_combout\ & \words[2][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \words[2][16]~q\,
	datac => \Selector47~0_combout\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X14_Y14_N2
\words_reg[2][16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][16]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector47~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][16]~combout\,
	datac => \Selector47~2_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][16]~combout\);

-- Location: FF_X15_Y14_N31
\words[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(101),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][17]~q\);

-- Location: LCCOMB_X15_Y14_N6
\Selector46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\Selector78~1_combout\) # ((\Selector46~0_combout\) # ((\Selector63~2_combout\ & \words[2][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~1_combout\,
	datab => \Selector46~0_combout\,
	datac => \Selector63~2_combout\,
	datad => \words[2][17]~q\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X15_Y14_N14
\words_reg[2][17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][17]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector46~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector46~1_combout\,
	datac => \words_reg[2][17]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][17]~combout\);

-- Location: LCCOMB_X15_Y18_N28
\words[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][14]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(72),
	combout => \words[1][14]~feeder_combout\);

-- Location: FF_X15_Y18_N29
\words[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][14]~q\);

-- Location: LCCOMB_X15_Y18_N16
\Selector81~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector49~1_combout\) # ((\Selector81~0_combout\) # ((\words[1][14]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~1_combout\,
	datab => \Selector81~0_combout\,
	datac => \words[1][14]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector81~1_combout\);

-- Location: LCCOMB_X15_Y18_N14
\words_reg[1][14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][14]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector81~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][14]~combout\,
	datac => \Selector81~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][14]~combout\);

-- Location: FF_X14_Y14_N21
\words[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(71),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][15]~q\);

-- Location: LCCOMB_X14_Y14_N18
\Selector80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\s_adr[1]~input_o\ & (\s_writedata[15]~input_o\ & (\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_writedata[15]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector80~0_combout\);

-- Location: IOIBUF_X0_Y13_N22
\m_readdata[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(15),
	o => \m_readdata[15]~input_o\);

-- Location: LCCOMB_X14_Y13_N24
\Selector80~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.write_mem_161083~combout\,
	datad => \m_readdata[15]~input_o\,
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X14_Y14_N16
\Selector80~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = (\Selector80~0_combout\) # ((\Selector80~1_combout\) # ((\Selector95~1_combout\ & \words[1][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][15]~q\,
	datac => \Selector80~0_combout\,
	datad => \Selector80~1_combout\,
	combout => \Selector80~2_combout\);

-- Location: LCCOMB_X14_Y15_N20
\words_reg[1][15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][15]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector80~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][15]~combout\,
	datac => \Selector80~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][15]~combout\);

-- Location: FF_X12_Y14_N3
\words[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(70),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][16]~q\);

-- Location: LCCOMB_X12_Y14_N16
\Selector79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\s_writedata[16]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[16]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X12_Y14_N30
\Selector79~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector79~0_combout\) # ((\Selector47~1_combout\) # ((\Selector95~1_combout\ & \words[1][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][16]~q\,
	datac => \Selector79~0_combout\,
	datad => \Selector47~1_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X12_Y13_N0
\words_reg[1][16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][16]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector79~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][16]~combout\,
	datac => \Selector79~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][16]~combout\);

-- Location: LCCOMB_X15_Y14_N8
\words[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][17]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(69),
	combout => \words[1][17]~feeder_combout\);

-- Location: FF_X15_Y14_N9
\words[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][17]~q\);

-- Location: LCCOMB_X15_Y14_N2
\Selector78~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector78~2_combout\ = (\Selector78~1_combout\) # ((\Selector78~0_combout\) # ((\Selector95~1_combout\ & \words[1][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector78~1_combout\,
	datac => \Selector78~0_combout\,
	datad => \words[1][17]~q\,
	combout => \Selector78~2_combout\);

-- Location: LCCOMB_X14_Y15_N24
\words_reg[1][17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][17]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector78~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][17]~combout\,
	datac => \Selector78~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][17]~combout\);

-- Location: LCCOMB_X10_Y14_N4
\words[0][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][13]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(41),
	combout => \words[0][13]~feeder_combout\);

-- Location: FF_X10_Y14_N5
\words[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][13]~q\);

-- Location: LCCOMB_X10_Y14_N0
\Selector114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\words[0][13]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][13]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X9_Y14_N8
\Selector114~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector114~1_combout\ = (\Selector114~0_combout\) # ((\Selector82~1_combout\) # ((\s_writedata[13]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[13]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector114~0_combout\,
	datad => \Selector82~1_combout\,
	combout => \Selector114~1_combout\);

-- Location: LCCOMB_X9_Y14_N14
\words_reg[0][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][13]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector114~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][13]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector114~1_combout\,
	combout => \words_reg[0][13]~combout\);

-- Location: FF_X14_Y18_N7
\words[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][14]~q\);

-- Location: LCCOMB_X14_Y18_N4
\Selector113~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][14]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][14]~q\,
	combout => \Selector113~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\Selector113~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector113~1_combout\ = (\Selector113~0_combout\) # ((\Selector49~1_combout\) # ((\s_writedata[14]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[14]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector113~0_combout\,
	datad => \Selector49~1_combout\,
	combout => \Selector113~1_combout\);

-- Location: LCCOMB_X12_Y18_N16
\words_reg[0][14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][14]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector113~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][14]~combout\,
	datac => \Selector113~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][14]~combout\);

-- Location: FF_X14_Y14_N1
\words[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][15]~q\);

-- Location: LCCOMB_X14_Y14_N14
\Selector112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][15]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][15]~q\,
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\Selector112~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector112~1_combout\ = (\Selector80~1_combout\) # ((\Selector112~0_combout\) # ((\s_writedata[15]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~1_combout\,
	datab => \s_writedata[15]~input_o\,
	datac => \Selector112~0_combout\,
	datad => \Selector127~1_combout\,
	combout => \Selector112~1_combout\);

-- Location: LCCOMB_X14_Y15_N14
\words_reg[0][15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][15]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector112~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][15]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector112~1_combout\,
	combout => \words_reg[0][15]~combout\);

-- Location: FF_X12_Y14_N21
\words[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][16]~q\);

-- Location: LCCOMB_X12_Y14_N28
\Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][16]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \words[0][16]~q\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X12_Y14_N10
\Selector111~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector111~1_combout\ = (\Selector47~1_combout\) # ((\Selector111~0_combout\) # ((\s_writedata[16]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~1_combout\,
	datab => \s_writedata[16]~input_o\,
	datac => \Selector127~1_combout\,
	datad => \Selector111~0_combout\,
	combout => \Selector111~1_combout\);

-- Location: LCCOMB_X11_Y14_N26
\words_reg[0][16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][16]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector111~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][16]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector111~1_combout\,
	combout => \words_reg[0][16]~combout\);

-- Location: FF_X15_Y14_N13
\words[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][17]~q\);

-- Location: LCCOMB_X15_Y14_N4
\Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][17]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][17]~q\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X15_Y14_N22
\Selector110~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~1_combout\ = (\Selector78~1_combout\) # ((\Selector110~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~1_combout\,
	datab => \Selector127~1_combout\,
	datac => \s_writedata[17]~input_o\,
	datad => \Selector110~0_combout\,
	combout => \Selector110~1_combout\);

-- Location: LCCOMB_X16_Y14_N26
\words_reg[0][17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][17]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector110~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][17]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector110~1_combout\,
	combout => \words_reg[0][17]~combout\);

-- Location: FF_X10_Y14_N25
\words[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(137),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][13]~q\);

-- Location: LCCOMB_X10_Y14_N6
\Mux169~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~0_combout\ = (\s_adr[1]~input_o\ & ((\words[2][13]~q\) # ((\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & (((\words[0][13]~q\ & !\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][13]~q\,
	datac => \words[0][13]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Mux169~0_combout\);

-- Location: LCCOMB_X10_Y14_N10
\Mux169~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux169~0_combout\ & (\words[3][13]~q\)) # (!\Mux169~0_combout\ & ((\words[1][13]~q\))))) # (!\s_adr[0]~input_o\ & (((\Mux169~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[3][13]~q\,
	datac => \words[1][13]~q\,
	datad => \Mux169~0_combout\,
	combout => \Mux169~1_combout\);

-- Location: LCCOMB_X10_Y14_N16
\readdata_reg[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(13) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux169~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(13),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux169~1_combout\,
	combout => readdata_reg(13));

-- Location: LCCOMB_X14_Y18_N20
\Mux168~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~0_combout\ = (\s_adr[1]~input_o\ & (((\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][14]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][14]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \words[1][14]~q\,
	combout => \Mux168~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\Mux168~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux168~0_combout\ & ((\words[3][14]~q\))) # (!\Mux168~0_combout\ & (\words[2][14]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux168~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][14]~q\,
	datab => \words[3][14]~q\,
	datac => \s_adr[1]~input_o\,
	datad => \Mux168~0_combout\,
	combout => \Mux168~1_combout\);

-- Location: LCCOMB_X14_Y18_N28
\readdata_reg[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(14) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux168~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(14),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux168~1_combout\,
	combout => readdata_reg(14));

-- Location: FF_X14_Y14_N29
\words[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(135),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][15]~q\);

-- Location: LCCOMB_X14_Y14_N6
\Mux167~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux167~1_combout\ = (\Mux167~0_combout\ & (((\words[3][15]~q\) # (!\s_adr[0]~input_o\)))) # (!\Mux167~0_combout\ & (\words[1][15]~q\ & (\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \words[1][15]~q\,
	datac => \s_adr[0]~input_o\,
	datad => \words[3][15]~q\,
	combout => \Mux167~1_combout\);

-- Location: LCCOMB_X14_Y14_N0
\readdata_reg[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(15) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux167~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(15),
	datad => \Mux167~1_combout\,
	combout => readdata_reg(15));

-- Location: LCCOMB_X12_Y14_N20
\Mux166~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux166~0_combout\ = (\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\) # ((\words[1][16]~q\)))) # (!\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & (\words[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][16]~q\,
	datad => \words[1][16]~q\,
	combout => \Mux166~0_combout\);

-- Location: LCCOMB_X12_Y14_N12
\Mux166~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux166~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux166~0_combout\ & (\words[3][16]~q\)) # (!\Mux166~0_combout\ & ((\words[2][16]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux166~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[3][16]~q\,
	datac => \words[2][16]~q\,
	datad => \Mux166~0_combout\,
	combout => \Mux166~1_combout\);

-- Location: LCCOMB_X12_Y14_N4
\readdata_reg[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(16) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux166~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(16),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux166~1_combout\,
	combout => readdata_reg(16));

-- Location: LCCOMB_X15_Y14_N10
\Mux165~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux165~0_combout\ = (\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\) # ((\words[2][17]~q\)))) # (!\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & ((\words[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[2][17]~q\,
	datad => \words[0][17]~q\,
	combout => \Mux165~0_combout\);

-- Location: LCCOMB_X15_Y14_N20
\Mux165~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux165~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux165~0_combout\ & ((\words[3][17]~q\))) # (!\Mux165~0_combout\ & (\words[1][17]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux165~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][17]~q\,
	datab => \s_adr[0]~input_o\,
	datac => \words[3][17]~q\,
	datad => \Mux165~0_combout\,
	combout => \Mux165~1_combout\);

-- Location: LCCOMB_X15_Y14_N24
\readdata_reg[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(17) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux165~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(17),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux165~1_combout\,
	combout => readdata_reg(17));

-- Location: LCCOMB_X24_Y16_N22
\words_reg[0][19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][19]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & (\Selector108~1_combout\)) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & ((\words_reg[0][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector108~1_combout\,
	datac => \words_reg[0][19]~combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][19]~combout\);

-- Location: IOIBUF_X19_Y29_N29
\m_readdata[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(22),
	o => \m_readdata[22]~input_o\);

-- Location: LCCOMB_X22_Y17_N0
\Selector41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\m_readdata[22]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[22]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X22_Y17_N24
\words_reg[1][21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][21]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector74~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector74~2_combout\,
	datab => \words_reg[1][21]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][21]~combout\);

-- Location: IOIBUF_X41_Y17_N8
\s_writedata[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(20),
	o => \s_writedata[20]~input_o\);

-- Location: LCCOMB_X28_Y17_N4
\Selector75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & \s_writedata[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[20]~input_o\,
	combout => \Selector75~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\m_readdata[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(20),
	o => \m_readdata[20]~input_o\);

-- Location: LCCOMB_X28_Y17_N26
\Selector43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\m_readdata[20]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[20]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X28_Y17_N14
\Selector75~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (\Selector75~0_combout\) # ((\Selector43~1_combout\) # ((\words[1][20]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][20]~q\,
	datab => \Selector75~0_combout\,
	datac => \Selector95~1_combout\,
	datad => \Selector43~1_combout\,
	combout => \Selector75~1_combout\);

-- Location: LCCOMB_X27_Y17_N26
\words_reg[1][20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][20]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector75~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector75~1_combout\,
	datac => \words_reg[1][20]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][20]~combout\);

-- Location: IOIBUF_X7_Y29_N29
\m_readdata[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(19),
	o => \m_readdata[19]~input_o\);

-- Location: LCCOMB_X23_Y17_N2
\Selector76~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\m_readdata[19]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[19]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector76~1_combout\);

-- Location: IOIBUF_X23_Y29_N29
\s_writedata[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(19),
	o => \s_writedata[19]~input_o\);

-- Location: LCCOMB_X24_Y17_N12
\Selector76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (!\s_adr[1]~input_o\ & (\s_writedata[19]~input_o\ & (\s_adr[0]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_writedata[19]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X26_Y16_N0
\Selector45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\m_readdata[18]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[18]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector45~1_combout\);

-- Location: IOIBUF_X41_Y20_N15
\s_writedata[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(18),
	o => \s_writedata[18]~input_o\);

-- Location: LCCOMB_X26_Y16_N30
\Selector77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[18]~input_o\ & !\s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[18]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Selector77~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\Selector45~1_combout\) # ((\Selector77~0_combout\) # ((\words[1][18]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][18]~q\,
	datab => \Selector45~1_combout\,
	datac => \Selector77~0_combout\,
	datad => \Selector95~1_combout\,
	combout => \Selector77~1_combout\);

-- Location: LCCOMB_X26_Y16_N24
\words_reg[1][18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][18]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector77~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector131~0clkctrl_outclk\,
	datac => \Selector77~1_combout\,
	datad => \words_reg[1][18]~combout\,
	combout => \words_reg[1][18]~combout\);

-- Location: IOIBUF_X21_Y29_N15
\s_writedata[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(22),
	o => \s_writedata[22]~input_o\);

-- Location: LCCOMB_X22_Y17_N10
\Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & \s_writedata[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[22]~input_o\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Selector41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\Selector41~0_combout\) # ((\Selector41~1_combout\) # ((\words[2][22]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][22]~q\,
	datab => \Selector41~0_combout\,
	datac => \Selector63~2_combout\,
	datad => \Selector41~1_combout\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\words_reg[2][22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][22]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector41~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][22]~combout\,
	datac => \Selector41~2_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][22]~combout\);

-- Location: LCCOMB_X28_Y17_N20
\Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (!\s_adr[0]~input_o\ & (\s_writedata[18]~input_o\ & (\s_adr[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_writedata[18]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Selector45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\Selector45~0_combout\) # ((\Selector45~1_combout\) # ((\words[2][18]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][18]~q\,
	datab => \Selector45~0_combout\,
	datac => \Selector63~2_combout\,
	datad => \Selector45~1_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X27_Y17_N8
\words_reg[2][18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][18]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector45~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][18]~combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \Selector45~2_combout\,
	combout => \words_reg[2][18]~combout\);

-- Location: LCCOMB_X23_Y17_N4
\words_reg[3][21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][21]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector10~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datac => \words_reg[3][21]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][21]~combout\);

-- Location: LCCOMB_X24_Y17_N24
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\ & \s_writedata[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[19]~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((\Selector45~1_combout\) # ((\words[3][18]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector45~1_combout\,
	datac => \words[3][18]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X26_Y18_N30
\words_reg[3][18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][18]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector13~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][18]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector13~1_combout\,
	combout => \words_reg[3][18]~combout\);

-- Location: M9K_X25_Y17_N0
\ram_block[0][150]__1|auto_generated|ram_block1a33\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 33,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: FF_X24_Y17_N7
\words[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(131),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][19]~q\);

-- Location: LCCOMB_X24_Y17_N6
\Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector76~1_combout\) # ((\Selector12~0_combout\) # ((\words[3][19]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector76~1_combout\,
	datab => \Selector12~0_combout\,
	datac => \words[3][19]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X24_Y17_N14
\words_reg[3][19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][19]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector12~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~1_combout\,
	datac => \words_reg[3][19]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][19]~combout\);

-- Location: FF_X28_Y17_N27
\words[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(130),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][20]~q\);

-- Location: LCCOMB_X28_Y17_N30
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[20]~input_o\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector43~1_combout\) # ((\Selector11~0_combout\) # ((\Selector31~1_combout\ & \words[3][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \words[3][20]~q\,
	datac => \Selector43~1_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X28_Y17_N2
\words_reg[3][20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][20]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector11~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector11~1_combout\,
	datac => \words_reg[3][20]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][20]~combout\);

-- Location: FF_X24_Y17_N3
\words[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(99),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][19]~q\);

-- Location: LCCOMB_X24_Y17_N10
\Selector44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\Selector44~0_combout\) # ((\Selector76~1_combout\) # ((\words[2][19]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \words[2][19]~q\,
	datac => \Selector76~1_combout\,
	datad => \Selector63~2_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X24_Y18_N4
\words_reg[2][19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][19]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector44~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector44~1_combout\,
	datac => \words_reg[2][19]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][19]~combout\);

-- Location: LCCOMB_X29_Y17_N8
\words[2][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][20]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(98)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(98),
	combout => \words[2][20]~feeder_combout\);

-- Location: FF_X29_Y17_N9
\words[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][20]~q\);

-- Location: LCCOMB_X28_Y17_N22
\Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (!\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & \s_writedata[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[20]~input_o\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X29_Y17_N2
\Selector43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector43~1_combout\) # ((\Selector43~0_combout\) # ((\Selector63~2_combout\ & \words[2][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \words[2][20]~q\,
	datac => \Selector43~1_combout\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X29_Y17_N24
\words_reg[2][20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][20]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector43~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][20]~combout\,
	datac => \Selector43~2_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][20]~combout\);

-- Location: FF_X24_Y14_N1
\words[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(97),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][21]~q\);

-- Location: LCCOMB_X23_Y17_N16
\Selector74~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\m_readdata[21]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[21]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector74~1_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Selector42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\Selector42~0_combout\) # ((\Selector74~1_combout\) # ((\Selector63~2_combout\ & \words[2][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \words[2][21]~q\,
	datad => \Selector74~1_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
\words_reg[2][21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][21]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector42~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0clkctrl_outclk\,
	datab => \Selector42~1_combout\,
	datad => \words_reg[2][21]~combout\,
	combout => \words_reg[2][21]~combout\);

-- Location: FF_X24_Y17_N29
\words[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][19]~q\);

-- Location: LCCOMB_X24_Y17_N22
\Selector76~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector76~2_combout\ = (\Selector76~1_combout\) # ((\Selector76~0_combout\) # ((\Selector95~1_combout\ & \words[1][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector76~1_combout\,
	datac => \Selector76~0_combout\,
	datad => \words[1][19]~q\,
	combout => \Selector76~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\words_reg[1][19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][19]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector76~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][19]~combout\,
	datac => \Selector76~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][19]~combout\);

-- Location: FF_X22_Y17_N27
\words[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][22]~q\);

-- Location: LCCOMB_X22_Y17_N26
\Selector73~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\Selector73~0_combout\) # ((\Selector41~1_combout\) # ((\words[1][22]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector73~0_combout\,
	datab => \Selector41~1_combout\,
	datac => \words[1][22]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector73~1_combout\);

-- Location: LCCOMB_X22_Y17_N6
\words_reg[1][22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][22]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector73~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][22]~combout\,
	datab => \Selector73~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][22]~combout\);

-- Location: LCCOMB_X26_Y18_N4
\words[0][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][18]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(36),
	combout => \words[0][18]~feeder_combout\);

-- Location: FF_X26_Y18_N5
\words[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][18]~q\);

-- Location: LCCOMB_X26_Y16_N14
\Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][18]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][18]~q\,
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Selector109~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector109~1_combout\ = (\Selector109~0_combout\) # ((\Selector45~1_combout\) # ((\s_writedata[18]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[18]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector109~0_combout\,
	datad => \Selector45~1_combout\,
	combout => \Selector109~1_combout\);

-- Location: LCCOMB_X26_Y16_N10
\words_reg[0][18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][18]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector109~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][18]~combout\,
	datac => \Selector109~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][18]~combout\);

-- Location: FF_X28_Y17_N19
\words[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][20]~q\);

-- Location: LCCOMB_X28_Y17_N0
\Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][20]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][20]~q\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\Selector107~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector107~1_combout\ = (\Selector107~0_combout\) # ((\Selector43~1_combout\) # ((\s_writedata[20]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[20]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector107~0_combout\,
	datad => \Selector43~1_combout\,
	combout => \Selector107~1_combout\);

-- Location: LCCOMB_X30_Y17_N26
\words_reg[0][20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][20]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector107~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][20]~combout\,
	datac => \Selector107~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][20]~combout\);

-- Location: FF_X23_Y17_N19
\words[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][21]~q\);

-- Location: LCCOMB_X23_Y17_N14
\Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][21]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][21]~q\,
	combout => \Selector106~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\Selector106~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector106~1_combout\ = (\Selector106~0_combout\) # ((\Selector74~1_combout\) # ((\s_writedata[21]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[21]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector106~0_combout\,
	datad => \Selector74~1_combout\,
	combout => \Selector106~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
\words_reg[0][21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][21]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector106~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][21]~combout\,
	datac => \Selector106~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][21]~combout\);

-- Location: LCCOMB_X26_Y18_N0
\words[3][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][18]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(132)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(132),
	combout => \words[3][18]~feeder_combout\);

-- Location: FF_X26_Y18_N1
\words[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][18]~q\);

-- Location: FF_X26_Y18_N15
\words[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(100),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][18]~q\);

-- Location: LCCOMB_X26_Y16_N26
\words[1][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][18]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(68),
	combout => \words[1][18]~feeder_combout\);

-- Location: FF_X26_Y16_N27
\words[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][18]~q\);

-- Location: LCCOMB_X26_Y18_N6
\Mux164~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux164~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][18]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][18]~q\,
	datad => \words[1][18]~q\,
	combout => \Mux164~0_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Mux164~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux164~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux164~0_combout\ & (\words[3][18]~q\)) # (!\Mux164~0_combout\ & ((\words[2][18]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux164~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[3][18]~q\,
	datac => \words[2][18]~q\,
	datad => \Mux164~0_combout\,
	combout => \Mux164~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\readdata_reg[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(18) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (\Mux164~1_combout\)) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((readdata_reg(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux164~1_combout\,
	datab => readdata_reg(18),
	datad => \state.read_cache_161112~clkctrl_outclk\,
	combout => readdata_reg(18));

-- Location: FF_X24_Y17_N9
\words[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][19]~q\);

-- Location: LCCOMB_X24_Y17_N8
\Mux163~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux163~0_combout\ = (\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\) # ((\words[2][19]~q\)))) # (!\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & (\words[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][19]~q\,
	datad => \words[2][19]~q\,
	combout => \Mux163~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Mux163~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux163~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux163~0_combout\ & (\words[3][19]~q\)) # (!\Mux163~0_combout\ & ((\words[1][19]~q\))))) # (!\s_adr[0]~input_o\ & (((\Mux163~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][19]~q\,
	datab => \words[1][19]~q\,
	datac => \s_adr[0]~input_o\,
	datad => \Mux163~0_combout\,
	combout => \Mux163~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\readdata_reg[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(19) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux163~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(19),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux163~1_combout\,
	combout => readdata_reg(19));

-- Location: FF_X28_Y17_N9
\words[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(66),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][20]~q\);

-- Location: LCCOMB_X28_Y17_N12
\Mux162~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux162~0_combout\ = (\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\) # ((\words[1][20]~q\)))) # (!\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & ((\words[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[1][20]~q\,
	datad => \words[0][20]~q\,
	combout => \Mux162~0_combout\);

-- Location: LCCOMB_X28_Y17_N24
\Mux162~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux162~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux162~0_combout\ & (\words[3][20]~q\)) # (!\Mux162~0_combout\ & ((\words[2][20]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux162~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][20]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \words[2][20]~q\,
	datad => \Mux162~0_combout\,
	combout => \Mux162~1_combout\);

-- Location: LCCOMB_X28_Y17_N8
\readdata_reg[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(20) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux162~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(20),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux162~1_combout\,
	combout => readdata_reg(20));

-- Location: FF_X23_Y17_N17
\words[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(65),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][21]~q\);

-- Location: FF_X23_Y17_N3
\words[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(129),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][21]~q\);

-- Location: LCCOMB_X23_Y17_N28
\Mux161~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux161~0_combout\ = (\s_adr[1]~input_o\ & (((\words[2][21]~q\) # (\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & (\words[0][21]~q\ & ((!\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[0][21]~q\,
	datac => \words[2][21]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Mux161~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Mux161~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux161~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux161~0_combout\ & ((\words[3][21]~q\))) # (!\Mux161~0_combout\ & (\words[1][21]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux161~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[1][21]~q\,
	datac => \words[3][21]~q\,
	datad => \Mux161~0_combout\,
	combout => \Mux161~1_combout\);

-- Location: LCCOMB_X23_Y17_N18
\readdata_reg[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(21) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux161~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(21),
	datad => \Mux161~1_combout\,
	combout => readdata_reg(21));

-- Location: FF_X22_Y17_N29
\words[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(96),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][22]~q\);

-- Location: IOIBUF_X28_Y29_N8
\m_readdata[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(26),
	o => \m_readdata[26]~input_o\);

-- Location: LCCOMB_X24_Y19_N2
\Selector37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\m_readdata[26]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[26]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector37~1_combout\);

-- Location: IOIBUF_X14_Y29_N29
\s_writedata[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(25),
	o => \s_writedata[25]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\s_writedata[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(24),
	o => \s_writedata[24]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\m_readdata[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(23),
	o => \m_readdata[23]~input_o\);

-- Location: LCCOMB_X17_Y17_N22
\Selector72~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\m_readdata[23]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[23]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector72~1_combout\);

-- Location: IOIBUF_X11_Y29_N29
\m_readdata[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(25),
	o => \m_readdata[25]~input_o\);

-- Location: LCCOMB_X19_Y17_N12
\Selector70~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector70~1_combout\ = (\m_readdata[25]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[25]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector70~1_combout\);

-- Location: LCCOMB_X20_Y17_N8
\Selector70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\s_writedata[25]~input_o\ & (!\s_adr[1]~input_o\ & (\state.write_mem_161083~combout\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[25]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector70~0_combout\);

-- Location: IOIBUF_X16_Y29_N22
\s_writedata[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(26),
	o => \s_writedata[26]~input_o\);

-- Location: LCCOMB_X24_Y19_N0
\Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[0]~input_o\ & (\s_adr[1]~input_o\ & \s_writedata[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[26]~input_o\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Selector37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~1_combout\) # ((\Selector37~0_combout\) # ((\words[2][26]~q\ & \Selector63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][26]~q\,
	datab => \Selector37~1_combout\,
	datac => \Selector63~2_combout\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X24_Y19_N30
\words_reg[2][26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][26]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector37~2_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[2][26]~combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \Selector37~2_combout\,
	combout => \words_reg[2][26]~combout\);

-- Location: LCCOMB_X20_Y17_N20
\Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\s_writedata[25]~input_o\ & (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[25]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & (\s_writedata[24]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[24]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X26_Y17_N8
\Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\m_readdata[24]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[24]~input_o\,
	datab => \state.write_mem_161083~combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\words_reg[3][26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][26]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector5~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][26]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][26]~combout\,
	combout => \words_reg[3][26]~combout\);

-- Location: LCCOMB_X26_Y17_N6
\words_reg[3][24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][24]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector7~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datac => \words_reg[3][24]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][24]~combout\);

-- Location: LCCOMB_X23_Y17_N26
\words_reg[3][22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][22]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector9~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datac => \words_reg[3][22]~combout\,
	datad => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][22]~combout\);

-- Location: M9K_X25_Y17_N0
\ram_block[0][150]__1|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y17_N6
\words[3][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][23]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(127)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(127),
	combout => \words[3][23]~feeder_combout\);

-- Location: FF_X16_Y17_N7
\words[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][23]~q\);

-- Location: IOIBUF_X16_Y0_N8
\s_writedata[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(23),
	o => \s_writedata[23]~input_o\);

-- Location: LCCOMB_X16_Y17_N12
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & \s_writedata[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_adr[0]~input_o\,
	datad => \s_writedata[23]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X16_Y17_N14
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector72~1_combout\) # ((\Selector8~0_combout\) # ((\Selector31~1_combout\ & \words[3][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \words[3][23]~q\,
	datac => \Selector72~1_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X16_Y17_N10
\words_reg[3][23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][23]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & (\Selector8~1_combout\)) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & ((\words_reg[3][23]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \words_reg[3][23]~combout\,
	combout => \words_reg[3][23]~combout\);

-- Location: FF_X19_Y17_N13
\words[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(125),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][25]~q\);

-- Location: LCCOMB_X19_Y17_N14
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\s_writedata[25]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[25]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector70~1_combout\) # ((\Selector6~0_combout\) # ((\Selector31~1_combout\ & \words[3][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector70~1_combout\,
	datab => \Selector31~1_combout\,
	datac => \words[3][25]~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X19_Y17_N30
\words_reg[3][25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][25]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector6~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][25]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector6~1_combout\,
	combout => \words_reg[3][25]~combout\);

-- Location: LCCOMB_X17_Y17_N16
\words[2][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][23]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(95),
	combout => \words[2][23]~feeder_combout\);

-- Location: FF_X17_Y17_N17
\words[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][23]~q\);

-- Location: LCCOMB_X17_Y17_N20
\Selector40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\Selector40~0_combout\) # ((\Selector72~1_combout\) # ((\Selector63~2_combout\ & \words[2][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector63~2_combout\,
	datac => \Selector72~1_combout\,
	datad => \words[2][23]~q\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X17_Y17_N18
\words_reg[2][23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][23]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector40~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][23]~combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \Selector40~1_combout\,
	combout => \words_reg[2][23]~combout\);

-- Location: FF_X26_Y17_N9
\words[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(94),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][24]~q\);

-- Location: LCCOMB_X26_Y17_N24
\Selector39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (\Selector39~0_combout\) # ((\Selector39~1_combout\) # ((\Selector63~2_combout\ & \words[2][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector39~0_combout\,
	datac => \Selector39~1_combout\,
	datad => \words[2][24]~q\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X27_Y17_N4
\words_reg[2][24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][24]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector39~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector39~2_combout\,
	datac => \words_reg[2][24]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][24]~combout\);

-- Location: FF_X20_Y17_N19
\words[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(93),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][25]~q\);

-- Location: LCCOMB_X20_Y17_N30
\Selector38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((\Selector70~1_combout\) # ((\Selector63~2_combout\ & \words[2][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \Selector38~0_combout\,
	datac => \words[2][25]~q\,
	datad => \Selector70~1_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X21_Y17_N6
\words_reg[2][25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][25]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector38~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[2][25]~combout\,
	datac => \Selector38~1_combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][25]~combout\);

-- Location: LCCOMB_X16_Y17_N4
\words[1][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][23]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(63),
	combout => \words[1][23]~feeder_combout\);

-- Location: FF_X16_Y17_N5
\words[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][23]~q\);

-- Location: LCCOMB_X16_Y17_N2
\Selector72~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector72~2_combout\ = (\Selector72~0_combout\) # ((\Selector72~1_combout\) # ((\words[1][23]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector72~0_combout\,
	datab => \Selector72~1_combout\,
	datac => \words[1][23]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector72~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
\words_reg[1][23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][23]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector72~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][23]~combout\,
	datac => \Selector72~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][23]~combout\);

-- Location: FF_X26_Y17_N23
\words[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][24]~q\);

-- Location: LCCOMB_X26_Y17_N14
\Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (!\s_adr[1]~input_o\ & (\s_adr[0]~input_o\ & (\s_writedata[24]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_writedata[24]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\Selector71~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector39~1_combout\) # ((\Selector71~0_combout\) # ((\Selector95~1_combout\ & \words[1][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][24]~q\,
	datac => \Selector39~1_combout\,
	datad => \Selector71~0_combout\,
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X27_Y17_N6
\words_reg[1][24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][24]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector71~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][24]~combout\,
	datab => \Selector71~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][24]~combout\);

-- Location: LCCOMB_X20_Y17_N28
\words[1][25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[1][25]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(61),
	combout => \words[1][25]~feeder_combout\);

-- Location: FF_X20_Y17_N29
\words[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[1][25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][25]~q\);

-- Location: LCCOMB_X20_Y17_N10
\Selector70~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector70~2_combout\ = (\Selector70~1_combout\) # ((\Selector70~0_combout\) # ((\Selector95~1_combout\ & \words[1][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector70~1_combout\,
	datac => \Selector70~0_combout\,
	datad => \words[1][25]~q\,
	combout => \Selector70~2_combout\);

-- Location: LCCOMB_X20_Y17_N14
\words_reg[1][25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][25]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector70~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector70~2_combout\,
	datac => \words_reg[1][25]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][25]~combout\);

-- Location: FF_X24_Y19_N3
\words[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][26]~q\);

-- Location: LCCOMB_X24_Y19_N24
\Selector69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\s_writedata[26]~input_o\ & (\s_adr[0]~input_o\ & (!\s_adr[1]~input_o\ & \state.write_mem_161083~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[26]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \s_adr[1]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Selector69~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\Selector37~1_combout\) # ((\Selector69~0_combout\) # ((\Selector95~1_combout\ & \words[1][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \words[1][26]~q\,
	datac => \Selector37~1_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X26_Y19_N8
\words_reg[1][26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][26]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector69~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[1][26]~combout\,
	datac => \Selector69~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][26]~combout\);

-- Location: FF_X22_Y17_N1
\words[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(32),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][22]~q\);

-- Location: LCCOMB_X22_Y17_N22
\Selector105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][22]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][22]~q\,
	combout => \Selector105~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Selector105~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector105~1_combout\ = (\Selector41~1_combout\) # ((\Selector105~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \Selector41~1_combout\,
	datac => \Selector105~0_combout\,
	datad => \s_writedata[22]~input_o\,
	combout => \Selector105~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\words_reg[0][22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][22]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector105~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][22]~combout\,
	datac => \Selector105~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][22]~combout\);

-- Location: FF_X17_Y17_N23
\words[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][23]~q\);

-- Location: LCCOMB_X17_Y17_N26
\Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\words[0][23]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][23]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector104~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\Selector104~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector104~1_combout\ = (\Selector72~1_combout\) # ((\Selector104~0_combout\) # ((\s_writedata[23]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[23]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector72~1_combout\,
	datad => \Selector104~0_combout\,
	combout => \Selector104~1_combout\);

-- Location: LCCOMB_X17_Y18_N4
\words_reg[0][23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][23]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector104~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][23]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector104~1_combout\,
	combout => \words_reg[0][23]~combout\);

-- Location: FF_X26_Y17_N5
\words[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][24]~q\);

-- Location: LCCOMB_X26_Y17_N26
\Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][24]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][24]~q\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector103~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\Selector103~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector103~1_combout\ = (\Selector39~1_combout\) # ((\Selector103~0_combout\) # ((\s_writedata[24]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~1_combout\,
	datab => \s_writedata[24]~input_o\,
	datac => \Selector103~0_combout\,
	datad => \Selector127~1_combout\,
	combout => \Selector103~1_combout\);

-- Location: LCCOMB_X27_Y18_N8
\words_reg[0][24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][24]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector103~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][24]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector103~1_combout\,
	combout => \words_reg[0][24]~combout\);

-- Location: LCCOMB_X20_Y17_N24
\words[0][25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][25]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(29),
	combout => \words[0][25]~feeder_combout\);

-- Location: FF_X20_Y17_N25
\words[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][25]~q\);

-- Location: LCCOMB_X20_Y17_N12
\Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][25]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][25]~q\,
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X20_Y17_N2
\Selector102~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector102~1_combout\ = (\Selector70~1_combout\) # ((\Selector102~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector70~1_combout\,
	datab => \Selector127~1_combout\,
	datac => \s_writedata[25]~input_o\,
	datad => \Selector102~0_combout\,
	combout => \Selector102~1_combout\);

-- Location: LCCOMB_X21_Y18_N4
\words_reg[0][25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][25]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector102~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][25]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector102~1_combout\,
	combout => \words_reg[0][25]~combout\);

-- Location: LCCOMB_X24_Y19_N4
\words[0][26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][26]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(28),
	combout => \words[0][26]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\words[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][26]~q\);

-- Location: LCCOMB_X24_Y19_N28
\Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][26]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][26]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\Selector101~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~1_combout\ = (\Selector37~1_combout\) # ((\Selector101~0_combout\) # ((\s_writedata[26]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[26]~input_o\,
	datab => \Selector37~1_combout\,
	datac => \Selector127~1_combout\,
	datad => \Selector101~0_combout\,
	combout => \Selector101~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\words_reg[0][26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][26]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector101~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][26]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector101~1_combout\,
	combout => \words_reg[0][26]~combout\);

-- Location: FF_X22_Y17_N21
\words[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(128),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][22]~q\);

-- Location: LCCOMB_X22_Y17_N18
\Mux160~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & (\words[1][22]~q\)) # (!\s_adr[0]~input_o\ & ((\words[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[1][22]~q\,
	datad => \words[0][22]~q\,
	combout => \Mux160~0_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Mux160~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux160~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux160~0_combout\ & ((\words[3][22]~q\))) # (!\Mux160~0_combout\ & (\words[2][22]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][22]~q\,
	datac => \words[3][22]~q\,
	datad => \Mux160~0_combout\,
	combout => \Mux160~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\readdata_reg[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(22) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux160~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(22),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux160~1_combout\,
	combout => readdata_reg(22));

-- Location: LCCOMB_X17_Y17_N24
\Mux159~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = (\s_adr[1]~input_o\ & ((\words[2][23]~q\) # ((\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & (((\words[0][23]~q\ & !\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][23]~q\,
	datac => \words[0][23]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Mux159~0_combout\);

-- Location: LCCOMB_X17_Y17_N6
\Mux159~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux159~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux159~0_combout\ & (\words[3][23]~q\)) # (!\Mux159~0_combout\ & ((\words[1][23]~q\))))) # (!\s_adr[0]~input_o\ & (((\Mux159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[3][23]~q\,
	datac => \words[1][23]~q\,
	datad => \Mux159~0_combout\,
	combout => \Mux159~1_combout\);

-- Location: LCCOMB_X17_Y17_N14
\readdata_reg[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(23) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux159~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(23),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux159~1_combout\,
	combout => readdata_reg(23));

-- Location: FF_X26_Y17_N21
\words[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(126),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][24]~q\);

-- Location: LCCOMB_X26_Y17_N18
\Mux158~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (\s_adr[1]~input_o\ & (\s_adr[0]~input_o\)) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & ((\words[1][24]~q\))) # (!\s_adr[0]~input_o\ & (\words[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][24]~q\,
	datad => \words[1][24]~q\,
	combout => \Mux158~0_combout\);

-- Location: LCCOMB_X26_Y17_N2
\Mux158~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux158~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux158~0_combout\ & (\words[3][24]~q\)) # (!\Mux158~0_combout\ & ((\words[2][24]~q\))))) # (!\s_adr[1]~input_o\ & (((\Mux158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[3][24]~q\,
	datac => \words[2][24]~q\,
	datad => \Mux158~0_combout\,
	combout => \Mux158~1_combout\);

-- Location: LCCOMB_X26_Y17_N22
\readdata_reg[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(24) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux158~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(24),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux158~1_combout\,
	combout => readdata_reg(24));

-- Location: LCCOMB_X20_Y17_N6
\Mux157~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = (\s_adr[0]~input_o\ & (((\s_adr[1]~input_o\)))) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & (\words[2][25]~q\)) # (!\s_adr[1]~input_o\ & ((\words[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[2][25]~q\,
	datac => \s_adr[1]~input_o\,
	datad => \words[0][25]~q\,
	combout => \Mux157~0_combout\);

-- Location: LCCOMB_X20_Y17_N16
\Mux157~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux157~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux157~0_combout\ & (\words[3][25]~q\)) # (!\Mux157~0_combout\ & ((\words[1][25]~q\))))) # (!\s_adr[0]~input_o\ & (((\Mux157~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][25]~q\,
	datab => \words[1][25]~q\,
	datac => \s_adr[0]~input_o\,
	datad => \Mux157~0_combout\,
	combout => \Mux157~1_combout\);

-- Location: LCCOMB_X20_Y17_N0
\readdata_reg[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(25) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux157~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => readdata_reg(25),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux157~1_combout\,
	combout => readdata_reg(25));

-- Location: FF_X24_Y19_N9
\words[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(92),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][26]~q\);

-- Location: LCCOMB_X24_Y18_N2
\words[3][26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][26]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(124)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(124),
	combout => \words[3][26]~feeder_combout\);

-- Location: FF_X24_Y18_N3
\words[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][26]~q\);

-- Location: LCCOMB_X24_Y19_N20
\Mux156~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux156~1_combout\ = (\Mux156~0_combout\ & (((\words[3][26]~q\)) # (!\s_adr[1]~input_o\))) # (!\Mux156~0_combout\ & (\s_adr[1]~input_o\ & (\words[2][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux156~0_combout\,
	datab => \s_adr[1]~input_o\,
	datac => \words[2][26]~q\,
	datad => \words[3][26]~q\,
	combout => \Mux156~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\readdata_reg[26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(26) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux156~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(26),
	datad => \Mux156~1_combout\,
	combout => readdata_reg(26));

-- Location: IOIBUF_X26_Y29_N15
\m_readdata[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(30),
	o => \m_readdata[30]~input_o\);

-- Location: LCCOMB_X26_Y10_N24
\Selector33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\m_readdata[30]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[30]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector33~1_combout\);

-- Location: IOIBUF_X41_Y12_N8
\m_readdata[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(29),
	o => \m_readdata[29]~input_o\);

-- Location: LCCOMB_X27_Y12_N16
\Selector66~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\m_readdata[29]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[29]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector66~1_combout\);

-- Location: IOIBUF_X0_Y9_N1
\m_readdata[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(28),
	o => \m_readdata[28]~input_o\);

-- Location: LCCOMB_X27_Y12_N22
\Selector35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\m_readdata[28]~input_o\ & !\state.write_mem_161083~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[28]~input_o\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector35~1_combout\);

-- Location: IOIBUF_X41_Y12_N1
\s_writedata[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(27),
	o => \s_writedata[27]~input_o\);

-- Location: LCCOMB_X23_Y12_N4
\words_reg[1][31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][31]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector64~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~2_combout\,
	datab => \words_reg[1][31]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][31]~combout\);

-- Location: IOIBUF_X30_Y0_N15
\s_writedata[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(30),
	o => \s_writedata[30]~input_o\);

-- Location: LCCOMB_X26_Y10_N8
\Selector65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & \s_writedata[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[1]~input_o\,
	datad => \s_writedata[30]~input_o\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X26_Y10_N2
\Selector65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\Selector65~0_combout\) # ((\Selector33~1_combout\) # ((\words[1][30]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][30]~q\,
	datab => \Selector95~1_combout\,
	datac => \Selector65~0_combout\,
	datad => \Selector33~1_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X26_Y10_N26
\words_reg[1][30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][30]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector65~1_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][30]~combout\,
	datac => \Selector65~1_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][30]~combout\);

-- Location: LCCOMB_X27_Y12_N20
\words_reg[1][28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][28]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector67~1_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~1_combout\,
	datab => \words_reg[1][28]~combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][28]~combout\);

-- Location: IOIBUF_X21_Y29_N22
\m_readdata[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(27),
	o => \m_readdata[27]~input_o\);

-- Location: LCCOMB_X21_Y12_N4
\Selector68~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (!\state.write_mem_161083~combout\ & \m_readdata[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datad => \m_readdata[27]~input_o\,
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X26_Y12_N14
\words_reg[2][31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][31]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector32~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~1_combout\,
	datac => \words_reg[2][31]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][31]~combout\);

-- Location: LCCOMB_X27_Y10_N8
\words_reg[2][30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][30]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector33~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][30]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~2_combout\,
	datac => \words_reg[2][30]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][30]~combout\);

-- Location: LCCOMB_X26_Y12_N4
\words_reg[2][29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][29]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector34~1_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~1_combout\,
	datac => \words_reg[2][29]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][29]~combout\);

-- Location: LCCOMB_X29_Y12_N28
\words_reg[2][28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][28]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & (\Selector35~2_combout\)) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & ((\words_reg[2][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~2_combout\,
	datab => \words_reg[2][28]~combout\,
	datad => \Selector132~0clkctrl_outclk\,
	combout => \words_reg[2][28]~combout\);

-- Location: LCCOMB_X21_Y12_N24
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (\s_writedata[27]~input_o\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[27]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X22_Y12_N10
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\Selector68~1_combout\) # ((\Selector31~1_combout\ & \words[3][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector4~0_combout\,
	datac => \words[3][27]~q\,
	datad => \Selector68~1_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X22_Y12_N22
\words_reg[3][27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][27]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector4~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][27]~combout\,
	datab => \Selector4~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][27]~combout\);

-- Location: M9K_X25_Y12_N0
\ram_block[0][150]__1|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block[0][150]__1|altsyncram_4e81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 151,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \state.write_cache_161054~combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_block[0][150]__1|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: FF_X28_Y12_N3
\words[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(122),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][28]~q\);

-- Location: LCCOMB_X28_Y12_N2
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\Selector35~1_combout\) # ((\words[3][28]~q\ & \Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector35~1_combout\,
	datac => \words[3][28]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X28_Y12_N14
\words_reg[3][28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][28]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector3~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][28]~combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][28]~combout\);

-- Location: FF_X26_Y12_N11
\words[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(121),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][29]~q\);

-- Location: IOIBUF_X30_Y29_N8
\s_writedata[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(29),
	o => \s_writedata[29]~input_o\);

-- Location: LCCOMB_X26_Y12_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\s_adr[0]~input_o\ & (\state.write_mem_161083~combout\ & (\s_writedata[29]~input_o\ & \s_adr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_writedata[29]~input_o\,
	datad => \s_adr[1]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector66~1_combout\) # ((\Selector2~0_combout\) # ((\Selector31~1_combout\ & \words[3][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector66~1_combout\,
	datac => \words[3][29]~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X26_Y12_N22
\words_reg[3][29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][29]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector2~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[3][29]~combout\,
	datab => \Selector2~1_combout\,
	datac => \Selector133~2clkctrl_outclk\,
	combout => \words_reg[3][29]~combout\);

-- Location: LCCOMB_X26_Y12_N20
\words[3][30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][30]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(120)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(120),
	combout => \words[3][30]~feeder_combout\);

-- Location: FF_X26_Y12_N21
\words[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][30]~q\);

-- Location: LCCOMB_X26_Y12_N8
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\Selector33~1_combout\) # ((\Selector31~1_combout\ & \words[3][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector31~1_combout\,
	datac => \Selector33~1_combout\,
	datad => \words[3][30]~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X26_Y12_N28
\words_reg[3][30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[3][30]~combout\ = (GLOBAL(\Selector133~2clkctrl_outclk\) & ((\Selector1~1_combout\))) # (!GLOBAL(\Selector133~2clkctrl_outclk\) & (\words_reg[3][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[3][30]~combout\,
	datac => \Selector133~2clkctrl_outclk\,
	datad => \Selector1~1_combout\,
	combout => \words_reg[3][30]~combout\);

-- Location: FF_X21_Y12_N31
\words[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(91),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][27]~q\);

-- Location: LCCOMB_X21_Y12_N16
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\ & (\s_writedata[27]~input_o\ & !\s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[27]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X21_Y12_N10
\Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector36~0_combout\) # ((\Selector68~1_combout\) # ((\Selector63~2_combout\ & \words[2][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~2_combout\,
	datab => \words[2][27]~q\,
	datac => \Selector36~0_combout\,
	datad => \Selector68~1_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X21_Y12_N2
\words_reg[2][27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[2][27]~combout\ = (GLOBAL(\Selector132~0clkctrl_outclk\) & ((\Selector36~1_combout\))) # (!GLOBAL(\Selector132~0clkctrl_outclk\) & (\words_reg[2][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[2][27]~combout\,
	datac => \Selector132~0clkctrl_outclk\,
	datad => \Selector36~1_combout\,
	combout => \words_reg[2][27]~combout\);

-- Location: FF_X21_Y12_N1
\words[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][27]~q\);

-- Location: LCCOMB_X21_Y12_N20
\Selector68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[1]~input_o\ & (\s_writedata[27]~input_o\ & \s_adr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \s_writedata[27]~input_o\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\Selector68~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (\Selector68~1_combout\) # ((\Selector68~0_combout\) # ((\Selector95~1_combout\ & \words[1][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~1_combout\,
	datab => \Selector68~1_combout\,
	datac => \words[1][27]~q\,
	datad => \Selector68~0_combout\,
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X22_Y12_N12
\words_reg[1][27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][27]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & ((\Selector68~2_combout\))) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & (\words_reg[1][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[1][27]~combout\,
	datac => \Selector68~2_combout\,
	datad => \Selector131~0clkctrl_outclk\,
	combout => \words_reg[1][27]~combout\);

-- Location: FF_X27_Y12_N17
\words[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][29]~q\);

-- Location: LCCOMB_X27_Y12_N18
\Selector66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector66~2_combout\ = (\Selector66~0_combout\) # ((\Selector66~1_combout\) # ((\words[1][29]~q\ & \Selector95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~0_combout\,
	datab => \Selector66~1_combout\,
	datac => \words[1][29]~q\,
	datad => \Selector95~1_combout\,
	combout => \Selector66~2_combout\);

-- Location: LCCOMB_X27_Y12_N6
\words_reg[1][29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[1][29]~combout\ = (GLOBAL(\Selector131~0clkctrl_outclk\) & (\Selector66~2_combout\)) # (!GLOBAL(\Selector131~0clkctrl_outclk\) & ((\words_reg[1][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector131~0clkctrl_outclk\,
	datac => \Selector66~2_combout\,
	datad => \words_reg[1][29]~combout\,
	combout => \words_reg[1][29]~combout\);

-- Location: FF_X21_Y12_N5
\words[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][27]~q\);

-- Location: LCCOMB_X21_Y12_N8
\Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][27]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][27]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X21_Y12_N14
\Selector100~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = (\Selector100~0_combout\) # ((\Selector68~1_combout\) # ((\Selector127~1_combout\ & \s_writedata[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \s_writedata[27]~input_o\,
	datac => \Selector100~0_combout\,
	datad => \Selector68~1_combout\,
	combout => \Selector100~1_combout\);

-- Location: LCCOMB_X20_Y12_N12
\words_reg[0][27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][27]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector100~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words_reg[0][27]~combout\,
	datac => \Selector100~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][27]~combout\);

-- Location: FF_X28_Y12_N29
\words[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][28]~q\);

-- Location: LCCOMB_X28_Y12_N8
\Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][28]~q\ & ((\s_adr[1]~input_o\) # (\s_adr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[0]~input_o\,
	datad => \words[0][28]~q\,
	combout => \Selector99~0_combout\);

-- Location: IOIBUF_X41_Y8_N15
\s_writedata[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(28),
	o => \s_writedata[28]~input_o\);

-- Location: LCCOMB_X28_Y12_N22
\Selector99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = (\Selector35~1_combout\) # ((\Selector99~0_combout\) # ((\Selector127~1_combout\ & \s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector127~1_combout\,
	datab => \Selector35~1_combout\,
	datac => \Selector99~0_combout\,
	datad => \s_writedata[28]~input_o\,
	combout => \Selector99~1_combout\);

-- Location: LCCOMB_X30_Y12_N8
\words_reg[0][28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][28]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector99~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][28]~combout\,
	datac => \Selector99~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][28]~combout\);

-- Location: LCCOMB_X27_Y12_N2
\words[0][29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][29]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(25),
	combout => \words[0][29]~feeder_combout\);

-- Location: FF_X27_Y12_N3
\words[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][29]~q\);

-- Location: LCCOMB_X27_Y12_N28
\Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.write_mem_161083~combout\ & (\words[0][29]~q\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \words[0][29]~q\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X27_Y12_N14
\Selector98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~1_combout\ = (\Selector66~1_combout\) # ((\Selector98~0_combout\) # ((\s_writedata[29]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[29]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector66~1_combout\,
	datad => \Selector98~0_combout\,
	combout => \Selector98~1_combout\);

-- Location: LCCOMB_X26_Y11_N0
\words_reg[0][29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][29]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector98~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][29]~combout\,
	datac => \Selector130~0clkctrl_outclk\,
	datad => \Selector98~1_combout\,
	combout => \words_reg[0][29]~combout\);

-- Location: FF_X26_Y10_N5
\words[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][30]~q\);

-- Location: LCCOMB_X26_Y10_N16
\Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\words[0][30]~q\ & (\state.write_mem_161083~combout\ & ((\s_adr[0]~input_o\) # (\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][30]~q\,
	datad => \state.write_mem_161083~combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X26_Y10_N18
\Selector97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\Selector33~1_combout\) # ((\Selector97~0_combout\) # ((\s_writedata[30]~input_o\ & \Selector127~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[30]~input_o\,
	datab => \Selector127~1_combout\,
	datac => \Selector33~1_combout\,
	datad => \Selector97~0_combout\,
	combout => \Selector97~1_combout\);

-- Location: LCCOMB_X24_Y10_N24
\words_reg[0][30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words_reg[0][30]~combout\ = (GLOBAL(\Selector130~0clkctrl_outclk\) & ((\Selector97~1_combout\))) # (!GLOBAL(\Selector130~0clkctrl_outclk\) & (\words_reg[0][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \words_reg[0][30]~combout\,
	datac => \Selector97~1_combout\,
	datad => \Selector130~0clkctrl_outclk\,
	combout => \words_reg[0][30]~combout\);

-- Location: LCCOMB_X22_Y12_N20
\words[3][27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[3][27]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(123)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(123),
	combout => \words[3][27]~feeder_combout\);

-- Location: FF_X22_Y12_N21
\words[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[3][27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[3][27]~q\);

-- Location: LCCOMB_X21_Y12_N6
\Mux155~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = (\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\) # ((\words[2][27]~q\)))) # (!\s_adr[1]~input_o\ & (!\s_adr[0]~input_o\ & (\words[0][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \s_adr[0]~input_o\,
	datac => \words[0][27]~q\,
	datad => \words[2][27]~q\,
	combout => \Mux155~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Mux155~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux155~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux155~0_combout\ & ((\words[3][27]~q\))) # (!\Mux155~0_combout\ & (\words[1][27]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux155~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][27]~q\,
	datab => \s_adr[0]~input_o\,
	datac => \words[3][27]~q\,
	datad => \Mux155~0_combout\,
	combout => \Mux155~1_combout\);

-- Location: LCCOMB_X21_Y12_N0
\readdata_reg[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(27) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux155~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.read_cache_161112~clkctrl_outclk\,
	datab => readdata_reg(27),
	datad => \Mux155~1_combout\,
	combout => readdata_reg(27));

-- Location: LCCOMB_X28_Y12_N28
\Mux154~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\s_adr[1]~input_o\ & (((\s_adr[0]~input_o\)))) # (!\s_adr[1]~input_o\ & ((\s_adr[0]~input_o\ & (\words[1][28]~q\)) # (!\s_adr[0]~input_o\ & ((\words[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][28]~q\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][28]~q\,
	datad => \s_adr[0]~input_o\,
	combout => \Mux154~0_combout\);

-- Location: FF_X28_Y12_N25
\words[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(90),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][28]~q\);

-- Location: LCCOMB_X28_Y12_N0
\Mux154~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = (\Mux154~0_combout\ & ((\words[3][28]~q\) # ((!\s_adr[1]~input_o\)))) # (!\Mux154~0_combout\ & (((\s_adr[1]~input_o\ & \words[2][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][28]~q\,
	datab => \Mux154~0_combout\,
	datac => \s_adr[1]~input_o\,
	datad => \words[2][28]~q\,
	combout => \Mux154~1_combout\);

-- Location: LCCOMB_X28_Y12_N24
\readdata_reg[28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(28) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux154~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(28),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux154~1_combout\,
	combout => readdata_reg(28));

-- Location: FF_X26_Y12_N25
\words[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(89),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][29]~q\);

-- Location: LCCOMB_X27_Y12_N0
\Mux153~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\)) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & ((\words[2][29]~q\))) # (!\s_adr[1]~input_o\ & (\words[0][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][29]~q\,
	datad => \words[2][29]~q\,
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X27_Y12_N10
\Mux153~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux153~0_combout\ & ((\words[3][29]~q\))) # (!\Mux153~0_combout\ & (\words[1][29]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux153~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[1][29]~q\,
	datac => \words[3][29]~q\,
	datad => \Mux153~0_combout\,
	combout => \Mux153~1_combout\);

-- Location: LCCOMB_X27_Y12_N12
\readdata_reg[29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(29) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux153~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(29),
	datac => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux153~1_combout\,
	combout => readdata_reg(29));

-- Location: FF_X26_Y10_N25
\words[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(88),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][30]~q\);

-- Location: FF_X26_Y10_N31
\words[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][30]~q\);

-- Location: LCCOMB_X26_Y10_N22
\Mux152~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\s_adr[0]~input_o\ & (((\words[1][30]~q\) # (\s_adr[1]~input_o\)))) # (!\s_adr[0]~input_o\ & (\words[0][30]~q\ & ((!\s_adr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[0][30]~q\,
	datac => \words[1][30]~q\,
	datad => \s_adr[1]~input_o\,
	combout => \Mux152~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\Mux152~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux152~1_combout\ = (\s_adr[1]~input_o\ & ((\Mux152~0_combout\ & ((\words[3][30]~q\))) # (!\Mux152~0_combout\ & (\words[2][30]~q\)))) # (!\s_adr[1]~input_o\ & (((\Mux152~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[1]~input_o\,
	datab => \words[2][30]~q\,
	datac => \Mux152~0_combout\,
	datad => \words[3][30]~q\,
	combout => \Mux152~1_combout\);

-- Location: LCCOMB_X26_Y10_N30
\readdata_reg[30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(30) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux152~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(30),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux152~1_combout\,
	combout => readdata_reg(30));

-- Location: FF_X24_Y12_N21
\words[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][31]~q\);

-- Location: FF_X24_Y12_N15
\words[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][31]~q\);

-- Location: FF_X26_Y12_N31
\words[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(87),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][31]~q\);

-- Location: LCCOMB_X24_Y12_N16
\Mux151~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = (\s_adr[0]~input_o\ & (\s_adr[1]~input_o\)) # (!\s_adr[0]~input_o\ & ((\s_adr[1]~input_o\ & ((\words[2][31]~q\))) # (!\s_adr[1]~input_o\ & (\words[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \s_adr[1]~input_o\,
	datac => \words[0][31]~q\,
	datad => \words[2][31]~q\,
	combout => \Mux151~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Mux151~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux151~1_combout\ = (\s_adr[0]~input_o\ & ((\Mux151~0_combout\ & ((\words[3][31]~q\))) # (!\Mux151~0_combout\ & (\words[1][31]~q\)))) # (!\s_adr[0]~input_o\ & (((\Mux151~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[0]~input_o\,
	datab => \words[1][31]~q\,
	datac => \words[3][31]~q\,
	datad => \Mux151~0_combout\,
	combout => \Mux151~1_combout\);

-- Location: LCCOMB_X24_Y12_N10
\readdata_reg[31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- readdata_reg(31) = (GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & ((\Mux151~1_combout\))) # (!GLOBAL(\state.read_cache_161112~clkctrl_outclk\) & (readdata_reg(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => readdata_reg(31),
	datab => \state.read_cache_161112~clkctrl_outclk\,
	datad => \Mux151~1_combout\,
	combout => readdata_reg(31));

-- Location: LCCOMB_X20_Y13_N20
\Selector151~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = (\state.write_mem_161083~combout\ & ((\s_read~input_o\) # ((\s_write~input_o\) # (\s_adr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datab => \s_write~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[31]~input_o\,
	combout => \Selector151~0_combout\);

-- Location: LCCOMB_X20_Y13_N10
\Selector151~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector151~1_combout\ = (\state.read_mem_161141~combout\) # (\Selector151~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.read_mem_161141~combout\,
	datad => \Selector151~0_combout\,
	combout => \Selector151~1_combout\);

-- Location: CLKCTRL_G15
\Selector151~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector151~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector151~1clkctrl_outclk\);

-- Location: CLKCTRL_G16
\state.read_mem_161141~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.read_mem_161141~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.read_mem_161141~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y12_N12
\read_adr_reg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(0) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\word_counter|pre_count\(0))) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word_counter|pre_count\(0),
	datac => read_adr_reg(0),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(0));

-- Location: LCCOMB_X14_Y12_N4
\Selector136~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[0]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[0]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(0),
	combout => \Selector136~0_combout\);

-- Location: LCCOMB_X20_Y13_N2
\write_adr_reg[14]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \write_adr_reg[14]~0_combout\ = (\state.write_mem_161083~combout\ & (!\s_adr[31]~input_o\ & ((\s_read~input_o\) # (\s_write~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_read~input_o\,
	datab => \s_write~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => \s_adr[31]~input_o\,
	combout => \write_adr_reg[14]~0_combout\);

-- Location: CLKCTRL_G11
\write_adr_reg[14]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \write_adr_reg[14]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \write_adr_reg[14]~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y12_N10
\write_adr_reg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(0) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\word_counter|pre_count\(0))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datac => write_adr_reg(0),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(0));

-- Location: LCCOMB_X14_Y12_N30
\Selector136~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[31]~input_o\ & (\Selector136~0_combout\)) # (!\s_adr[31]~input_o\ & ((write_adr_reg(0)))))) # (!\state.write_mem_161083~combout\ & (((\Selector136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[31]~input_o\,
	datac => \Selector136~0_combout\,
	datad => write_adr_reg(0),
	combout => \Selector136~1_combout\);

-- Location: LCCOMB_X14_Y12_N16
\m_adr[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[0]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector136~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~1clkctrl_outclk\,
	datab => \m_adr[0]$latch~combout\,
	datac => \Selector136~1_combout\,
	combout => \m_adr[0]$latch~combout\);

-- Location: LCCOMB_X14_Y12_N24
\read_adr_reg[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(1) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\word_counter|pre_count\(1))) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datac => read_adr_reg(1),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(1));

-- Location: LCCOMB_X14_Y12_N8
\Selector137~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[1]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[1]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(1),
	combout => \Selector137~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\write_adr_reg[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(1) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((\word_counter|pre_count\(1)))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (write_adr_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_adr_reg(1),
	datac => \word_counter|pre_count\(1),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(1));

-- Location: LCCOMB_X14_Y12_N6
\Selector137~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[31]~input_o\ & (\Selector137~0_combout\)) # (!\s_adr[31]~input_o\ & ((write_adr_reg(1)))))) # (!\state.write_mem_161083~combout\ & (((\Selector137~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[31]~input_o\,
	datac => \Selector137~0_combout\,
	datad => write_adr_reg(1),
	combout => \Selector137~1_combout\);

-- Location: LCCOMB_X14_Y12_N26
\m_adr[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[1]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector137~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[1]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector137~1_combout\,
	combout => \m_adr[1]$latch~combout\);

-- Location: LCCOMB_X9_Y12_N26
\write_adr_reg[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(2) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[2]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[2]~input_o\,
	datac => \write_adr_reg[14]~0clkctrl_outclk\,
	datad => write_adr_reg(2),
	combout => write_adr_reg(2));

-- Location: LCCOMB_X9_Y12_N20
\read_adr_reg[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(2) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[2]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[2]~input_o\,
	datac => read_adr_reg(2),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(2));

-- Location: LCCOMB_X9_Y12_N16
\Selector138~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[2]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[2]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(2),
	combout => \Selector138~0_combout\);

-- Location: LCCOMB_X9_Y12_N10
\Selector138~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector138~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector138~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & (write_adr_reg(2))) # (!\state.write_mem_161083~combout\ & ((\Selector138~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => write_adr_reg(2),
	datad => \Selector138~0_combout\,
	combout => \Selector138~1_combout\);

-- Location: LCCOMB_X9_Y12_N12
\m_adr[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[2]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector138~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[2]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector138~1_combout\,
	combout => \m_adr[2]$latch~combout\);

-- Location: LCCOMB_X12_Y12_N28
\read_adr_reg[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(3) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[3]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[3]~input_o\,
	datac => read_adr_reg(3),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(3));

-- Location: LCCOMB_X12_Y12_N4
\Selector139~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[3]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[3]~input_o\,
	datad => read_adr_reg(3),
	combout => \Selector139~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\write_adr_reg[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(3) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[3]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[3]~input_o\,
	datac => write_adr_reg(3),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(3));

-- Location: LCCOMB_X12_Y12_N2
\Selector139~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector139~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector139~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(3)))) # (!\state.write_mem_161083~combout\ & (\Selector139~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector139~0_combout\,
	datad => write_adr_reg(3),
	combout => \Selector139~1_combout\);

-- Location: LCCOMB_X12_Y12_N12
\m_adr[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[3]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector139~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[3]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector139~1_combout\,
	combout => \m_adr[3]$latch~combout\);

-- Location: LCCOMB_X9_Y12_N24
\read_adr_reg[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(4) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[4]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[4]~input_o\,
	datac => read_adr_reg(4),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(4));

-- Location: LCCOMB_X9_Y12_N4
\Selector140~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[4]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[4]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(4),
	combout => \Selector140~0_combout\);

-- Location: LCCOMB_X9_Y12_N2
\write_adr_reg[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(4) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[4]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[4]~input_o\,
	datac => \write_adr_reg[14]~0clkctrl_outclk\,
	datad => write_adr_reg(4),
	combout => write_adr_reg(4));

-- Location: LCCOMB_X9_Y12_N14
\Selector140~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector140~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(4)))) # (!\state.write_mem_161083~combout\ & (\Selector140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector140~0_combout\,
	datad => write_adr_reg(4),
	combout => \Selector140~1_combout\);

-- Location: LCCOMB_X9_Y12_N22
\m_adr[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[4]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector140~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[4]$latch~combout\,
	datac => \Selector140~1_combout\,
	datad => \Selector151~1clkctrl_outclk\,
	combout => \m_adr[4]$latch~combout\);

-- Location: LCCOMB_X9_Y12_N0
\read_adr_reg[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(5) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[5]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[5]~input_o\,
	datac => read_adr_reg(5),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(5));

-- Location: LCCOMB_X9_Y12_N8
\Selector141~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[5]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[5]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(5),
	combout => \Selector141~0_combout\);

-- Location: LCCOMB_X9_Y12_N6
\write_adr_reg[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(5) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[5]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[5]~input_o\,
	datac => \write_adr_reg[14]~0clkctrl_outclk\,
	datad => write_adr_reg(5),
	combout => write_adr_reg(5));

-- Location: LCCOMB_X9_Y12_N18
\Selector141~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector141~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(5)))) # (!\state.write_mem_161083~combout\ & (\Selector141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector141~0_combout\,
	datad => write_adr_reg(5),
	combout => \Selector141~1_combout\);

-- Location: LCCOMB_X9_Y12_N28
\m_adr[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[5]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector141~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[5]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector141~1_combout\,
	combout => \m_adr[5]$latch~combout\);

-- Location: LCCOMB_X12_Y12_N14
\write_adr_reg[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(6) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[6]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[6]~input_o\,
	datac => write_adr_reg(6),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(6));

-- Location: LCCOMB_X12_Y12_N20
\read_adr_reg[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(6) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[6]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[6]~input_o\,
	datac => read_adr_reg(6),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(6));

-- Location: LCCOMB_X12_Y12_N24
\Selector142~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[6]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[6]~input_o\,
	datad => read_adr_reg(6),
	combout => \Selector142~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Selector142~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector142~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & (write_adr_reg(6))) # (!\state.write_mem_161083~combout\ & ((\Selector142~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => write_adr_reg(6),
	datad => \Selector142~0_combout\,
	combout => \Selector142~1_combout\);

-- Location: LCCOMB_X12_Y12_N30
\m_adr[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[6]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector142~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[6]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector142~1_combout\,
	combout => \m_adr[6]$latch~combout\);

-- Location: LCCOMB_X14_Y12_N14
\write_adr_reg[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(7) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[7]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[7]~input_o\,
	datac => write_adr_reg(7),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(7));

-- Location: LCCOMB_X14_Y12_N28
\read_adr_reg[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(7) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[7]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[7]~input_o\,
	datac => read_adr_reg(7),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(7));

-- Location: LCCOMB_X14_Y12_N20
\Selector143~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[7]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[7]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(7),
	combout => \Selector143~0_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Selector143~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[31]~input_o\ & ((\Selector143~0_combout\))) # (!\s_adr[31]~input_o\ & (write_adr_reg(7))))) # (!\state.write_mem_161083~combout\ & (((\Selector143~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[31]~input_o\,
	datac => write_adr_reg(7),
	datad => \Selector143~0_combout\,
	combout => \Selector143~1_combout\);

-- Location: LCCOMB_X14_Y12_N0
\m_adr[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[7]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector143~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[7]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector143~1_combout\,
	combout => \m_adr[7]$latch~combout\);

-- Location: LCCOMB_X12_Y12_N22
\write_adr_reg[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(8) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[8]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[8]~input_o\,
	datac => write_adr_reg(8),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(8));

-- Location: LCCOMB_X12_Y12_N16
\read_adr_reg[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(8) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[8]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[8]~input_o\,
	datac => read_adr_reg(8),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(8));

-- Location: LCCOMB_X12_Y12_N0
\Selector144~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[8]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \s_adr[8]~input_o\,
	datad => read_adr_reg(8),
	combout => \Selector144~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
\Selector144~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector144~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector144~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & (write_adr_reg(8))) # (!\state.write_mem_161083~combout\ & ((\Selector144~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => write_adr_reg(8),
	datad => \Selector144~0_combout\,
	combout => \Selector144~1_combout\);

-- Location: LCCOMB_X12_Y12_N8
\m_adr[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[8]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector144~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[8]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector144~1_combout\,
	combout => \m_adr[8]$latch~combout\);

-- Location: LCCOMB_X24_Y9_N20
\read_adr_reg[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(9) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[9]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[9]~input_o\,
	datac => read_adr_reg(9),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(9));

-- Location: LCCOMB_X24_Y9_N8
\Selector145~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector145~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[9]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[9]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(9),
	combout => \Selector145~0_combout\);

-- Location: LCCOMB_X24_Y9_N18
\write_adr_reg[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(9) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (\s_adr[9]~input_o\)) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[9]~input_o\,
	datac => \write_adr_reg[14]~0clkctrl_outclk\,
	datad => write_adr_reg(9),
	combout => write_adr_reg(9));

-- Location: LCCOMB_X24_Y9_N10
\Selector145~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector145~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector145~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(9)))) # (!\state.write_mem_161083~combout\ & (\Selector145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector145~0_combout\,
	datad => write_adr_reg(9),
	combout => \Selector145~1_combout\);

-- Location: LCCOMB_X24_Y9_N12
\m_adr[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[9]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector145~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[9]$latch~combout\,
	datab => \Selector151~1clkctrl_outclk\,
	datad => \Selector145~1_combout\,
	combout => \m_adr[9]$latch~combout\);

-- Location: LCCOMB_X24_Y9_N22
\write_adr_reg[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(10) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (line_tag(0))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line_tag(0),
	datac => \write_adr_reg[14]~0clkctrl_outclk\,
	datad => write_adr_reg(10),
	combout => write_adr_reg(10));

-- Location: LCCOMB_X24_Y9_N16
\read_adr_reg[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(10) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[10]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[10]~input_o\,
	datab => read_adr_reg(10),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(10));

-- Location: LCCOMB_X24_Y9_N28
\Selector146~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector146~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[10]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[10]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datad => read_adr_reg(10),
	combout => \Selector146~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
\Selector146~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector146~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector146~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & (write_adr_reg(10))) # (!\state.write_mem_161083~combout\ & ((\Selector146~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => write_adr_reg(10),
	datad => \Selector146~0_combout\,
	combout => \Selector146~1_combout\);

-- Location: LCCOMB_X24_Y9_N14
\m_adr[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[10]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector146~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector151~1clkctrl_outclk\,
	datac => \m_adr[10]$latch~combout\,
	datad => \Selector146~1_combout\,
	combout => \m_adr[10]$latch~combout\);

-- Location: LCCOMB_X24_Y9_N30
\read_adr_reg[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(11) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[11]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[11]~input_o\,
	datac => read_adr_reg(11),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(11));

-- Location: LCCOMB_X24_Y9_N4
\Selector147~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector147~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[11]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[11]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => read_adr_reg(11),
	combout => \Selector147~0_combout\);

-- Location: FF_X24_Y9_N3
\line_tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(1));

-- Location: LCCOMB_X24_Y9_N2
\write_adr_reg[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(11) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (line_tag(1))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((write_adr_reg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_adr_reg[14]~0clkctrl_outclk\,
	datac => line_tag(1),
	datad => write_adr_reg(11),
	combout => write_adr_reg(11));

-- Location: LCCOMB_X24_Y9_N26
\Selector147~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector147~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector147~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(11)))) # (!\state.write_mem_161083~combout\ & (\Selector147~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector147~0_combout\,
	datad => write_adr_reg(11),
	combout => \Selector147~1_combout\);

-- Location: LCCOMB_X24_Y9_N0
\m_adr[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[11]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector147~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[11]$latch~combout\,
	datac => \Selector147~1_combout\,
	datad => \Selector151~1clkctrl_outclk\,
	combout => \m_adr[11]$latch~combout\);

-- Location: LCCOMB_X26_Y13_N6
\read_adr_reg[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(12) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[12]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[12]~input_o\,
	datac => read_adr_reg(12),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(12));

-- Location: LCCOMB_X26_Y13_N4
\Selector148~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector148~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[12]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[12]~input_o\,
	datad => read_adr_reg(12),
	combout => \Selector148~0_combout\);

-- Location: LCCOMB_X26_Y13_N16
\line_tag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[2]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(20),
	combout => \line_tag[2]~feeder_combout\);

-- Location: FF_X26_Y13_N17
\line_tag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(2));

-- Location: LCCOMB_X26_Y13_N20
\write_adr_reg[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(12) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((line_tag(2)))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (write_adr_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_adr_reg(12),
	datac => line_tag(2),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(12));

-- Location: LCCOMB_X26_Y13_N10
\Selector148~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector148~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector148~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(12)))) # (!\state.write_mem_161083~combout\ & (\Selector148~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector148~0_combout\,
	datad => write_adr_reg(12),
	combout => \Selector148~1_combout\);

-- Location: LCCOMB_X26_Y13_N24
\m_adr[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[12]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector148~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_adr[12]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector148~1_combout\,
	combout => \m_adr[12]$latch~combout\);

-- Location: LCCOMB_X26_Y13_N18
\read_adr_reg[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(13) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[13]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[13]~input_o\,
	datac => read_adr_reg(13),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(13));

-- Location: LCCOMB_X26_Y13_N8
\Selector149~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[13]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[13]~input_o\,
	datad => read_adr_reg(13),
	combout => \Selector149~0_combout\);

-- Location: FF_X26_Y13_N27
\line_tag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(3));

-- Location: LCCOMB_X26_Y13_N28
\write_adr_reg[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(13) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((line_tag(3)))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (write_adr_reg(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_adr_reg(13),
	datac => line_tag(3),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(13));

-- Location: LCCOMB_X26_Y13_N2
\Selector149~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector149~1_combout\ = (\s_adr[31]~input_o\ & (((\Selector149~0_combout\)))) # (!\s_adr[31]~input_o\ & ((\state.write_mem_161083~combout\ & ((write_adr_reg(13)))) # (!\state.write_mem_161083~combout\ & (\Selector149~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \state.write_mem_161083~combout\,
	datac => \Selector149~0_combout\,
	datad => write_adr_reg(13),
	combout => \Selector149~1_combout\);

-- Location: LCCOMB_X26_Y13_N30
\m_adr[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[13]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector149~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[13]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector149~1_combout\,
	combout => \m_adr[13]$latch~combout\);

-- Location: LCCOMB_X19_Y12_N18
\read_adr_reg[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- read_adr_reg(14) = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\s_adr[14]~input_o\)) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((read_adr_reg(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[14]~input_o\,
	datac => read_adr_reg(14),
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => read_adr_reg(14));

-- Location: LCCOMB_X19_Y12_N8
\Selector150~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = (\state.write_mem_161083~combout\ & (\s_adr[14]~input_o\)) # (!\state.write_mem_161083~combout\ & ((read_adr_reg(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[14]~input_o\,
	datac => \state.write_mem_161083~combout\,
	datad => read_adr_reg(14),
	combout => \Selector150~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\line_tag[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \line_tag[4]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(18),
	combout => \line_tag[4]~feeder_combout\);

-- Location: FF_X19_Y12_N17
\line_tag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \line_tag[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line_tag(4));

-- Location: LCCOMB_X19_Y12_N24
\write_adr_reg[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- write_adr_reg(14) = (GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & ((line_tag(4)))) # (!GLOBAL(\write_adr_reg[14]~0clkctrl_outclk\) & (write_adr_reg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_adr_reg(14),
	datac => line_tag(4),
	datad => \write_adr_reg[14]~0clkctrl_outclk\,
	combout => write_adr_reg(14));

-- Location: LCCOMB_X19_Y12_N10
\Selector150~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector150~1_combout\ = (\state.write_mem_161083~combout\ & ((\s_adr[31]~input_o\ & (\Selector150~0_combout\)) # (!\s_adr[31]~input_o\ & ((write_adr_reg(14)))))) # (!\state.write_mem_161083~combout\ & (((\Selector150~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_mem_161083~combout\,
	datab => \s_adr[31]~input_o\,
	datac => \Selector150~0_combout\,
	datad => write_adr_reg(14),
	combout => \Selector150~1_combout\);

-- Location: LCCOMB_X19_Y12_N22
\m_adr[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_adr[14]$latch~combout\ = (GLOBAL(\Selector151~1clkctrl_outclk\) & ((\Selector150~1_combout\))) # (!GLOBAL(\Selector151~1clkctrl_outclk\) & (\m_adr[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_adr[14]$latch~combout\,
	datac => \Selector151~1clkctrl_outclk\,
	datad => \Selector150~1_combout\,
	combout => \m_adr[14]$latch~combout\);

-- Location: LCCOMB_X24_Y13_N30
\m_read~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_read~0_combout\ = (\m_waitrequest~input_o\ & ((!\word_counter|pre_count\(1)) # (!\word_counter|pre_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datac => \m_waitrequest~input_o\,
	datad => \word_counter|pre_count\(1),
	combout => \m_read~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\m_read$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_read$latch~combout\ = (GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & ((\m_read~0_combout\))) # (!GLOBAL(\state.read_mem_161141~clkctrl_outclk\) & (\m_read$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_read$latch~combout\,
	datac => \m_read~0_combout\,
	datad => \state.read_mem_161141~clkctrl_outclk\,
	combout => \m_read$latch~combout\);

-- Location: LCCOMB_X19_Y13_N24
\m_write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_write~0_combout\ = (\m_waitrequest~input_o\) # ((\s_adr[31]~input_o\) # ((!\s_write~input_o\ & !\s_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_write~input_o\,
	datab => \s_read~input_o\,
	datac => \m_waitrequest~input_o\,
	datad => \s_adr[31]~input_o\,
	combout => \m_write~0_combout\);

-- Location: LCCOMB_X19_Y13_N8
\m_write$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_write$latch~combout\ = (\state.write_mem_161083~combout\ & ((\m_write~0_combout\))) # (!\state.write_mem_161083~combout\ & (\m_write$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_mem_161083~combout\,
	datac => \m_write$latch~combout\,
	datad => \m_write~0_combout\,
	combout => \m_write$latch~combout\);

-- Location: CLKCTRL_G18
\Selector151~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector151~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector151~0clkctrl_outclk\);

-- Location: IOIBUF_X41_Y19_N22
\s_writedata[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(0),
	o => \s_writedata[0]~input_o\);

-- Location: LCCOMB_X24_Y13_N16
\m_writedata[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[0]~0_combout\ = (\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1)) # ((\words[1][0]~q\)))) # (!\word_counter|pre_count\(0) & (!\word_counter|pre_count\(1) & ((\words[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \word_counter|pre_count\(1),
	datac => \words[1][0]~q\,
	datad => \words[0][0]~q\,
	combout => \m_writedata[0]~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\m_writedata[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[0]~1_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[0]~0_combout\ & ((\words[3][0]~q\))) # (!\m_writedata[0]~0_combout\ & (\words[2][0]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[2][0]~q\,
	datac => \words[3][0]~q\,
	datad => \m_writedata[0]~0_combout\,
	combout => \m_writedata[0]~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\m_writedata[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[0]~2_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[0]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[0]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[0]~1_combout\,
	combout => \m_writedata[0]~2_combout\);

-- Location: LCCOMB_X24_Y13_N4
\m_writedata[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[0]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[0]~2_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[0]$latch~combout\,
	datac => \Selector151~0clkctrl_outclk\,
	datad => \m_writedata[0]~2_combout\,
	combout => \m_writedata[0]$latch~combout\);

-- Location: LCCOMB_X23_Y14_N20
\words[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][1]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(117)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(117),
	combout => \words[2][1]~feeder_combout\);

-- Location: FF_X23_Y14_N21
\words[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][1]~q\);

-- Location: LCCOMB_X23_Y14_N16
\m_writedata[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[1]~3_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1)) # (\words[1][1]~q\)))) # (!\word_counter|pre_count\(0) & (\words[0][1]~q\ & (!\word_counter|pre_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][1]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \word_counter|pre_count\(1),
	datad => \words[1][1]~q\,
	combout => \m_writedata[1]~3_combout\);

-- Location: LCCOMB_X23_Y14_N30
\m_writedata[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[1]~4_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[1]~3_combout\ & (\words[3][1]~q\)) # (!\m_writedata[1]~3_combout\ & ((\words[2][1]~q\))))) # (!\word_counter|pre_count\(1) & (((\m_writedata[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][1]~q\,
	datab => \words[2][1]~q\,
	datac => \word_counter|pre_count\(1),
	datad => \m_writedata[1]~3_combout\,
	combout => \m_writedata[1]~4_combout\);

-- Location: LCCOMB_X23_Y14_N4
\m_writedata[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[1]~5_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[1]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[1]~input_o\,
	datac => \m_writedata[1]~4_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[1]~5_combout\);

-- Location: LCCOMB_X23_Y14_N10
\m_writedata[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[1]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[1]~5_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[1]$latch~combout\,
	datad => \m_writedata[1]~5_combout\,
	combout => \m_writedata[1]$latch~combout\);

-- Location: LCCOMB_X23_Y14_N22
\m_writedata[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[2]~6_combout\ = (\word_counter|pre_count\(0) & (((\words[3][2]~q\) # (!\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (\words[2][2]~q\ & ((\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[2][2]~q\,
	datac => \words[3][2]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[2]~6_combout\);

-- Location: LCCOMB_X23_Y14_N8
\m_writedata[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[2]~7_combout\ = (\word_counter|pre_count\(1) & (((\m_writedata[2]~6_combout\)))) # (!\word_counter|pre_count\(1) & ((\m_writedata[2]~6_combout\ & (\words[1][2]~q\)) # (!\m_writedata[2]~6_combout\ & ((\words[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[1][2]~q\,
	datac => \m_writedata[2]~6_combout\,
	datad => \words[0][2]~q\,
	combout => \m_writedata[2]~7_combout\);

-- Location: LCCOMB_X23_Y14_N26
\m_writedata[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[2]~8_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[2]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[2]~input_o\,
	datac => \m_writedata[2]~7_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[2]~8_combout\);

-- Location: LCCOMB_X23_Y14_N24
\m_writedata[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[2]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[2]~8_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[2]$latch~combout\,
	datad => \m_writedata[2]~8_combout\,
	combout => \m_writedata[2]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N20
\m_writedata[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[3]~9_combout\ = (\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & ((\words[3][3]~q\))) # (!\word_counter|pre_count\(1) & (\words[1][3]~q\)))) # (!\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][3]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \words[3][3]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[3]~9_combout\);

-- Location: LCCOMB_X26_Y18_N18
\m_writedata[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[3]~10_combout\ = (\word_counter|pre_count\(0) & (((\m_writedata[3]~9_combout\)))) # (!\word_counter|pre_count\(0) & ((\m_writedata[3]~9_combout\ & (\words[2][3]~q\)) # (!\m_writedata[3]~9_combout\ & ((\words[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][3]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \words[0][3]~q\,
	datad => \m_writedata[3]~9_combout\,
	combout => \m_writedata[3]~10_combout\);

-- Location: LCCOMB_X26_Y18_N28
\m_writedata[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[3]~11_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[3]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[3]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[3]~10_combout\,
	combout => \m_writedata[3]~11_combout\);

-- Location: LCCOMB_X26_Y18_N14
\m_writedata[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[3]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[3]~11_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[3]$latch~combout\,
	datad => \m_writedata[3]~11_combout\,
	combout => \m_writedata[3]$latch~combout\);

-- Location: IOIBUF_X26_Y29_N8
\s_writedata[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(4),
	o => \s_writedata[4]~input_o\);

-- Location: LCCOMB_X26_Y15_N26
\words[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[0][4]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_block[0][150]__1|auto_generated|q_a\(50),
	combout => \words[0][4]~feeder_combout\);

-- Location: FF_X26_Y15_N27
\words[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[0][4]~q\);

-- Location: LCCOMB_X26_Y15_N0
\m_writedata[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[4]~12_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & (\words[2][4]~q\)) # (!\word_counter|pre_count\(1) & ((\words[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][4]~q\,
	datab => \words[0][4]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[4]~12_combout\);

-- Location: LCCOMB_X26_Y15_N6
\m_writedata[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[4]~13_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[4]~12_combout\ & ((\words[3][4]~q\))) # (!\m_writedata[4]~12_combout\ & (\words[1][4]~q\)))) # (!\word_counter|pre_count\(0) & (((\m_writedata[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][4]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \words[3][4]~q\,
	datad => \m_writedata[4]~12_combout\,
	combout => \m_writedata[4]~13_combout\);

-- Location: LCCOMB_X26_Y15_N4
\m_writedata[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[4]~14_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[4]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[4]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[4]~13_combout\,
	combout => \m_writedata[4]~14_combout\);

-- Location: LCCOMB_X26_Y15_N18
\m_writedata[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[4]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[4]~14_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[4]$latch~combout\,
	datac => \m_writedata[4]~14_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[4]$latch~combout\);

-- Location: LCCOMB_X26_Y15_N10
\m_writedata[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[5]~15_combout\ = (\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & (\words[1][5]~q\)) # (!\word_counter|pre_count\(0) & ((\words[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][5]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[0][5]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[5]~15_combout\);

-- Location: LCCOMB_X26_Y15_N12
\m_writedata[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[5]~16_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[5]~15_combout\ & (\words[3][5]~q\)) # (!\m_writedata[5]~15_combout\ & ((\words[2][5]~q\))))) # (!\word_counter|pre_count\(1) & (((\m_writedata[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][5]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[2][5]~q\,
	datad => \m_writedata[5]~15_combout\,
	combout => \m_writedata[5]~16_combout\);

-- Location: LCCOMB_X26_Y15_N14
\m_writedata[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[5]~17_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[5]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[5]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[5]~input_o\,
	datab => \s_adr[31]~input_o\,
	datad => \m_writedata[5]~16_combout\,
	combout => \m_writedata[5]~17_combout\);

-- Location: LCCOMB_X26_Y15_N20
\m_writedata[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[5]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[5]~17_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[5]$latch~combout\,
	datac => \m_writedata[5]~17_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[5]$latch~combout\);

-- Location: LCCOMB_X26_Y14_N4
\m_writedata[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[6]~18_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & ((\words[2][6]~q\))) # (!\word_counter|pre_count\(1) & (\words[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[0][6]~q\,
	datac => \words[2][6]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[6]~18_combout\);

-- Location: LCCOMB_X26_Y14_N14
\m_writedata[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[6]~19_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[6]~18_combout\ & (\words[3][6]~q\)) # (!\m_writedata[6]~18_combout\ & ((\words[1][6]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[3][6]~q\,
	datac => \m_writedata[6]~18_combout\,
	datad => \words[1][6]~q\,
	combout => \m_writedata[6]~19_combout\);

-- Location: LCCOMB_X26_Y14_N0
\m_writedata[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[6]~20_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[6]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[6]~input_o\,
	datac => \m_writedata[6]~19_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[6]~20_combout\);

-- Location: LCCOMB_X26_Y14_N28
\m_writedata[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[6]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[6]~20_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[6]$latch~combout\,
	datad => \m_writedata[6]~20_combout\,
	combout => \m_writedata[6]$latch~combout\);

-- Location: LCCOMB_X22_Y14_N4
\m_writedata[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[7]~21_combout\ = (\word_counter|pre_count\(0) & ((\words[1][7]~q\) # ((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((\words[0][7]~q\ & !\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][7]~q\,
	datab => \words[0][7]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[7]~21_combout\);

-- Location: LCCOMB_X22_Y14_N14
\m_writedata[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[7]~22_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[7]~21_combout\ & ((\words[3][7]~q\))) # (!\m_writedata[7]~21_combout\ & (\words[2][7]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[7]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[2][7]~q\,
	datac => \words[3][7]~q\,
	datad => \m_writedata[7]~21_combout\,
	combout => \m_writedata[7]~22_combout\);

-- Location: LCCOMB_X22_Y14_N28
\m_writedata[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[7]~23_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[7]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[7]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[7]~input_o\,
	datac => \m_writedata[7]~22_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[7]~23_combout\);

-- Location: LCCOMB_X22_Y14_N22
\m_writedata[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[7]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[7]~23_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[7]$latch~combout\,
	datab => \m_writedata[7]~23_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[7]$latch~combout\);

-- Location: LCCOMB_X21_Y14_N26
\m_writedata[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[8]~24_combout\ = (\word_counter|pre_count\(1) & (((\words[2][8]~q\) # (\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & (\words[0][8]~q\ & ((!\word_counter|pre_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][8]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[2][8]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[8]~24_combout\);

-- Location: LCCOMB_X21_Y14_N4
\m_writedata[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[8]~25_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[8]~24_combout\ & ((\words[3][8]~q\))) # (!\m_writedata[8]~24_combout\ & (\words[1][8]~q\)))) # (!\word_counter|pre_count\(0) & (((\m_writedata[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][8]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \m_writedata[8]~24_combout\,
	datad => \words[3][8]~q\,
	combout => \m_writedata[8]~25_combout\);

-- Location: LCCOMB_X21_Y14_N14
\m_writedata[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[8]~26_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[8]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[8]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[8]~input_o\,
	datac => \m_writedata[8]~25_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[8]~26_combout\);

-- Location: LCCOMB_X21_Y14_N8
\m_writedata[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[8]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[8]~26_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[8]$latch~combout\,
	datab => \m_writedata[8]~26_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[8]$latch~combout\);

-- Location: LCCOMB_X12_Y17_N30
\m_writedata[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[9]~27_combout\ = (\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & ((\words[1][9]~q\))) # (!\word_counter|pre_count\(0) & (\words[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[0][9]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \words[1][9]~q\,
	combout => \m_writedata[9]~27_combout\);

-- Location: LCCOMB_X12_Y17_N8
\m_writedata[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[9]~28_combout\ = (\m_writedata[9]~27_combout\ & (((\words[3][9]~q\) # (!\word_counter|pre_count\(1))))) # (!\m_writedata[9]~27_combout\ & (\words[2][9]~q\ & ((\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][9]~q\,
	datab => \words[3][9]~q\,
	datac => \m_writedata[9]~27_combout\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[9]~28_combout\);

-- Location: LCCOMB_X12_Y17_N22
\m_writedata[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[9]~29_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[9]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[9]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[31]~input_o\,
	datac => \m_writedata[9]~28_combout\,
	datad => \s_writedata[9]~input_o\,
	combout => \m_writedata[9]~29_combout\);

-- Location: LCCOMB_X12_Y17_N16
\m_writedata[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[9]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[9]~29_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[9]$latch~combout\,
	datad => \m_writedata[9]~29_combout\,
	combout => \m_writedata[9]$latch~combout\);

-- Location: FF_X14_Y16_N13
\words[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(108),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][10]~q\);

-- Location: LCCOMB_X14_Y16_N26
\m_writedata[10]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[10]~30_combout\ = (\word_counter|pre_count\(1) & (((\words[2][10]~q\) # (\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & (\words[0][10]~q\ & ((!\word_counter|pre_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][10]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[2][10]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[10]~30_combout\);

-- Location: FF_X14_Y16_N31
\words[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(76),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][10]~q\);

-- Location: LCCOMB_X14_Y16_N8
\m_writedata[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[10]~31_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[10]~30_combout\ & (\words[3][10]~q\)) # (!\m_writedata[10]~30_combout\ & ((\words[1][10]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[10]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[3][10]~q\,
	datac => \m_writedata[10]~30_combout\,
	datad => \words[1][10]~q\,
	combout => \m_writedata[10]~31_combout\);

-- Location: LCCOMB_X14_Y16_N10
\m_writedata[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[10]~32_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[10]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[10]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[10]~input_o\,
	datac => \m_writedata[10]~31_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[10]~32_combout\);

-- Location: LCCOMB_X14_Y16_N4
\m_writedata[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[10]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[10]~32_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[10]~32_combout\,
	datab => \m_writedata[10]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[10]$latch~combout\);

-- Location: LCCOMB_X16_Y16_N28
\m_writedata[11]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[11]~33_combout\ = (\word_counter|pre_count\(0) & (((\words[1][11]~q\) # (\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (\words[0][11]~q\ & ((!\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][11]~q\,
	datab => \words[1][11]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[11]~33_combout\);

-- Location: LCCOMB_X16_Y16_N30
\m_writedata[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[11]~34_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[11]~33_combout\ & (\words[3][11]~q\)) # (!\m_writedata[11]~33_combout\ & ((\words[2][11]~q\))))) # (!\word_counter|pre_count\(1) & (\m_writedata[11]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \m_writedata[11]~33_combout\,
	datac => \words[3][11]~q\,
	datad => \words[2][11]~q\,
	combout => \m_writedata[11]~34_combout\);

-- Location: LCCOMB_X16_Y16_N0
\m_writedata[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[11]~35_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[11]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[11]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[11]~input_o\,
	datab => \s_adr[31]~input_o\,
	datad => \m_writedata[11]~34_combout\,
	combout => \m_writedata[11]~35_combout\);

-- Location: LCCOMB_X16_Y16_N14
\m_writedata[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[11]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[11]~35_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[11]~35_combout\,
	datac => \m_writedata[11]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[11]$latch~combout\);

-- Location: LCCOMB_X15_Y17_N4
\m_writedata[12]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[12]~36_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & ((\words[2][12]~q\))) # (!\word_counter|pre_count\(1) & (\words[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[0][12]~q\,
	datac => \words[2][12]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[12]~36_combout\);

-- Location: LCCOMB_X15_Y17_N30
\m_writedata[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[12]~37_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[12]~36_combout\ & (\words[3][12]~q\)) # (!\m_writedata[12]~36_combout\ & ((\words[1][12]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[12]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][12]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \m_writedata[12]~36_combout\,
	datad => \words[1][12]~q\,
	combout => \m_writedata[12]~37_combout\);

-- Location: LCCOMB_X15_Y17_N28
\m_writedata[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[12]~38_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[12]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[12]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[12]~input_o\,
	datac => \m_writedata[12]~37_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[12]~38_combout\);

-- Location: LCCOMB_X15_Y17_N22
\m_writedata[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[12]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[12]~38_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[12]$latch~combout\,
	datab => \Selector151~0clkctrl_outclk\,
	datad => \m_writedata[12]~38_combout\,
	combout => \m_writedata[12]$latch~combout\);

-- Location: LCCOMB_X10_Y14_N8
\m_writedata[13]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[13]~39_combout\ = (\word_counter|pre_count\(0) & ((\words[1][13]~q\) # ((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((\words[0][13]~q\ & !\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[1][13]~q\,
	datac => \words[0][13]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[13]~39_combout\);

-- Location: LCCOMB_X10_Y14_N26
\m_writedata[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[13]~40_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[13]~39_combout\ & (\words[3][13]~q\)) # (!\m_writedata[13]~39_combout\ & ((\words[2][13]~q\))))) # (!\word_counter|pre_count\(1) & (((\m_writedata[13]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][13]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \m_writedata[13]~39_combout\,
	datad => \words[2][13]~q\,
	combout => \m_writedata[13]~40_combout\);

-- Location: LCCOMB_X10_Y14_N12
\m_writedata[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[13]~41_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[13]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[13]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[13]~input_o\,
	datac => \m_writedata[13]~40_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[13]~41_combout\);

-- Location: LCCOMB_X10_Y14_N24
\m_writedata[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[13]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[13]~41_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[13]~41_combout\,
	datab => \m_writedata[13]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[13]$latch~combout\);

-- Location: LCCOMB_X14_Y18_N12
\words[2][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \words[2][14]~feeder_combout\ = \ram_block[0][150]__1|auto_generated|q_a\(104)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_block[0][150]__1|auto_generated|q_a\(104),
	combout => \words[2][14]~feeder_combout\);

-- Location: FF_X14_Y18_N13
\words[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \words[2][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[2][14]~q\);

-- Location: LCCOMB_X14_Y18_N26
\m_writedata[14]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[14]~42_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & (\words[2][14]~q\)) # (!\word_counter|pre_count\(1) & ((\words[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[2][14]~q\,
	datac => \words[0][14]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[14]~42_combout\);

-- Location: LCCOMB_X14_Y18_N8
\m_writedata[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[14]~43_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[14]~42_combout\ & ((\words[3][14]~q\))) # (!\m_writedata[14]~42_combout\ & (\words[1][14]~q\)))) # (!\word_counter|pre_count\(0) & (((\m_writedata[14]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[1][14]~q\,
	datac => \m_writedata[14]~42_combout\,
	datad => \words[3][14]~q\,
	combout => \m_writedata[14]~43_combout\);

-- Location: LCCOMB_X14_Y18_N30
\m_writedata[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[14]~44_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[14]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[14]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[14]~input_o\,
	datac => \m_writedata[14]~43_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[14]~44_combout\);

-- Location: LCCOMB_X14_Y18_N6
\m_writedata[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[14]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[14]~44_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[14]$latch~combout\,
	datad => \m_writedata[14]~44_combout\,
	combout => \m_writedata[14]$latch~combout\);

-- Location: LCCOMB_X14_Y14_N12
\m_writedata[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[15]~47_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[15]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[15]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[15]~46_combout\,
	datab => \s_writedata[15]~input_o\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[15]~47_combout\);

-- Location: LCCOMB_X14_Y14_N20
\m_writedata[15]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[15]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[15]~47_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[15]~47_combout\,
	datab => \m_writedata[15]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[15]$latch~combout\);

-- Location: LCCOMB_X12_Y14_N26
\m_writedata[16]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[16]~48_combout\ = (\word_counter|pre_count\(0) & ((\words[3][16]~q\) # ((!\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((\words[2][16]~q\ & \word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[3][16]~q\,
	datac => \words[2][16]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[16]~48_combout\);

-- Location: LCCOMB_X12_Y14_N8
\m_writedata[16]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[16]~49_combout\ = (\word_counter|pre_count\(1) & (((\m_writedata[16]~48_combout\)))) # (!\word_counter|pre_count\(1) & ((\m_writedata[16]~48_combout\ & ((\words[1][16]~q\))) # (!\m_writedata[16]~48_combout\ & (\words[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[0][16]~q\,
	datac => \m_writedata[16]~48_combout\,
	datad => \words[1][16]~q\,
	combout => \m_writedata[16]~49_combout\);

-- Location: LCCOMB_X12_Y14_N22
\m_writedata[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[16]~50_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[16]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[16]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[31]~input_o\,
	datac => \m_writedata[16]~49_combout\,
	datad => \s_writedata[16]~input_o\,
	combout => \m_writedata[16]~50_combout\);

-- Location: LCCOMB_X12_Y14_N2
\m_writedata[16]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[16]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[16]~50_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[16]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[16]~50_combout\,
	datab => \m_writedata[16]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[16]$latch~combout\);

-- Location: LCCOMB_X15_Y14_N26
\m_writedata[17]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[17]~51_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1)) # (\words[1][17]~q\)))) # (!\word_counter|pre_count\(0) & (\words[0][17]~q\ & (!\word_counter|pre_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][17]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \word_counter|pre_count\(1),
	datad => \words[1][17]~q\,
	combout => \m_writedata[17]~51_combout\);

-- Location: LCCOMB_X15_Y14_N0
\m_writedata[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[17]~52_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[17]~51_combout\ & (\words[3][17]~q\)) # (!\m_writedata[17]~51_combout\ & ((\words[2][17]~q\))))) # (!\word_counter|pre_count\(1) & (((\m_writedata[17]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][17]~q\,
	datab => \words[2][17]~q\,
	datac => \word_counter|pre_count\(1),
	datad => \m_writedata[17]~51_combout\,
	combout => \m_writedata[17]~52_combout\);

-- Location: LCCOMB_X15_Y14_N18
\m_writedata[17]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[17]~53_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[17]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[17]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[17]~52_combout\,
	datac => \s_writedata[17]~input_o\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[17]~53_combout\);

-- Location: LCCOMB_X15_Y14_N30
\m_writedata[17]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[17]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[17]~53_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[17]$latch~combout\,
	datab => \m_writedata[17]~53_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[17]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N2
\m_writedata[18]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[18]~54_combout\ = (\word_counter|pre_count\(0) & (((\words[3][18]~q\) # (!\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (\words[2][18]~q\ & ((\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][18]~q\,
	datab => \words[3][18]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[18]~54_combout\);

-- Location: LCCOMB_X26_Y18_N16
\m_writedata[18]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[18]~55_combout\ = (\word_counter|pre_count\(1) & (((\m_writedata[18]~54_combout\)))) # (!\word_counter|pre_count\(1) & ((\m_writedata[18]~54_combout\ & (\words[1][18]~q\)) # (!\m_writedata[18]~54_combout\ & ((\words[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[1][18]~q\,
	datac => \words[0][18]~q\,
	datad => \m_writedata[18]~54_combout\,
	combout => \m_writedata[18]~55_combout\);

-- Location: LCCOMB_X26_Y18_N10
\m_writedata[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[18]~56_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[18]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[18]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[18]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[18]~55_combout\,
	combout => \m_writedata[18]~56_combout\);

-- Location: LCCOMB_X26_Y18_N8
\m_writedata[18]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[18]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[18]~56_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[18]$latch~combout\,
	datac => \Selector151~0clkctrl_outclk\,
	datad => \m_writedata[18]~56_combout\,
	combout => \m_writedata[18]$latch~combout\);

-- Location: LCCOMB_X24_Y17_N18
\m_writedata[19]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[19]~57_combout\ = (\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & ((\words[1][19]~q\))) # (!\word_counter|pre_count\(0) & (\words[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][19]~q\,
	datab => \words[1][19]~q\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[19]~57_combout\);

-- Location: LCCOMB_X24_Y17_N20
\m_writedata[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[19]~58_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[19]~57_combout\ & ((\words[3][19]~q\))) # (!\m_writedata[19]~57_combout\ & (\words[2][19]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[19]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][19]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[3][19]~q\,
	datad => \m_writedata[19]~57_combout\,
	combout => \m_writedata[19]~58_combout\);

-- Location: LCCOMB_X24_Y17_N26
\m_writedata[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[19]~59_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[19]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[19]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[31]~input_o\,
	datac => \s_writedata[19]~input_o\,
	datad => \m_writedata[19]~58_combout\,
	combout => \m_writedata[19]~59_combout\);

-- Location: LCCOMB_X24_Y17_N2
\m_writedata[19]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[19]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[19]~59_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[19]$latch~combout\,
	datad => \m_writedata[19]~59_combout\,
	combout => \m_writedata[19]$latch~combout\);

-- Location: LCCOMB_X28_Y17_N10
\m_writedata[20]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[20]~60_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & (\words[2][20]~q\)) # (!\word_counter|pre_count\(1) & ((\words[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][20]~q\,
	datab => \words[0][20]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[20]~60_combout\);

-- Location: LCCOMB_X28_Y17_N28
\m_writedata[20]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[20]~61_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[20]~60_combout\ & (\words[3][20]~q\)) # (!\m_writedata[20]~60_combout\ & ((\words[1][20]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[20]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[3][20]~q\,
	datac => \words[1][20]~q\,
	datad => \m_writedata[20]~60_combout\,
	combout => \m_writedata[20]~61_combout\);

-- Location: LCCOMB_X28_Y17_N6
\m_writedata[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[20]~62_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[20]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[20]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[20]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[20]~61_combout\,
	combout => \m_writedata[20]~62_combout\);

-- Location: LCCOMB_X28_Y17_N18
\m_writedata[20]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[20]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[20]~62_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[20]$latch~combout\,
	datad => \m_writedata[20]~62_combout\,
	combout => \m_writedata[20]$latch~combout\);

-- Location: LCCOMB_X23_Y17_N22
\m_writedata[21]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[21]~63_combout\ = (\word_counter|pre_count\(1) & (((\words[3][21]~q\) # (!\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & (\words[1][21]~q\ & ((\word_counter|pre_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[1][21]~q\,
	datac => \words[3][21]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[21]~63_combout\);

-- Location: LCCOMB_X23_Y17_N8
\m_writedata[21]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[21]~64_combout\ = (\word_counter|pre_count\(0) & (((\m_writedata[21]~63_combout\)))) # (!\word_counter|pre_count\(0) & ((\m_writedata[21]~63_combout\ & ((\words[2][21]~q\))) # (!\m_writedata[21]~63_combout\ & (\words[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[0][21]~q\,
	datac => \m_writedata[21]~63_combout\,
	datad => \words[2][21]~q\,
	combout => \m_writedata[21]~64_combout\);

-- Location: LCCOMB_X23_Y17_N30
\m_writedata[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[21]~65_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[21]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[21]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[21]~input_o\,
	datac => \m_writedata[21]~64_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[21]~65_combout\);

-- Location: LCCOMB_X23_Y17_N10
\m_writedata[21]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[21]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[21]~65_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[21]$latch~combout\,
	datac => \Selector151~0clkctrl_outclk\,
	datad => \m_writedata[21]~65_combout\,
	combout => \m_writedata[21]$latch~combout\);

-- Location: LCCOMB_X22_Y17_N8
\m_writedata[22]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[22]~66_combout\ = (\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & (\words[3][22]~q\)) # (!\word_counter|pre_count\(0) & ((\words[2][22]~q\))))) # (!\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][22]~q\,
	datab => \words[2][22]~q\,
	datac => \word_counter|pre_count\(1),
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[22]~66_combout\);

-- Location: LCCOMB_X22_Y17_N30
\m_writedata[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[22]~67_combout\ = (\word_counter|pre_count\(1) & (((\m_writedata[22]~66_combout\)))) # (!\word_counter|pre_count\(1) & ((\m_writedata[22]~66_combout\ & (\words[1][22]~q\)) # (!\m_writedata[22]~66_combout\ & ((\words[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][22]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \m_writedata[22]~66_combout\,
	datad => \words[0][22]~q\,
	combout => \m_writedata[22]~67_combout\);

-- Location: LCCOMB_X22_Y17_N4
\m_writedata[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[22]~68_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[22]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[22]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[22]~input_o\,
	datac => \m_writedata[22]~67_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[22]~68_combout\);

-- Location: LCCOMB_X22_Y17_N20
\m_writedata[22]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[22]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[22]~68_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[22]$latch~combout\,
	datab => \m_writedata[22]~68_combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[22]$latch~combout\);

-- Location: LCCOMB_X17_Y17_N8
\m_writedata[23]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[23]~69_combout\ = (\word_counter|pre_count\(1) & (((\word_counter|pre_count\(0))))) # (!\word_counter|pre_count\(1) & ((\word_counter|pre_count\(0) & ((\words[1][23]~q\))) # (!\word_counter|pre_count\(0) & (\words[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][23]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \words[1][23]~q\,
	datad => \word_counter|pre_count\(0),
	combout => \m_writedata[23]~69_combout\);

-- Location: LCCOMB_X17_Y17_N30
\m_writedata[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[23]~70_combout\ = (\m_writedata[23]~69_combout\ & ((\words[3][23]~q\) # ((!\word_counter|pre_count\(1))))) # (!\m_writedata[23]~69_combout\ & (((\words[2][23]~q\ & \word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][23]~q\,
	datab => \words[2][23]~q\,
	datac => \m_writedata[23]~69_combout\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[23]~70_combout\);

-- Location: LCCOMB_X17_Y17_N28
\m_writedata[23]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[23]~71_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[23]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[23]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[23]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[23]~70_combout\,
	combout => \m_writedata[23]~71_combout\);

-- Location: LCCOMB_X17_Y17_N4
\m_writedata[23]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[23]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[23]~71_combout\)) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[23]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[23]~71_combout\,
	datac => \m_writedata[23]$latch~combout\,
	datad => \Selector151~0clkctrl_outclk\,
	combout => \m_writedata[23]$latch~combout\);

-- Location: LCCOMB_X26_Y17_N0
\m_writedata[24]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[24]~72_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & (\words[2][24]~q\)) # (!\word_counter|pre_count\(1) & ((\words[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][24]~q\,
	datab => \words[0][24]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[24]~72_combout\);

-- Location: LCCOMB_X26_Y17_N10
\m_writedata[24]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[24]~73_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[24]~72_combout\ & ((\words[3][24]~q\))) # (!\m_writedata[24]~72_combout\ & (\words[1][24]~q\)))) # (!\word_counter|pre_count\(0) & (((\m_writedata[24]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][24]~q\,
	datab => \words[3][24]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \m_writedata[24]~72_combout\,
	combout => \m_writedata[24]~73_combout\);

-- Location: LCCOMB_X26_Y17_N12
\m_writedata[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[24]~74_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[24]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[24]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[24]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[24]~73_combout\,
	combout => \m_writedata[24]~74_combout\);

-- Location: LCCOMB_X26_Y17_N4
\m_writedata[24]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[24]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[24]~74_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[24]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[24]$latch~combout\,
	datad => \m_writedata[24]~74_combout\,
	combout => \m_writedata[24]$latch~combout\);

-- Location: LCCOMB_X20_Y17_N26
\m_writedata[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[25]~75_combout\ = (\word_counter|pre_count\(0) & ((\words[1][25]~q\) # ((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((!\word_counter|pre_count\(1) & \words[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[1][25]~q\,
	datac => \word_counter|pre_count\(1),
	datad => \words[0][25]~q\,
	combout => \m_writedata[25]~75_combout\);

-- Location: LCCOMB_X20_Y17_N4
\m_writedata[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[25]~76_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[25]~75_combout\ & ((\words[3][25]~q\))) # (!\m_writedata[25]~75_combout\ & (\words[2][25]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[25]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][25]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \m_writedata[25]~75_combout\,
	datad => \words[3][25]~q\,
	combout => \m_writedata[25]~76_combout\);

-- Location: LCCOMB_X20_Y17_N22
\m_writedata[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[25]~77_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[25]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[25]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[31]~input_o\,
	datac => \m_writedata[25]~76_combout\,
	datad => \s_writedata[25]~input_o\,
	combout => \m_writedata[25]~77_combout\);

-- Location: LCCOMB_X20_Y17_N18
\m_writedata[25]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[25]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[25]~77_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[25]$latch~combout\,
	datad => \m_writedata[25]~77_combout\,
	combout => \m_writedata[25]$latch~combout\);

-- Location: LCCOMB_X24_Y19_N18
\m_writedata[26]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[26]~78_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & (\words[2][26]~q\)) # (!\word_counter|pre_count\(1) & ((\words[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][26]~q\,
	datab => \words[0][26]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[26]~78_combout\);

-- Location: LCCOMB_X24_Y19_N12
\m_writedata[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[26]~79_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[26]~78_combout\ & (\words[3][26]~q\)) # (!\m_writedata[26]~78_combout\ & ((\words[1][26]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[26]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][26]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \words[1][26]~q\,
	datad => \m_writedata[26]~78_combout\,
	combout => \m_writedata[26]~79_combout\);

-- Location: LCCOMB_X24_Y19_N6
\m_writedata[26]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[26]~80_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[26]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[26]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[26]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[26]~79_combout\,
	combout => \m_writedata[26]~80_combout\);

-- Location: LCCOMB_X24_Y19_N16
\m_writedata[26]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[26]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[26]~80_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[26]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector151~0clkctrl_outclk\,
	datac => \m_writedata[26]$latch~combout\,
	datad => \m_writedata[26]~80_combout\,
	combout => \m_writedata[26]$latch~combout\);

-- Location: LCCOMB_X21_Y12_N26
\m_writedata[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[27]~83_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[27]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[27]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[27]~82_combout\,
	datab => \s_writedata[27]~input_o\,
	datac => \s_adr[31]~input_o\,
	combout => \m_writedata[27]~83_combout\);

-- Location: LCCOMB_X21_Y12_N30
\m_writedata[27]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[27]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[27]~83_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[27]$latch~combout\,
	datad => \m_writedata[27]~83_combout\,
	combout => \m_writedata[27]$latch~combout\);

-- Location: LCCOMB_X28_Y12_N26
\m_writedata[28]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[28]~84_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & ((\words[2][28]~q\))) # (!\word_counter|pre_count\(1) & (\words[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][28]~q\,
	datab => \words[2][28]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[28]~84_combout\);

-- Location: FF_X28_Y12_N31
\words[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ram_block[0][150]__1|auto_generated|q_a\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \words[1][28]~q\);

-- Location: LCCOMB_X28_Y12_N4
\m_writedata[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[28]~85_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[28]~84_combout\ & (\words[3][28]~q\)) # (!\m_writedata[28]~84_combout\ & ((\words[1][28]~q\))))) # (!\word_counter|pre_count\(0) & (((\m_writedata[28]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[3][28]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \m_writedata[28]~84_combout\,
	datad => \words[1][28]~q\,
	combout => \m_writedata[28]~85_combout\);

-- Location: LCCOMB_X28_Y12_N18
\m_writedata[28]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[28]~86_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[28]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[28]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_adr[31]~input_o\,
	datac => \m_writedata[28]~85_combout\,
	datad => \s_writedata[28]~input_o\,
	combout => \m_writedata[28]~86_combout\);

-- Location: LCCOMB_X28_Y12_N30
\m_writedata[28]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[28]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[28]~86_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[28]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[28]$latch~combout\,
	datad => \m_writedata[28]~86_combout\,
	combout => \m_writedata[28]$latch~combout\);

-- Location: LCCOMB_X27_Y12_N4
\m_writedata[29]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[29]~87_combout\ = (\word_counter|pre_count\(0) & ((\words[1][29]~q\) # ((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((\words[0][29]~q\ & !\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][29]~q\,
	datab => \word_counter|pre_count\(0),
	datac => \words[0][29]~q\,
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[29]~87_combout\);

-- Location: LCCOMB_X27_Y12_N30
\m_writedata[29]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[29]~88_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[29]~87_combout\ & ((\words[3][29]~q\))) # (!\m_writedata[29]~87_combout\ & (\words[2][29]~q\)))) # (!\word_counter|pre_count\(1) & (((\m_writedata[29]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[2][29]~q\,
	datab => \word_counter|pre_count\(1),
	datac => \m_writedata[29]~87_combout\,
	datad => \words[3][29]~q\,
	combout => \m_writedata[29]~88_combout\);

-- Location: LCCOMB_X27_Y12_N8
\m_writedata[29]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[29]~89_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[29]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[29]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[29]~input_o\,
	datac => \m_writedata[29]~88_combout\,
	datad => \s_adr[31]~input_o\,
	combout => \m_writedata[29]~89_combout\);

-- Location: LCCOMB_X27_Y12_N26
\m_writedata[29]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[29]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[29]~89_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[29]$latch~combout\,
	datab => \Selector151~0clkctrl_outclk\,
	datac => \m_writedata[29]~89_combout\,
	combout => \m_writedata[29]$latch~combout\);

-- Location: LCCOMB_X26_Y10_N10
\m_writedata[30]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[30]~90_combout\ = (\word_counter|pre_count\(0) & (((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & ((\word_counter|pre_count\(1) & ((\words[2][30]~q\))) # (!\word_counter|pre_count\(1) & (\words[0][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[0][30]~q\,
	datab => \words[2][30]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[30]~90_combout\);

-- Location: LCCOMB_X26_Y10_N12
\m_writedata[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[30]~91_combout\ = (\word_counter|pre_count\(0) & ((\m_writedata[30]~90_combout\ & ((\words[3][30]~q\))) # (!\m_writedata[30]~90_combout\ & (\words[1][30]~q\)))) # (!\word_counter|pre_count\(0) & (((\m_writedata[30]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(0),
	datab => \words[1][30]~q\,
	datac => \words[3][30]~q\,
	datad => \m_writedata[30]~90_combout\,
	combout => \m_writedata[30]~91_combout\);

-- Location: LCCOMB_X26_Y10_N6
\m_writedata[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[30]~92_combout\ = (\s_adr[31]~input_o\ & (\s_writedata[30]~input_o\)) # (!\s_adr[31]~input_o\ & ((\m_writedata[30]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[30]~input_o\,
	datac => \s_adr[31]~input_o\,
	datad => \m_writedata[30]~91_combout\,
	combout => \m_writedata[30]~92_combout\);

-- Location: LCCOMB_X26_Y10_N4
\m_writedata[30]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[30]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[30]~92_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[30]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[30]$latch~combout\,
	datad => \m_writedata[30]~92_combout\,
	combout => \m_writedata[30]$latch~combout\);

-- Location: LCCOMB_X24_Y12_N26
\m_writedata[31]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[31]~93_combout\ = (\word_counter|pre_count\(0) & ((\words[1][31]~q\) # ((\word_counter|pre_count\(1))))) # (!\word_counter|pre_count\(0) & (((\words[0][31]~q\ & !\word_counter|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \words[1][31]~q\,
	datab => \words[0][31]~q\,
	datac => \word_counter|pre_count\(0),
	datad => \word_counter|pre_count\(1),
	combout => \m_writedata[31]~93_combout\);

-- Location: LCCOMB_X24_Y12_N8
\m_writedata[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[31]~94_combout\ = (\word_counter|pre_count\(1) & ((\m_writedata[31]~93_combout\ & (\words[3][31]~q\)) # (!\m_writedata[31]~93_combout\ & ((\words[2][31]~q\))))) # (!\word_counter|pre_count\(1) & (((\m_writedata[31]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_counter|pre_count\(1),
	datab => \words[3][31]~q\,
	datac => \m_writedata[31]~93_combout\,
	datad => \words[2][31]~q\,
	combout => \m_writedata[31]~94_combout\);

-- Location: LCCOMB_X24_Y12_N22
\m_writedata[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[31]~95_combout\ = (\s_adr[31]~input_o\ & ((\s_writedata[31]~input_o\))) # (!\s_adr[31]~input_o\ & (\m_writedata[31]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_adr[31]~input_o\,
	datab => \m_writedata[31]~94_combout\,
	datad => \s_writedata[31]~input_o\,
	combout => \m_writedata[31]~95_combout\);

-- Location: LCCOMB_X24_Y12_N2
\m_writedata[31]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_writedata[31]$latch~combout\ = (GLOBAL(\Selector151~0clkctrl_outclk\) & ((\m_writedata[31]~95_combout\))) # (!GLOBAL(\Selector151~0clkctrl_outclk\) & (\m_writedata[31]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~0clkctrl_outclk\,
	datab => \m_writedata[31]$latch~combout\,
	datad => \m_writedata[31]~95_combout\,
	combout => \m_writedata[31]$latch~combout\);

ww_s_readdata(0) <= \s_readdata[0]~output_o\;

ww_s_readdata(1) <= \s_readdata[1]~output_o\;

ww_s_readdata(2) <= \s_readdata[2]~output_o\;

ww_s_readdata(3) <= \s_readdata[3]~output_o\;

ww_s_readdata(4) <= \s_readdata[4]~output_o\;

ww_s_readdata(5) <= \s_readdata[5]~output_o\;

ww_s_readdata(6) <= \s_readdata[6]~output_o\;

ww_s_readdata(7) <= \s_readdata[7]~output_o\;

ww_s_readdata(8) <= \s_readdata[8]~output_o\;

ww_s_readdata(9) <= \s_readdata[9]~output_o\;

ww_s_readdata(10) <= \s_readdata[10]~output_o\;

ww_s_readdata(11) <= \s_readdata[11]~output_o\;

ww_s_readdata(12) <= \s_readdata[12]~output_o\;

ww_s_readdata(13) <= \s_readdata[13]~output_o\;

ww_s_readdata(14) <= \s_readdata[14]~output_o\;

ww_s_readdata(15) <= \s_readdata[15]~output_o\;

ww_s_readdata(16) <= \s_readdata[16]~output_o\;

ww_s_readdata(17) <= \s_readdata[17]~output_o\;

ww_s_readdata(18) <= \s_readdata[18]~output_o\;

ww_s_readdata(19) <= \s_readdata[19]~output_o\;

ww_s_readdata(20) <= \s_readdata[20]~output_o\;

ww_s_readdata(21) <= \s_readdata[21]~output_o\;

ww_s_readdata(22) <= \s_readdata[22]~output_o\;

ww_s_readdata(23) <= \s_readdata[23]~output_o\;

ww_s_readdata(24) <= \s_readdata[24]~output_o\;

ww_s_readdata(25) <= \s_readdata[25]~output_o\;

ww_s_readdata(26) <= \s_readdata[26]~output_o\;

ww_s_readdata(27) <= \s_readdata[27]~output_o\;

ww_s_readdata(28) <= \s_readdata[28]~output_o\;

ww_s_readdata(29) <= \s_readdata[29]~output_o\;

ww_s_readdata(30) <= \s_readdata[30]~output_o\;

ww_s_readdata(31) <= \s_readdata[31]~output_o\;

ww_s_waitrequest <= \s_waitrequest~output_o\;

ww_m_adr(0) <= \m_adr[0]~output_o\;

ww_m_adr(1) <= \m_adr[1]~output_o\;

ww_m_adr(2) <= \m_adr[2]~output_o\;

ww_m_adr(3) <= \m_adr[3]~output_o\;

ww_m_adr(4) <= \m_adr[4]~output_o\;

ww_m_adr(5) <= \m_adr[5]~output_o\;

ww_m_adr(6) <= \m_adr[6]~output_o\;

ww_m_adr(7) <= \m_adr[7]~output_o\;

ww_m_adr(8) <= \m_adr[8]~output_o\;

ww_m_adr(9) <= \m_adr[9]~output_o\;

ww_m_adr(10) <= \m_adr[10]~output_o\;

ww_m_adr(11) <= \m_adr[11]~output_o\;

ww_m_adr(12) <= \m_adr[12]~output_o\;

ww_m_adr(13) <= \m_adr[13]~output_o\;

ww_m_adr(14) <= \m_adr[14]~output_o\;

ww_m_read <= \m_read~output_o\;

ww_m_write <= \m_write~output_o\;

ww_m_writedata(0) <= \m_writedata[0]~output_o\;

ww_m_writedata(1) <= \m_writedata[1]~output_o\;

ww_m_writedata(2) <= \m_writedata[2]~output_o\;

ww_m_writedata(3) <= \m_writedata[3]~output_o\;

ww_m_writedata(4) <= \m_writedata[4]~output_o\;

ww_m_writedata(5) <= \m_writedata[5]~output_o\;

ww_m_writedata(6) <= \m_writedata[6]~output_o\;

ww_m_writedata(7) <= \m_writedata[7]~output_o\;

ww_m_writedata(8) <= \m_writedata[8]~output_o\;

ww_m_writedata(9) <= \m_writedata[9]~output_o\;

ww_m_writedata(10) <= \m_writedata[10]~output_o\;

ww_m_writedata(11) <= \m_writedata[11]~output_o\;

ww_m_writedata(12) <= \m_writedata[12]~output_o\;

ww_m_writedata(13) <= \m_writedata[13]~output_o\;

ww_m_writedata(14) <= \m_writedata[14]~output_o\;

ww_m_writedata(15) <= \m_writedata[15]~output_o\;

ww_m_writedata(16) <= \m_writedata[16]~output_o\;

ww_m_writedata(17) <= \m_writedata[17]~output_o\;

ww_m_writedata(18) <= \m_writedata[18]~output_o\;

ww_m_writedata(19) <= \m_writedata[19]~output_o\;

ww_m_writedata(20) <= \m_writedata[20]~output_o\;

ww_m_writedata(21) <= \m_writedata[21]~output_o\;

ww_m_writedata(22) <= \m_writedata[22]~output_o\;

ww_m_writedata(23) <= \m_writedata[23]~output_o\;

ww_m_writedata(24) <= \m_writedata[24]~output_o\;

ww_m_writedata(25) <= \m_writedata[25]~output_o\;

ww_m_writedata(26) <= \m_writedata[26]~output_o\;

ww_m_writedata(27) <= \m_writedata[27]~output_o\;

ww_m_writedata(28) <= \m_writedata[28]~output_o\;

ww_m_writedata(29) <= \m_writedata[29]~output_o\;

ww_m_writedata(30) <= \m_writedata[30]~output_o\;

ww_m_writedata(31) <= \m_writedata[31]~output_o\;
END structure;


